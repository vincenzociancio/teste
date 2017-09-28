using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Cadastros
{
    public partial class FrmGrevesEFeriados : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
            groupBox2.Enabled = (statusCadastro == StatusCadastro.None);
            groupBox3.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }
            VerificaBotoes();
        }

        public FrmGrevesEFeriados()
        {
            InitializeComponent();
        }

        void carregaDados(DataTable table)
        {
            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = table;

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            dtpData.DataBindings.Clear();
            txtDescricao.DataBindings.Clear();
            ckbAtivo.DataBindings.Clear();
            // cbbObsEvento.DataBindings.Clear();
            dtpData.DataBindings.Add(new Binding("Value", bindingSource, "Data", true));
            txtDescricao.DataBindings.Add(new Binding("Text", bindingSource, "Descricao", true));
            ckbAtivo.DataBindings.Add(new Binding("Checked", bindingSource, "Ativo", true));
            if (radioButton4.Checked)
            {
                cbbObsEvento.DataBindings.Add(new Binding("SelectedValue", bindingSource, "CodObservacao", true));
            }
        }

        private void FrmGrevesEFeriados_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);
            getObsEvento();
            carregaDados(getFeriado());
        }

        private DataTable getGreve()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select * from Greves";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private DataTable getFeriado()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select * from Feriados";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void getObsEvento()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Descricao  FROM Obs_Eventos WHERE Evento = '55' ORDER BY Codigo, descricao";
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
                cbbObsEvento.DataBindings.Clear();
                cbbObsEvento.DataSource = table;
                cbbObsEvento.DisplayMember = "Descricao";
                cbbObsEvento.ValueMember = "codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
        }

        private bool DescricaoObservacaoEmUso(out string codigo, out string descricao)
        {
            codigo = "";
            descricao = "";
            var query = "SELECT Codigo, Descricao FROM Obs_Eventos WHERE Evento = '55' and Descricao = @descricao ORDER BY Descricao ";
            var GoOn = false;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@descricao", txtDescricao.Text);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                GoOn = true;
                                codigo = reader[0].ToString();
                                descricao = reader[1].ToString();
                            }
                        }

                        return GoOn;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrEmpty(dtpData.Text))
            {
                MessageBox.Show("A Data é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                dtpData.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtDescricao.Text))
            {
                MessageBox.Show("A Descrição é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricao.Focus();
                return;
            }

            if (radioButton4.Checked)
            {
                string codigo;
                string descricao;

                if (!DescricaoObservacaoEmUso(out codigo, out descricao))
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Obs_Eventos (Evento, Codigo, Descricao, Ativo)" +
                                   "SELECT Evento, MAX(Codigo)+1 AS NovoCodigo, @descricao ,'1'" +
                                   "FROM Obs_Eventos WHERE Evento = '55' GROUP BY Evento";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@descricao", txtDescricao.Text);
                        cmd.ExecuteNonQuery();
                    }

                    //if (DescricaoObservacaoEmUso(out codigo, out descricao))
                    //{
                    //    // SqlConnection conn = DatabaseConnection.Instance.Conexao;
                    //    string queryObsIng = "INSERT INTO Obs_Eventos_Ing (Evento, Codigo, Descricao, Ativo)" +
                    //                         "SELECT '55', @codigo, @descricao, '1'";
                    //    using (SqlCommand cmd = new SqlCommand(queryObsIng, conn))
                    //    {
                    //        cmd.Parameters.AddWithValue("@codigo", codigo);
                    //        cmd.Parameters.AddWithValue("@descricao", descricao);
                    //        cmd.ExecuteNonQuery();
                    //    }
                    //}
                }
            }
            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    if (radioButton3.Checked)
                    {
                        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                        string query = "update Feriado set Data = @data, Descricao = @descricao , Ativo = @ativo where Data = @data and Descricao = @descricao ";
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@data", dtpData.Value.Date);
                            cmd.Parameters.AddWithValue("@descricao", txtDescricao.Text);
                            cmd.Parameters.AddWithValue("@ativo", Convert.ToInt32(ckbAtivo.Checked));
                            cmd.ExecuteNonQuery();
                        }
                    }
                    else
                    {
                        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                        string query = "update Greves set Data = @data, Descricao = @descricao ,CodObservacao = @CodObsEvento, Ativo = @ativo where Data = @data and Descricao = @descricao ";
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@data", dtpData.Value.Date);
                            cmd.Parameters.AddWithValue("@descricao", txtDescricao.Text);
                            cmd.Parameters.AddWithValue("@CodObsEvento", (cbbObsEvento.SelectedValue == null ? (object)DBNull.Value : cbbObsEvento.SelectedValue));
                            cmd.Parameters.AddWithValue("@ativo", ckbAtivo.Checked ? 1 : 0);
                            cmd.ExecuteNonQuery();
                        }
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De: {0} - Para: {1}  /  De: {2} - Para: {3}  ", ((DataRowView)this.bindingSource.Current).Row["data"].ToString(), dtpData.Value.Date, ((DataRowView)this.bindingSource.Current).Row["descricao"].ToString(), txtDescricao.Text));
                }
                else
                {
                    if (radioButton3.Checked)
                    {
                        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                        string query = "insert into Feriados (Data, Descricao, Ativo )values(@data, @descricao,@ativo)";
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@data", dtpData.Value.Date);
                            cmd.Parameters.AddWithValue("@descricao", txtDescricao.Text);
                            cmd.Parameters.AddWithValue("@ativo", Convert.ToInt32(ckbAtivo.Checked));
                            cmd.ExecuteNonQuery();
                        }
                    }
                    else
                    {
                        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                        string query = "insert into Greves (Data, Descricao,CodObservacao, Ativo )values(@data, @descricao,@CodObsEvento,@ativo)";
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@data", dtpData.Value.Date);
                            cmd.Parameters.AddWithValue("@descricao", txtDescricao.Text);                            
                            cmd.Parameters.AddWithValue("@CodObsEvento", (cbbObsEvento.SelectedValue == null ? (object)DBNull.Value : cbbObsEvento.SelectedValue));
                            cmd.Parameters.AddWithValue("@ativo", ckbAtivo.Checked ? 1 : 0);
                            cmd.ExecuteNonQuery();
                        }
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Data: {0}  Descricao: {1}  ", dtpData.Value.Date, txtDescricao.Text));
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
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private bool GreveFeriadoEmUso()
        {
            var query = "SELECT top 1 Data, Codevento FROM Followup WHERE Data = @data AND Codevento = @codigoevento";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    if (radioButton3.Checked)
                    {
                        cmd.Parameters.AddWithValue("@data", dtpData.Value);
                        cmd.Parameters.AddWithValue("@codigoevento", "53");
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@data", dtpData.Value);
                        cmd.Parameters.AddWithValue("@codigoevento", "55");
                    }
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        return reader.HasRows;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            if (GreveFeriadoEmUso())
            {
                MessageBox.Show("Registro não pode ser alterado!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {
            cbbObsEvento.Visible = false;
            carregaDados(getFeriado());
        }

        private void radioButton4_CheckedChanged(object sender, EventArgs e)
        {
            cbbObsEvento.Visible = true;
            getObsEvento();
            carregaDados(getGreve());
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {

                    if (radioButton3.Checked)
                    {
                        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                        string query = "delete from Feriados where Data = @data and Descricao = @descricao";
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@data", dtpData.Value.Date);
                            cmd.Parameters.AddWithValue("@descricao", txtDescricao.Text);
                            cmd.ExecuteNonQuery();
                        }
                    }
                    else
                    {
                        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                        string query = "delete from Greves where Data = @data and Descricao = @descricao";
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@data", dtpData.Value.Date);
                            cmd.Parameters.AddWithValue("@descricao", txtDescricao.Text);
                            cmd.ExecuteNonQuery();
                        }
                    }

                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Descrição: {0}", txtDescricao.Text));
                    bindingSource.RemoveCurrent();
                    statusCadastro = StatusCadastro.None;
                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void txtlocaliza_TextChanged(object sender, EventArgs e)
        {
            bindingSource.Filter = "Convert(data, 'System.String') like '" + txtlocaliza.Text + "%'";
        }

    }
}
