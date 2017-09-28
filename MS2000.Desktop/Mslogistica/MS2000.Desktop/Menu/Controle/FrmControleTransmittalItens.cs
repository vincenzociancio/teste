using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using MS2000.Desktop.Classes;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmControleTransmittalItens : Componentes.MSForm01
    {
        public string idTransmittal { get; set; }
        public string idItemTransmittal { get; set; }
        public string transmittal { get; set; }
        public string dataEnviado { get; set; }
        public string destinatario { get; set; }
        public string importador { get; set; }
        public int ultimoSequencial { get; set; }
        public bool padraoFaturamento { get; set; }
        public string tipo;
        Processo processo = new Processo();
        public StatusCadastro statusCadastro;

        public class PadraoFaturamentoList
        {
            public int sequencial { get; set; }
            public string descricao { get; set; }
            public int quantidade { get; set; }
            public string remarks { get; set; }
            public string query { get; set; }
        }

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);

        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control itemControl in gpbItens.Controls)
            {
                itemControl.Enabled = false;
            }
            txtProcesso.Enabled = bValue;
            rtxtLog.Enabled = bValue;
            grvTransmittalItens.Enabled = bValue;            
            btnPadraoFaturamento.Enabled = bValue;
            VerificaBotoes();
        }

        public FrmControleTransmittalItens()
        {
            InitializeComponent();
        }

        private void FrmControleTransmittalItens_Load(object sender, EventArgs e)
        {
            txtData.Text = dataEnviado;
            txtDestinatario.Text = destinatario;
            txtImportador.Text = importador;
            txtTransmittal.Text = transmittal;
            this.Height = 341;
            bindingNavigator.DeleteItem = null;
            grvTransmittalItens.AutoGenerateColumns = false;
            AtualizaGrid();
            HabilitarDesabilitaControles(true);
            txtData.Enabled = false;
            txtDestinatario.Enabled = false;
            txtImportador.Enabled = false;
            txtTransmittal.Enabled = false;
            padraoFaturamento = false;

        }

        private void grvTransmittalItens_SelectionChanged(object sender, EventArgs e)
        {
            if (grvTransmittalItens.RowCount > 0)
                if (grvTransmittalItens.SelectedRows.Count != 0)
                    rtxtLog.Text = grvTransmittalItens.Rows[grvTransmittalItens.SelectedRows[0].Index].Cells["Descricao"].FormattedValue.ToString();
            else
                rtxtLog.Clear();


        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            gpbNovoItem.Text = "Novo Item";
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(false);
            txtNumero.Clear();
            txtNumero.Enabled = false;
            rtxtItem.Clear();
            txtQuantidade.Clear();
            txtRemarks.Clear();

            this.Height += 134;
        }
        private void btnEditar_Click(object sender, EventArgs e)
        {
            gpbNovoItem.Text = "Alterar Item";
            statusCadastro = StatusCadastro.Editar;

            if (grvTransmittalItens.RowCount > 0)
            {
                txtNumero.Enabled  = true;
                
                txtNumero.Text     = grvTransmittalItens.Rows[grvTransmittalItens.SelectedRows[0].Index].Cells["Sequencial"].FormattedValue.ToString();
                rtxtItem.Text      = grvTransmittalItens.Rows[grvTransmittalItens.SelectedRows[0].Index].Cells["Descricao"].FormattedValue.ToString();
                txtQuantidade.Text = grvTransmittalItens.Rows[grvTransmittalItens.SelectedRows[0].Index].Cells["Quantidade"].FormattedValue.ToString();
                txtRemarks.Text    = grvTransmittalItens.Rows[grvTransmittalItens.SelectedRows[0].Index].Cells["Remarks"].FormattedValue.ToString(); ;

                HabilitarDesabilitaControles(false);
                rtxtItem.Focus();
                this.Height += 134;
            }
            else
            {
                MessageBox.Show("Não contém registro de Itens para Editar!", "Atenção", MessageBoxButtons.OK,
                    MessageBoxIcon.Stop);
            }

        }
        private void btnCancelar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(true);
            this.Height -= 134;
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (statusCadastro != StatusCadastro.Novo && string.IsNullOrEmpty(txtNumero.Text))
            {
                MessageBox.Show("O Número é obrigatório!", "Atenção", MessageBoxButtons.OK,
                    MessageBoxIcon.Stop);
                txtNumero.Focus();
                return;
            }
            if (string.IsNullOrEmpty(txtRemarks.Text))
            {
                MessageBox.Show("O Remarks é obrigatório!", "Atenção", MessageBoxButtons.OK,
                    MessageBoxIcon.Stop);
                txtRemarks.Focus();
                return;
            }
            if (string.IsNullOrEmpty(txtQuantidade.Text))
            {
                MessageBox.Show("A Quantidade é obrigatória!", "Atenção", MessageBoxButtons.OK,
                    MessageBoxIcon.Stop);
                txtQuantidade.Focus();
                return;
            }
            try
            {                
                if (statusCadastro == StatusCadastro.Novo)
                {                                    
                    PegaUltimoSequencial();
                    string query =
                        "insert into Transmittal_itens (FK_Transmittal,Sequencial,Codigo,Descricao,Quantidade,Remarks) " +
                        "values (@FK_Transmittal,@Sequencial,@Codigo,@Descricao,@Quantidade,@Remarks)";
                    using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Codigo", txtTransmittal.Text);
                            cmd.Parameters.AddWithValue("@FK_Transmittal", idTransmittal);
                            cmd.Parameters.AddWithValue("@Sequencial", ultimoSequencial + 1);
                            cmd.Parameters.AddWithValue("@Descricao", rtxtItem.Text);
                            cmd.Parameters.AddWithValue("@Quantidade", txtQuantidade.Text);
                            cmd.Parameters.AddWithValue("@Remarks", txtRemarks.Text);
                            cmd.ExecuteNonQuery();
                        }
                    }

                    AtualizaGrid();

                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo,Convert.ToInt32(this.Tag), string.Format("Codigo:{0} , Processo: {1}", txtTransmittal.Text, txtProcesso.Text));
                }

                if (statusCadastro == StatusCadastro.Editar)
                {                    
                    string query = "update Transmittal_itens set " +
                                   "Sequencial = @Sequencial, " +
                                   "Descricao = @Descricao, " +
                                   "Quantidade = @Quantidade, " +
                                   "Remarks = @Remarks where FK_Transmittal = @FK_Transmittal and ID = @ID";

                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                       using (SqlCommand cmd = new SqlCommand(query, conn))
                       {                                                    
                          cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bsTransmittalItens.Current).Row["ID"].ToString());                           
                          cmd.Parameters.AddWithValue("@FK_Transmittal", idTransmittal);
                          cmd.Parameters.AddWithValue("@Sequencial", txtNumero.Text);
                          cmd.Parameters.AddWithValue("@Descricao", rtxtItem.Text);
                          cmd.Parameters.AddWithValue("@Quantidade", txtQuantidade.Text);
                          cmd.Parameters.AddWithValue("@Remarks", txtRemarks.Text);
                          cmd.ExecuteNonQuery();
                       }
                    }                        
                    
                    txtProcesso.Clear();
                    padraoFaturamento = false;
                    AtualizaGrid();
                    LogSistemas.AddLogSistema(txtTransmittal.Text,FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),string.Format("Processo:{0} ", txtProcesso.Text));
                }

                if (statusCadastro == StatusCadastro.Editar)
                {
                    MessageBox.Show("Registro alterado com sucesso.", "Salvar", MessageBoxButtons.OK,
                        MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK,
                        MessageBoxIcon.Information);
                }

                statusCadastro = StatusCadastro.None;
                HabilitarDesabilitaControles(true);
                this.Height -= 134;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void PegaUltimoSequencial()
        {
            string query = "select MAX(Sequencial) from Transmittal_itens where FK_Transmittal = @FK_Transmittal";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_Transmittal", idTransmittal);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            if (reader[0] != DBNull.Value)
                            {
                                ultimoSequencial = Convert.ToInt32(reader[0]);
                            }
                        }
                    }
                }
            }
        }

        private void btnPadraoFaturamento_Click(object sender, EventArgs e)
        {
            if (FrmPrincipal.FK_SetorUsuario != "ADFI")
            {
                MessageBox.Show("Você não possui acesso a essa opção.", "Aviso", MessageBoxButtons.OK,
                        MessageBoxIcon.Warning);
                return;
            }
            if (processo.BuscarPorCodigoStatus(txtProcesso.Text).Count == 0)
            {
                MessageBox.Show("Processo não encontrado.", "Aviso", MessageBoxButtons.OK,
                        MessageBoxIcon.Warning);
                return;
            }
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Tipo", out tipo);

            if (!string.IsNullOrEmpty(tipo))
            {
                if (grvTransmittalItens.RowCount == 0)
                {
                    if (MessageBox.Show("Confirma a inserção de linhas no padrão de faturamento ?", "Aviso", MessageBoxButtons.OKCancel) == DialogResult.OK)
                    {
                        padraoFaturamento = true;                        
                        PadraoFaturamento();                        
                    }
                }
                else
                {
                    if (MessageBox.Show("Confirma a exclusão, e após a inserção de linhas no padrão de faturamento ?", "Aviso", MessageBoxButtons.OKCancel) == DialogResult.OK)
                    {
                        ExcluiItensTransmittal(idTransmittal);
                        padraoFaturamento = true;                        
                        PadraoFaturamento();                        
                    }
                }                       
            }
        }
       
        private void PadraoFaturamento()
        {
            var padraoFaturamentoClass = new List<PadraoFaturamentoList>();
            string valorDinamico = "";

            string query = "select ID, TipoProcesso, Sequencial," +
                               " Descricao, Quantidade, Remarks, Query from Transmittal_itens_PadraoFatura WHERE TipoProcesso = @TipoProcesso";
            
            using (var conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@TipoProcesso", tipo);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            valorDinamico = "";

                            if (!string.IsNullOrEmpty(reader["Query"].ToString()))
                                using (SqlCommand cmd2 = new SqlCommand(reader["Query"].ToString(), conn))
                                {
                                    cmd2.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                                    using (SqlDataReader reader2 = cmd2.ExecuteReader())
                                        while (reader2.Read())
                                        {
                                            if (string.IsNullOrEmpty(valorDinamico))
                                                valorDinamico = reader2[0].ToString();
                                            else
                                                valorDinamico += ", " + reader2[0];
                                        }
                                }

                            string queryPadrao = "insert into Transmittal_itens (FK_Transmittal,Sequencial,Codigo,Descricao,Quantidade,Remarks) " +
                                                 "values (@FK_Transmittal,@Sequencial,@Codigo,@Descricao,@Quantidade,@Remarks)";
                            
                            using (SqlCommand cmd3 = new SqlCommand(queryPadrao, conn))
                            {
                                 cmd3.Parameters.AddWithValue("@Codigo", txtTransmittal.Text);
                                 cmd3.Parameters.AddWithValue("@FK_Transmittal", idTransmittal);
                                 cmd3.Parameters.AddWithValue("@Sequencial", Convert.ToInt32(reader["Sequencial"].ToString()));
                                 cmd3.Parameters.AddWithValue("@Descricao", reader["Descricao"] + valorDinamico);
                                 cmd3.Parameters.AddWithValue("@Quantidade", Convert.ToInt32(reader["Quantidade"].ToString()));
                                 cmd3.Parameters.AddWithValue("@Remarks", reader["Remarks"].ToString());
                                 cmd3.ExecuteNonQuery();
                             }                                                                                                                
                        }
                    }
                }
            }

            AtualizaGrid();            
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            try
            {
                if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo,MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                {
                    string query = "delete from Transmittal_itens where Codigo = @Codigo and Sequencial = @Sequencial";

                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Codigo", txtTransmittal.Text);
                            cmd.Parameters.AddWithValue("@Sequencial", grvTransmittalItens.Rows[grvTransmittalItens.SelectedRows[0].Index].Cells["Sequencial"].FormattedValue.ToString());
                            cmd.ExecuteNonQuery();
                        }
                    }

                    bsTransmittalItens.RemoveCurrent();
                    statusCadastro = StatusCadastro.None;
                    MessageBox.Show("Registro excluído com sucesso.", "Exclusão", MessageBoxButtons.OK,MessageBoxIcon.Information);
                    LogSistemas.AddLogSistema(txtTransmittal.Text,FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),string.Format("Processo:{0} ", txtProcesso.Text));
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private DataTable getTransmittal()
        {           
                string query = "Select ID, FK_Transmittal, Sequencial, Descricao, Quantidade, Remarks from Transmittal_Itens" +
                               " where Codigo = @Codigo order by Sequencial asc";

                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Codigo", transmittal);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            DataTable table = new DataTable();
                            table.Load(reader);
                            return table;
                        }
                    }
                }
        }

        private void ExcluiItensTransmittal(string FK_Transmittal)
        {
            string query = "delete from Transmittal_itens where FK_Transmittal = @FK_Transmittal";

            using (var conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_Transmittal", FK_Transmittal);                                
                    cmd.ExecuteNonQuery();
                }
            }
        }    

        private void AtualizaGrid()
        {
            bsTransmittalItens.DataSource = getTransmittal();
            grvTransmittalItens.DataSource = bsTransmittalItens;
            bindingNavigator.BindingSource = bsTransmittalItens;
        }
    }
}

