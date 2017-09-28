using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Windows.Forms;
using Excel = Microsoft.Office.Interop.Excel;

namespace MS2000.Desktop.Menu.Cadastros
{
    public partial class FrmImportadores : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        string vIMP;
        string Caminho;
        string CaminhoProposta;
        string CodigoPasta;
        int Contador;
        string Contato;
        string CGC_CPF;
        string Monitoracao_TipoAntigo;
        string Monitoracao_EmailAntigo;
        Importadores_Parametros parametros;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            ctlProposta.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public virtual void VerificaBotoesRotina()
        {
            btnSalvarRotina.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnNovoRotina.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditarRotina.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelarRotina.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            tabProposta.Enabled = (statusCadastro == StatusCadastro.None);
            tabRepetro1.Enabled = (statusCadastro == StatusCadastro.None);
            tabMonitoracao.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public virtual void VerificaBotoesProposta()
        {
            btnSalvarProposta.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnNovoProposta.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditarProposta.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelarProposta.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dgvContratoProposta.Enabled = (statusCadastro == StatusCadastro.None);
            dgvUploadProposta.Enabled = (statusCadastro == StatusCadastro.None);
            dgvMonitoracoes.Enabled = (statusCadastro == StatusCadastro.None);
            tabRotina.Enabled = (statusCadastro == StatusCadastro.None);
            tabRepetro1.Enabled = (statusCadastro == StatusCadastro.None);
            tabMonitoracao.Enabled = (statusCadastro == StatusCadastro.None);           
        }

        public virtual void VerificaBotoesMonitoracoes()
        {
            btnSalvarMonitoracao.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnNovaMonitoracao.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditaMonitoracao.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelaMonitoracao.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluiMonitoracao.Enabled = (statusCadastro == StatusCadastro.None);
            tabRotina.Enabled = (statusCadastro == StatusCadastro.None);
            tabProposta.Enabled = (statusCadastro == StatusCadastro.None);
            tabRepetro1.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            ckbAtivo.Enabled = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Cadastros - Importadores - Ativar/Desativar importadores",
                Chave_Busca = "ativardesativar"
            });

