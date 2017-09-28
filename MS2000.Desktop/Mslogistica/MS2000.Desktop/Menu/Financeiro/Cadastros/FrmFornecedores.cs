using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Financeiro.Cadastros
{
    public partial class FrmFornecedores : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        public FrmFornecedores()
        {
            InitializeComponent();
        }

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled    = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled   = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled      = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled    = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled  = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }            
                
            VerificaBotoes();
        }

        private void FrmFornecedores_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;

            getPais();
            getUF();
            getContasContabeis();

            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;

            AtualizaGrid();

            rdbAtivos_CheckedChanged(rdbAtivos, null);

            bindingNavigator.BindingSource = bindingSource;

            txtCodigo.DataBindings.Add(new Binding("Text", bindingSource, "Id", true));
            txtRazaoSocial.DataBindings.Add(new Binding("Text", bindingSource, "Razao_Social", true));
            txtNomeFantasia.DataBindings.Add(new Binding("Text", bindingSource, "Fantasia", true));
            txtCNPJ.DataBindings.Add(new Binding("Text", bindingSource, "CNPJ_CPF_COMPLETO", true));
            txtCPF.DataBindings.Add(new Binding("Text", bindingSource, "CPF", true));            
            txtEndereco.DataBindings.Add(new Binding("Text", bindingSource, "Endereco", true));
            txtNumero.DataBindings.Add(new Binding("Text", bindingSource, "Numero", true));
            txtComplemento.DataBindings.Add(new Binding("Text", bindingSource, "Complemento", true));
            txtCEP.DataBindings.Add(new Binding("Text", bindingSource, "CEP", true));
            txtBairro.DataBindings.Add(new Binding("Text", bindingSource, "Bairro", true));
            txtCidade.DataBindings.Add(new Binding("Text", bindingSource, "Cidade", true));
            cbbUF.DataBindings.Add(new Binding("SelectedValue", bindingSource, "UF", true));
            cbbPais.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Pais", true));
            txtInscEstadual.DataBindings.Add(new Binding("Text", bindingSource, "Inscricao_Estadual", true));
            ccbPlanoContabil.DataBindings.Add(new Binding("SelectedValue", bindingSource, "fk_Plano_Contas_Contabil", true));
            txtBanco.DataBindings.Add(new Binding("Text", bindingSource, "Banco", true));
            txtAgencia.DataBindings.Add(new Binding("Text", bindingSource, "Agencia", true));
            txtContaCorrente.DataBindings.Add(new Binding("Text", bindingSource, "Conta_Corrente", true));
            txtTelefone.DataBindings.Add(new Binding("Text", bindingSource, "Telefone", true));
            txtContato.DataBindings.Add(new Binding("Text", bindingSource, "Contato", true));
            txtEmail.DataBindings.Add(new Binding("Text", bindingSource, "Email", true));
            ckbAtivo.DataBindings.Add("Checked", bindingSource, "Ativo", true);
            ckbPossuiSistemaDeQualidade.DataBindings.Add("Checked", bindingSource, "Ind_Qualidade", true);
            ckbEmpresaAssumeResponsabilidades.DataBindings.Add("Checked", bindingSource, "Ind_EmpresaResponsabilidade", true);
            ckbForneceGarantia.DataBindings.Add("Checked", bindingSource, "Ind_Garantia", true);
            txtPeriodoDias.DataBindings.Add(new Binding("Text", bindingSource, "Dias_Garantia", true));

            Binding b = new Binding("Checked", bindingSource, "Tipo_Pessoa", true);
            b.Format += new ConvertEventHandler(FormatRadio);
            rbFisica.DataBindings.Add(b);
        }

        private void FormatRadio(object sender, ConvertEventArgs e)
        {
            if (e.Value.GetType() != typeof(int)) return;

            int n = (int)e.Value;

            switch (n)
            {
                case 0:
                    rbJuridica.Checked = true;
                    
                    lblCPF.Visible = false;
                    txtCPF.Visible = false;

                    lblCNPJ.Visible = true;
                    txtCNPJ.Visible = true;                                

                    break;
                case 1:
                    rbFisica.Checked = true;
                    
                    lblCNPJ.Visible = false;
                    txtCNPJ.Visible = false;

                    lblCPF.Visible = true;
                    txtCPF.Visible = true;    

                    break;
                case 2:
                    rbOutros.Checked = true;
                    break;
            }
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
            txtCodigo.Enabled = false;

            txtRazaoSocial.Focus();
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
            txtCodigo.Enabled = false;

            txtRazaoSocial.Focus();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro ?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = " DELETE FROM Fornecedores WHERE ID = @ID ";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("ID").Current);
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("ID: {0}", bindingSource.GetRelatedCurrencyManager("ID").Current));
                    bindingSource.RemoveCurrent();
                    statusCadastro = StatusCadastro.None;
                    MessageBox.Show("Registro excluído com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);

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

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (ValidaCampos() == false) return;

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "UPDATE Fornecedores SET Razao_Social = @Razao_Social,  Fantasia = @Fantasia,  Pais = @Pais, Tipo_Pessoa = @Tipo_Pessoa,  CPF = @CPF,  CNPJ_CPF_COMPLETO = @CNPJ_CPF_COMPLETO, Endereco = @Endereco,  Numero = @Numero, Complemento = @Complemento, Bairro = @Bairro,  Cidade = @Cidade,  CEP = @CEP,  UF = @UF, Inscricao_Estadual = @Inscricao_Estadual,  Contato = @Contato,  Telefone = @Telefone,  Email = @Email,  Ativo = @Ativo,  Ind_Qualidade = @Ind_Qualidade,  Ind_EmpresaResponsabilidade = @Ind_EmpresaResponsabilidade,  Ind_Garantia = @Ind_Garantia,  Dias_Garantia = @Dias_Garantia, fk_Plano_Contas_Contabil = @fk_Plano_Contas_Contabil, Banco = @Banco, Agencia = @Agencia, Conta_Corrente = @Conta_Corrente WHERE ID = @ID";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Razao_Social", txtRazaoSocial.Text);

                        if (rbJuridica.Checked)
                        {
                            cmd.Parameters.AddWithValue("@Tipo_Pessoa", 0);
                            cmd.Parameters.AddWithValue("@CPF", (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@CNPJ_CPF_COMPLETO", txtCNPJ.Text);
                        }
                        else
                        {
                            if (rbFisica.Checked)
                            {
                                cmd.Parameters.AddWithValue("@Tipo_Pessoa", 1);
                                cmd.Parameters.AddWithValue("@CPF", txtCPF.Text);
                                cmd.Parameters.AddWithValue("@CNPJ_CPF_COMPLETO", (object)DBNull.Value);
                            }
                            else
                            {
                                cmd.Parameters.AddWithValue("@Tipo_Pessoa", 2);
                                cmd.Parameters.AddWithValue("@CPF", (object)DBNull.Value);
                                cmd.Parameters.AddWithValue("@CNPJ_CPF_COMPLETO", (object)DBNull.Value);
                            }
                        } 

                        cmd.Parameters.AddWithValue("@Fantasia", txtNomeFantasia.Text);
                        cmd.Parameters.AddWithValue("@Endereco", txtEndereco.Text);
                        cmd.Parameters.AddWithValue("@Numero", txtNumero.Text);
                        cmd.Parameters.AddWithValue("@Complemento", txtComplemento.Text);
                        cmd.Parameters.AddWithValue("@CEP", txtCEP.Text);
                        cmd.Parameters.AddWithValue("@Bairro", txtBairro.Text);
                        cmd.Parameters.AddWithValue("@Cidade", txtCidade.Text);
                        cmd.Parameters.AddWithValue("@UF", (cbbUF.SelectedValue == null ? "" : cbbUF.SelectedValue));
                        cmd.Parameters.AddWithValue("@Pais", (cbbPais.SelectedValue == null ? "" : cbbPais.SelectedValue));
                        cmd.Parameters.AddWithValue("@Inscricao_Estadual", txtInscEstadual.Text);
                        cmd.Parameters.AddWithValue("@fk_Plano_Contas_Contabil", (ccbPlanoContabil.SelectedValue == null ? (object)DBNull.Value : ccbPlanoContabil.SelectedValue));
                        cmd.Parameters.AddWithValue("@Banco", txtBanco.Text);
                        cmd.Parameters.AddWithValue("@Agencia", txtAgencia.Text);
                        cmd.Parameters.AddWithValue("@Conta_Corrente", txtContaCorrente.Text);
                        cmd.Parameters.AddWithValue("@Telefone", txtTelefone.Text);
                        cmd.Parameters.AddWithValue("@Contato", txtContato.Text);
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                        cmd.Parameters.AddWithValue("@Ativo", (ckbAtivo.Checked == false ? 0 : 1));
                        cmd.Parameters.AddWithValue("@Ind_Qualidade", (ckbPossuiSistemaDeQualidade.Checked == false ? 0 : 1));
                        cmd.Parameters.AddWithValue("@Ind_EmpresaResponsabilidade", (ckbEmpresaAssumeResponsabilidades.Checked == false ? 0 : 1));
                        cmd.Parameters.AddWithValue("@Ind_Garantia", (ckbForneceGarantia.Checked == false ? 0 : 1));
                        cmd.Parameters.AddWithValue("@Dias_Garantia", txtPeriodoDias.Text);                        
                        cmd.Parameters.AddWithValue("@Id", bindingSource.GetRelatedCurrencyManager("Id").Current.ToString());
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De:{0} Para:{1}", ((DataRowView)this.bindingSource.Current).Row["ID"].ToString(), bindingSource.GetRelatedCurrencyManager("ID").Current));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Fornecedores  " +
                                   "            ( Razao_Social,  Fantasia,  Pais,   Tipo_Pessoa,  CNPJ_CPF_COMPLETO,  CPF,  Endereco,  Numero,  Complemento,  Bairro,  Cidade,  CEP,  UF,  Inscricao_Estadual,  Contato,  Telefone,  Email,  Ativo,  Ind_Qualidade,  Ind_EmpresaResponsabilidade,  Ind_Garantia,  Dias_Garantia,  fk_Plano_Contas_Contabil,  Banco,  Agencia,  Conta_Corrente ) " +
                                   " VALUES " +
                                   "            ( @Razao_Social, @Fantasia, @Pais, @Tipo_Pessoa, @CNPJ_CPF_COMPLETO, @CPF, @Endereco, @Numero, @Complemento, @Bairro, @Cidade, @CEP, @UF, @Inscricao_Estadual, @Contato, @Telefone, @Email, @Ativo, @Ind_Qualidade, @Ind_EmpresaResponsabilidade, @Ind_Garantia, @Dias_Garantia, @fk_Plano_Contas_Contabil, @Banco, @Agencia, @Conta_Corrente ) ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Razao_Social", txtRazaoSocial.Text);

                        if (rbJuridica.Checked)
                        {
                            cmd.Parameters.AddWithValue("@Tipo_Pessoa", 0);
                            cmd.Parameters.AddWithValue("@CPF", (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@CNPJ_CPF_COMPLETO", txtCNPJ.Text);
                        }
                        else
                        {
                            if (rbFisica.Checked)
                            {
                                cmd.Parameters.AddWithValue("@Tipo_Pessoa", 1);
                                cmd.Parameters.AddWithValue("@CPF", txtCPF.Text);
                                cmd.Parameters.AddWithValue("@CNPJ_CPF_COMPLETO", (object)DBNull.Value);
                            }
                            else
                            {
                                cmd.Parameters.AddWithValue("@Tipo_Pessoa", 2);
                                cmd.Parameters.AddWithValue("@CPF", (object)DBNull.Value);
                                cmd.Parameters.AddWithValue("@CNPJ_CPF_COMPLETO", (object)DBNull.Value);
                            }
                        } 
                                                
                        cmd.Parameters.AddWithValue("@Fantasia", txtNomeFantasia.Text);
                        cmd.Parameters.AddWithValue("@Endereco", txtEndereco.Text);
                        cmd.Parameters.AddWithValue("@Numero", txtNumero.Text);
                        cmd.Parameters.AddWithValue("@Complemento", txtComplemento.Text);
                        cmd.Parameters.AddWithValue("@CEP", txtCEP.Text);
                        cmd.Parameters.AddWithValue("@Bairro", txtBairro.Text);
                        cmd.Parameters.AddWithValue("@Cidade", txtCidade.Text);
                        cmd.Parameters.AddWithValue("@UF", (cbbUF.SelectedValue == null ? "" : cbbUF.SelectedValue));
                        cmd.Parameters.AddWithValue("@Pais", (cbbPais.SelectedValue == null ? "" : cbbPais.SelectedValue));
                        cmd.Parameters.AddWithValue("@Inscricao_Estadual", txtInscEstadual.Text);
                        cmd.Parameters.AddWithValue("@fk_Plano_Contas_Contabil", (ccbPlanoContabil.SelectedValue == null ? (object)DBNull.Value : ccbPlanoContabil.SelectedValue));
                        cmd.Parameters.AddWithValue("@Banco", txtBanco.Text);
                        cmd.Parameters.AddWithValue("@Agencia", txtAgencia.Text);
                        cmd.Parameters.AddWithValue("@Conta_Corrente", txtContaCorrente.Text);
                        cmd.Parameters.AddWithValue("@Telefone", txtTelefone.Text);
                        cmd.Parameters.AddWithValue("@Contato", txtContato.Text);
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                        cmd.Parameters.AddWithValue("@Ativo", (ckbAtivo.Checked == false ? 0 : 1));
                        cmd.Parameters.AddWithValue("@Ind_Qualidade", (ckbPossuiSistemaDeQualidade.Checked == false ? 0 : 1));
                        cmd.Parameters.AddWithValue("@Ind_EmpresaResponsabilidade", (ckbEmpresaAssumeResponsabilidades.Checked == false ? 0 : 1));
                        cmd.Parameters.AddWithValue("@Ind_Garantia", (ckbForneceGarantia.Checked == false ? 0 : 1));
                        cmd.Parameters.AddWithValue("@Dias_Garantia", txtPeriodoDias.Text);                        
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Id:{0}", bindingSource.GetRelatedCurrencyManager("ID").Current));
                }

                if (statusCadastro == StatusCadastro.Editar)
                {
                    MessageBox.Show("Registro alterado com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }

                AtualizaGrid();

                statusCadastro = StatusCadastro.None;

                HabilitarDesabilitaControles(false);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private Boolean ValidaCampos()
        {
            if (string.IsNullOrEmpty(txtRazaoSocial.Text.Trim()))
            {
                MessageBox.Show("Razão Social obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtRazaoSocial.Focus();
                return false;
            }

            if (rbJuridica.Checked)
            {
                if (txtCNPJ.MaskFull == false)
                {
                    MessageBox.Show("CNPJ obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    txtCNPJ.Focus();
                    return false;
                }
                else
                {
                    if (Util.ValidaCNPJ(txtCNPJ.Text) == false)
                    {
                        MessageBox.Show("CNPJ inválido!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                        txtCNPJ.Focus();
                        return false;
                    }
                }
            }

            if (rbFisica.Checked)
            {
                if (txtCPF.MaskFull == false)
                {
                    MessageBox.Show("CPF obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    txtCPF.Focus();
                    return false;
                }
                else
                {
                    if (Util.ValidaCPF(txtCPF.Text) == false)
                    {
                        MessageBox.Show("CPF inválido!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                        txtCPF.Focus();
                        return false;
                    }
                }
            }

            if (!(string.IsNullOrEmpty(txtCEP.Text.Trim())))
            {
                if (Util.ValidaCep(txtCEP.Text) == false)
                {
                    MessageBox.Show("CEP inválido!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    txtCEP.Focus();
                    return false;
                }
            }

            if (string.IsNullOrEmpty(txtTelefone.Text.Trim()))
            {
                MessageBox.Show("Telefone obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtTelefone.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtContato.Text.Trim()))
            {
                MessageBox.Show("Contato obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtContato.Focus();
                return false;
            }

            if (!(string.IsNullOrEmpty(txtEmail.Text.Trim())))
            {
                if (Util.ValidaEmail(txtEmail.Text) == false)
                {
                    MessageBox.Show("E-mail inválido!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    txtEmail.Focus();
                    return false;
                }
            }

            return true;
        }

        private DataTable getFornecedores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " SELECT Id, Razao_Social, Fantasia, Pais, Tipo_Pessoa, CNPJ_CPF_COMPLETO, CPF, Tipo_Importador, Endereco, Numero, Complemento, Bairro, Cidade, CEP, UF, Inscricao_Estadual, Contato, Telefone, Email, Ativo, Ind_Qualidade, Ind_EmpresaResponsabilidade, Ind_Garantia, Dias_Garantia, fk_Plano_Contas_Contabil, Banco, Agencia, Conta_Corrente " +
                           "   FROM Fornecedores   " +
                           " ORDER BY Razao_Social ";

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
            Pais Paises = new Pais();

            cbbPais.DataSource = Paises.getPais();
            cbbPais.DisplayMember = "Descricao";
            cbbPais.ValueMember = "Codigo";
        }

        private void getUF()
        {
            Uf Ufs = new Uf();

            cbbUF.DataSource = Ufs.getUf();
            cbbUF.DisplayMember = "Codigo";
            cbbUF.ValueMember = "Codigo";
        }

        private void txtPesquisar_TextChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtPesquisar.Text))
            {
                bindingSource.RemoveFilter();

                FiltroAtivoInativoTodos();
            }
            else
            {
                FiltroAtivoInativoTodos();
            }
        }

        private void FiltroAtivoInativoTodos()
        {
            if (rdbAtivos.Checked)
            {
                bindingSource.Filter = "Ativo = 1 AND Razao_social like '" + txtPesquisar.Text + "%' ";
            }
            else if (rdbInativos.Checked)
            {
                bindingSource.Filter = "Ativo = 0 AND Razao_social like '" + txtPesquisar.Text + "%'";
            }
            else
            {
                bindingSource.Filter = "Razao_social like '" + txtPesquisar.Text + "%'";
            }
        }

        private void rdbAtivos_CheckedChanged(object sender, EventArgs e)
        {
            bindingSource.Filter = "Ativo = 1";
        }

        private void rdbInativos_CheckedChanged(object sender, EventArgs e)
        {
            bindingSource.Filter = "Ativo = 0";
        }

        private void rdbTodos_CheckedChanged(object sender, EventArgs e)
        {
            bindingSource.RemoveFilter();
        }

        private void AtualizaGrid()
        {
            bindingSource.DataSource = getFornecedores();

            dataGridView.DataSource = bindingSource;
        }

        private void rbJuridica_Click(object sender, EventArgs e)
        {
            lblCPF.Visible = false;
            txtCPF.Visible = false;            

            lblCNPJ.Visible = true;
            txtCNPJ.Visible = true;
            txtCNPJ.Enabled = true;

            txtCNPJ.Focus();
        }

        private void rbFisica_Click(object sender, EventArgs e)
        {
            lblCNPJ.Visible = false;
            txtCNPJ.Visible = false;            

            lblCPF.Visible = true;
            txtCPF.Visible = true;
            txtCPF.Enabled = true;

            txtCPF.Focus();
        }

        private void rbOutros_Click(object sender, EventArgs e)
        {           
            txtCNPJ.Enabled = false;
            txtCPF.Enabled = false;
        }

        private void getContasContabeis()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " SELECT ID, Conta, Descricao FROM Plano_Contas_Contabil ORDER BY Descricao ";            

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

                ccbPlanoContabil.DataSource = null;
                ccbPlanoContabil.DataSource = table;
                ccbPlanoContabil.DisplayMember = "Descricao";
                ccbPlanoContabil.ValueMember = "ID";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
