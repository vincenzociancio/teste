using System;
using System.Data;
using System.Windows.Forms;
using System.Data.SqlClient;
using MS2000.Desktop.Classes;

namespace MS2000.Desktop.Menu.Cadastros
{
    public partial class FrmDespachante : MS2000.Desktop.Componentes.MSForm01
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

        public FrmDespachante()
        {
            InitializeComponent();
        }

        private void FrmDespachante_Load(object sender, EventArgs e)
        {
            // 1
            preencherPais();
            preencherUF();

            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getDespachante();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtCodigo.DataBindings.Add(new Binding("Text", bindingSource, "Codigo", true));
            txtNome.DataBindings.Add(new Binding("Text", bindingSource, "Razao_Social", true));
            cbbPais.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Pais"));
            txtCPF.DataBindings.Add(new Binding("Text", bindingSource, "CGC_CPF", true, DataSourceUpdateMode.OnValidation, "   .   .   -"));
            txtEndereco.DataBindings.Add(new Binding("Text", bindingSource, "Endereco", true));
            txtNumero.DataBindings.Add(new Binding("Text", bindingSource, "Numero", true));
            txtComplemento.DataBindings.Add(new Binding("Text", bindingSource, "Complemento", true));
            txtBairro.DataBindings.Add(new Binding("Text", bindingSource, "Bairro", true));
            txtCidade.DataBindings.Add(new Binding("Text", bindingSource, "Cidade", true));
            txtCEP.DataBindings.Add(new Binding("Text", bindingSource, "CEP", true, DataSourceUpdateMode.OnValidation, "     -"));
            cbbUF.DataBindings.Add(new Binding("SelectedValue", bindingSource, "UF"));
            txtEstado.DataBindings.Add(new Binding("Text", bindingSource, "Estado", true));
            txtRegistro.DataBindings.Add(new Binding("Text", bindingSource, "Registro", true));
            txtTelefone.DataBindings.Add(new Binding("Text", bindingSource, "Telefone", true, DataSourceUpdateMode.OnValidation, "(  )     -"));
            txtCelular.DataBindings.Add(new Binding("Text", bindingSource, "Celular", true, DataSourceUpdateMode.OnValidation, "(  )      -"));
            ckbExibe.DataBindings.Add(new Binding("Checked", bindingSource, "exibe_complementares", true));
        }


        private void preencherPais()
        {
            cbbPais.DataSource = getPais();
            cbbPais.DisplayMember = "descricao";
            cbbPais.ValueMember = "codigo";
        }

        private void preencherUF()
        {
            cbbUF.DataSource = getUF();
            cbbUF.DisplayMember = "codigo";
            cbbUF.ValueMember = "codigo";
        }

        private DataTable getDespachante()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select " +
                "Codigo, Razao_Social,Pais, CGC_CPF, Endereco, Numero, Complemento" +
                ",Bairro, Cidade, CEP, UF, Estado, Inscricao_Estadual, Registro" +
                ",Telefone,Celular, exibe_complementares " +
                "from procuradores where lixo = 0 order by Razao_Social";
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

        private DataTable getPais()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select * from tab_pais where codigo = '105' order by descricao";
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

