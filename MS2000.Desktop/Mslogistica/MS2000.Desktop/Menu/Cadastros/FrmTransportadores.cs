using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Cadastros
{
    public partial class FrmTransportadores : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        const string _codigoPaisBrasil = "105";

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
            gpbFiltro.Enabled = (statusCadastro == StatusCadastro.None);
            cbbPais_SelectedIndexChanged(null, null);
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

        public FrmTransportadores()
        {
            InitializeComponent();
        }

        private void FrmTransportadores_Load(object sender, EventArgs e)
        {
            Dictionary<int, string> _pessoa = new Dictionary<int, string>();
            _pessoa.Add(0, "JURÍDICA");
            _pessoa.Add(1, "FÍSICA");

            cbbTipoPessoa.DisplayMember = "Value";
            cbbTipoPessoa.ValueMember = "Key";
            cbbTipoPessoa.DataSource = new BindingSource(_pessoa, null);
            cbbTipoPessoa.SelectedIndex = 0;
            //// 1
            getPais();
            getUF();

            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getTransportadores();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtCodigo.DataBindings.Add(new Binding("Text", bindingSource, "Codigo", true));
            txtRazaoSocial.DataBindings.Add(new Binding("Text", bindingSource, "Razao_Social", true));
            cbbPais.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Pais"));
            txtCNPJ.DataBindings.Add(new Binding("Text", bindingSource, "CGC_CPF", true, DataSourceUpdateMode.OnValidation, "  .   .   /    -"));
            txtEndereco.DataBindings.Add(new Binding("Text", bindingSource, "Endereco", true));
            txtNumero.DataBindings.Add(new Binding("Text", bindingSource, "Numero", true));
            txtComplemento.DataBindings.Add(new Binding("Text", bindingSource, "Complemento", true));
            txtBairro.DataBindings.Add(new Binding("Text", bindingSource, "Bairro", true));
            txtCidade.DataBindings.Add(new Binding("Text", bindingSource, "Cidade", true));
            txtCEP.DataBindings.Add(new Binding("Text", bindingSource, "CEP", true, DataSourceUpdateMode.OnValidation, "     -"));
            cbbUF.DataBindings.Add(new Binding("SelectedValue", bindingSource, "UF"));
            txtEstado.DataBindings.Add(new Binding("Text", bindingSource, "Estado", true));
            txtIE.DataBindings.Add(new Binding("Text", bindingSource, "Inscricao_Estadual", true));
            txtTelefone.DataBindings.Add(new Binding("Text", bindingSource, "Telefone", true, DataSourceUpdateMode.OnValidation, "(  )     -"));
            cbbTipoPessoa.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Pessoa"));

        }

        private DataTable getTransportadores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Codigo, upper(Razao_Social)as Razao_Social, Pais,CGC_CPF,Endereco,Numero," +
                "Complemento,Bairro,Cidade,CEP,UF,Estado,Inscricao_Estadual, Telefone, Pessoa " +
                "from Transportadores where lixo = 0 order by Razao_Social";
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

        private void getPais()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select * from tab_pais order by descricao";
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
                cbbPais.DataSource = table;
                cbbPais.DisplayMember = "descricao";
                cbbPais.ValueMember = "codigo";              
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getUF()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select * from tab_uf order by codigo";
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
                cbbUF.DataSource = table;
                cbbUF.DisplayMember = "codigo";
                cbbUF.ValueMember = "codigo";
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

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtRazaoSocial.Text))
            {
                MessageBox.Show("A razão social é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtRazaoSocial.Focus();
                return;
            }

            if (cbbTipoPessoa.SelectedValue == null)
            {
                MessageBox.Show("O tipo de pessoa é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbTipoPessoa.Focus();
                return;
            }

            if (cbbPais.SelectedValue == null || string.IsNullOrEmpty(cbbPais.Text))
            {
                MessageBox.Show("O país é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbPais.Focus();
                return;
            }          

            if ((txtCNPJ.MaskCompleted == false) &&
                ((string)cbbPais.SelectedValue == _codigoPaisBrasil) &&
                (cbbTipoPessoa.SelectedIndex == 0))
            {
                MessageBox.Show("O CNPJ é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCNPJ.Focus();
                return;
            }

            if ((txtCNPJ.MaskCompleted == false) &&
                ((string)cbbPais.SelectedValue == _codigoPaisBrasil) &&
                (cbbTipoPessoa.SelectedIndex == 1))
            {
                MessageBox.Show("O CPF é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCNPJ.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtIE.Text) &&
                ((string)cbbPais.SelectedValue == _codigoPaisBrasil) &&
                (cbbTipoPessoa.SelectedIndex == 0))
            {
                MessageBox.Show("A inscrição estadual é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtIE.Focus();
                return;
            }

            if ((string)cbbPais.SelectedValue == _codigoPaisBrasil)
            {
                if (string.IsNullOrEmpty(txtEndereco.Text) ||
                    string.IsNullOrEmpty(txtNumero.Text) ||                    
                    string.IsNullOrEmpty(txtBairro.Text) ||
                    string.IsNullOrEmpty(txtCidade.Text) ||
                    (txtCEP.MaskCompleted == false) ||
                    string.IsNullOrEmpty(cbbUF.Text) ||
                    string.IsNullOrEmpty(txtEstado.Text))
                {
                    MessageBox.Show("Os seguintes campos são obrigatórios: \n\r - Endereço \n\r - Número \n\r - Complemento \n\r - Bairro \n\r - Cidade \n\r - CEP \n\r - UF \n\r - Estado", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    return;
                }
            }

            if ((string)cbbPais.SelectedValue != _codigoPaisBrasil)
            {
                if (string.IsNullOrEmpty(txtEndereco.Text) ||
                    string.IsNullOrEmpty(txtNumero.Text) ||
                    string.IsNullOrEmpty(txtCidade.Text) ||
                    string.IsNullOrEmpty(txtEstado.Text))
                {
                    MessageBox.Show("Os seguintes campos são obrigatórios: \n\r - Endereço \n\r - Número\n\r - Cidade \n\r - Estado", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    return;
                }
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Transportadores set " +
                        "Razao_Social = @Razao_Social, Pais = @Pais, CGC_CPF = @CGC_CPF, Endereco = @Endereco, Numero = @Numero, Complemento = @Complemento" +
                        ",Bairro = @Bairro, Cidade = @Cidade, CEP = @CEP, UF = @UF, Estado = @Estado, Inscricao_Estadual = @Inscricao_Estadual, Telefone = @Telefone, Pessoa = @Pessoa " +
                        "where codigo = @codigo";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Codigo", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@Razao_Social", txtRazaoSocial.Text);
                        cmd.Parameters.AddWithValue("@Pais", (cbbPais.SelectedValue == null ? (object)DBNull.Value : cbbPais.SelectedValue));
                        cmd.Parameters.AddWithValue("@CGC_CPF", (txtCNPJ.MaskCompleted ? txtCNPJ.Text : (object)DBNull.Value));
                        cmd.Parameters.AddWithValue("@Endereco", txtEndereco.Text);
                        cmd.Parameters.AddWithValue("@Numero", txtNumero.Text);
                        cmd.Parameters.AddWithValue("@Complemento", txtComplemento.Text);
                        cmd.Parameters.AddWithValue("@Bairro", txtBairro.Text);
                        cmd.Parameters.AddWithValue("@Cidade", txtCidade.Text);
                        cmd.Parameters.AddWithValue("@CEP", (txtCEP.MaskCompleted ? txtCEP.Text : (object)DBNull.Value));
                        cmd.Parameters.AddWithValue("@UF", (cbbUF.SelectedValue == null ? (object)DBNull.Value : cbbUF.SelectedValue));
                        cmd.Parameters.AddWithValue("@Estado", txtEstado.Text);
                        cmd.Parameters.AddWithValue("@Inscricao_Estadual", txtIE.Text);
                        cmd.Parameters.AddWithValue("@Telefone", (txtTelefone.MaskCompleted ? txtTelefone.Text : (object)DBNull.Value));
                        cmd.Parameters.AddWithValue("@Pessoa", Convert.ToInt16(cbbTipoPessoa.SelectedValue));
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De: {0} - Para: {1}", ((DataRowView)this.bindingSource.Current).Row["Razao_Social"].ToString(), txtRazaoSocial.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into Transportadores" +
                        "(Razao_Social, Pais, CGC_CPF, Endereco, Numero, Complemento" +
                        ",Bairro, Cidade, CEP, UF, Estado, Inscricao_Estadual, Telefone, Pessoa)" +
                        "values" +
                        "(@Razao_Social, @Pais, @CGC_CPF, @Endereco, @Numero, @Complemento" +
                        ",@Bairro, @Cidade, @CEP, @UF, @Estado, @Inscricao_Estadual, @Telefone, @Pessoa)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Razao_Social", txtRazaoSocial.Text);
                        cmd.Parameters.AddWithValue("@Pais", (cbbPais.SelectedValue == null ? (object)DBNull.Value : cbbPais.SelectedValue));
                        cmd.Parameters.AddWithValue("@CGC_CPF", (txtCNPJ.MaskCompleted ? txtCNPJ.Text : (object)DBNull.Value));
                        cmd.Parameters.AddWithValue("@Endereco", txtEndereco.Text);
                        cmd.Parameters.AddWithValue("@Numero", txtNumero.Text);
                        cmd.Parameters.AddWithValue("@Complemento", txtComplemento.Text);
                        cmd.Parameters.AddWithValue("@Bairro", txtBairro.Text);
                        cmd.Parameters.AddWithValue("@Cidade", txtCidade.Text);
                        cmd.Parameters.AddWithValue("@CEP", (txtCEP.MaskCompleted ? txtCEP.Text : (object)DBNull.Value));
                        cmd.Parameters.AddWithValue("@UF", (cbbUF.SelectedValue == null ? (object)DBNull.Value : cbbUF.SelectedValue));
                        cmd.Parameters.AddWithValue("@Estado", txtEstado.Text);
                        cmd.Parameters.AddWithValue("@Inscricao_Estadual", txtIE.Text);
                        cmd.Parameters.AddWithValue("@Telefone", (txtTelefone.MaskCompleted ? txtTelefone.Text : (object)DBNull.Value));
                        cmd.Parameters.AddWithValue("@Pessoa", Convert.ToInt16(cbbTipoPessoa.SelectedValue));
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Razão Social: {0} ", txtRazaoSocial.Text));
                    bindingSource.DataSource = getTransportadores();                    
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
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Transportadores set lixo = 1 where codigo = @codigo";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@codigo", txtCodigo.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Razão Social: {0}", txtRazaoSocial.Text));
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

        private void cbbPais_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtCNPJ.Enabled = false;
            txtIE.Enabled = false;
            txtCNPJ.Clear();
            txtIE.Clear();

            if (cbbPais.SelectedValue != null)
            {
                if (cbbPais.SelectedValue.ToString().Contains(_codigoPaisBrasil)
                    && statusCadastro != StatusCadastro.None)
                {
                    txtCNPJ.Enabled = true;
                    txtIE.Enabled = (cbbTipoPessoa.SelectedIndex == 0);
                }
                else
                    if (statusCadastro != StatusCadastro.None)
                    {
                        txtCNPJ.Enabled = false;
                        txtIE.Enabled = false;
                        txtCNPJ.Clear();
                        txtIE.Clear();
                    }
            }
        }


        private void txtLocalizar_TextChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtLocalizar.Text))
            {
                bindingSource.RemoveFilter();
            }
            else
            {
                bindingSource.Filter = "Razao_Social LIKE '%" + txtLocalizar.Text + "%'";
            }
        }

        private void cbbTipoPessoa_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbbTipoPessoa.SelectedIndex == 0)
            {
                txtCNPJ.Mask = "00,000,000/0000-00";
                lbCNPJ_CPF.Text = "CNPJ";
            }
            else
            {
                txtCNPJ.Mask = "000,000,000-00";
                lbCNPJ_CPF.Text = "CPF";
            }

            cbbPais_SelectedIndexChanged(null, null);
        }

        private void cbbPais_TextChanged(object sender, EventArgs e)
        {
            cbbPais_SelectedIndexChanged(null,null);
        }  
    }
}
