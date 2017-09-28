using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Sistema
{
    public partial class FrmControleEquipamento : MS2000.Desktop.Componentes.MSForm01
    {
        public StatusCadastro statusCadastro;
        bool emUso;
        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in gpControleEquipamento.Controls)
            {
                controle.Enabled = bValue;

            }

            foreach (Control controle in gbInformacao.Controls)
            {
                controle.Enabled = bValue;

            }

            VerificaBotoes();
        }

        public FrmControleEquipamento()
        {
            InitializeComponent();


        }

        private void FrmControleEquipamento_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
            mcbTipo.Enabled = true;
            label1.Enabled = true;
            getTipo();
            getUsuarios(false);
            if (gvMovimentacao.Rows.Count == 0 )
            {
                btnEditar.Enabled = false;
            }

        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            LimpaRegistro();
            txtMotivo.Clear();
            rtxtObservacao.Clear();
            mcbUsuario.SelectedIndex = -1;

            tbcLocalizarEquipamento.SelectedTab = tbpControleEquipamento;
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            mcbEquipamento.Enabled = false;
            mcbSerie.Enabled = false;
            gvMovimentacao.Enabled = false;

            bsHistorico.DataSource = getControle();
            gvMovimentacao.DataSource = bsHistorico;
            bsHistorico.AddNew();

            if (gvMovimentacao.Rows.Count != 0)
            {
                btnEditar.Enabled = true;
            }


        }


        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bsHistorico.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
            mcbTipo.Enabled = true;
            label1.Enabled = true;
            LimpaRegistro();
            gvMovimentacao.Enabled = true;

            if (gvMovimentacao.Rows.Count == 0)
            {
                btnEditar.Enabled = false;
            }
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            //mcbSerie.SelectedValue = bsHistorico.GetRelatedCurrencyManager("FK_Serie").Current.ToString();
            //mcbUsuario.SelectedValue = bsHistorico.GetRelatedCurrencyManager("FK_Usuario").Current.ToString();
            //mc
            HabilitarDesabilitaControles(false);
            txtDataEntrega.Enabled = true;
            txtDataRetirada.Enabled = true;
            rtxtObservacao.Enabled = true;
            chkDefeito.Enabled = true;
        }



        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(mcbTipo.Text))
            {
                MessageBox.Show("O Tipo é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mcbTipo.Focus();
                return;
            }

            if (string.IsNullOrEmpty(mcbEquipamento.Text))
            {
                MessageBox.Show("O Equipamento é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mcbEquipamento.Focus();
                return;
            }

            if (string.IsNullOrEmpty(mcbUsuario.Text))
            {
                MessageBox.Show("O Responsavel é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mcbUsuario.Focus();
                return;
            }

            if (string.IsNullOrEmpty(mcbSerie.Text))
            {
                MessageBox.Show("A Série é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mcbSerie.Focus();
                return;
            }
            if (SerieEmUso())
            {
                MessageBox.Show("Esse produto ainda não recebeu baixa.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                return;
            }
            if (txtDataRetirada.Text != "  /  /" && txtDataEntrega.Text != "  /  /")
            {
                if (DateTime.ParseExact(txtDataRetirada.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture) > DateTime.ParseExact(txtDataEntrega.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture))
                {
                    MessageBox.Show("A Data de Entrega não pode ser menor que a Data de Retirada!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    txtDataEntrega.Focus();
                    return;
                }
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "UPDATE [dbo].[Sistemas.ControleEquipamento] " +
                                   "SET [FK_Usuario] = @FK_Usuario " +
                                   ",[FK_Serie] = @FK_Serie" +
                                   ",[DataRetirada] = @DataRetirada " +
                                   ",[DataEntrega] = @DataEntrega " +
                                   ",[Motivo] = @Motivo "+                                   
                                   " WHERE Id = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@FK_Usuario", mcbUsuario.SelectedValue);
                        cmd.Parameters.AddWithValue("@FK_Serie", (mcbSerie.SelectedValue == null ? "" : mcbSerie.SelectedValue));
                        cmd.Parameters.AddWithValue("@DataRetirada", txtDataRetirada.MaskCompleted ? (object)txtDataRetirada.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@DataEntrega", txtDataEntrega.MaskCompleted ? (object)txtDataEntrega.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Motivo", txtMotivo.Text);
                        cmd.Parameters.AddWithValue("@ID", bsHistorico.GetRelatedCurrencyManager("ID").Current.ToString());
                        cmd.ExecuteNonQuery();
                    }

                    SqlConnection conn2 = DatabaseSqlConnection.Instance.Conexao;
                    string query2 = "UPDATE [dbo].[Sistemas.CadastroEquipamentoSerie] " +
                                   "SET [Observacao] = @Observacao " +
                                   ",[Defeito] = @Defeito "+
                                   ",[EmUso] = @EmUso " +
                                   "WHERE Id= @FK_Serie";

                    using (SqlCommand cmd2 = new SqlCommand(query2, conn2))
                    {

                        cmd2.Parameters.AddWithValue("@EmUso", txtDataEntrega.Text != "  /  /" ? false : true);
                        cmd2.Parameters.AddWithValue("@Observacao", rtxtObservacao.Text);
                        cmd2.Parameters.AddWithValue("@Defeito", chkDefeito.Checked == true ? 1 : 0);
                        cmd2.Parameters.AddWithValue("@FK_Serie", mcbSerie.SelectedValue);
                        cmd2.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(bsHistorico.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado,
                    StatusCadastro.Novo, Convert.ToInt32(this.Tag),
                    string.Format("Equipamento:{0} Serie:{1} Tipo:{2}, Usuario:{3}", mcbEquipamento.SelectedText, mcbSerie.SelectedText, mcbTipo.SelectedText, mcbUsuario.SelectedText));
                    LimpaRegistro();
                }
                else
                {

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO [dbo].[Sistemas.ControleEquipamento] " +
                                   "([FK_Usuario],[FK_Serie],[DataRetirada],[DataEntrega],[Motivo]) " +
                                   " VALUES " +
                                   "(@FK_Usuario,@FK_Serie,@DataRetirada,@DataEntrega,@Motivo)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@FK_Usuario", mcbUsuario.SelectedValue);
                        cmd.Parameters.AddWithValue("@FK_Serie", (mcbSerie.SelectedValue == null ? "" : mcbSerie.SelectedValue));
                        cmd.Parameters.AddWithValue("@DataRetirada", txtDataRetirada.MaskCompleted ? (object)txtDataRetirada.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@DataEntrega", txtDataEntrega.MaskCompleted ? (object)txtDataEntrega.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Motivo", txtMotivo.Text);

                        cmd.ExecuteNonQuery();
                    }

                    SqlConnection conn2 = DatabaseSqlConnection.Instance.Conexao;
                    string query2 = "UPDATE [dbo].[Sistemas.CadastroEquipamentoSerie] " +
                                   "SET [Observacao] = @Observacao " +
                                   ",[Defeito] = @Defeito " +
                                   ",[EmUso] = @EmUso " +
                                   "WHERE Id= @FK_Serie";

                    using (SqlCommand cmd2 = new SqlCommand(query2, conn2))
                    {
                        cmd2.Parameters.AddWithValue("@Observacao", rtxtObservacao.Text);
                        cmd2.Parameters.AddWithValue("@Defeito", chkDefeito.Checked == true ? 1 : 0);
                        cmd2.Parameters.AddWithValue("@FK_Serie", mcbSerie.SelectedValue);
                        cmd2.Parameters.AddWithValue("@EmUso", txtDataEntrega.Text != "  /  /" ? false : true);
                        cmd2.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(bsHistorico.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado,
                    StatusCadastro.Novo, Convert.ToInt32(this.Tag),
                    string.Format("Equipamento:{0} Serie:{1} Tipo:{2}, Usuario:{3}", mcbEquipamento.SelectedText, mcbSerie.SelectedText, mcbTipo.SelectedText, mcbUsuario.SelectedText));
                    bsHistorico.DataSource = getControle();
                    LimpaRegistro();
                    bsHistorico.DataSource = getControle();
                    gvMovimentacao.DataSource = bsHistorico;
                }

                if (statusCadastro == StatusCadastro.Editar)
                {
                    MessageBox.Show("Registro alterado com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);   
                }
                statusCadastro = StatusCadastro.None;
                HabilitarDesabilitaControles(false);
                mcbTipo.Enabled = true;
                label1.Enabled = true;
                gvMovimentacao.Enabled = true;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }

        private DataTable getControle()
        {
            if (statusCadastro != StatusCadastro.Novo)
            {
                string query = "Select * from [MS2000].[dbo].[Sistemas.ControleEquipamento] CE inner join " +
                                   "[MS2000].[dbo].[Sistemas.CadastroEquipamentoSerie] as CO on CO.ID = CE.FK_Serie inner join " +
                                   "[MS2000].[dbo].[Sistemas.CadastroEquipamento] as C on C.ID = CO.FK_Equipamento inner join " +
                                   "[MS2000].[dbo].[Sistemas.CadastroEquipamentoTipo] as T on T.ID = C.FK_Tipo inner join " +
                                   "[MS2000].[dbo].[Usuarios] U on U.PK_Usuario = CE.FK_Usuario " +
                                   "where C.ID = " + mcbEquipamento.SelectedValue + " and T.ID = " + mcbTipo.SelectedValue + " order by CO.Serie";

                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        //cmd.Parameters.AddWithValue("@FK_Serie", mcbSerie.SelectedValue);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            DataTable table = new DataTable();
                            table.Load(reader);
                            return table;
                        }
                    }
                }
            }
            else
            {
                string query = "Select * from [MS2000].[dbo].[Sistemas.ControleEquipamento] CE inner join " +
                              "[MS2000].[dbo].[Sistemas.CadastroEquipamentoSerie] as CO on CO.ID = CE.FK_Serie inner join " +
                              "[MS2000].[dbo].[Sistemas.CadastroEquipamento] as C on C.ID = CO.FK_Equipamento inner join " +
                              "[MS2000].[dbo].[Sistemas.CadastroEquipamentoTipo] as T on T.ID = C.FK_Tipo inner join " +
                              "[MS2000].[dbo].[Usuarios] U on U.PK_Usuario = CE.FK_Usuario order by CO.Serie";

                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        //cmd.Parameters.AddWithValue("@FK_Serie", mcbSerie.SelectedValue);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            DataTable table = new DataTable();
                            table.Load(reader);
                            return table;
                        }
                    }
                }
            }
        }
        private DataTable getQuantidade()
        {
            string query = "Select Quantidade from [dbo].[Sistemas.CadastroEquipamento] " +
                            "where ID = @ID";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {

                    cmd.Parameters.AddWithValue("@ID", mcbEquipamento.SelectedValue);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        DataTable table = new DataTable();
                        table.Load(reader);
                        return table;
                    }
                }
            }
        }

        private void getSerie()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select ID, Serie from [dbo].[Sistemas.CadastroEquipamentoSerie] where FK_Equipamento = @FK_Equipamento order by ID ";
            DataTable table;
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_Equipamento", mcbEquipamento.SelectedValue);
                    cmd.Parameters.AddWithValue("@FK_Tipo", mcbTipo.SelectedValue);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                mcbSerie.DataSource = null;
                mcbSerie.DataSource = table;
                mcbSerie.DisplayMember = "Serie";
                mcbSerie.ValueMember = "Id";
                mcbSerie.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getEquipamento()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select ID, Equipamento from [dbo].[Sistemas.CadastroEquipamento] where FK_Tipo = @FK_Tipo order by ID ";
            DataTable table;
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_Tipo", mcbTipo.SelectedValue);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                mcbEquipamento.DataSource = null;
                mcbEquipamento.DataSource = table;
                mcbEquipamento.DisplayMember = "Equipamento";
                mcbEquipamento.ValueMember = "ID";
                mcbEquipamento.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void getTipo()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select ID, Descricao from [dbo].[Sistemas.CadastroEquipamentoTipo] order by ID ASC ";
            DataTable table;
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                mcbTipo.DataSource = null;
                mcbTipo.DataSource = table;
                mcbTipo.DisplayMember = "Descricao";
                mcbTipo.ValueMember = "ID";
                mcbTipo.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void getUsuarios(bool Ativo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " SELECT PK_USUARIO, Nome_Completo " +
                           "   FROM Usuarios ";

            if (Ativo == true)
            {
                query = query + " WHERE ATIVO = 1 ";
            }
                           
            DataTable table;
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {                    
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }

            mcbUsuario.DataSource = null;
            mcbUsuario.DataSource = table;
            mcbUsuario.DisplayMember = "Nome_Completo";
            mcbUsuario.ValueMember    = "PK_USUARIO";
            mcbUsuario.SelectedIndex = -1;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void mcbEquipamento_DropDownClosed(object sender, EventArgs e)
        {
           
        }

        private void mcbTipo_DropDownClosed(object sender, EventArgs e)
        {

            
        }


        private void gvMovimentacao_SelectionChanged(object sender, EventArgs e)
        {
            if (statusCadastro == StatusCadastro.Novo)
            {
                return;
            }
            else
            {
                if (gvMovimentacao.Rows.Count > 1)
                {
                    PreencheCamposEdit();
                }
                else
                {
                    return;
                }
            }
        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            FrmGridEstoque form = new FrmGridEstoque();
            form.Show();
        }

        private void LimpaRegistro()
        {
            txtDataEntrega.Clear();
            txtDataRetirada.Clear();
            txtMotivo.Clear();
            rtxtObservacao.Clear();
            chkDefeito.Checked = false;
            mcbSerie.SelectedIndex = -1;
            mcbTipo.SelectedIndex = -1;
            mcbEquipamento.SelectedIndex = -1;
            mcbUsuario.SelectedIndex = -1;
            gvMovimentacao.DataSource = null;
        }

        private void PreencheGridECampos()
        {
            // bsHistorico.DataSource = getControle();
            bindingNavigator.BindingSource = bsHistorico;
            mcbEquipamento.DataBindings.Add(new Binding("Text", bsHistorico, "Equipamento"));
            mcbUsuario.DataBindings.Add(new Binding("Text", bsHistorico, "FK_Usuario"));
            mcbSerie.DataBindings.Add(new Binding("Text", bsHistorico, "Serie"));
            mcbTipo.DataBindings.Add(new Binding("Text", bsHistorico, "Descricao"));
            chkDefeito.DataBindings.Add(new Binding("Checked", bsHistorico, "Defeito", true));
            txtDataRetirada.DataBindings.Add(new Binding("Text", bsHistorico, "DataRetirada", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtDataEntrega.DataBindings.Add(new Binding("Text", bsHistorico, "DataEntrega", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            rtxtObservacao.DataBindings.Add(new Binding("Text", bsHistorico, "Observacao", true));
            txtMotivo.DataBindings.Add(new Binding("Text", bsHistorico, "Motivo", true));
            //  chkDefeito.DataBindings.Add(new Binding("Checked", bsLocalizar, "Defeito", true));

            bsHistorico.DataSource = getControle();

        }

        private void PreencheCamposEdit() 
        {
            
            mcbSerie.SelectedValue = bsHistorico.GetRelatedCurrencyManager("FK_Serie").Current;
            mcbEquipamento.SelectedValue = bsHistorico.GetRelatedCurrencyManager("FK_Equipamento").Current;
            mcbUsuario.SelectedValue = bsHistorico.GetRelatedCurrencyManager("FK_Usuario").Current;
            txtDataEntrega.Text = bsHistorico.GetRelatedCurrencyManager("DataEntrega").Current.ToString();
            txtDataRetirada.Text = bsHistorico.GetRelatedCurrencyManager("DataRetirada").Current.ToString();
            rtxtObservacao.Text = bsHistorico.GetRelatedCurrencyManager("Observacao").Current.ToString();
            chkDefeito.Checked = bsHistorico.GetRelatedCurrencyManager("Defeito").Current.ToString() == "True" ? true : false;
            txtMotivo.Text = bsHistorico.GetRelatedCurrencyManager("Motivo").Current.ToString();

        }
        
        private void mcbSerie_SelectionChangeCommitted(object sender, EventArgs e)
        {
           
            if (mcbSerie.SelectedValue != null)
            {
                rtxtObservacao.Clear();
                chkDefeito.Checked = false;
                txtMotivo.Clear();
                if (statusCadastro == StatusCadastro.Novo)
                {
                    return;
                }
                if (statusCadastro == StatusCadastro.None)
                {
                    bsHistorico.Filter = "FK_Serie = '" + mcbSerie.SelectedValue + "'";

                }
                else
                {
                    bsHistorico.DataSource = getControle();
                }

                // gvMovimentacao.DataSource = bsHistorico;
            }
        }

        private void gvMovimentacao_CellClick_1(object sender, DataGridViewCellEventArgs e)
        {
            PreencheCamposEdit();

            if (txtDataEntrega.Text == "  /  /")
            {
                btnEditar.Enabled = true;
            }
            else
            {
                btnEditar.Enabled = false;
            }
        }

        private void mcbTipo_SelectionChangeCommitted(object sender, EventArgs e)
        {
            txtDataEntrega.Clear();
            txtDataRetirada.Clear();
            txtMotivo.Clear();
            rtxtObservacao.Clear();
            chkDefeito.Checked = false;
            mcbUsuario.SelectedIndex = -1;
            gvMovimentacao.DataSource = null;
            if (mcbTipo.SelectedValue != null)
            {
                getEquipamento();

                if (mcbEquipamento.Items.Count == 0)
                {
                    mcbEquipamento.Enabled = false;
                }
                else
                {
                    mcbEquipamento.Enabled = true;
                    label2.Enabled = true;
                }
                if (!mcbEquipamento.Enabled)
                {
                    mcbSerie.SelectedIndex = -1;
                    mcbSerie.Enabled = false;
                }
            }
        }

        private void mcbEquipamento_SelectionChangeCommitted(object sender, EventArgs e)
        {
            if (statusCadastro == StatusCadastro.Novo)
            {
                getSerie();
                if (mcbSerie.Items.Count != 0)
                {
                    mcbSerie.Enabled = true;
                }
                else
                {
                    mcbSerie.Enabled = false;
                }
            }
            else
            {
                if (mcbEquipamento.SelectedValue != null)
                {
                    if (mcbSerie.SelectedValue != null)
                    {
                        bsHistorico.RemoveFilter();
                    }

                    bsHistorico.DataSource = getControle();
                    bindingNavigator.BindingSource = bsHistorico;
                    getSerie();

                    if (gvMovimentacao.Rows.Count != 0)
                    {
                        btnEditar.Enabled = true;
                    }
                    if (gvMovimentacao.DataSource == null)
                    {
                        gvMovimentacao.DataSource = bsHistorico;
                    }

                    if (mcbSerie.Items.Count == 0)
                    {
                        mcbSerie.Enabled = false;
                    }
                    else
                    {
                        mcbSerie.Enabled = true;
                        label3.Enabled = true;
                    }
                }
            }
        }

        private bool SerieEmUso()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select DataRetirada, DataEntrega from [dbo].[Sistemas.ControleEquipamento] where FK_Serie = @FK_Serie "+
            "and ID = (select max(id) from [Sistemas.ControleEquipamento])";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_Serie", mcbSerie.SelectedValue);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while(reader.Read())
                        {
                            if (reader["DataRetirada"].ToString() != "  /  /" && (reader["DataEntrega"].ToString() != "  /  /" && !string.IsNullOrEmpty(reader["DataEntrega"].ToString())))
                            {
                                return false;
                            }
                            else if (reader["DataRetirada"].ToString() == "  /  /" || string.IsNullOrEmpty(reader["DataRetirada"].ToString()))
                            {
                                return false;
                            }
                            else if ((reader["DataRetirada"].ToString() != "  /  /" || reader["DataRetirada"].ToString() == "  /  /") && (reader["DataEntrega"].ToString() == "  /  /" || string.IsNullOrEmpty(reader["DataEntrega"].ToString())))
                            {
                                return true;
                            }           
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            return false;
        }

    }
}