        private DataTable getUF()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select * from tab_uf order by codigo";
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

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
            cbbPais.SelectedValue = 105;
            cbbPais.Enabled = false;
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtNome.Text))
            {
                MessageBox.Show("O nome é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtNome.Focus();
                return;
            }
            if (!txtCPF.MaskCompleted)
            {
                MessageBox.Show("O cpf é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCPF.Focus();
                return;
            }
            if (string.IsNullOrWhiteSpace(txtEndereco.Text))
            {
                MessageBox.Show("O endereço é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtEndereco.Focus();
                return;
            }
            if (string.IsNullOrWhiteSpace(txtNumero.Text))
            {
                MessageBox.Show("O número é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtNumero.Focus();
                return;
            }
            //if (string.IsNullOrWhiteSpace(txtComplemento.Text))
            //{
            //    MessageBox.Show("O complemento é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
            //    txtComplemento.Focus();
            //    return;
            //}
            if (string.IsNullOrWhiteSpace(txtBairro.Text))
            {
                MessageBox.Show("O bairro é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtBairro.Focus();
                return;
            }
            if (string.IsNullOrWhiteSpace(txtCidade.Text))
            {
                MessageBox.Show("A cidade é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCidade.Focus();
                return;
            }
            if (!txtCEP.MaskCompleted)
            {
                MessageBox.Show("O cep é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCEP.Focus();
                return;
            }
            if (string.IsNullOrWhiteSpace(txtEstado.Text))
            {
                MessageBox.Show("O estado é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtEstado.Focus();
                return;
            }
            if (string.IsNullOrWhiteSpace(cbbUF.Text))
            {
                MessageBox.Show("A uf é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbUF.Focus();
                return;
            }
            if (string.IsNullOrWhiteSpace(cbbPais.Text)|| cbbPais.SelectedValue == null)
            {
                MessageBox.Show("O país é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbPais.Focus();
                return;
            }
            if (string.IsNullOrWhiteSpace(txtRegistro.Text))
            {
                MessageBox.Show("O registro é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtRegistro.Focus();
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update procuradores set " +
                        "Razao_Social = @Razao_Social, Pais = @Pais, CGC_CPF = @CGC_CPF, Endereco = @Endereco, Numero = @Numero, Complemento = @Complemento" +
                        ",Bairro = @Bairro, Cidade = @Cidade, CEP = @CEP, UF = @UF, Estado = @Estado, Registro = @Registro" +
                        ",Telefone = @Telefone,Celular= @Celular, exibe_complementares = @exibe_complementares " +
                        "where codigo = @codigo";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Codigo", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@Razao_Social", txtNome.Text);
                        cmd.Parameters.AddWithValue("@Pais", (cbbPais.SelectedValue == null) ? (object)DBNull.Value : cbbPais.SelectedValue);
                        cmd.Parameters.AddWithValue("@CGC_CPF", (txtCPF.MaskCompleted ? txtCPF.Text : (object)DBNull.Value));
                        cmd.Parameters.AddWithValue("@Endereco", txtEndereco.Text);
                        cmd.Parameters.AddWithValue("@Numero", txtNumero.Text);
                        cmd.Parameters.AddWithValue("@Complemento", txtComplemento.Text);
                        cmd.Parameters.AddWithValue("@Bairro", txtBairro.Text);
                        cmd.Parameters.AddWithValue("@Cidade", txtCidade.Text);
                        cmd.Parameters.AddWithValue("@CEP", (txtCEP.MaskCompleted ? txtCEP.Text : (object)DBNull.Value));
                        cmd.Parameters.AddWithValue("@UF", (cbbUF.SelectedValue == null) ? (object)DBNull.Value : cbbUF.SelectedValue);
                        cmd.Parameters.AddWithValue("@Estado", txtEstado.Text);
                        cmd.Parameters.AddWithValue("@Registro", txtRegistro.Text);
                        cmd.Parameters.AddWithValue("@Telefone", (txtTelefone.MaskCompleted ? txtTelefone.Text : (object)DBNull.Value));
                        cmd.Parameters.AddWithValue("@Celular", (txtCelular.MaskCompleted ? txtCelular.Text : (object)DBNull.Value));
                        cmd.Parameters.AddWithValue("@exibe_complementares", ckbExibe.Checked);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De: {0} - Para: {1}", ((DataRowView)this.bindingSource.Current).Row["Razao_Social"].ToString(), txtNome.Text));
                }
                else
                {
                  //  int novoCodigo;
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into procuradores" +
                        "(Razao_Social,Pais, CGC_CPF, Endereco, Numero, Complemento" +
                        ",Bairro, Cidade, CEP, UF, Estado, Registro" +
                        ",Telefone,Celular, exibe_complementares)" +
                        "values" +
                        "(@Razao_Social, @Pais, @CGC_CPF, @Endereco, @Numero, @Complemento" +
                        ",@Bairro, @Cidade, @CEP, @UF, @Estado, @Registro" +
                        ",@Telefone,@Celular, @exibe_complementares)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {                        
                        cmd.Parameters.AddWithValue("@Razao_Social", txtNome.Text);
                        cmd.Parameters.AddWithValue("@Pais", cbbPais.SelectedValue == null ? (object)DBNull.Value : cbbPais.SelectedValue);
                        cmd.Parameters.AddWithValue("@CGC_CPF", (txtCPF.MaskCompleted ? txtCPF.Text : (object)DBNull.Value));
                        cmd.Parameters.AddWithValue("@Endereco", txtEndereco.Text);
                        cmd.Parameters.AddWithValue("@Numero", txtNumero.Text);
                        cmd.Parameters.AddWithValue("@Complemento", txtComplemento.Text);
                        cmd.Parameters.AddWithValue("@Bairro", txtBairro.Text);
                        cmd.Parameters.AddWithValue("@Cidade", txtCidade.Text);
                        cmd.Parameters.AddWithValue("@CEP", (txtCEP.MaskCompleted ? txtCEP.Text : (object)DBNull.Value));
                        cmd.Parameters.AddWithValue("@UF", cbbUF.SelectedValue == null? (object)DBNull.Value : cbbUF.SelectedValue);
                        cmd.Parameters.AddWithValue("@Estado", txtEstado.Text);
                        cmd.Parameters.AddWithValue("@Registro", txtRegistro.Text);
                        cmd.Parameters.AddWithValue("@Telefone", (txtTelefone.MaskCompleted ? txtTelefone.Text : (object)DBNull.Value));
                        cmd.Parameters.AddWithValue("@Celular", (txtCelular.MaskCompleted ? txtCelular.Text : (object)DBNull.Value));
                        cmd.Parameters.AddWithValue("@exibe_complementares", Convert.ToInt16(ckbExibe.Checked));
                        cmd.ExecuteNonQuery();
                    }                 
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Nome: {0} ", txtNome.Text));                    
                    bindingSource.DataSource = getDespachante();                    
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
            cbbPais.SelectedValue = 105;
            cbbPais.Enabled = false;
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Procuradores set lixo = 1, exibe_complementares = 0 where codigo = @codigo";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@codigo", txtCodigo.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Nome: {0}", txtNome.Text));
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

        private void txtLocalizar_TextChanged(object sender, EventArgs e)
        {
            bindingSource.Filter = "Razao_Social LIKE '%" + txtLocalizar.Text + "%'";
        }
    }
}
