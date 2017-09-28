using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Sistema
{
    public partial class FrmControleLicenciamentoSoftware : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        bool _canExclui;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None) && (_canExclui);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
            groupBox1.Enabled = (statusCadastro == StatusCadastro.None);
            txtValorTotal.Enabled = false;
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmControleLicenciamentoSoftware()
        {
            InitializeComponent();
        }

        private DataTable getSoftware()
        {
            string query = "SELECT ID,Nome,Chave,Fabricante,Fornecedor,DataCompra,Quantidade,cast((ValorUnitario)as numeric(12,2))as ValorUnitario ,Expira,DataExpira,Observacao,  cast((ValorUnitario * Quantidade) as numeric(12,2)) As ValorTotal " +
                           "FROM [dbo].[Sistemas.ControleLicenciamentoSoftware] order by ID";
            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
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
        }

        private void getFabricante()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT ID, Descricao FROM [dbo].[Sistemas.ControleLicenciamentoSoftwareFabricante] order by Descricao";
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
                mcbbFabricante.DataSource = table;
                mcbbFabricante.DisplayMember = "Descricao";
                mcbbFabricante.ValueMember = "ID";
                mcbbFabricante.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getFornecedor()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Id, Razao_Social from Fornecedores order by Razao_Social ";
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
                mcbbFornecedor.DataSource = table;
                mcbbFornecedor.DisplayMember = "Razao_Social";
                mcbbFornecedor.ValueMember = "Id";
                mcbbFornecedor.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }


        private void FrmControleLicenciamentoSoftware_Load(object sender, EventArgs e)
        {
            _canExclui = Autorizacao.AccessoOK(new AutorizacaoEspecifica
          {
              Formulario = Convert.ToInt32(this.Tag),
              Descricao = "Sistemas - Controle de Licenciamento de Software - Exclui",
              Chave_Busca = "btnExcluir"
          });

            getFornecedor();
            getFabricante();

            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getSoftware();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtNome.DataBindings.Add(new Binding("Text", bindingSource, "Nome", true));
            mcbbFabricante.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Fabricante"));
            txtChave.DataBindings.Add(new Binding("Text", bindingSource, "Chave", true));
            mcbbFornecedor.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Fornecedor"));
            txtDataCompra.DataBindings.Add(new Binding("Text", bindingSource, "DataCompra", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtQuantidade.DataBindings.Add(new Binding("Text", bindingSource, "Quantidade", true));
            txtValorUnitario.DataBindings.Add(new Binding("Text", bindingSource, "ValorUnitario", true));
            txtValorTotal.DataBindings.Add(new Binding("Text", bindingSource, "ValorTotal", true));
            ckbExpira.DataBindings.Add(new Binding("Checked", bindingSource, "Expira", true));
            txtDataExpira.DataBindings.Add(new Binding("Text", bindingSource, "DataExpira", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtObservacao.DataBindings.Add(new Binding("Text", bindingSource, "Observacao", true));
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrEmpty(txtNome.Text))
            {
                MessageBox.Show("O Software é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtNome.Focus();
                return;
            }

            if (string.IsNullOrEmpty(mcbbFabricante.Text))
            {
                MessageBox.Show("O Fabricante é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mcbbFabricante.Focus();
                return;
            }

            if (string.IsNullOrEmpty(mcbbFornecedor.Text))
            {
                MessageBox.Show("O Fornecedor é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mcbbFornecedor.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtQuantidade.Text))
            {
                MessageBox.Show("A Quantidade é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtQuantidade.Focus();
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "UPDATE [dbo].[Sistemas.ControleLicenciamentoSoftware] " +
                                   "SET [Nome] = @Nome,[Chave] = @Chave,[Fabricante] = @Fabricante " +
                                   ",[Fornecedor] = @Fornecedor,[DataCompra] = @DataCompra " +
                                   ",[Quantidade] = @Quantidade,[ValorUnitario] = @ValorUnitario " +
                                   ",[Expira] = @Expira,[DataExpira] = @DataExpira,[Observacao] = @Observacao " +
                                   "WHERE Id= @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Nome", txtNome.Text);
                        cmd.Parameters.AddWithValue("@Chave", txtChave.Text);
                        cmd.Parameters.AddWithValue("@Fabricante", (mcbbFabricante.SelectedValue == null ? "" : mcbbFabricante.SelectedValue));
                        cmd.Parameters.AddWithValue("@Fornecedor", (mcbbFornecedor.SelectedValue == null ? "" : mcbbFornecedor.SelectedValue));
                        cmd.Parameters.AddWithValue("@DataCompra", txtDataCompra.MaskCompleted ? (object)txtDataCompra.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Quantidade", txtQuantidade.Text);
                        cmd.Parameters.AddWithValue("@ValorUnitario", Convert.ToDouble(txtValorUnitario.Text));
                        cmd.Parameters.AddWithValue("@Expira", Convert.ToInt16(ckbExpira.Checked));
                        cmd.Parameters.AddWithValue("@DataExpira", txtDataExpira.MaskCompleted ? (object)txtDataExpira.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Observacao", txtObservacao.Text);
                        cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("ID").Current.ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Software:{0} Chave:{1} Data da Compra{2}", txtNome.Text, txtChave.Text, txtDataCompra.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO [dbo].[Sistemas.ControleLicenciamentoSoftware] " +
                                   "([Nome],[Chave],[Fabricante],[Fornecedor],[DataCompra],[Quantidade] " +
                                   ",[ValorUnitario],[Expira],[DataExpira],[Observacao]) " +
                                   " VALUES " +
                                   "(@Nome,@Chave,@Fabricante,@Fornecedor,@DataCompra,@Quantidade " +
                                   ",@ValorUnitario,@Expira,@DataExpira,@Observacao)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Nome", txtNome.Text);
                        cmd.Parameters.AddWithValue("@Chave", txtChave.Text);
                        cmd.Parameters.AddWithValue("@Fabricante", (mcbbFabricante.SelectedValue == null ? "" : mcbbFabricante.SelectedValue));
                        cmd.Parameters.AddWithValue("@Fornecedor", (mcbbFornecedor.SelectedValue == null ? "" : mcbbFornecedor.SelectedValue));
                        cmd.Parameters.AddWithValue("@DataCompra", txtDataCompra.MaskCompleted ? (object)txtDataCompra.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Quantidade", txtQuantidade.Text);
                        cmd.Parameters.AddWithValue("@ValorUnitario", Convert.ToDouble(txtValorUnitario.Text));
                        cmd.Parameters.AddWithValue("@Expira", Convert.ToInt16(ckbExpira.Checked));
                        cmd.Parameters.AddWithValue("@DataExpira", txtDataExpira.MaskCompleted ? (object)txtDataExpira.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Observacao", txtObservacao.Text);
                        cmd.ExecuteNonQuery();
                    }
                    bindingSource.DataSource = getSoftware();
                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Software:{0} Chave:{1} Data da Compra{2}", txtNome.Text, txtChave.Text, txtDataCompra.Text));
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
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "DELETE FROM [dbo].[Sistemas.ControleLicenciamentoSoftware] where ID = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("ID").Current.ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Software: {0}", txtNome.Text));
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

        private void btnCadastroFabricante_Click(object sender, EventArgs e)
        {
            using (var form = new FrmCadastroFabricanteSoftware())
            {
                if (FrmPrincipal.ShowModalMdiChildren(form) == DialogResult.OK)
                {
                    getFabricante();
                }
            }
        }

        private void ckbExpira_CheckedChanged(object sender, EventArgs e)
        {
            if (ckbExpira.Checked)
            {
                txtDataExpira.Enabled = true;
            }
            else
            {
                txtDataExpira.Enabled = false;
            }
        }

        private void dataGridView_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dataGridView.Columns[e.ColumnIndex].Name == "Arquivo")
            {
                var form = new FrmControleLicenciamentoSoftwareUpload();
                form.ID = dataGridView.Rows[e.RowIndex].Cells["ID"].Value.ToString();
                form.RazaoSocial = txtNome.Text;
                FrmPrincipal.ShowModalMdiChildren(form);
            }
        }
        public static void SomenteNumero(KeyPressEventArgs e)
        {
            if (char.IsLetter(e.KeyChar) || //Letras
               char.IsSymbol(e.KeyChar) || //Símbolos
               char.IsWhiteSpace(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void txtQuantidade_KeyPress(object sender, KeyPressEventArgs e)
        {
            SomenteNumero(e);
        }

        private void txtValorUnitario_KeyPress(object sender, KeyPressEventArgs e)
        {
            SomenteNumero(e);
        }

        private void txtLocaliza_TextChanged(object sender, EventArgs e)
        {
            bindingSource.Filter = "Nome LIKE '" + txtLocaliza.Text + "%'";
        }

        private void txtValorUnitario_TextChanged(object sender, EventArgs e)
        {
            Util.MascaraMonetaria(ref txtValorUnitario);

            txtValorTotal.Text = "";
            if ((!string.IsNullOrEmpty(txtQuantidade.Text)) && (!string.IsNullOrEmpty(txtValorUnitario.Text)))
            {
                double valorOriginal = (Convert.ToDouble(txtValorUnitario.Text) * Convert.ToDouble(txtQuantidade.Text));

                txtValorTotal.Text = Util.CasasDecimais(valorOriginal, 2);
            }
        }

        //public static void MascaraMonetaria(ref TextBox txt)
        //{
        //    string m = string.Empty;
        //    double v = 0;
        //    try
        //    {
        //        m = txt.Text.Replace(",", "").Replace(".", "");
        //        if (m.Equals(""))
        //            m = "";
        //        m = m.PadLeft(3, '0');
        //        if (m.Length > 3 & m.Substring(0, 1) == "0")
        //            m = m.Substring(1, m.Length - 1);
        //        v = Convert.ToDouble(m) / 100;
        //        txt.Text = string.Format("{0:N}", v);
        //        txt.SelectionStart = txt.Text.Length;
        //    }
        //    catch (Exception)
        //    {

        //        throw;
        //    }
        //}

        private void txtValorTotal_TextChanged(object sender, EventArgs e)
        {
            Util.MascaraMonetaria(ref txtValorTotal);
        }

        private void txtQuantidade_TextChanged(object sender, EventArgs e)
        {
            txtValorTotal.Text = "";
            if ((!string.IsNullOrEmpty(txtQuantidade.Text)) && (!string.IsNullOrEmpty(txtValorUnitario.Text)))
            {
                double valorOriginal = (Convert.ToDouble(txtValorUnitario.Text) * Convert.ToDouble(txtQuantidade.Text));

                txtValorTotal.Text = Util.CasasDecimais(valorOriginal, 2);
            }
        }

        private void printToolStripButton_Click(object sender, EventArgs e)
        {

        }
    }
}
