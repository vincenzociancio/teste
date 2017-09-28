using MS2000.Desktop.Classes;
using MS2000.Desktop;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Imaging;
using System.Globalization;
using System.IO;
using System.Resources;
using System.Threading;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmRegistroDeEmpregados : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        const int CODIGO_CAMINHO_FOTOS_RH = 7;
        string _caminho_doc_fotos_rh;

        string IdEmpregado = default(string);

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            pictureBox1.Enabled = (statusCadastro == StatusCadastro.None);
        }


        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }
            VerificaBotoes();
        }

        public FrmRegistroDeEmpregados()
        {
            InitializeComponent();
            Thread.CurrentThread.CurrentUICulture = new CultureInfo("pt-BR");
        }

        private void getUsuario()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT PK_USUARIO, Nome_Completo FROM Usuarios";
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
                cbbUsuario.DataSource = table;
                cbbUsuario.DisplayMember = "Nome_Completo";
                cbbUsuario.ValueMember = "PK_USUARIO";

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getAdmissao()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Descricao FROM RH_Admissao";
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
                cbbAdmissao.DataSource = table;
                cbbAdmissao.DisplayMember = "Descricao";
                cbbAdmissao.ValueMember = "codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getEscolaridade()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Descricao  FROM RH_Escolaridade";
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
                cbbEscolaridade.DataSource = table;
                cbbEscolaridade.DisplayMember = "Descricao";
                cbbEscolaridade.ValueMember = "codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getNacionalidade()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Descricao  FROM RH_Nacionalidade";
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
                cbbNacionalidade.DataSource = table;
                cbbNacionalidade.DisplayMember = "Descricao";
                cbbNacionalidade.ValueMember = "codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getCor()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Descricao  FROM RH_Cor";
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
                cbbRaca.DataSource = table;
                cbbRaca.DisplayMember = "Descricao";
                cbbRaca.ValueMember = "codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private DataTable getEmpregados()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select " +
                "ID,Nome,Matricula,DataNascimento,EstadoCivil,CPF,Sexo,RG,RG_Orgao,RG_Emissao" +
                ",PIS,CTPS,CTPS_Serie,CTPS_UF,Titulo,Titulo_Zona,Titulo_Secao,Pai_Nome,Mae_Nome " +
                ",Endereco_Logradouro,Endereco_Numero,Endereco_Complemento,Endereco_Bairro,Endereco_Cidade,Endereco_UF " +
                ",Endereco_CEP,Nacionalidade,Naturalidade,Escolaridade,Raca_Cor,Certificado_Reservista, CAST(Ativo as Varchar(1)) as Ativo ,DataAdmissao,FK_Admissao,FK_Usuario,DataDesligamento " +
                "FROM RH_Empregados order by Nome";
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

        private void FrmRegistroDeEmpregados_Load(object sender, EventArgs e)
        {
            _caminho_doc_fotos_rh = (new CaminhoDiretorioServidor().GetCaminhoById(CODIGO_CAMINHO_FOTOS_RH)).Caminho;
            try
            {
                bindingNavigator.DeleteItem = null;

                getCor();
                getEscolaridade();
                getNacionalidade();
                getAdmissao();
                getUsuario();

                Dictionary<string, string> itensEstadoCivil = new Dictionary<string, string>();

                itensEstadoCivil.Add("S", "SOLTEIRO(a)"); itensEstadoCivil.Add("C", "CASADO(a)"); itensEstadoCivil.Add("D", "DIVORCIADO(a)"); itensEstadoCivil.Add("V", "VIÚVO(a)");

                cbbEstadoCivil.DisplayMember = "Value";
                cbbEstadoCivil.ValueMember = "Key";
                cbbEstadoCivil.DataSource = new BindingSource(itensEstadoCivil, null);

                Dictionary<string, string> itensSexo = new Dictionary<string, string>();

                itensSexo.Add("M", "MASCULINO"); itensSexo.Add("F", "FEMININO");

                cbbSexo.DisplayMember = "Value";
                cbbSexo.ValueMember = "Key";
                cbbSexo.DataSource = new BindingSource(itensSexo, null);

                Dictionary<string, string> itensSituacao = new Dictionary<string, string>();

                itensSituacao.Add("0", "INATIVO"); itensSituacao.Add("1", "ATIVO");

                cbbSituacao.DisplayMember = "Value";
                cbbSituacao.ValueMember = "Key";
                cbbSituacao.DataSource = new BindingSource(itensSituacao, null);

                statusCadastro = StatusCadastro.None;

                HabilitarDesabilitaControles(false);

                dataGridView1.AutoGenerateColumns = false;
                bindingSource.DataSource = getEmpregados();
                dataGridView1.DataSource = bindingSource;
                bindingNavigator.BindingSource = bindingSource;

                txtMatricula.DataBindings.Add(new Binding("Text", bindingSource, "Matricula", true));
                txtNome.DataBindings.Add(new Binding("Text", bindingSource, "Nome", true));
                cbbSexo.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Sexo"));
                txtDataNascimento.DataBindings.Add(new Binding("Text", bindingSource, "DataNascimento", true, DataSourceUpdateMode.OnValidation, "  /  /"));
                cbbEstadoCivil.DataBindings.Add(new Binding("SelectedValue", bindingSource, "EstadoCivil"));
                cbbNacionalidade.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Nacionalidade"));
                txtNaturalidade.DataBindings.Add(new Binding("Text", bindingSource, "Naturalidade", true));
                txtPai.DataBindings.Add(new Binding("Text", bindingSource, "Pai_Nome", true));
                txtMae.DataBindings.Add(new Binding("Text", bindingSource, "Mae_Nome", true));
                cbbEscolaridade.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Escolaridade"));
                cbbRaca.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Raca_Cor"));
                txtIdentidade.DataBindings.Add(new Binding("Text", bindingSource, "RG", true));
                txtOrgao.DataBindings.Add(new Binding("Text", bindingSource, "RG_Orgao", true));
                txtDataEmissao.DataBindings.Add(new Binding("Text", bindingSource, "RG_Emissao", true, DataSourceUpdateMode.OnValidation, "  /  /"));
                txtCPF.DataBindings.Add(new Binding("Text", bindingSource, "CPF", true, DataSourceUpdateMode.OnValidation, "   .   .   -"));
                txtCarteiraTrabalho.DataBindings.Add(new Binding("Text", bindingSource, "CTPS", true));
                txtSerie.DataBindings.Add(new Binding("Text", bindingSource, "CTPS_Serie", true));
                txtUFCarteira.DataBindings.Add(new Binding("Text", bindingSource, "CTPS_UF", true));
                txtPIS.DataBindings.Add(new Binding("Text", bindingSource, "PIS", true));
                txtTituloEleitor.DataBindings.Add(new Binding("Text", bindingSource, "Titulo", true));
                txtZona.DataBindings.Add(new Binding("Text", bindingSource, "Titulo_Zona", true));
                txtSecao.DataBindings.Add(new Binding("Text", bindingSource, "Titulo_Secao", true));
                txtReservista.DataBindings.Add(new Binding("Text", bindingSource, "Certificado_Reservista", true));
                txtLogradouro.DataBindings.Add(new Binding("Text", bindingSource, "Endereco_Logradouro", true));
                txtComplemento.DataBindings.Add(new Binding("Text", bindingSource, "Endereco_Complemento", true));
                txtNumero.DataBindings.Add(new Binding("Text", bindingSource, "Endereco_Numero", true));
                txtBairro.DataBindings.Add(new Binding("Text", bindingSource, "Endereco_Bairro", true));
                txtCidade.DataBindings.Add(new Binding("Text", bindingSource, "Endereco_Cidade", true));
                txtUFEndereco.DataBindings.Add(new Binding("Text", bindingSource, "Endereco_UF", true));
                txtCEP.DataBindings.Add(new Binding("Text", bindingSource, "Endereco_CEP", true, DataSourceUpdateMode.OnValidation, "     -"));
                cbbSituacao.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Ativo"));
                txtDataAdmissao.DataBindings.Add(new Binding("Text", bindingSource, "DataAdmissao", true, DataSourceUpdateMode.OnValidation, "  /  /"));
                txtDataDesligamento.DataBindings.Add(new Binding("Text", bindingSource, "DataDesligamento", true, DataSourceUpdateMode.OnValidation, "  /  /"));
                cbbAdmissao.DataBindings.Add(new Binding("SelectedValue", bindingSource, "FK_Admissao"));
                cbbUsuario.DataBindings.Add(new Binding("SelectedValue", bindingSource, "FK_Usuario"));
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void txtPesquisa_TextChanged(object sender, EventArgs e)
        {
            bindingSource.Filter = "nome like '" + txtPesquisa.Text + "%'";
            if (bindingSource.Count >= 1)
            {
                bindingSource_PositionChanged(null, null);
            }
        }

        public byte[] ConvertImageToByteArray(Image image, ImageFormat imageFormat)
        {
            if (image == null)
                return null;

            MemoryStream ms = new MemoryStream();
            image.Save(ms, imageFormat);
            return ms.ToArray();
        }

        private void tabControl_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bindingSource.Count >= 1)
            {
                IdEmpregado = ((DataRowView)bindingSource.Current).Row["ID"].ToString();
            }
            if (tabControl.SelectedTab != tabFormulario)
            {
                btnCancelar_Click(null, null);
            }
        }

        private void btnAbrir_Click(object sender, EventArgs e)
        {
            if (bindingSource.Count >= 1)
            {
                IdEmpregado = ((DataRowView)bindingSource.Current).Row["ID"].ToString();
            }
            tabControl.SelectedTab = tabFormulario;
        }

        private void dataGridView1_DoubleClick(object sender, EventArgs e)
        {
            if (bindingSource.Count >= 1)
            {
                IdEmpregado = ((DataRowView)bindingSource.Current).Row["ID"].ToString();
            }
            tabControl.SelectedTab = tabFormulario;
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
            pictureBox1.Image = null;
            //cbbUsuario.SelectedValue = -1;
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
            cbbSituacao_SelectedIndexChanged(null, null);
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtNome.Text))
            {
                MessageBox.Show(" O Nome é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtNome.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtMatricula.Text))
            {
                MessageBox.Show("A Matrícula é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtMatricula.Focus();
                return;
            }

            if (!txtDataAdmissao.MaskCompleted)
            {
                MessageBox.Show("A Data de Admissão é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDataAdmissao.Focus();
                return;
            }

            if (string.IsNullOrEmpty(cbbEstadoCivil.Text))
            {
                MessageBox.Show("O Estado Civil é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbEstadoCivil.Focus();
                return;
            }

            if (!txtCPF.MaskCompleted)
            {
                MessageBox.Show("O CPF é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCPF.Focus();
                return;
            }

            if (!txtDataNascimento.MaskCompleted)
            {
                MessageBox.Show("A Data de Nascimento é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDataNascimento.Focus();
                return;
            }

            if (string.IsNullOrEmpty(cbbSexo.Text))
            {
                MessageBox.Show("O Sexo é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbSexo.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtIdentidade.Text))
            {
                MessageBox.Show("O RG é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtIdentidade.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtCarteiraTrabalho.Text))
            {
                MessageBox.Show("A Carteira de trabalho é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCarteiraTrabalho.Focus();
                return;
            }


            if (string.IsNullOrEmpty(cbbAdmissao.Text))
            {
                MessageBox.Show("A Descrição de Admissão é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbAdmissao.Focus();
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "UPDATE RH_Empregados " +
                                   "SET Nome = @Nome ,Matricula = @Matricula,DataNascimento = @DataNascimento,EstadoCivil = @EstadoCivil,CPF = @CPF " +
                                   ",Sexo = @Sexo,RG = @RG,RG_Orgao = @RG_Orgao,RG_Emissao = @RG_Emissao,PIS = @PIS,CTPS = @CTPS,CTPS_Serie = @CTPS_Serie " +
                                   ",CTPS_UF = @CTPS_UF,Titulo = @Titulo,Titulo_Zona = @Titulo_Zona,Titulo_Secao = @Titulo_Secao,Pai_Nome = @Pai_Nome " +
                                   ",Mae_Nome = @Mae_Nome,Endereco_Logradouro = @Endereco_Logradouro,Endereco_Numero = @Endereco_Numero " +
                                   ",Endereco_Complemento = @Endereco_Complemento,Endereco_Bairro = @Endereco_Bairro,Endereco_Cidade = @Endereco_Cidade " +
                                   ",Endereco_UF = @Endereco_UF,Endereco_CEP = @Endereco_CEP,Nacionalidade = @Nacionalidade,Naturalidade = @Naturalidade " +
                                   ",Escolaridade = @Escolaridade,Raca_Cor = @Raca_Cor,Certificado_Reservista = @Certificado_Reservista,Ativo = @Ativo " +
                                   ",DataDesligamento = @DataDesligamento,DataAdmissao = @DataAdmissao,FK_Admissao = @FK_Admissao,FK_Usuario = @FK_Usuario " +
                                   " WHERE ID = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Nome", txtNome.Text);
                        cmd.Parameters.AddWithValue("@Matricula", txtMatricula.Text);
                        cmd.Parameters.AddWithValue("@DataNascimento", !txtDataNascimento.MaskCompleted ? DBNull.Value : (object)txtDataNascimento.Text);
                        cmd.Parameters.AddWithValue("@EstadoCivil", (cbbEstadoCivil.SelectedValue == null) ? DBNull.Value : (object)cbbEstadoCivil.SelectedValue);
                        cmd.Parameters.AddWithValue("@CPF", txtCPF.Text);
                        cmd.Parameters.AddWithValue("@Sexo", (cbbSexo.SelectedValue == null) ? DBNull.Value : (object)cbbSexo.SelectedValue);
                        cmd.Parameters.AddWithValue("@RG", txtIdentidade.Text);
                        cmd.Parameters.AddWithValue("@RG_Orgao", txtOrgao.Text);
                        cmd.Parameters.AddWithValue("@RG_Emissao", !txtDataEmissao.MaskCompleted ? DBNull.Value : (object)txtDataEmissao.Text);
                        cmd.Parameters.AddWithValue("@PIS", txtPIS.Text);
                        cmd.Parameters.AddWithValue("@CTPS", txtCarteiraTrabalho.Text);
                        cmd.Parameters.AddWithValue("@CTPS_Serie", txtSerie.Text);
                        cmd.Parameters.AddWithValue("@CTPS_UF", txtUFCarteira.Text);
                        cmd.Parameters.AddWithValue("@Titulo", txtTituloEleitor.Text);
                        cmd.Parameters.AddWithValue("@Titulo_Zona", txtZona.Text);
                        cmd.Parameters.AddWithValue("@Titulo_Secao", txtSecao.Text);
                        cmd.Parameters.AddWithValue("@Pai_Nome", txtPai.Text);
                        cmd.Parameters.AddWithValue("@Mae_Nome", txtMae.Text);
                        cmd.Parameters.AddWithValue("@Endereco_Logradouro", txtLogradouro.Text);
                        cmd.Parameters.AddWithValue("@Endereco_Numero", txtNumero.Text);
                        cmd.Parameters.AddWithValue("@Endereco_Complemento", txtComplemento.Text);
                        cmd.Parameters.AddWithValue("@Endereco_Bairro", txtBairro.Text);
                        cmd.Parameters.AddWithValue("@Endereco_Cidade", txtCidade.Text);
                        cmd.Parameters.AddWithValue("@Endereco_UF", txtUFEndereco.Text);
                        cmd.Parameters.AddWithValue("@Endereco_CEP", txtCEP.Text);
                        cmd.Parameters.AddWithValue("@Nacionalidade", (cbbNacionalidade.SelectedValue == null) ? DBNull.Value : (object)cbbNacionalidade.SelectedValue);
                        cmd.Parameters.AddWithValue("@Naturalidade", txtNaturalidade.Text);
                        cmd.Parameters.AddWithValue("@Escolaridade", (cbbEscolaridade.SelectedValue == null) ? DBNull.Value : (object)cbbEscolaridade.SelectedValue);
                        cmd.Parameters.AddWithValue("@Raca_Cor", (cbbRaca.SelectedValue == null) ? DBNull.Value : (object)cbbRaca.SelectedValue);
                        cmd.Parameters.AddWithValue("@Certificado_Reservista", txtReservista.Text);
                        cmd.Parameters.AddWithValue("@Ativo", (cbbSituacao.SelectedValue == null) ? DBNull.Value : (object)cbbSituacao.SelectedValue);
                        cmd.Parameters.AddWithValue("@DataDesligamento", !txtDataDesligamento.MaskCompleted ? DBNull.Value : (object)txtDataDesligamento.Text);
                        cmd.Parameters.AddWithValue("@DataAdmissao", !txtDataAdmissao.MaskCompleted ? DBNull.Value : (object)txtDataAdmissao.Text);
                        cmd.Parameters.AddWithValue("@FK_Admissao", (cbbAdmissao.SelectedValue == null) ? DBNull.Value : (object)cbbAdmissao.SelectedValue);
                        cmd.Parameters.AddWithValue("@FK_Usuario", (cbbUsuario.SelectedValue == null) ? DBNull.Value : (object)cbbUsuario.SelectedValue);
                        cmd.Parameters.AddWithValue("@id", IdEmpregado);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(IdEmpregado, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De: {0} - Para: {1}", ((DataRowView)this.bindingSource.Current).Row["Nome"].ToString(), txtNome.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO RH_Empregados " +
                                   "(Nome,Matricula,DataNascimento,EstadoCivil,CPF,Sexo,RG,RG_Orgao,RG_Emissao,PIS,CTPS " +
                                   ",CTPS_Serie,CTPS_UF,Titulo,Titulo_Zona,Titulo_Secao,Pai_Nome,Mae_Nome,Endereco_Logradouro " +
                                   ",Endereco_Numero,Endereco_Complemento,Endereco_Bairro,Endereco_Cidade,Endereco_UF " +
                                   ",Endereco_CEP,Nacionalidade,Naturalidade,Escolaridade,Raca_Cor,Certificado_Reservista,Ativo,DataDesligamento,DataAdmissao,FK_Admissao,FK_Usuario) " +
                                   " VALUES " +
                                   "(@Nome,@Matricula,@DataNascimento,@EstadoCivil,@CPF,@Sexo,@RG,@RG_Orgao,@RG_Emissao " +
                                   ",@PIS,@CTPS,@CTPS_Serie,@CTPS_UF,@Titulo,@Titulo_Zona,@Titulo_Secao,@Pai_Nome,@Mae_Nome " +
                                   ",@Endereco_Logradouro,@Endereco_Numero,@Endereco_Complemento,@Endereco_Bairro " +
                                   ",@Endereco_Cidade,@Endereco_UF,@Endereco_CEP,@Nacionalidade,@Naturalidade " +
                                   ",@Escolaridade,@Raca_Cor,@Certificado_Reservista,@Ativo,@DataDesligamento,@DataAdmissao,@FK_Admissao,@FK_Usuario) ";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Nome", txtNome.Text);
                        cmd.Parameters.AddWithValue("@Matricula", txtMatricula.Text);
                        cmd.Parameters.AddWithValue("@DataNascimento", !txtDataNascimento.MaskCompleted ? DBNull.Value : (object)txtDataNascimento.Text);
                        cmd.Parameters.AddWithValue("@EstadoCivil", (cbbEstadoCivil.SelectedValue == null) ? DBNull.Value : (object)cbbEstadoCivil.SelectedValue);
                        cmd.Parameters.AddWithValue("@CPF", !txtCPF.MaskCompleted ? DBNull.Value : (object)txtCPF.Text);
                        cmd.Parameters.AddWithValue("@Sexo", (cbbSexo.SelectedValue == null) ? DBNull.Value : (object)cbbSexo.SelectedValue);
                        cmd.Parameters.AddWithValue("@RG", txtIdentidade.Text);
                        cmd.Parameters.AddWithValue("@RG_Orgao", txtOrgao.Text);
                        cmd.Parameters.AddWithValue("@RG_Emissao", !txtDataEmissao.MaskCompleted ? DBNull.Value : (object)txtDataEmissao.Text);
                        cmd.Parameters.AddWithValue("@PIS", txtPIS.Text);
                        cmd.Parameters.AddWithValue("@CTPS", txtCarteiraTrabalho.Text);
                        cmd.Parameters.AddWithValue("@CTPS_Serie", txtSerie.Text);
                        cmd.Parameters.AddWithValue("@CTPS_UF", txtUFCarteira.Text);
                        cmd.Parameters.AddWithValue("@Titulo", txtTituloEleitor.Text);
                        cmd.Parameters.AddWithValue("@Titulo_Zona", txtZona.Text);
                        cmd.Parameters.AddWithValue("@Titulo_Secao", txtSecao.Text);
                        cmd.Parameters.AddWithValue("@Pai_Nome", txtPai.Text);
                        cmd.Parameters.AddWithValue("@Mae_Nome", txtMae.Text);
                        cmd.Parameters.AddWithValue("@Endereco_Logradouro", txtLogradouro.Text);
                        cmd.Parameters.AddWithValue("@Endereco_Numero", txtNumero.Text);
                        cmd.Parameters.AddWithValue("@Endereco_Complemento", txtComplemento.Text);
                        cmd.Parameters.AddWithValue("@Endereco_Bairro", txtBairro.Text);
                        cmd.Parameters.AddWithValue("@Endereco_Cidade", txtCidade.Text);
                        cmd.Parameters.AddWithValue("@Endereco_UF", txtUFEndereco.Text);
                        cmd.Parameters.AddWithValue("@Endereco_CEP", txtCEP.Text);
                        cmd.Parameters.AddWithValue("@Nacionalidade", (cbbNacionalidade.SelectedValue == null) ? DBNull.Value : (object)cbbNacionalidade.SelectedValue);
                        cmd.Parameters.AddWithValue("@Naturalidade", txtNaturalidade.Text);
                        cmd.Parameters.AddWithValue("@Escolaridade", (cbbEscolaridade.SelectedValue == null) ? DBNull.Value : (object)cbbEscolaridade.SelectedValue);
                        cmd.Parameters.AddWithValue("@Raca_Cor", (cbbRaca.SelectedValue == null) ? DBNull.Value : (object)cbbRaca.SelectedValue);
                        cmd.Parameters.AddWithValue("@Certificado_Reservista", txtReservista.Text);
                        cmd.Parameters.AddWithValue("@Ativo", (cbbSituacao.SelectedValue == null) ? DBNull.Value : (object)cbbSituacao.SelectedValue);
                        cmd.Parameters.AddWithValue("@DataDesligamento", !txtDataDesligamento.MaskCompleted ? DBNull.Value : (object)txtDataDesligamento.Text);
                        cmd.Parameters.AddWithValue("@DataAdmissao", !txtDataAdmissao.MaskCompleted ? DBNull.Value : (object)txtDataAdmissao.Text);
                        cmd.Parameters.AddWithValue("@FK_Admissao", (cbbAdmissao.SelectedValue == null) ? DBNull.Value : (object)cbbAdmissao.SelectedValue);
                        cmd.Parameters.AddWithValue("@FK_Usuario", (cbbUsuario.SelectedValue == null) ? DBNull.Value : (object)cbbUsuario.SelectedValue);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Matricula: {0} - Nome: {1} ", txtMatricula.Text, txtNome.Text));

                }

                var matricula_busca = txtMatricula.Text;
                bindingSource.DataSource = getEmpregados();
                bindingSource.Position = bindingSource.Find("Matricula", matricula_busca);

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

        public static void SomenteNumero(KeyPressEventArgs e)
        {
            if (char.IsLetter(e.KeyChar) || //Letras
                char.IsSymbol(e.KeyChar) || //Símbolos
                char.IsWhiteSpace(e.KeyChar) || //Espaço
                char.IsPunctuation(e.KeyChar)) //Pontuação
                e.Handled = true; //Não permitir           
        }

        private void btnSalario_Click(object sender, EventArgs e)
        {
            var form = new FrmSalario();
            form.FK_Empregado = Convert.ToInt32(IdEmpregado);
            FrmPrincipal.ShowModalMdiChildren(form);
        }

        private void pictureBox1_DoubleClick(object sender, EventArgs e)
        {
            using (var form = new FrmWebCam())
            {
                form.FK_Empregado = IdEmpregado;
                form.Caminho = _caminho_doc_fotos_rh;
                if (FrmPrincipal.ShowModalMdiChildren(form) == DialogResult.OK)
                {
                    if (File.Exists(_caminho_doc_fotos_rh + IdEmpregado + ".jpg"))
                    {
                        FileStream fs;
                        fs = new FileStream(_caminho_doc_fotos_rh + IdEmpregado + ".jpg", FileMode.Open, FileAccess.Read);

                        pictureBox1.Image = Image.FromStream(fs);
                        fs.Close();
                    }
                    else
                    {
                        pictureBox1.Image = null;
                    }
                }
            }
        }

        private void btnCargo_Click(object sender, EventArgs e)
        {
            var form = new FrmCargo();
            form.FK_Empregado = Convert.ToInt32(IdEmpregado);
            FrmPrincipal.ShowModalMdiChildren(form);
        }

        private void btnBeneficiario_Click(object sender, EventArgs e)
        {
            var form = new FrmBeneficiario();
            form.FK_Empregado = Convert.ToInt32(IdEmpregado);
            FrmPrincipal.ShowModalMdiChildren(form);
        }

        private void txtMatricula_KeyPress(object sender, KeyPressEventArgs e)
        {
            SomenteNumero(e);
        }

        private void txtIdentidade_KeyPress(object sender, KeyPressEventArgs e)
        {
            SomenteNumero(e);
        }

        private void txtCarteiraTrabalho_KeyPress(object sender, KeyPressEventArgs e)
        {
            SomenteNumero(e);
        }

        private void txtTituloEleitor_KeyPress(object sender, KeyPressEventArgs e)
        {
            SomenteNumero(e);
        }

        private void txtPIS_KeyPress(object sender, KeyPressEventArgs e)
        {
            SomenteNumero(e);
        }

        private void txtNumero_KeyPress(object sender, KeyPressEventArgs e)
        {
            SomenteNumero(e);
        }

        private void txtZona_KeyPress(object sender, KeyPressEventArgs e)
        {
            SomenteNumero(e);
        }

        private void dataGridView1_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            if (dataGridView1.Columns[e.ColumnIndex].Name == "foto")
            {
                var IdEmpregado = dataGridView1.Rows[e.RowIndex].Cells["ID"].Value;
                if (File.Exists(_caminho_doc_fotos_rh + IdEmpregado + ".jpg"))
                {
                    FileStream fs;
                    fs = new FileStream(_caminho_doc_fotos_rh + IdEmpregado + ".jpg", FileMode.Open, FileAccess.Read);
                    e.Value = Image.FromStream(fs);
                    fs.Close();
                }
                else
                {
                    FileStream fs;
                    fs = new FileStream(_caminho_doc_fotos_rh + "sem_foto.jpg", FileMode.Open, FileAccess.Read);
                    e.Value = Image.FromStream(fs);
                    fs.Close();
                }

                if (e.Value != null && dataGridView1.Rows[e.RowIndex].Cells["Ativo"].Value.ToString() == "0")
                {
                    dataGridView1.Rows[e.RowIndex].DefaultCellStyle.BackColor = Color.LightGray;
                }
            }
        }

        private void btnContribuicaoSindical_Click(object sender, EventArgs e)
        {
            var form = new FrmContribuicaoSindical();
            form.ID_Empregado = Convert.ToInt32(IdEmpregado);
            FrmPrincipal.ShowModalMdiChildren(form);
        }

        private void bindingSource_PositionChanged(object sender, EventArgs e)
        {
            if (bindingSource.Current == null)
                return;
            IdEmpregado = ((DataRowView)bindingSource.Current).Row["ID"].ToString();//bindingSource.GetRelatedCurrencyManager("ID").Current.ToString();
            if (File.Exists(_caminho_doc_fotos_rh + IdEmpregado + ".jpg"))
            {
                FileStream fs;
                fs = new FileStream(_caminho_doc_fotos_rh + IdEmpregado + ".jpg", FileMode.Open, FileAccess.Read);
                pictureBox1.Image = Image.FromStream(fs);
                fs.Close();
            }
            else
            {
                FileStream fs;
                fs = new FileStream(_caminho_doc_fotos_rh + "sem_foto.jpg", FileMode.Open, FileAccess.Read);
                pictureBox1.Image = Image.FromStream(fs);
                fs.Close();
            }
        }

        private void btnFerias_Click(object sender, EventArgs e)
        {
            var form = new FrmHistoricoFerias();
            form.ID_Empregado = Convert.ToInt32(IdEmpregado);
            FrmPrincipal.ShowModalMdiChildren(form);
        }

        private void btnFuncionarioPublico_Click(object sender, EventArgs e)
        {
            var form = new FrmFuncionarioPublico();
            form.FK_Empregado = Convert.ToInt32(IdEmpregado);
            FrmPrincipal.ShowModalMdiChildren(form);
        }

        private void btnQuestionario_Click(object sender, EventArgs e)
        {
            if (cbbUsuario.SelectedValue == null)
            {
                MessageBox.Show("Favor vincular o Usuário.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            var form = new FrmQuestionarioAvaliacao();
            form.FK_Usuario = Convert.ToInt32(bindingSource.GetRelatedCurrencyManager("FK_Usuario").Current.ToString());
            FrmPrincipal.ShowModalMdiChildren(form);
        }

        private void btnMudarIdioma_Click(object sender, EventArgs e)
        {
            try
            {
                if (Thread.CurrentThread.CurrentUICulture.Name == "en-US")
                {
                    Thread.CurrentThread.CurrentUICulture = new CultureInfo("pt-BR");
                    btnMudarIdioma.Image = Properties.Resources.en;
                    TrocarIdioma();
                }
                else
                {
                    Thread.CurrentThread.CurrentUICulture = new CultureInfo("en-US");
                    btnMudarIdioma.Image = Properties.Resources.pt;
                    TrocarIdioma();
                }
            }
            catch (Exception)
            {
                MessageBox.Show("Não foi possivel alterar o Idioma.");
            }

        }

        void TrocarIdioma()
        {
            /*************Idiomas***********/
            ResourceManager resourceManager = new ResourceManager("MS2000.Desktop.Idiomas.res", typeof(FrmRegistroDeEmpregados).Assembly);
            this.Text = resourceManager.GetString("rh_registro_de_empregados");
            #region Tradução da barra de Menu
            btnNovo.Text = resourceManager.GetString("novo");
            btnCancelar.Text = resourceManager.GetString("cancelar");
            btnSalvar.Text = resourceManager.GetString("salvar");
            btnExcluir.Text = resourceManager.GetString("deletar");
            printToolStripButton.Text = resourceManager.GetString("relatorios");
            btnFechar.Text = resourceManager.GetString("fechar");
            //Botao Selecionar
            btnAbrir.Text = resourceManager.GetString("selecionar");
            #endregion Tradução da barra de Menu
            tabSearch.Text = resourceManager.GetString("localizar_colaboradores");
            tabFormulario.Text = resourceManager.GetString("empregados");
            groupBox5.Text = resourceManager.GetString("digite_para_localizar");
            #region Tradução da Grid Localizar Colaboradores
            ID.HeaderText = resourceManager.GetString("foto");
            matricula.HeaderText = resourceManager.GetString("matricula");
            Nome.HeaderText = resourceManager.GetString("nome");
            #endregion Tradução da Grid Localizar Colaboradores
            #region Tradução da aba Empregados
            label2.Text = resourceManager.GetString("matricula");
            label3.Text = resourceManager.GetString("nome");
            label25.Text = resourceManager.GetString("admissao");
            label6.Text = resourceManager.GetString("data_nascimento");
            label11.Text = resourceManager.GetString("estado_civil");
            label10.Text = resourceManager.GetString("nacionalidade");
            label8.Text = resourceManager.GetString("naturalidade");
            label19.Text = resourceManager.GetString("nome_pai");
            label12.Text = resourceManager.GetString("nome_mae");
            label20.Text = resourceManager.GetString("escolaridade");
            label21.Text = resourceManager.GetString("raca_cor");
            label16.Text = resourceManager.GetString("sexo");
            label24.Text = resourceManager.GetString("descricao");
            label27.Text = resourceManager.GetString("situacao");
            groupBox3.Text = resourceManager.GetString("vinculacao_usuario_sistema");
            groupBox1.Text = resourceManager.GetString("documentos");
            label1.Text = resourceManager.GetString("identidade");
            label5.Text = resourceManager.GetString("orgao");
            label9.Text = resourceManager.GetString("data_emissao");
            label1.Text = resourceManager.GetString("identidade");
            label18.Text = resourceManager.GetString("cpf");
            label14.Text = resourceManager.GetString("cart_trabalho");
            label15.Text = resourceManager.GetString("serie");
            label13.Text = resourceManager.GetString("uf");
            label4.Text = resourceManager.GetString("pis");
            label7.Text = resourceManager.GetString("titulo_eleitor");
            label17.Text = resourceManager.GetString("zona");
            label22.Text = resourceManager.GetString("secao");
            label23.Text = resourceManager.GetString("cert_reservista");
            groupBox2.Text = resourceManager.GetString("endereco");
            label34.Text = resourceManager.GetString("logradouro");
            label32.Text = resourceManager.GetString("complemento");
            label30.Text = resourceManager.GetString("numero");
            label28.Text = resourceManager.GetString("bairro");
            label29.Text = resourceManager.GetString("cidade");
            label31.Text = resourceManager.GetString("cep");
            label26.Text = resourceManager.GetString("uf");
            btnCargo.Text = resourceManager.GetString("historico_cargos");
            btnSalario.Text = resourceManager.GetString("historico_salarios");
            btnBeneficiario.Text = resourceManager.GetString("beneficiarios");
            btnContribuicaoSindical.Text = resourceManager.GetString("contribuicao_sindical");
            btnFerias.Text = resourceManager.GetString("historico_ferias");
            btnQuestionario.Text = resourceManager.GetString("historico_questionario");
            btnEditar.Text = resourceManager.GetString("editar");
            btnFuncionarioPublico.Text = resourceManager.GetString("funcionario_publico");

            //Tradução das ComboBox's


            #endregion Tradução da aba Empregados
            /*******************************/
        }

        private void cbbSituacao_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbbSituacao.SelectedValue != null && cbbSituacao.SelectedValue.ToString() == "0" && ((statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo)))
            {
                txtDataDesligamento.Enabled = true;
            }
            else
            {
                txtDataDesligamento.Enabled = false;
            }

        }

        private void dataGridView1_DataError(object sender, DataGridViewDataErrorEventArgs e)
        {
            MessageBox.Show(this, e.Exception.Message, "Error");
            e.ThrowException = false;
            e.Cancel = false;
        }
    }
}
