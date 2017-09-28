using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Cadastros
{
    public partial class FrmObservacoesDeFollowUp : MS2000.Desktop.Componentes.MSForm01
    {
        public string CodigoEvento { get; set; }
        protected StatusCadastro statusCadastro;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
            grbFiltro.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }
            VerificaBotoes();
            txtCodigo.Enabled = false;
        }

        public FrmObservacoesDeFollowUp()
        {
            InitializeComponent();
        }

        private void populaDataGrid()
        {
            bindingSource.DataSource = getObservacoes(CodigoEvento);
            dataGridView.DataSource = bindingSource;
        }

        private void FrmObservacoesDeFollowUp_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;            
            populaDataGrid();            
            bindingNavigator.BindingSource = bindingSource;

            txtCodigo.DataBindings.Add(new Binding("Text", bindingSource, "Codigo", true));
            ckbAtivo.DataBindings.Add(new Binding("Checked", bindingSource, "Ativo", true));
            txtDescricaoPort.DataBindings.Add(new Binding("Text", bindingSource, "descricao", true));
            txtDescricaoIngles.DataBindings.Add(new Binding("Text", bindingSource, "descricao_Ingles", true));
            ckbExibirCliente.DataBindings.Add(new Binding("Checked", bindingSource, "cli_visu", true));

            ckbFiltroAtivos.Checked = true;

            cbbOpcao.SelectedIndex = 0;
        }

        private DataTable getObservacoes(string evento)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Codigo, Descricao, cli_visu, Cast(Ativo as bit) as Ativo, Descricao_Ingles " +
                "from Obs_Eventos where evento = @evento order by cast(codigo as int)";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@evento", CodigoEvento);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
        }

        private string getNovoCodigoObs()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " SELECT Max(Cast(Codigo as int))+1 AS NovoCodigo FROM Obs_Eventos Where evento = @evento";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@evento", CodigoEvento);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            reader.Read();
                            return reader[0].ToString();
                        }
                        else
                        {
                            return "1";
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return "-1";
            }
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtDescricaoPort.Text))
            {
                MessageBox.Show("A descrição Português é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricaoPort.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtDescricaoIngles.Text))
            {
                MessageBox.Show("A descrição Inglês é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricaoIngles.Focus();
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Obs_Eventos set descricao = @descricao, descricao_ingles = @descricao_ingles, cli_visu = @cli_visu, ativo = @ativo where codigo = @codigo and evento = @evento";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@descricao", txtDescricaoPort.Text);
                        cmd.Parameters.AddWithValue("@descricao_ingles", txtDescricaoIngles.Text);
                        cmd.Parameters.AddWithValue("@ativo", Convert.ToBoolean(ckbAtivo.Checked));
                        cmd.Parameters.AddWithValue("@cli_visu", Convert.ToBoolean(ckbExibirCliente.Checked));
                        cmd.Parameters.AddWithValue("@codigo", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@evento", CodigoEvento);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De: {0} - Para: {1}", ((DataRowView)this.bindingSource.Current).Row["descricao"].ToString(), txtDescricaoPort.Text));
                }
                else
                {
                    string novoCodigo;
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into Obs_Eventos (evento, codigo, descricao, descricao_ingles, cli_visu, ativo)values(@evento, @codigo, @descricao, @descricao_ingles, @cli_visu, @ativo)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        novoCodigo = getNovoCodigoObs();
                        cmd.Parameters.AddWithValue("@descricao", txtDescricaoPort.Text);
                        cmd.Parameters.AddWithValue("@descricao_ingles", txtDescricaoIngles.Text);
                        cmd.Parameters.AddWithValue("@ativo", Convert.ToBoolean(ckbAtivo.Checked));
                        cmd.Parameters.AddWithValue("@cli_visu", Convert.ToBoolean(ckbExibirCliente.Checked));
                        cmd.Parameters.AddWithValue("@codigo", novoCodigo);
                        cmd.Parameters.AddWithValue("@evento", CodigoEvento);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Descrição: {0} ", txtDescricaoPort.Text));
                    var descricao_busca = txtDescricaoPort.Text;
                    populaDataGrid();
                    bindingSource.Position = bindingSource.Find("descricao", descricao_busca);
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

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
            txtCodigo.Enabled = false;
            txtDescricaoPort.Enabled = false;
            txtDescricaoIngles.Enabled = false;
            ckbAtivo.Enabled = (txtCodigo.Text != "0");
        }

        private bool ObsEmUso(string codigoObs, string codigoEvento)
        {
            var query = "SELECT top 1 CodEvento FROM followUp WHERE CodEvento = @CodEvento and CodObs = @CodObs";
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@CodEvento", codigoEvento);
                    cmd.Parameters.AddWithValue("@CodObs", codigoObs);
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

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (ObsEmUso(txtCodigo.Text, CodigoEvento))
            {
                MessageBox.Show("Este Evento não pode ser excluída!", "Excluir", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (txtCodigo.Text == "0")
            {
                MessageBox.Show("Observações com código zero(0) não podem ser excluídas!", "Excluir", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "delete from Obs_Eventos where Evento = @Evento and Codigo = @Codigo";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Evento", CodigoEvento);
                        cmd.Parameters.AddWithValue("@Codigo", txtCodigo.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Descricao: {0}", txtDescricaoPort.Text));
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

        private void ckbFiltroAtivos_CheckedChanged(object sender, EventArgs e)
        {
            if (ckbFiltroAtivos.Checked)
            {
                bindingSource.Filter = "ativo = 'True'";
            }
            else
            {
                bindingSource.RemoveFilter();
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void txtLocalizar_TextChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtLocalizar.Text))
            {
                bindingSource.RemoveFilter();
                ckbFiltroAtivos_CheckedChanged(null, null);
            }
            else
            {
                if (cbbOpcao.SelectedIndex == 0)
                {
                    bindingSource.Filter = "codigo LIKE '" + txtLocalizar.Text + "%'";
                }
                else
                {
                    bindingSource.Filter = "descricao LIKE '%" + txtLocalizar.Text + "%'";
                }
            }
        }
    }
}