            btnNovo.Enabled = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Cadastros - Importadores - Inclui Importadores",
                Chave_Busca = "botaonovoimportadores"
            });

            btnEditar.Enabled = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Cadastros - Importadores - Edita Importadores",
                Chave_Busca = "botaoeditaimportadores"
            });
            if (Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Cadastros - Importadores - Visualiza Cadastro de Proposta dos Importadores",
                Chave_Busca = "visualizacadastropropostaimportadores"
            }) == false)
            {
                ctlProposta.TabPages.Remove(tabProposta);
            }

            if (Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Cadastros - Importadores - Visualiza Repetro dos Importadores",
                Chave_Busca = "visualizarepetroimportadores"
            }) == false)
            {
                ctlProposta.TabPages.Remove(tabRepetro1);
            }

            if (Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Cadastros - Importadores - Visualiza Rotina Operacional dos Importadores",
                Chave_Busca = "visualizarotinaoperacionalimportadores"
            }) == false)
            {
                ctlProposta.TabPages.Remove(tabRotina);
            }

            if (Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Cadastros - Importadores - Visualiza Monitorações",
                Chave_Busca = "visualizarmonitoracoesimportadores"
            }) == false)
            {
                ctlProposta.TabPages.Remove(tabMonitoracao);
            }

            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            foreach (Control controle in this.panelControlParametros.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
            txtCodigo.Enabled = false;
            txtDtInicio.Enabled = false;
        }

        public void HabilitarDesabilitaControlesRotina(bool bValue)
        {
            foreach (Control controle in this.pnlControleRotina.Controls)
            {
                controle.Enabled = bValue;
            }
            VerificaBotoesRotina();
        }

        public void HabilitarDesabilitaControlesProposta(bool bValue)
        {
            foreach (Control controle in this.pnlControleProposta.Controls)
            {
                controle.Enabled = bValue;
            }
            VerificaBotoesProposta();

        }

        public void HabilitarDesabilitaControlesUploadArquivoProposta(bool bValue)
        {
            foreach (Control controle in this.pnlAtivaUpload.Controls)
            {
                controle.Enabled = bValue;
            }
            txtArquivoProposta.Enabled = false;
        }

        public void HabilitarDesabilitaControlesMonitoracoes(bool bValue)
        {
            foreach (Control controle in this.pnlMonitoracoes.Controls)
            {
                controle.Enabled = bValue;
            }
            VerificaBotoesMonitoracoes();
        }

        public FrmImportadores()
        {
            InitializeComponent();
        }

        void getCoordenador()
        {
            cbbCoordenador.DataSource = getUsersHierarquia(2);
            cbbCoordenador.DisplayMember = "Nome_Completo";
            cbbCoordenador.ValueMember = "PK_USUARIO";
        }

        void getSupervisor()
        {
            cbbSupervisor.DataSource = getUsersHierarquia(3);
            cbbSupervisor.DisplayMember = "Nome_Completo";
            cbbSupervisor.ValueMember = "PK_USUARIO";
        }

     /*   void getAnalistaDocumental()
        {
            cbbAnalistaDoc.DataSource = getUsersHierarquia(0);
            cbbAnalistaDoc.DisplayMember = "Nome_Completo";
            cbbAnalistaDoc.ValueMember = "PK_USUARIO";
        }*/

        private DataTable getUsersHierarquia(int value)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select PK_USUARIO, Nome_Completo from Usuarios " +
            "where Responsavel=1 AND Ativo = 1 and Hierarquia =@value order by 2";
            DataTable table = new DataTable();
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@value", value);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table.Load(reader);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            return table;
        }

        private void getUF()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Descricao FROM TAB_UF";
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

        private void getPais()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Descricao  FROM TAB_PAIS order by Descricao";
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
                cbbPais.DisplayMember = "Descricao";
                cbbPais.ValueMember = "codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getTipoImportador()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Descricao  FROM TAB_TP_IMPORTADOR ";
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
                cbbTipoImportador.DataSource = table;
                cbbTipoImportador.DisplayMember = "Descricao";
                cbbTipoImportador.ValueMember = "codigo";

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getCAE()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo,cast( Codigo +'  |  '+ Descricao as varchar(120)) as Campo FROM CAE ";
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
                mcbbCAE.DataSource = table;
                mcbbCAE.DisplayMember = "campo";
                mcbbCAE.ValueMember = "Codigo";
                mcbbCAE.SelectedIndex = 0;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getContasCorrentes()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Descricao, Codigo, Banco, Agencia, Conta_Corrente FROM Contas_Correntes WHERE Nivel = 2 ORDER BY Descricao";
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
                mcbbDescricaoConta.DataSource = table;
                mcbbDescricaoConta.DisplayMember = "Descricao";
                mcbbDescricaoConta.ValueMember = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private DataTable getImportadores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select " +
                "Codigo, Razao_Social,Pais,CNPJ_CPF_COMPLETO, CGC_CPF,Tipo_Importador, Endereco, Numero, Complemento" +
                ",Bairro, Cidade, CEP, UF, Estado, Inscricao_Estadual, CAE,Telefone,Ativo , Acesso_WEB_MS, Acesso_WEB_CLI,Acesso_WEB_REC " +
                ",Telefone,Inscricao_Municipal, Email,Exporta_Para_Siscomex, Conta_Corrente_Deposito, Data_Inicio " +
                "from Importadores where lixo = 0 order by Razao_social";
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

        private DataTable getRotina()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select " +
                "ID,Fk_Importador,Tipo,Nome " +
                "from Upload_Rotina " +
                "Where Fk_Importador = @Fk_Importador ";

            if (FrmPrincipal.FK_SetorUsuario == "JURI")
            {
                query += "and tipo = 3 ";
            }
            else
            {
                query += "and tipo <> 3 ";
            }

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Fk_Importador", txtCodigo.Text);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private DataTable getProposta()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Top 100 " +
                           " numero_contrato,pk_contrato ,data ,nro_cliente,cliente,cod_importador,contato,email, " +
                           "data_aprovacao,data_vigencia_inicial,data_vigencia_final,observacao,utilizacao_de_sistema,movimentacao_de_repetro " +
                           "from contratos_cadastrados_financeiro where cod_importador = @cod_importador";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@cod_importador", txtCodigo.Text);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private DataTable getMonitoracao()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Tipo, Email, Nome_completo, Ativo FROM Emails_avisos WHERE Tipo IN ('ADR','ADCED') AND Importador = @Importador ORDER BY Tipo, Nome_Completo";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Importador", txtCodigo.Text);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private DataTable getArquivo()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Top 100 Arquivo,codigo " +
                           "from contratos_cadastrados_upload where fk_contrato = @fk_contrato";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@fk_contrato",bsProposta.GetRelatedCurrencyManager("pk_contrato").Current);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        const int CODIGO_CAMINHO_CONTRATO_PROPOSTA = 3;
        const int CODIGO_CAMINHO_ROTINA_OPERACIONAL = 4;

        string _caminho_doc_contrato_de_proposta;
        string _caminho_doc_rotina_operacional;

        private void FrmImportadores_Load(object sender, EventArgs e)
        {
            _caminho_doc_rotina_operacional = (new CaminhoDiretorioServidor().GetCaminhoById(CODIGO_CAMINHO_ROTINA_OPERACIONAL)).Caminho;

            _caminho_doc_contrato_de_proposta = (new CaminhoDiretorioServidor().GetCaminhoById(CODIGO_CAMINHO_CONTRATO_PROPOSTA)).Caminho;

            parametros = new Importadores_Parametros();

            bindingNavigator.DeleteItem = null;
            bdnRotina.DeleteItem = null;
            bdnProposta.DeleteItem = null;
            bdnMonitoracoes.DeleteItem = null;

            getCAE();
            getPais();
            getUF();
            getTipoImportador();
            getContasCorrentes();
            getCoordenador();
            getSupervisor();
           // getAnalistaDocumental();

            statusCadastro = StatusCadastro.None;

            HabilitarDesabilitaControles(false);
            HabilitarDesabilitaControlesRotina(false);
            HabilitarDesabilitaControlesProposta(false);
            HabilitarDesabilitaControlesMonitoracoes(false);

            dataGridView1.AutoGenerateColumns = false;
            bindingSource.DataSource = getImportadores();
            dataGridView1.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtCodigo.DataBindings.Add(new Binding("Text", bindingSource, "Codigo", true));
            txtRazaoSocial.DataBindings.Add(new Binding("Text", bindingSource, "Razao_Social", true));
            cbbPais.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Pais"));
            txtCNPJ.DataBindings.Add(new Binding("Text", bindingSource, "CNPJ_CPF_COMPLETO", true));
            txtEndereco.DataBindings.Add(new Binding("Text", bindingSource, "Endereco", true));
            txtNumero.DataBindings.Add(new Binding("Text", bindingSource, "Numero", true));
            txtComplemento.DataBindings.Add(new Binding("Text", bindingSource, "Complemento", true));
            txtBairro.DataBindings.Add(new Binding("Text", bindingSource, "Bairro", true));
            txtCidade.DataBindings.Add(new Binding("Text", bindingSource, "Cidade", true));
            txtCEP.DataBindings.Add(new Binding("Text", bindingSource, "CEP", true));
            cbbUF.DataBindings.Add(new Binding("SelectedValue", bindingSource, "UF"));
            cbbTipoImportador.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Tipo_Importador"));
            mcbbCAE.DataBindings.Add(new Binding("SelectedValue", bindingSource, "CAE"));
            txtEstado.DataBindings.Add(new Binding("Text", bindingSource, "Estado", true));
            txtIE.DataBindings.Add(new Binding("Text", bindingSource, "Inscricao_Estadual", true));
            txtIM.DataBindings.Add(new Binding("Text", bindingSource, "Inscricao_Municipal", true));
            txtEmail.DataBindings.Add(new Binding("Text", bindingSource, "Email", true));
            txtDtInicio.DataBindings.Add(new Binding("Text", bindingSource, "Data_Inicio", true));
            txtTelefone.DataBindings.Add(new Binding("Text", bindingSource, "Telefone", true));
            ckbAcessoWebCliente.DataBindings.Add(new Binding("Checked", bindingSource, "Acesso_WEB_CLI", true));
            ckbAcessoWebMS.DataBindings.Add(new Binding("Checked", bindingSource, "Acesso_WEB_MS", true));
            ckbAcessoWebReceita.DataBindings.Add(new Binding("Checked", bindingSource, "Acesso_WEB_REC", true));
            ckbAtivo.DataBindings.Add(new Binding("Checked", bindingSource, "Ativo", true));
            ckbExportaSiscomex.DataBindings.Add(new Binding("Checked", bindingSource, "Exporta_Para_Siscomex", true));
            mcbbDescricaoConta.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Conta_Corrente_Deposito", true));
            rdbAtivos_CheckedChanged(null, null);
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
            vIMP = "";
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
            vIMP = txtCNPJ.Text;
        }

        private string getNovoCodigoImportadores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Max(Cast(Codigo as integer))+1 AS NovoCodigo FROM Importadores  WHERE (CODIGO<>'A') AND (CODIGO<>'X000') AND (CODIGO<>'X111') ";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
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

        private bool CnpjEmUso()
        {
            var query = "SELECT CNPJ_CPF_COMPLETO FROM Importadores WHERE CNPJ_CPF_COMPLETO =@CNPJ_CPF_COMPLETO  ";
            var GoOn = false;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@CNPJ_CPF_COMPLETO", txtCNPJ.Text);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                GoOn = true;
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
            if (ValidaCampos() == false) return;

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update importadores set " +
                        "Razao_Social = @Razao_Social, Pais = @Pais, CNPJ_CPF_COMPLETO = @CNPJ_CPF_COMPLETO,Tipo_Importador = @Tipo_Importador, Endereco = @Endereco, Numero = @Numero, Complemento = @Complemento" +
                        ",Bairro = @Bairro, Cidade = @Cidade, CEP = @CEP, UF = @UF, Estado = @Estado, Inscricao_Estadual = @Inscricao_Estadual, CAE = @CAE" +
                        ",Ativo =@Ativo,Acesso_WEB_MS =@Acesso_WEB_MS ,Acesso_WEB_CLI =@Acesso_WEB_CLI, Acesso_WEB_REC =@Acesso_WEB_REC,Telefone = @Telefone, Inscricao_Municipal = @Inscricao_Municipal,Email =@Email,Exporta_Para_Siscomex = @Exporta_Para_Siscomex, Conta_Corrente_Deposito = @Conta_Corrente_Deposito " +
                        "where codigo = @codigo";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Codigo", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@Razao_Social", txtRazaoSocial.Text);
                        cmd.Parameters.AddWithValue("@Pais", (cbbPais.SelectedValue == null) ? (object)DBNull.Value : cbbPais.SelectedValue);
                        cmd.Parameters.AddWithValue("@CNPJ_CPF_COMPLETO", txtCNPJ.Text);
                        cmd.Parameters.AddWithValue("@Tipo_Importador", (cbbTipoImportador.SelectedValue == null) ? (object)DBNull.Value : cbbTipoImportador.SelectedValue);
                        cmd.Parameters.AddWithValue("@Endereco", txtEndereco.Text);
                        cmd.Parameters.AddWithValue("@Numero", txtNumero.Text);
                        cmd.Parameters.AddWithValue("@Complemento", txtComplemento.Text);
                        cmd.Parameters.AddWithValue("@Bairro", txtBairro.Text);
                        cmd.Parameters.AddWithValue("@Cidade", txtCidade.Text);
                        cmd.Parameters.AddWithValue("@CEP", txtCEP.Text);
                        cmd.Parameters.AddWithValue("@UF", (cbbUF.SelectedValue == null) ? (object)DBNull.Value : cbbUF.SelectedValue);
                        cmd.Parameters.AddWithValue("@Estado", txtEstado.Text);
                        cmd.Parameters.AddWithValue("@Inscricao_Estadual", txtIE.Text);
                        cmd.Parameters.AddWithValue("@CAE", (mcbbCAE.SelectedValue == null) ? (object)DBNull.Value : mcbbCAE.SelectedValue);
                        cmd.Parameters.AddWithValue("@Ativo", Convert.ToInt16(ckbAtivo.Checked));
                        cmd.Parameters.AddWithValue("@Acesso_WEB_MS", Convert.ToInt16(ckbAcessoWebMS.Checked));
                        cmd.Parameters.AddWithValue("@Acesso_WEB_CLI", Convert.ToInt16(ckbAcessoWebCliente.Checked));
                        cmd.Parameters.AddWithValue("@Acesso_WEB_REC", Convert.ToInt16(ckbAcessoWebReceita.Checked));
                        cmd.Parameters.AddWithValue("@Telefone", txtTelefone.Text);
                        cmd.Parameters.AddWithValue("@Inscricao_Municipal", txtIM.Text);
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text);                        
                        cmd.Parameters.AddWithValue("@Exporta_Para_Siscomex", ckbExportaSiscomex.Checked);
                        cmd.Parameters.AddWithValue("@Conta_Corrente_Deposito", (mcbbDescricaoConta.SelectedValue == null ? "" : mcbbDescricaoConta.SelectedValue));
                        cmd.ExecuteNonQuery();

                        AtualizaParametrosImportador();
                    }

                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Razao: {0}, CNPJ: {1}", txtRazaoSocial.Text, txtCNPJ.Text));
                }
                else
                {
                    string novoCodigo;
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into importadores" +
                        "(Codigo, Razao_Social,Pais, CNPJ_CPF_COMPLETO,CGC_CPF,Tipo_Importador, Endereco, Numero, Complemento" +
                        ",Bairro, Cidade, CEP, UF, Estado, Inscricao_Estadual, CAE" +
                        ", Ativo , Acesso_WEB_MS, Acesso_WEB_CLI,Acesso_WEB_REC ,Telefone,Inscricao_Municipal, Email,Exporta_Para_Siscomex, Conta_Corrente_Deposito, Data_Inicio)" +
                        "values" +
                        "(@Codigo, @Razao_Social, @Pais, @CNPJ_CPF_COMPLETO,@CGC_CPF, @Tipo_Importador,@Endereco, @Numero, @Complemento" +
                        ",@Bairro, @Cidade, @CEP, @UF, @Estado, @Inscricao_Estadual, @CAE" +
                        ",@Ativo , @Acesso_WEB_MS, @Acesso_WEB_CLI,@Acesso_WEB_REC ,@Telefone,@Inscricao_Municipal, @Email,@Exporta_Para_Siscomex, @Conta_Corrente_Deposito, @Data_Inicio)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        novoCodigo = getNovoCodigoImportadores();
                        cmd.Parameters.AddWithValue("@Codigo", novoCodigo);
                        cmd.Parameters.AddWithValue("@Razao_Social", txtRazaoSocial.Text);
                        cmd.Parameters.AddWithValue("@Pais", (cbbPais.SelectedValue == null) ? (object)DBNull.Value : cbbPais.SelectedValue);
                        cmd.Parameters.AddWithValue("@CNPJ_CPF_COMPLETO", txtCNPJ.Text);
                        cmd.Parameters.AddWithValue("@CGC_CPF", txtCNPJ.Text.Substring(0, 10));
                        cmd.Parameters.AddWithValue("@Tipo_Importador", (cbbTipoImportador.SelectedValue == null) ? (object)DBNull.Value : cbbTipoImportador.SelectedValue);
                        cmd.Parameters.AddWithValue("@Endereco", txtEndereco.Text);
                        cmd.Parameters.AddWithValue("@Numero", txtNumero.Text);
                        cmd.Parameters.AddWithValue("@Complemento", txtComplemento.Text);
                        cmd.Parameters.AddWithValue("@Bairro", txtBairro.Text);
                        cmd.Parameters.AddWithValue("@Cidade", txtCidade.Text);
                        cmd.Parameters.AddWithValue("@CEP", txtCEP.Text);
                        cmd.Parameters.AddWithValue("@UF", (cbbUF.SelectedValue == null) ? (object)DBNull.Value : cbbUF.SelectedValue);
                        cmd.Parameters.AddWithValue("@Estado", txtEstado.Text);
                        cmd.Parameters.AddWithValue("@Inscricao_Estadual", txtIE.Text);
                        cmd.Parameters.AddWithValue("@CAE", (mcbbCAE.SelectedValue == null) ? (object)DBNull.Value : mcbbCAE.SelectedValue);
                        cmd.Parameters.AddWithValue("@Ativo", Convert.ToInt16(ckbAtivo.Checked));
                        cmd.Parameters.AddWithValue("@Acesso_WEB_MS", Convert.ToInt16(ckbAcessoWebMS.Checked));
                        cmd.Parameters.AddWithValue("@Acesso_WEB_CLI", Convert.ToInt16(ckbAcessoWebCliente.Checked));
                        cmd.Parameters.AddWithValue("@Acesso_WEB_REC", Convert.ToInt16(ckbAcessoWebReceita.Checked));
                        cmd.Parameters.AddWithValue("@Telefone", txtTelefone.Text);
                        cmd.Parameters.AddWithValue("@Inscricao_Municipal", txtIM.Text);                        
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                        cmd.Parameters.AddWithValue("@Data_Inicio", DateTime.Now.Date); 
                        cmd.Parameters.AddWithValue("@Exporta_Para_Siscomex", ckbExportaSiscomex.Checked);
                        cmd.Parameters.AddWithValue("@Conta_Corrente_Deposito", (mcbbDescricaoConta.SelectedValue == null ? "" : mcbbDescricaoConta.SelectedValue));                        
                        cmd.ExecuteNonQuery();
                    }
                    txtCodigo.Text = novoCodigo;
                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Razao Social: {0} - CNPJ:{1}", txtRazaoSocial.Text, txtCNPJ.Text));
                    bindingSource.DataSource = getImportadores();

                    IncluiRegistroTabelaImportadorAgrupado(novoCodigo);

                    IncluiRegistroTabelaImportadores_Parametros(novoCodigo);
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

        private bool ImportadorEmUso()
        {
            var query = "SELECT Importador FROM Processos WHERE Importador =@Importador  ";
            var GoOn = false;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Importador", txtCodigo.Text);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                GoOn = true;
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

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (ImportadorEmUso())
            {
                MessageBox.Show("Existem Processos com este Importador. Não pode ser excluído!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update importadores set lixo = 1 where codigo = @codigo";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@codigo", txtCodigo.Text);
                        cmd.ExecuteNonQuery();
                    }

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

        private void txtCNPJ_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsDigit(e.KeyChar) && !(e.KeyChar == (char)Keys.Back))
            {
                e.Handled = true;
            }
        }

        private void printToolStripButton_Click(object sender, EventArgs e)
        {

            /*   SaveFileDialog salvar = new SaveFileDialog(); // novo

               Excel.Application App; // Aplicação Excel
               Excel.Workbook WorkBook; // Pasta
               Excel.Worksheet WorkSheet; // Planilha
               object misValue = System.Reflection.Missing.Value;

               App = new Excel.Application();
               WorkBook = App.Workbooks.Add(misValue);
               WorkSheet = (Excel.Worksheet)WorkBook.Worksheets.get_Item(1);
               int i = 0;
               int j = 0;

               // passa as celulas do DataGridView para a Pasta do Excel
               for (i = 0; i <= dataGridView.RowCount - 1; i++)
               {
                   for (j = 0; j <= dataGridView.ColumnCount - 1; j++)
                   {
                       DataGridViewCell cell = dataGridView[j, i];
                       WorkSheet.Cells[i + 1, j + 1] = cell.Value;
                   }
               }

               // define algumas propriedades da caixa salvar
               salvar.Title = "Exportar para Excel";
               salvar.Filter = "Arquivo do Excel *.xls | *.xls";
               salvar.ShowDialog(); // mostra

               // salva o arquivo
               WorkBook.SaveAs(salvar.FileName, Excel.XlFileFormat.xlWorkbookNormal, misValue, misValue, misValue, misValue,

               Excel.XlSaveAsAccessMode.xlExclusive, misValue, misValue, misValue, misValue, misValue);
               WorkBook.Close(true, misValue, misValue);
               App.Quit(); // encerra o excel

               MessageBox.Show("Exportado com sucesso!");


               /*


                           // Endereço onde salvar o arquivo + nome do arquivo + extensão .CSV
                           string endereco = "C:\\relatorio.csv";
                           using (StreamWriter writer = new StreamWriter(endereco, false, Encoding.GetEncoding("iso-8859-15")))
                           {
                               // Cabeçalho 
                               writer.WriteLine("Código;Razão Social;CNPJ;Endereço;Número;Complemento;Bairro;Cidade;CEP;UF;Estado;Inscricao Estadual;Banco;Agencia;Conta Corrente;Conta Corrente Registro;Conta Corrente Deposito;CAE;Telefone");
                
                               SqlConnection conn = DatabaseConnection.Instance.Conexao;
                               string query = "SELECT * FROM Importadores order by Razao_social";
                                using (SqlCommand cmd = new SqlCommand(query, conn))
                               {                    
                                   SqlCommand sqlComand = new SqlCommand(query, conn);
                   
                                   using (IDataReader reader = sqlComand.ExecuteReader())
                                   {
                                       while (reader.Read())
                                       {
                                           // escrevendo os registros
                                           writer.WriteLine(Convert.ToString(reader["CODIGO"]) + ";" +
                                                            Convert.ToString(reader["RAZAO_SOCIAL"]) + ";" +
                                                            Convert.ToString(reader["CNPJ_CPF_COMPLETO"]) + ";" + 
                                                            Convert.ToString(reader["Endereco"]) + ";" + 
                                                            Convert.ToString(reader["Numero"]) + ";" + 
                                                            Convert.ToString(reader["Complemento"]) + ";" + 
                                                            Convert.ToString(reader["Bairro"]) + ";" + 
                                                            Convert.ToString(reader["Cidade"]) + ";" +
                                                            Convert.ToString(reader["CEP"]) + ";" + 
                                                            Convert.ToString(reader["UF"]) + ";" + 
                                                            Convert.ToString(reader["Estado"]) + ";" + 
                                                            Convert.ToString(reader["Inscricao_Estadual"]) + ";" + 
                                                            Convert.ToString(reader["Banco"]) + ";" + 
                                                            Convert.ToString(reader["Agencia"]) + ";" + 
                                                            Convert.ToString(reader["Conta_Corrente"]) + ";" +
                                                            Convert.ToString(reader["Conta_Corrente_Registro"]) + ";" +
                                                            Convert.ToString(reader["Conta_Corrente_Deposito"]) + ";" +
                                                            Convert.ToString(reader["CAE"]) + ";" +                                            
                                                            Convert.ToString(reader["Telefone"]));
                                       }
                                   }                                
                               }
                           }    
                            // mensagem de arquivo gerado com sucesso.
                           MessageBox.Show("Relatório gerado com sucesso.", "ATENÇÃO", MessageBoxButtons.OK, MessageBoxIcon.Information);



                           */
        }

        private bool UsuarioNetEmUso(string UsuarioRepetro)
        {
            var query = "select CGC_CPF,Usuario,Nome_Completo from UsuariosNET WHERE CGC_CPF =@CGC_CPF  and Usuario = @Usuario ";
            var GoOn = false;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@CGC_CPF", CGC_CPF);
                    cmd.Parameters.AddWithValue("@Usuario", UsuarioRepetro);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                GoOn = true;
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

        private void PreenchePropostaRotinaeMonitoracoes()
        {
            //Proposta
            dgvContratoProposta.AutoGenerateColumns = false;
            bsProposta.DataSource = getProposta();
            dgvContratoProposta.DataSource = bsProposta;
            bdnProposta.BindingSource = bsProposta;

            txtContato.DataBindings.Clear();
            txtVigenciaInicial.DataBindings.Clear();
            txtVigenciaFinal.DataBindings.Clear();
            txtDataAprovacao.DataBindings.Clear();
            txtEmailProposta.DataBindings.Clear();
            ckbUtilizacaoSistema.DataBindings.Clear();
            ckbMovimentacaoRepetro.DataBindings.Clear();
            txtObservacao.DataBindings.Clear();
            txtContato.DataBindings.Add(new Binding("Text", bsProposta, "Contato", true));
            txtVigenciaInicial.DataBindings.Add(new Binding("Text", bsProposta, "data_vigencia_inicial", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtVigenciaFinal.DataBindings.Add(new Binding("Text", bsProposta, "data_vigencia_final", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtDataAprovacao.DataBindings.Add(new Binding("Text", bsProposta, "data_aprovacao", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtEmailProposta.DataBindings.Add(new Binding("Text", bsProposta, "email", true));
            ckbUtilizacaoSistema.DataBindings.Add(new Binding("Checked", bsProposta, "utilizacao_de_sistema", true));
            ckbMovimentacaoRepetro.DataBindings.Add(new Binding("Checked", bsProposta, "movimentacao_de_repetro", true));
            txtObservacao.DataBindings.Add(new Binding("Text", bsProposta, "observacao", true));

            //Rotinal Operacional
            Dictionary<int, string> itens = new Dictionary<int, string>();
            itens.Add(1, "Rotina Operacional"); itens.Add(2, "SOP");

            if (FrmPrincipal.FK_SetorUsuario == "JURI")
            {
                itens.Add(3, "Despacho Decisório - Sistema Repetro");
            }

            cmbTipo.DisplayMember = "Value";
            cmbTipo.ValueMember = "Key";
            cmbTipo.DataSource = new BindingSource(itens, null);

            dgvRotina.AutoGenerateColumns = false;
            bsRotina.DataSource = getRotina();
            dgvRotina.DataSource = bsRotina;
            bdnRotina.BindingSource = bsRotina;

            txtNomeRotina.DataBindings.Clear();
            txtArquivo.DataBindings.Clear();
            cmbTipo.DataBindings.Clear();
            txtNomeRotina.DataBindings.Add(new Binding("Text", bsRotina, "Nome", true));
            cmbTipo.DataBindings.Add(new Binding("SelectedValue", bsRotina, "Tipo"));

            if (bsProposta.Count != 0)
            {
                if (!string.IsNullOrEmpty(bsProposta.GetRelatedCurrencyManager("pk_contrato").Current.ToString()))
                {
                    dgvUploadProposta.AutoGenerateColumns = false;
                    bsArquivo.DataSource = getArquivo();
                    dgvUploadProposta.DataSource = bsArquivo;
                }
            }
            else
            {
                dgvUploadProposta.DataSource = null;
            }

            //Monitorações
            Dictionary<string, string> itensMonitoracao = new Dictionary<string, string>();
            itensMonitoracao.Add("ADR", "ADR"); itensMonitoracao.Add("ADCED", "ADCED");

            cmbTipoMonitoracao.DisplayMember = "Value";
            cmbTipoMonitoracao.ValueMember = "Key";
            cmbTipoMonitoracao.DataSource = new BindingSource(itensMonitoracao, null);

            dgvMonitoracoes.AutoGenerateColumns = false;
            bsMonitoracoes.DataSource = getMonitoracao();
            dgvMonitoracoes.DataSource = bsMonitoracoes;

            cmbTipoMonitoracao.DataBindings.Clear();
            txtNomeCompletoMonitoracao.DataBindings.Clear();
            txtEmailMonitoracao.DataBindings.Clear();
            ckbAtivoMonitoracao.DataBindings.Clear();

            cmbTipoMonitoracao.DataBindings.Add(new Binding("SelectedValue", bsMonitoracoes, "Tipo"));
            txtNomeCompletoMonitoracao.DataBindings.Add(new Binding("Text", bsMonitoracoes, "Nome_completo", true));
            txtEmailMonitoracao.DataBindings.Add(new Binding("Text", bsMonitoracoes, "Email", true));
            ckbAtivoMonitoracao.DataBindings.Add(new Binding("Checked", bsMonitoracoes, "Ativo", true));
        }

        private void btnAbrir_Click(object sender, EventArgs e)
        {
            DataGridViewRow row = dataGridView1.CurrentCell.OwningRow;
            CGC_CPF = row.Cells["CGC"].Value.ToString();
            PreenchePropostaRotinaeMonitoracoes();
            tabControl.SelectedTab = tabFormulario;
        }

        private DataTable getSenhas()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT I.CNPJ_CPF_COMPLETO, U.CGC_CPF, I.Razao_Social, U.Usuario, U.Senha, U.Nome_Completo, U.Email, U.Nivel, U.Acesso_habilitado,I.CEP " +
                           "FROM UsuariosNET U INNER JOIN Importadores I ON U.CGC_CPF = I.CGC_CPF " +
                           "GROUP BY I.CNPJ_CPF_COMPLETO, U.CGC_CPF, I.Razao_Social, U.Usuario, U.Senha, U.Nome_Completo, U.Email, U.Nivel, U.Acesso_habilitado,I.CEP " +
                           "HAVING (((I.CNPJ_CPF_COMPLETO)=@CNPJ_CPF_COMPLETO) AND ((U.Nivel)='3'))  and (U.Usuario <> 'DITEC') " +
                           "ORDER BY I.CNPJ_CPF_COMPLETO, U.CGC_CPF, U.Usuario";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@CNPJ_CPF_COMPLETO", txtCNPJ.Text);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void btnRepetroOk_Click(object sender, EventArgs e)
        {
            string usuario;
            string nome_completo;
            string qsenha;
            if (rdbGerarSenhas.Checked)
            {
                var query = "SELECT * FROM usuarios_beneficio_repetro ";
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                Random rnd = new Random();
                                while (reader.Read())
                                {

                                    if (!UsuarioNetEmUso(reader[1].ToString()))
                                    {
                                        qsenha = "";
                                        usuario = reader[1].ToString();
                                        nome_completo = reader[0].ToString();

                                        int I;


                                        for (int J = 0; J < 6; J++)
                                        {
                                            I = rnd.Next(255);
                                            while ((I < 48) || (I > 57) && (I < 97) || (I > 122))
                                            {
                                                I = rnd.Next(255);
                                            }
                                            qsenha = qsenha + Convert.ToChar(I);
                                        }
                                        string queryUsuarioRepetro = "insert into UsuariosNET (CGC_CPF,Usuario,Senha,Nome_Completo, Nivel )values(@CGC_CPF, @Usuario,@Senha,@Nome_Completo,@Nivel)";
                                        using (SqlCommand cmdr = new SqlCommand(queryUsuarioRepetro, conn))
                                        {
                                            cmdr.Parameters.AddWithValue("@CGC_CPF", CGC_CPF);
                                            cmdr.Parameters.AddWithValue("@Usuario", usuario);
                                            cmdr.Parameters.AddWithValue("@Senha", qsenha);
                                            cmdr.Parameters.AddWithValue("@Nome_Completo", nome_completo);
                                            cmdr.Parameters.AddWithValue("@Nivel", "3");
                                            cmdr.ExecuteNonQuery();
                                        }
                                    }
                                }
                            }
                        }
                    }
                    MessageBox.Show("Senhas Criadas com sucesso.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }

                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else if (rdbImprimirFolhaSenha.Checked)
            {
                dgvSenha.AutoGenerateColumns = false;
                dgvSenha.DataSource = getSenhas();

                if (dgvSenha.ColumnCount != 0)
                {
                    btnImprimir.Enabled = true;
                }
            }
            else
            {
                MessageBox.Show("Favor marcar uma Opção.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void tbcImportador_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ctlProposta.SelectedTab == tabRotina)
            {
                dgvSenha.DataSource = null;
                btnImprimir.Enabled = false;
            }
            else
            {
                dgvSenha.DataSource = null;
                btnImprimir.Enabled = false;
            }
        }

        private void btnImprimir_Click(object sender, EventArgs e)
        {
            SaveFileDialog salvar = new SaveFileDialog(); // novo

            Excel.Application App; // Aplicação Excel
            Excel.Workbook WorkBook; // Pasta
            Excel.Worksheet WorkSheet; // Planilha
            object misValue = System.Reflection.Missing.Value;

            App = new Excel.Application();
            WorkBook = App.Workbooks.Add(misValue);
            WorkSheet = (Excel.Worksheet)WorkBook.Worksheets.get_Item(1);
            int i = 0;
            int j = 0;

            // passa as celulas do DataGridView para a Pasta do Excel
            for (i = 0; i <= dgvSenha.RowCount - 1; i++)
            {
                for (j = 0; j <= dgvSenha.ColumnCount - 1; j++)
                {
                    DataGridViewCell cell = dgvSenha[j, i];
                    WorkSheet.Cells[i + 1, j + 1] = cell.Value;
                }
            }

            // define algumas propriedades da caixa salvar
            salvar.Title = "Exportar para Excel";
            salvar.Filter = "Arquivo do Excel *.xls | *.xls";
            salvar.ShowDialog(); // mostra

            // salva o arquivo
            WorkBook.SaveAs(salvar.FileName, Excel.XlFileFormat.xlWorkbookNormal, misValue, misValue, misValue, misValue,

            Excel.XlSaveAsAccessMode.xlExclusive, misValue, misValue, misValue, misValue, misValue);
            WorkBook.Close(true, misValue, misValue);
            App.Quit(); // encerra o excel

            MessageBox.Show("Planilha Gerada com sucesso!");
        }

        private void btnUpload_Click(object sender, EventArgs e)
        {
            Caminho = "";
            OpenFileDialog dlg = new OpenFileDialog();

            dlg.Filter = "pdf files (*.pdf) |*.pdf;";
            dlg.ShowDialog();
            txtArquivo.Text = Path.GetFileName(dlg.FileName);
            Caminho = dlg.FileName;

        }

        private void btnNovoRotina_Click(object sender, EventArgs e)
        {
            txtArquivo.Enabled = false;
            bsRotina.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControlesRotina(true);
            //  tabControl.SelectedTab = tabRotina;
        }

        private void btnEditarRotina_Click(object sender, EventArgs e)
        {
            txtArquivo.Enabled = false;
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControlesRotina(true);
        }

        private void btnCancelarRotina_Click(object sender, EventArgs e)
        {
            if (statusCadastro == StatusCadastro.Novo)
            {
                bsRotina.CancelEdit();
                statusCadastro = StatusCadastro.None;
                HabilitarDesabilitaControlesRotina(false);
            }
            else
            {
                bsRotina.CancelEdit();
                statusCadastro = StatusCadastro.None;
                HabilitarDesabilitaControlesRotina(false);
            }
        }

        private void btnSalvarRotina_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(cmbTipo.Text))
            {
                MessageBox.Show("O Tipo é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cmbTipo.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtNomeRotina.Text))
            {
                MessageBox.Show("O Nome é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtNomeRotina.Focus();
                return;
            }


            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Upload_Rotina set " +
                        "Tipo = @Tipo, Nome = @Nome " +
                        "where ID = @ID";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", ((DataRowView)bsRotina.Current).Row["ID"].ToString());
                        cmd.Parameters.AddWithValue("@Tipo", (cmbTipo.SelectedValue == null) ? "" : cmbTipo.SelectedValue);
                        cmd.Parameters.AddWithValue("@Nome", txtNomeRotina.Text);
                        //   cmd.Parameters.AddWithValue("@Arquivo", txtArquivo.Text.Replace(".pdf", ""));
                        cmd.ExecuteNonQuery();
                    }
                }
                else
                {
                    if (string.IsNullOrEmpty(txtArquivo.Text))
                    {
                        MessageBox.Show("O Arquivo é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                        txtArquivo.Focus();
                        return;
                    }

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into Upload_Rotina" +
                        "(Fk_Importador, Tipo, Nome)" +
                        "values" +
                        "(@Fk_Importador, @Tipo,@Nome)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Fk_Importador", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@Tipo", (cmbTipo.SelectedValue == null) ? "" : cmbTipo.SelectedValue);
                        cmd.Parameters.AddWithValue("@Nome", txtNomeRotina.Text);
                        cmd.ExecuteNonQuery();
                    }

                    bsRotina.DataSource = getRotina();
                    dgvRotina.DataSource = bsRotina;

                    FileInfo f1 = new FileInfo(Caminho);
                    string pasta = _caminho_doc_rotina_operacional;
                    string Arquivo = txtArquivo.Text.Replace(".pdf", "");
                    if (f1.Exists)
                    {
                        f1.CopyTo(string.Format("{0}{1}{2}", pasta, ((DataRowView)bsRotina.Current).Row["ID"].ToString(), f1.Extension));
                    }

                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Nome: {0} ", txtNomeRotina.Text));
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
                HabilitarDesabilitaControlesRotina(false);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void tabControl_SelectedIndexChanged(object sender, EventArgs e)
        {
            //DataGridViewRow row = dataGridView1.CurrentCell.OwningRow;

            //CGC_CPF = row.Cells["CGC"].Value.ToString();

            //Codigo = row.Cells["codigo"].Value.ToString();

            //RazaoSocial = row.Cells["dataGridViewTextBoxColumn2"].Value.ToString();

            //if (statusCadastro != StatusCadastro.Novo)
            //{
            //    PreenchePropostaRotinaeMonitoracoes();

            //    //CarregaParametrosImportador(Codigo);            
            //}
            //else
            //{
            //    if (tabControl.SelectedTab == tabSearch)
            //    {
            //        btnCancelar_Click(null, null);
            //    }
            //}

            bindingSource_PositionChanged(null, null);
        }

        private void dgvRotina_DoubleClick(object sender, EventArgs e)
        {
            try
            {
                System.Diagnostics.Process.Start(_caminho_doc_rotina_operacional + ((DataRowView)bsRotina.Current).Row["ID"].ToString() + ".pdf");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnNovoProposta_Click(object sender, EventArgs e)
        {
            bsProposta.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControlesProposta(true);
            HabilitarDesabilitaControlesUploadArquivoProposta(false);
            bsArquivo.DataSource = null;
        }

        private void btnSalvarProposta_Click(object sender, EventArgs e)
        {
            string Importadores;
            string CodigoAgrupado;

            if (string.IsNullOrEmpty(txtContato.Text))
            {
                MessageBox.Show("O Contato é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtContato.Focus();
                return;
            }
            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "UPDATE contratos_cadastrados_financeiro SET contato = @contato" +
                        ",email = @email,data_aprovacao = @data_aprovacao,data_vigencia_inicial = @data_vigencia_inicial " +
                        ",data_vigencia_final = @data_vigencia_final,observacao = @observacao,utilizacao_de_sistema = @utilizacao_de_sistema " +
                        ",movimentacao_de_repetro = @movimentacao_de_repetro " +
                        "WHERE pk_contrato =@pk_contrato ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@contato", txtContato.Text);
                        cmd.Parameters.AddWithValue("@email", txtEmailProposta.Text);
                        cmd.Parameters.AddWithValue("@data", DateTime.Now.Date);
                        cmd.Parameters.AddWithValue("@data_vigencia_inicial", txtVigenciaInicial.MaskCompleted ? (object)txtVigenciaInicial.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@data_vigencia_final", txtVigenciaFinal.MaskCompleted ? (object)txtVigenciaFinal.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@data_aprovacao", txtDataAprovacao.MaskCompleted ? (object)txtDataAprovacao.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@observacao", txtObservacao.Text);
                        cmd.Parameters.AddWithValue("@utilizacao_de_sistema", Convert.ToInt16(ckbUtilizacaoSistema.Checked));
                        cmd.Parameters.AddWithValue("@movimentacao_de_repetro", Convert.ToInt16(ckbMovimentacaoRepetro.Checked));
                        cmd.Parameters.AddWithValue("@pk_contrato", bsProposta.GetRelatedCurrencyManager("pk_contrato").Current.ToString());
                        cmd.ExecuteNonQuery();
                    }
                    txtEmailProposta.Clear();
                    LogSistemas.AddLogSistema(bsProposta.GetRelatedCurrencyManager("pk_contrato").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De: {0} - Para:{1}", Contato, txtContato.Text));
                }
                else
                {
                    Importadores = "";
                    Contador = 0;
                    var query = "SELECT Codigo_Agrupado FROM IMPORTADORES_AGRUPADOS WHERE Codigo = @Codigo  ";

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Codigo", txtCodigo.Text);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    if (reader[0].ToString() == "0000")
                                    {
                                        CodigoAgrupado = "";
                                    }
                                    else
                                    {
                                        CodigoAgrupado = reader[0].ToString();
                                    }

                                    var queryAgrupado = "SELECT IA.Codigo, I.Razao_Social, I.CGC_CPF  " +
                                                        "FROM Importadores_Agrupados IA INNER JOIN Importadores I " +
                                                        "ON IA.Codigo = I.Codigo " +
                                                        "WHERE IA.Codigo_AGRUPADO = @Codigo_AGRUPADO ";
                                    using (SqlCommand cmdAgrupado = new SqlCommand(queryAgrupado, conn))
                                    {
                                        cmdAgrupado.Parameters.AddWithValue("@Codigo_AGRUPADO", CodigoAgrupado);
                                        using (SqlDataReader readerAgruapdo = cmdAgrupado.ExecuteReader())
                                        {
                                            if (readerAgruapdo.HasRows)
                                            {
                                                while (readerAgruapdo.Read())
                                                {
                                                    if (Importadores == "")
                                                    {
                                                        Contador = ++Contador;
                                                        Importadores = "- " + readerAgruapdo[0].ToString() + " - " + readerAgruapdo[1].ToString() + " - " + readerAgruapdo[2].ToString();
                                                    }
                                                    else
                                                    {
                                                        Contador = ++Contador;
                                                        Importadores = Importadores + "\n\r" + "- " + readerAgruapdo[0].ToString() + " - " + readerAgruapdo[1].ToString() + " - " + readerAgruapdo[2].ToString();
                                                    }
                                                }
                                                if (Contador > 1)
                                                {
                                                    if (MessageBox.Show("Esse importador está associado a um grupo com os seguintes importadores vinculados:  " + "\n\r" + "\n\r" + Importadores + "\n\r" + "\n\r" + "Deseja cadastrar essa proposta para todos ?", "Confirmação", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                                                    {
                                                        IncluirImportadoresAgrupadosEmUso(CodigoAgrupado);
                                                    }
                                                    else
                                                    {
                                                        IncluiContratoImportador();
                                                    }
                                                }
                                                else
                                                {
                                                    IncluiContratoImportador();
                                                }
                                            }
                                            else
                                            {
                                                IncluiContratoImportador();
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                bsProposta.DataSource = getProposta();
                dgvContratoProposta.DataSource = bsProposta;

                statusCadastro = StatusCadastro.None;
                HabilitarDesabilitaControlesProposta(false);
                HabilitarDesabilitaControlesUploadArquivoProposta(false);
                txtEmailProposta.Clear();

                if (statusCadastro == StatusCadastro.Editar)
                {
                    if (MessageBox.Show("Contrato Alterado com sucesso. Deseja realizar upload do arquivo ?", "Confirmação", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                    {
                        HabilitarDesabilitaControlesUploadArquivoProposta(true);
                    }
                    else
                    {
                        HabilitarDesabilitaControlesUploadArquivoProposta(false);
                    }
                }
                else
                {
                    if (MessageBox.Show("Contrato registrado com sucesso. Deseja realizar upload do arquivo ?", "Confirmação", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                    {
                        HabilitarDesabilitaControlesUploadArquivoProposta(true);
                    }
                    else
                    {
                        HabilitarDesabilitaControlesUploadArquivoProposta(false);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnCancelarProposta_Click(object sender, EventArgs e)
        {
            bsProposta.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControlesProposta(false);
            HabilitarDesabilitaControlesUploadArquivoProposta(false);
            if (bsProposta.Count != 0)
            {
                bsArquivo.DataSource = getArquivo();
                dgvUploadProposta.DataSource = bsArquivo;
            }
        }

        private void btnEditarProposta_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControlesProposta(true);
            HabilitarDesabilitaControlesUploadArquivoProposta(true);
        }

        private void btnLocalizaUpload_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();

            dlg.Filter = "pdf files (*.pdf) |*.pdf;";
            dlg.ShowDialog();
            txtArquivoProposta.Text = Path.GetFileName(dlg.FileName);
            CaminhoProposta = dlg.FileName;
        }

        private void dgvUploadProposta_DoubleClick(object sender, EventArgs e)
        {
            try
            {
                string Arquivo = dgvUploadProposta.CurrentCell.FormattedValue.ToString();
                System.Diagnostics.Process.Start(_caminho_doc_contrato_de_proposta + Arquivo + ".pdf");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void dgvContratoProposta_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (!string.IsNullOrEmpty(bsProposta.GetRelatedCurrencyManager("pk_contrato").Current.ToString()))
            {
                dgvUploadProposta.AutoGenerateColumns = false;
                bsArquivo.DataSource = getArquivo();
                dgvUploadProposta.DataSource = bsArquivo;
                // bdnRotina.BindingSource = bsRotina;
            }
        }

        private bool Parametro(out string numero)
        {
            numero = "";

            var query = "select Numerador_Documentos + 1 from Parametros ";
            var GoOn = false;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                GoOn = true;
                                numero = reader[0].ToString();
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

        private void InsertUpload(string fk_contrato, string Arquivo, string codigo)
        {
            try
            {
                var query = "INSERT INTO contratos_cadastrados_upload (fk_contrato ,Arquivo, codigo) " +
                            "VALUES (@fk_contrato,@Arquivo ,@codigo) ";

                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@fk_contrato", fk_contrato);
                    cmd.Parameters.AddWithValue("@Arquivo", Arquivo);
                    cmd.Parameters.AddWithValue("@codigo", codigo);
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private string ImportadoresAgrupadosContratosEmUso()
        {
            string Importadores;
            Importadores = "";
            Contador = 0;
            var query = "SELECT IA.Codigo, IA.Codigo_AGRUPADO, I.Razao_Social, I.CGC_CPF " +
                        "FROM Importadores_Agrupados IA INNER JOIN Importadores I " +
                        "ON IA.Codigo = I.Codigo INNER JOIN contratos_cadastrados_financeiro CCF " +
                        "ON CCF.cod_importador = IA.Codigo " +
                        "WHERE CCF.numero_contrato = @numero_contrato  " +
                        "ORDER BY Codigo_AGRUPADO";
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@numero_contrato", dgvContratoProposta.CurrentCell.FormattedValue.ToString());
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            if (Importadores == "")
                            {
                                Contador = ++Contador;
                                Importadores = "- " + reader[0].ToString() + " - " + reader[2].ToString() + " - " + reader[3].ToString();
                            }
                            else
                            {
                                Contador = ++Contador;
                                Importadores = Importadores + "\n\r" + "- " + reader[0].ToString() + " - " + reader[2].ToString() + " - " + reader[3].ToString();
                            }
                        }
                    }
                }
                return Importadores;
            }
        }

        private void IncluirImportadoresAgrupadosEmUso(string Codigo)
        {
            string NumeroProposta;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                var query = "SELECT IA.Codigo, I.Razao_Social, I.CGC_CPF  " +
                                    "FROM Importadores_Agrupados IA INNER JOIN Importadores I " +
                                    "ON IA.Codigo = I.Codigo " +
                                    "WHERE IA.Codigo_AGRUPADO = @Codigo_AGRUPADO ";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Codigo_AGRUPADO", Codigo);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            NumeroProposta = RetornaNumeroProposta();
                            while (reader.Read())
                            {
                                var queryInsertContrato = "INSERT INTO contratos_cadastrados_financeiro(numero_contrato,data,nro_cliente,cliente" +
                                                          ",cod_importador,contato,email,data_aprovacao,data_vigencia_inicial,data_vigencia_final " +
                                                          ",observacao,utilizacao_de_sistema,movimentacao_de_repetro)" +
                                                          "VALUES (@numero_contrato,@data,@nro_cliente,@cliente, @cod_importador, @contato, @email," +
                                                          "@data_aprovacao,@data_vigencia_inicial,@data_vigencia_final,@observacao, @utilizacao_de_sistema, @movimentacao_de_repetro)";


                                using (SqlCommand cmdContrato = new SqlCommand(queryInsertContrato, conn))
                                {
                                    cmdContrato.Parameters.AddWithValue("@numero_contrato", NumeroProposta);
                                    cmdContrato.Parameters.AddWithValue("@nro_cliente", "");
                                    cmdContrato.Parameters.AddWithValue("@cliente", reader[1].ToString());
                                    cmdContrato.Parameters.AddWithValue("@cod_importador", reader[0].ToString());
                                    cmdContrato.Parameters.AddWithValue("@contato", txtContato.Text);
                                    cmdContrato.Parameters.AddWithValue("@email", txtEmailProposta.Text);
                                    cmdContrato.Parameters.AddWithValue("@data", DateTime.Now.Date);
                                    cmdContrato.Parameters.AddWithValue("@data_vigencia_inicial", txtVigenciaInicial.MaskCompleted ? (object)txtVigenciaInicial.Text : DBNull.Value);
                                    cmdContrato.Parameters.AddWithValue("@data_vigencia_final", txtVigenciaFinal.MaskCompleted ? (object)txtVigenciaFinal.Text : DBNull.Value);
                                    cmdContrato.Parameters.AddWithValue("@data_aprovacao", txtDataAprovacao.MaskCompleted ? (object)txtDataAprovacao.Text : DBNull.Value);
                                    cmdContrato.Parameters.AddWithValue("@observacao", txtObservacao.Text);
                                    cmdContrato.Parameters.AddWithValue("@utilizacao_de_sistema", Convert.ToInt16(ckbUtilizacaoSistema.Checked));
                                    cmdContrato.Parameters.AddWithValue("@movimentacao_de_repetro", Convert.ToInt16(ckbMovimentacaoRepetro.Checked));
                                    cmdContrato.ExecuteNonQuery();
                                }
                            }
                            LogSistemas.AddLogSistema(NumeroProposta, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Numero Proposta: {0} - Contato:{1}", NumeroProposta, txtContato.Text));
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void IncluiContratoImportador()
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                var query = "INSERT INTO contratos_cadastrados_financeiro(numero_contrato,data,nro_cliente,cliente" +
                            ",cod_importador,contato,email,data_aprovacao,data_vigencia_inicial,data_vigencia_final " +
                            ",observacao,utilizacao_de_sistema,movimentacao_de_repetro)" +
                            "VALUES (@numero_contrato,@data,@nro_cliente,@cliente, @cod_importador, @contato, @email," +
                            "@data_aprovacao,@data_vigencia_inicial,@data_vigencia_final,@observacao, @utilizacao_de_sistema, @movimentacao_de_repetro)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@numero_contrato", RetornaNumeroProposta());
                    cmd.Parameters.AddWithValue("@nro_cliente", "");
                    cmd.Parameters.AddWithValue("@cliente", txtRazaoSocial.Text);
                    cmd.Parameters.AddWithValue("@cod_importador", txtCodigo.Text);
                    cmd.Parameters.AddWithValue("@contato", txtContato.Text);
                    cmd.Parameters.AddWithValue("@email", txtEmailProposta.Text);
                    cmd.Parameters.AddWithValue("@data", DateTime.Now.Date);
                    cmd.Parameters.AddWithValue("@data_vigencia_inicial", txtVigenciaInicial.MaskCompleted ? (object)txtVigenciaInicial.Text : DBNull.Value);
                    cmd.Parameters.AddWithValue("@data_vigencia_final", txtVigenciaFinal.MaskCompleted ? (object)txtVigenciaFinal.Text : DBNull.Value);
                    cmd.Parameters.AddWithValue("@data_aprovacao", txtDataAprovacao.MaskCompleted ? (object)txtDataAprovacao.Text : DBNull.Value);
                    cmd.Parameters.AddWithValue("@observacao", txtObservacao.Text);
                    cmd.Parameters.AddWithValue("@utilizacao_de_sistema", Convert.ToInt16(ckbUtilizacaoSistema.Checked));
                    cmd.Parameters.AddWithValue("@movimentacao_de_repetro", Convert.ToInt16(ckbMovimentacaoRepetro.Checked));
                    cmd.ExecuteNonQuery();
                }
                //LogSistemas.AddLogSistema(NumeroProposta, FrmPrincipal.UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Numero Proposta: {0} - Contato:{1}", NumeroProposta, txtContato.Text));

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private string RetornaNumeroProposta()
        {
            int vCont;
            string Contrato;
            Contrato = "";
            var query = "SELECT  top 1 CAST(SUBSTRING(numero_contrato, 1, 5) AS INTEGER) + 1 AS 'PROXIMO_CONTADOR',  " +
                        "LEN(CAST(SUBSTRING(numero_contrato, 1, 5) AS INTEGER) + 1) AS 'DECIMAL'," +
                        "DATEPART(year, data) AS 'ANO_REGISTRO'  " +
                        "FROM contratos_cadastrados_financeiro " +
                        "WHERE DATA = (SELECT MAX(DATA) AS 'DATA' from contratos_cadastrados_financeiro)  " +
                        "ORDER BY numero_contrato desc";

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            if (reader[2].ToString() != DateTime.Now.Year.ToString())
                            {
                                Contrato = "00001/" + DateTime.Now.Year.ToString().Substring(2, 2);
                            }
                            else
                            {
                                vCont = Convert.ToInt32(reader[1].ToString());

                                switch (vCont)
                                {
                                    case 1: Contrato = "0000" + reader[0].ToString() + "/" + reader[2].ToString().Substring(2, 2);
                                        break;
                                    case 2: Contrato = "000" + reader[0].ToString() + "/" + reader[2].ToString().Substring(2, 2);
                                        break;
                                    case 3: Contrato = "00" + reader[0].ToString() + "/" + reader[2].ToString().Substring(2, 2);
                                        break;
                                    case 4: Contrato = "0" + reader[0].ToString() + "/" + reader[2].ToString().Substring(2, 2);
                                        break;
                                    case 5:
                                        {
                                            if (reader[0].ToString() == "100000")
                                            {
                                                MessageBox.Show("Por favor, entre em contato com o sistema houve um estouro no contador e a operação foi cancelada.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                            }
                                            else
                                            {
                                                Contrato = reader[0].ToString() + "/" + reader[2].ToString().Substring(2, 2);
                                            }
                                        }
                                        break;
                                }
                            }
                        }
                    }
                }
                return Contrato;
            }
        }

        private void btnRealizaUpload_Click(object sender, EventArgs e)
        {
            string numero;
            string Numerador;
            string Arquivo;
            string Destino;


            bool GoOn;

            if (string.IsNullOrEmpty(txtArquivoProposta.Text))
            {
                MessageBox.Show("Favor selecionar um arquivo para Upload.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtArquivoProposta.Focus();
                return;
            }

            if (MessageBox.Show("Esse arquivo será associado ao contrato " + dgvContratoProposta.CurrentCell.FormattedValue.ToString() + ", confirma o upload ?", "Confirmação", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                if (Parametro(out numero))
                {
                    if (!string.IsNullOrEmpty(numero))
                    {
                        Numerador = numero;
                        Numerador = new string('0', 8 - Numerador.Length) + Numerador;
                        Arquivo = string.Copy("RJO") + Numerador;

                        try
                        {
                            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                            string query = "update parametros set Numerador_Documentos=@Numero";

                            using (SqlCommand cmd = new SqlCommand(query, conn))
                            {
                                cmd.Parameters.AddWithValue("@Numero", Numerador);
                                cmd.ExecuteNonQuery();
                            }
                            GoOn = true;
                        }
                        catch (Exception ex)
                        {
                            GoOn = false;
                            MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }

                        if (GoOn)
                        {
                            try
                            {
                                CodigoPasta = Constantes.VerificarFaixa(Arquivo);

                                string Msg = ImportadoresAgrupadosContratosEmUso();

                                var query = "SELECT IA.Codigo, IA.Codigo_AGRUPADO, I.Razao_Social, I.CGC_CPF " +
                                      "FROM Importadores_Agrupados IA INNER JOIN Importadores I " +
                                      "ON IA.Codigo = I.Codigo INNER JOIN contratos_cadastrados_financeiro CCF " +
                                      "ON CCF.cod_importador = IA.Codigo " +
                                      "WHERE CCF.numero_contrato = @numero_contrato  " +
                                      "ORDER BY Codigo_AGRUPADO";
                                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                                using (SqlCommand cmd = new SqlCommand(query, conn))
                                {
                                    cmd.Parameters.AddWithValue("@numero_contrato", dgvContratoProposta.CurrentCell.FormattedValue.ToString());
                                    using (SqlDataReader reader = cmd.ExecuteReader())
                                    {
                                        if (reader.HasRows)
                                        {
                                            if (Contador > 1)
                                            {
                                                if (MessageBox.Show("Esse mesmo contrato está associado aos seguintes importadores: " + "\n\r" + "\n\r" + Msg + "\n\r" + "\n\r" + "Deseja fazer o upload desse arquivo para todos ?", "Confirmação", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                                                {
                                                    while (reader.Read())
                                                    {
                                                        var queryContratoAgrupado = "Select pk_contrato from contratos_cadastrados_financeiro " +
                                                                                                "where cod_importador =@cod_importador and numero_contrato = @numero_contrato";

                                                        using (SqlCommand cmdContrato = new SqlCommand(queryContratoAgrupado, conn))
                                                        {
                                                            cmdContrato.Parameters.AddWithValue("@cod_importador", reader[0].ToString());
                                                            cmdContrato.Parameters.AddWithValue("@numero_contrato", dgvContratoProposta.CurrentCell.FormattedValue.ToString());
                                                            using (SqlDataReader readerContrato = cmdContrato.ExecuteReader())
                                                            {
                                                                if (readerContrato.HasRows)
                                                                {
                                                                    while (readerContrato.Read())
                                                                    {
                                                                        InsertUpload(readerContrato[0].ToString(), Arquivo, "RJO" + CodigoPasta);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                else
                                                {
                                                    InsertUpload(bsProposta.GetRelatedCurrencyManager("pk_contrato").Current.ToString(), Arquivo, "RJO" + CodigoPasta);
                                                }
                                            }
                                            else
                                            {
                                                InsertUpload(bsProposta.GetRelatedCurrencyManager("pk_contrato").Current.ToString(), Arquivo, "RJO" + CodigoPasta);
                                            }
                                            GoOn = true;
                                        }
                                    }
                                }
                            }
                            catch (Exception ex)
                            {
                                GoOn = false;
                                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            }
                        }

                        if (GoOn)
                        {
                            Destino = _caminho_doc_contrato_de_proposta + @"\" + Arquivo + ".pdf";
                            if (!Directory.Exists(Path.GetDirectoryName(Destino)))
                            {
                                Directory.CreateDirectory(Path.GetDirectoryName(Destino));
                            }

                            if (File.Exists(Destino))
                            {
                                File.Delete(Destino);
                            }

                            try
                            {
                                File.Copy(CaminhoProposta, Destino, true);
                            }
                            catch (Exception ex)
                            {
                                var query = "DELETE FROM contratos_cadastrados_upload " +
                                            "WHERE fk_contrato =@fk_contrato and Arquivo =@Arquivo and codigo =@codigo ";

                                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                                using (SqlCommand cmd = new SqlCommand(query, conn))
                                {
                                    cmd.Parameters.AddWithValue("@fk_contrato", bsProposta.GetRelatedCurrencyManager("pk_contrato").Current.ToString());
                                    cmd.Parameters.AddWithValue("@Arquivo", Arquivo);
                                    cmd.Parameters.AddWithValue("@codigo", "RJO" + CodigoPasta);
                                    cmd.ExecuteNonQuery();
                                }
                                GoOn = false;
                                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            }

                            if (GoOn)
                            {
                                MessageBox.Show("Upload foi Realizado com Sucesso!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                bsArquivo.DataSource = getArquivo();
                                dgvUploadProposta.DataSource = bsArquivo;
                            }
                            else
                            {
                                MessageBox.Show("Não foi possível Realizar o Upload!", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            }
                        }
                    }
                }
                else
                {
                    MessageBox.Show("Erro com o numerador na tabela parametros", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                txtArquivoProposta.Clear();
                HabilitarDesabilitaControlesProposta(false);
                HabilitarDesabilitaControlesUploadArquivoProposta(false);
                btnCancelarProposta_Click(sender, e);
            }
        }

        private void txtPesquisa_TextChanged(object sender, EventArgs e)
        {
            if (rdbAtivos.Checked)
            {
                bindingSource.Filter = "Razao_social like '" + txtPesquisa.Text + "%' and Ativo = '1'";
            }
            else
                if (rdbInativos.Checked)
                {
                    bindingSource.Filter = "Razao_social like '" + txtPesquisa.Text + "%' and Ativo = '0'";
                }
                else
                {
                    bindingSource.Filter = "Razao_social like '" + txtPesquisa.Text + "%'";
                }
            bool ativarDesativar = (bindingSource.Count > 0);
            btnEditar.Enabled = ativarDesativar;
            btnAbrir.Enabled = ativarDesativar;
            ((Control)this.tabFormulario).Enabled = ativarDesativar;
            //tabControl.SelectedTab.Enabled = ativarDesativar;

        }

        private void ctlProposta_Click(object sender, EventArgs e)
        {
            //  VisualizatabControlPropostaRotinaRepetro();
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void rdbAtivos_CheckedChanged(object sender, EventArgs e)
        {
            bindingSource.Filter = "Ativo = '1'";
        }

        private void rdbInativos_CheckedChanged(object sender, EventArgs e)
        {
            bindingSource.Filter = "Ativo = '0'";
        }

        private void rdbTodos_CheckedChanged(object sender, EventArgs e)
        {
            bindingSource.RemoveFilter();
        }

        private void cbbTipoImportador_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbbTipoImportador.SelectedIndex == 0)
            {
                txtCNPJ.Mask = "00,000,000/0000-00";
                lbCNPJ_CPF.Text = "CNPJ";
            }
            else
            {
                txtCNPJ.Mask = "000,000,000-00";
                lbCNPJ_CPF.Text = "CPF";
            }
        }

        private void tabControl_Selecting(object sender, TabControlCancelEventArgs e)
        {
            e.Cancel = !((Control)e.TabPage).Enabled;
        }

        private void IncluiRegistroTabelaImportadorAgrupado(string CodigoImportador)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                var query = "   INSERT INTO Importadores_Agrupados (  Codigo,  Codigo_AGRUPADO,  Nome_Grupo ) " +
                            "                               VALUES ( @Codigo, @Codigo_AGRUPADO, @Nome_Grupo ) ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Codigo", CodigoImportador);
                    cmd.Parameters.AddWithValue("@Codigo_AGRUPADO", "0000");
                    cmd.Parameters.AddWithValue("@Nome_Grupo", "*** DESAGRUPADOS ***");
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void IncluiRegistroTabelaImportadores_Parametros(string CodigoImportador)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                var query = "   INSERT INTO Importadores_Parametros (  fk_importador ) " +
                            "                                VALUES ( @fk_importador ) ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@fk_importador", CodigoImportador);
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnNovaMonitoracao_Click(object sender, EventArgs e)
        {
            bsMonitoracoes.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControlesMonitoracoes(true);

            cmbTipoMonitoracao.Focus();
        }

        private void btnCancelaMonitoracao_Click(object sender, EventArgs e)
        {
            bsMonitoracoes.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControlesMonitoracoes(false);
        }

        private void btnEditaMonitoracao_Click(object sender, EventArgs e)
        {
            if (bsMonitoracoes.Count <= 0) return;

            Monitoracao_TipoAntigo = ((DataRowView)bsMonitoracoes.Current).Row["Tipo"].ToString();
            Monitoracao_EmailAntigo = ((DataRowView)bsMonitoracoes.Current).Row["Email"].ToString();

            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControlesMonitoracoes(true);
        }

        private void btnSalvarMonitoracao_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(cmbTipoMonitoracao.Text))
            {
                MessageBox.Show("Tipo obrigatório.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cmbTipoMonitoracao.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtNomeCompletoMonitoracao.Text))
            {
                MessageBox.Show("Nome obrigatório.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtNomeCompletoMonitoracao.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtEmailMonitoracao.Text))
            {
                MessageBox.Show("E-mail obrigatório.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtEmailMonitoracao.Focus();
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "UPDATE Emails_avisos SET Tipo = @Tipo, Email = @Email, Nome_completo = @Nome_Completo, Ativo = @Ativo WHERE Tipo = @TipoAnt AND Importador = @Importador AND Email = @EmailAnt";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Tipo", cmbTipoMonitoracao.SelectedValue);
                        cmd.Parameters.AddWithValue("@Nome_Completo", txtNomeCompletoMonitoracao.Text);
                        cmd.Parameters.AddWithValue("@Email", txtEmailMonitoracao.Text);
                        cmd.Parameters.AddWithValue("@Ativo", Convert.ToInt16(ckbAtivoMonitoracao.Checked));

                        cmd.Parameters.AddWithValue("@Importador", txtCodigo.Text);

                        cmd.Parameters.AddWithValue("@TipoAnt", Monitoracao_TipoAntigo);
                        cmd.Parameters.AddWithValue("@EmailAnt", Monitoracao_EmailAntigo);
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Tipo: {0} para {1}, Nome Completo: {2} para {3}, Email: {4} para {5} ", ((DataRowView)bsMonitoracoes.Current).Row["Tipo"].ToString(), cmbTipoMonitoracao.Text,
                    ((DataRowView)bsMonitoracoes.Current).Row["Nome_Completo"].ToString(), txtNomeCompletoMonitoracao.Text, ((DataRowView)bsMonitoracoes.Current).Row["Email"].ToString(), txtEmailMonitoracao.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Emails_avisos " +
                                   "( Importador,  Tipo,  Email,  Nome_Completo, Para ) " +
                                   " VALUES " +
                                   "(@Importador, @Tipo, @Email, @Nome_Completo, 1 ) ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Importador", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@Tipo", cmbTipoMonitoracao.SelectedValue);
                        cmd.Parameters.AddWithValue("@Nome_Completo", txtNomeCompletoMonitoracao.Text);
                        cmd.Parameters.AddWithValue("@Email", txtEmailMonitoracao.Text);                        
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Tipo: {0} para {1}, Nome Completo: {2} para {3}, Email: {4} para {5} ", ((DataRowView)bsMonitoracoes.Current).Row["Tipo"].ToString(), cmbTipoMonitoracao.Text,
                    ((DataRowView)bsMonitoracoes.Current).Row["Nome_Completo"].ToString(), txtNomeCompletoMonitoracao.Text, ((DataRowView)bsMonitoracoes.Current).Row["Email"].ToString(), txtEmailMonitoracao.Text));
                }

                bsMonitoracoes.DataSource = getMonitoracao();
                dgvMonitoracoes.DataSource = bsMonitoracoes;

                if (statusCadastro == StatusCadastro.Editar)
                {
                    MessageBox.Show("Registro alterado com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }

                statusCadastro = StatusCadastro.None;

                HabilitarDesabilitaControlesMonitoracoes(false);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnExcluiMonitoracao_Click(object sender, EventArgs e)
        {
            if (bsMonitoracoes.Count <= 0) return;

            if (MessageBox.Show("Tem certeza que deseja excluir o registro ?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = " DELETE FROM Emails_Avisos WHERE Importador = @Importador AND Tipo = @Tipo AND Email = @Email";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Importador", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@Tipo", cmbTipoMonitoracao.SelectedValue);
                        cmd.Parameters.AddWithValue("@Email", txtEmailMonitoracao.Text);
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Excluído destinatário: {0}, do Tipo: {1}, Importador: {2}", txtNomeCompletoMonitoracao.Text, cmbTipoMonitoracao.Text, txtCodigo.Text));

                    bsMonitoracoes.RemoveCurrent();

                    statusCadastro = StatusCadastro.None;

                    bsMonitoracoes.DataSource = getMonitoracao();
                    dgvMonitoracoes.DataSource = bsMonitoracoes;

                    MessageBox.Show("Registro excluído com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void btnFollowKPIObrigatorio_Click(object sender, EventArgs e)
        {
            try
            {
                var form = new FrmFollowObrigatorioImportadorKPI();
                form.CodigoImportador = ((DataRowView)bindingSource.Current).Row["Codigo"].ToString();
                FrmPrincipal.ShowModalMdiChildren(form);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void CarregaParametrosImportador(String importador)
        {
            parametros.BuscarPorCodigo(importador);
            lblRazao_Social.Text = txtRazaoSocial.Text;
            ckbCobrarPagamentoArmazenagem.Checked = parametros.cobra_pagamento_armazenagem;
            ckbMedicaoFaturamento.Checked = parametros.medicao_para_faturamento;
            ckbNumerarioETA.Checked = parametros.numerario_eta;
            ckbNumerarioFatura.Checked = parametros.numerario_fatura;            
            ckbICMSdocumentonumerario.Checked = parametros.icms_documento_numerario;
            ckbARMAZENAGEMdocumentonumerario.Checked = parametros.armazenagem_documento_numerario;
            ckbDESCONSOLIDACAOdocumentonumerario.Checked = parametros.desconsolidacao_documento_numerario;

            if (parametros.fk_coordenador != null)
                cbbCoordenador.SelectedValue = parametros.fk_coordenador;
            else cbbCoordenador.SelectedIndex = -1;
            if (parametros.fk_supervisor != null)
                cbbSupervisor.SelectedValue = parametros.fk_supervisor;
            else cbbSupervisor.SelectedIndex = -1;
          /*  if (parametros.fk_analista_documental != null)
                cbbAnalistaDoc.SelectedValue = parametros.fk_analista_documental;
            else cbbAnalistaDoc.SelectedIndex = -1;*/
        }

        private void AtualizaParametrosImportador()
        {
            parametros.cobra_pagamento_armazenagem = ckbCobrarPagamentoArmazenagem.Checked;
            parametros.medicao_para_faturamento = ckbMedicaoFaturamento.Checked;
            parametros.numerario_eta = ckbNumerarioETA.Checked;
            parametros.numerario_fatura = ckbNumerarioFatura.Checked;
            parametros.icms_documento_numerario = ckbICMSdocumentonumerario.Checked;
            parametros.armazenagem_documento_numerario = ckbARMAZENAGEMdocumentonumerario.Checked;
            parametros.desconsolidacao_documento_numerario = ckbDESCONSOLIDACAOdocumentonumerario.Checked;
            parametros.fk_coordenador = cbbCoordenador.SelectedValue == null ? (int?)null : (int)cbbCoordenador.SelectedValue;
            parametros.fk_supervisor = cbbSupervisor.SelectedValue == null ? (int?)null : (int)cbbSupervisor.SelectedValue;
           // parametros.fk_analista_documental = cbbAnalistaDoc.SelectedValue == null ? (int?)null : (int)cbbAnalistaDoc.SelectedValue;
            parametros.UpdateParametros_Importador(txtCodigo.Text);
        }

        private Boolean ValidaCampos()
        {
            if (string.IsNullOrEmpty(txtRazaoSocial.Text))
            {
                MessageBox.Show(" A Razão Social é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtRazaoSocial.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtCNPJ.Text))
            {
                MessageBox.Show("O Cnpj é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCNPJ.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtEndereco.Text))
            {
                MessageBox.Show("O Endereço é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtEndereco.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtNumero.Text))
            {
                MessageBox.Show("O Número é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtNumero.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtBairro.Text))
            {
                MessageBox.Show("O Bairro é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtBairro.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtCidade.Text))
            {
                MessageBox.Show("A Cidade é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCidade.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(cbbUF.Text))
            {
                MessageBox.Show("O UF é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbUF.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtEstado.Text))
            {
                MessageBox.Show("O Estado é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtEstado.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(cbbPais.Text))
            {
                MessageBox.Show("O País é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbPais.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(cbbTipoImportador.Text))
            {
                MessageBox.Show("O Tipo Importador é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbTipoImportador.Focus();
                return false;
            }

            if (cbbTipoImportador.SelectedValue.ToString() == "1")
            {
                if (txtCNPJ.Text.Length < 14)
                {
                    MessageBox.Show("CNPJ Incompleto!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    txtCNPJ.Focus();
                    return false;
                }
            }
            else
            {
                if (txtCNPJ.Text.Length < 11)
                {
                    MessageBox.Show("CPF Incompleto!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    txtCNPJ.Focus();
                    return false;
                }
            }

            if (CnpjEmUso())
            {
                if (vIMP != txtCNPJ.Text)
                {
                    MessageBox.Show("Importador já Cadastrado!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    return false;
                }
            }

            return true;
        }

        private void bindingSource_PositionChanged(object sender, EventArgs e)
        {
            CGC_CPF = ((DataRowView)bindingSource.Current).Row["CNPJ_CPF_COMPLETO"].ToString().Substring(0, 10);
            string codigo = ((DataRowView)bindingSource.Current).Row["Codigo"].ToString();

            //CGC_CPF = txtCNPJ.Text.Substring(0, 10);

            if (statusCadastro != StatusCadastro.Novo)
            {
                PreenchePropostaRotinaeMonitoracoes();
                if (!string.IsNullOrEmpty(codigo))
                    CarregaParametrosImportador(codigo);
            }
            else
            {
                if (tabControl.SelectedTab == tabSearch)
                {
                    btnCancelar_Click(null, null);
                }
            }
        }

        private void btnLimpaCoordenador_Click(object sender, EventArgs e)
        {
            cbbCoordenador.SelectedIndex = -1;
        }

        private void btnLimpaSupervisor_Click(object sender, EventArgs e)
        {
            cbbSupervisor.SelectedIndex = -1;
        }

       /* private void btnLimpaAnalistaDoc_Click(object sender, EventArgs e)
        {
            cbbAnalistaDoc.SelectedIndex = -1;
        }*/

        private void btnRepresentante_Click(object sender, EventArgs e)
        {
            try
            {
                var form = new FrmRepresentanteImportador();
                form.ID_Importador = ((DataRowView)bindingSource.Current).Row["CGC_CPF"].ToString();
                form.Razao_social = ((DataRowView)bindingSource.Current).Row["Razao_Social"].ToString();
                FrmPrincipal.ShowModalMdiChildren(form);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
