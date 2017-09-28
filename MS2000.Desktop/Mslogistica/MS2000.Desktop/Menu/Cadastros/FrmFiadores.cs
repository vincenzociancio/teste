using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.IO;
using System.Text;
using System.Windows.Forms;


namespace MS2000.Desktop.Menu.Cadastros
{
    public partial class FrmFiadores : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        const string _codigoPaisBrasil = "105";
        string CaminhoArquivo;

        struct Documento
        {
            public string arquivo;
            public string pagina;
            public string importador;
            public string processo;
            public string codigo;
            public string status;
            public string tipoDocumento;
            public string subTipoDocumento;
            public string vigenciaInicial;
            public string vigenciaFinal;
            public string usuario;
        };

        Documento documento = new Documento();

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
            dataGridView1.Enabled = (statusCadastro == StatusCadastro.None);
            groupBox1.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {

            if (Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Cadastros - Fiadores - Visualiza Cadastro de Documentos De Fiança",
                Chave_Busca = "visualizacadastrodocumentosfianca"
            }) == false)
            {
                tabControl.TabPages.Remove(tabDocumento);
            }

            groupBox6.Enabled = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Cadastros - Fiadores - Cadastrar Documentos De Fiança ",
                Chave_Busca = "cadastradocumentosfianca"
            });          

            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }


            foreach (Control controle in this.panelControlDocumento.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
            txtCodigo.Enabled = false;
            cbbPais.Enabled = false;
        }

        public FrmFiadores()
        {
            InitializeComponent();
        }

        private void FrmFiadores_Load(object sender, EventArgs e)
        {
            Dictionary<int, string> _pessoa = new Dictionary<int, string>();
            _pessoa.Add(0, "JURÍDICA");
            _pessoa.Add(1, "FÍSICA");

            cbbTipoPessoa.DisplayMember = "Value";
            cbbTipoPessoa.ValueMember = "Key";
            cbbTipoPessoa.DataSource = new BindingSource(_pessoa, null);
            cbbTipoPessoa.SelectedIndex = 0;
            getPais();
            getUF();
            getImportadores();
            getTipoDocumento();

            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getFiadores();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            bsDocumentos.DataSource = getDocumentos();
            dataGridView1.AutoGenerateColumns = false;
            dataGridView1.DataSource = bsDocumentos;

            txtCodigo.DataBindings.Add(new Binding("Text", bindingSource, "Codigo", true));
            txtRazaoSocial.DataBindings.Add(new Binding("Text", bindingSource, "Razao_Social", true));
            cbbPais.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Pais"));
            txtCNPJ.DataBindings.Add(new Binding("Text", bindingSource, "CGC_CPF", true));
            txtEndereco.DataBindings.Add(new Binding("Text", bindingSource, "Endereco", true));
            txtNumero.DataBindings.Add(new Binding("Text", bindingSource, "Numero", true));
            txtComplemento.DataBindings.Add(new Binding("Text", bindingSource, "Complemento", true));
            txtBairro.DataBindings.Add(new Binding("Text", bindingSource, "Bairro", true));
            txtCidade.DataBindings.Add(new Binding("Text", bindingSource, "Cidade", true));
            txtCEP.DataBindings.Add(new Binding("Text", bindingSource, "CEP", true));
            cbbUF.DataBindings.Add(new Binding("SelectedValue", bindingSource, "UF"));
            txtEstado.DataBindings.Add(new Binding("Text", bindingSource, "Estado", true));
            txtIE.DataBindings.Add(new Binding("Text", bindingSource, "Inscricao_Estadual", true));
            cbbImportadores.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Importador"));
            cbbTipoPessoa.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Pessoa"));
            ckbVinculacao.DataBindings.Add(new Binding("Checked", bindingSource, "Vinculacao", true));
            ckbRemunerada.DataBindings.Add(new Binding("Checked", bindingSource, "Remunerada", true));
            ckbPatrimonio.DataBindings.Add(new Binding("Checked", bindingSource, "Patrimonio", true));

            cbbTipoDocumento.DataBindings.Add(new Binding("SelectedValue", bsDocumentos, "Sub_Tipo_Doc"));
            txtDescricao.DataBindings.Add(new Binding("Text", bsDocumentos, "Numero_Doc", true));
            txtVigenciaInicial.DataBindings.Add(new Binding("Text", bsDocumentos, "Vigencia_inicial", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtVigenciaFinal.DataBindings.Add(new Binding("Text", bsDocumentos, "Vigencia_final", true, DataSourceUpdateMode.OnValidation, "  /  /"));
        }

        private DataTable getFiadores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Codigo,upper(Razao_Social) as Razao_Social,Pais,CGC_CPF,Endereco,Numero," +
                "Complemento,Bairro,Cidade,CEP,UF,Estado,Inscricao_Estadual,Importador ,Pessoa,Vinculacao,Remunerada,Patrimonio  " +
                "from Fiadores where lixo = 0 order by Razao_Social";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    table.Columns["Codigo"].AutoIncrement = false;
                    return table;
                }
            }
        }

        private DataTable getDocumentos()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select S.Descricao,D.Codigo,D.Arquivo,D.Importador,D.Vigencia_inicial,D.Vigencia_final, D.Sub_Tipo_Doc, D.Numero_Doc from Documentos D inner join Sub_Tipo_Documentos S on D.Sub_Tipo_Doc =  S.codigo and D.Tipo_Doc = S.Tipo_doc " +
                           "where D.Tipo_Doc = 'DOC' and Importador = @Importador " +
                           "order by S.Descricao";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Importador", ((DataRowView)bindingSource.Current).Row["codigo"].ToString());
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }
        private void getTipoDocumento()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select codigo,Descricao from Sub_Tipo_Documentos where Tipo_doc = 'DOC' order by Descricao";
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
                cbbTipoDocumento.DataSource = table;
                cbbTipoDocumento.DisplayMember = "Descricao";
                cbbTipoDocumento.ValueMember = "codigo";
                cbbTipoDocumento.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
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

        private void getImportadores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Codigo, Razao_Social+'  ( '+CNPJ_CPF_COMPLETO+' )' as 'campo' from Importadores order by Razao_Social";
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
                cbbImportadores.DataSource = table;
                cbbImportadores.DisplayMember = "campo";
                cbbImportadores.ValueMember = "codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            if (tabControl.SelectedTab == tabDocumento)
            {
                bsDocumentos.AddNew();
            }
            else
            {
                bindingSource.AddNew();
                // tabControl.SelectedTab = tabFormulario;
                cbbPais.SelectedValue = _codigoPaisBrasil;
            }
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
        }

        private bool FiadorEmUso()
        {
            var query = "select Razao_Social from Fiadores where Razao_Social = @Razao_Social ";
            var GoOn = false;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Razao_Social", txtRazaoSocial.Text);

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
            if (tabControl.SelectedTab == tabDocumento)
            {
               
                if (statusCadastro == StatusCadastro.Editar)
                {
                    string SQL = "UPDATE DOCUMENTOS SET NUMERO_DOC=@numeroDoc, " +
                                 "Sub_Tipo_Doc = @Sub_Tipo_Doc," +
                                 "Vigencia_inicial = @Vigencia_inicial  ,Vigencia_final = @Vigencia_final " +
                                 "WHERE PDF='1' AND ARQUIVO=@arquivo";
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    validarData();
                    using (SqlCommand cmd = new SqlCommand(SQL, conn))
                    {
                        cmd.Parameters.AddWithValue("@numeroDoc", txtDescricao.Text);                     
                        cmd.Parameters.AddWithValue("@Sub_Tipo_Doc", cbbTipoDocumento.SelectedValue);
                        cmd.Parameters.AddWithValue("@Vigencia_inicial", txtVigenciaInicial.MaskCompleted ? (object)txtVigenciaInicial.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Vigencia_final", txtVigenciaFinal.MaskCompleted ? (object)txtVigenciaFinal.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@arquivo", ((DataRowView)bsDocumentos.Current).Row["Arquivo"].ToString());
                        cmd.ExecuteNonQuery();
                    }

                    bsDocumentos.DataSource = getDocumentos();
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Descrição :{0} Arquivo: {1}  Vigência Inicial: {2}   Vigência Final: {3}", txtDescricao.Text, ((DataRowView)bsDocumentos.Current).Row["Arquivo"].ToString(), txtVigenciaInicial.MaskCompleted ? (object)txtVigenciaInicial.Text : DBNull.Value, txtVigenciaFinal.MaskCompleted ? (object)txtVigenciaFinal.Text : DBNull.Value));
                }
                else
                {
                    string arquivo = "";

                    string numerador = numeradorDocumentos();
                    string codigoPasta = "";
                    string diretorioServidor = caminhoDiretorioServidor(2);
                    bool continua = false;

                    if (string.IsNullOrEmpty(txtArquivo.Text))
                    {
                        MessageBox.Show("Favor selecionar o Arquivo!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return;
                    }

                    numerador = Convert.ToString(Convert.ToInt32(numerador) + 1);
                    numerador = new string('0', 8 - numerador.Length) + numerador;
                    arquivo = "RJO" + numerador;

                    if (atualizarNumeradorDocumento(numerador))
                    {
                        codigoPasta = Constantes.VerificarFaixa(arquivo);
                        documento.codigo = "RJO" + codigoPasta;
                        documento.arquivo = arquivo;
                        documento.importador = ((DataRowView)bindingSource.Current).Row["codigo"].ToString();
                        documento.pagina = "1";
                        documento.processo = "FIADOR";
                        documento.tipoDocumento = "DOC";
                        documento.subTipoDocumento = ((cbbTipoDocumento.SelectedValue == null) ? "" : cbbTipoDocumento.SelectedValue.ToString());
                        documento.usuario = FrmPrincipal.UsuarioLogado;
                        validarData();
                        continua = atualizarDocumento(documento);

                    }
                    if (continua)
                    {
                        salvarArquivoPDFServidor(diretorioServidor + codigoPasta + "\\" + arquivo + ".pdf");
                        bsDocumentos.DataSource = getDocumentos();
                        LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Codigo :{0} Arquivo: {1}", codigo, arquivo));
                    }
                    else
                    {
                        excluirRegistroDocumento(documento.arquivo, documento.codigo);
                        MessageBox.Show("Ocorreu um erro ao tentar fazer o upload do arquivo. Tente novamente", "MS2000", MessageBoxButtons.OK);
                    }
                }
                statusCadastro = StatusCadastro.None;
                HabilitarDesabilitaControles(false);
                txtArquivo.Clear();
            }
            else
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

                if (string.IsNullOrEmpty(cbbPais.Text) || cbbPais.SelectedValue == null)
                {
                    MessageBox.Show("O país é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    cbbPais.Focus();
                    return;
                }

                if (string.IsNullOrEmpty(cbbImportadores.Text) || cbbImportadores.SelectedValue == null)
                {
                    MessageBox.Show("O importador é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    cbbImportadores.Focus();
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
                        string query = "update Fiadores set " +
                            "Razao_Social = @Razao_Social, Pais = @Pais, CGC_CPF = @CGC_CPF, Endereco = @Endereco, Numero = @Numero, Complemento = @Complemento" +
                            ",Bairro = @Bairro, Cidade = @Cidade, CEP = @CEP, UF = @UF, Estado = @Estado, Inscricao_Estadual = @Inscricao_Estadual, Importador = @Importador, Pessoa = @Pessoa, " +
                            "Vinculacao = @Vinculacao, Remunerada = @Remunerada,Patrimonio = @Patrimonio " +
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
                            cmd.Parameters.AddWithValue("@Importador", (cbbImportadores.SelectedValue == null ? (object)DBNull.Value : cbbImportadores.SelectedValue));
                            cmd.Parameters.AddWithValue("@Pessoa", Convert.ToInt16(cbbTipoPessoa.SelectedValue));
                            cmd.Parameters.AddWithValue("@Vinculacao", ckbVinculacao.Checked);
                            cmd.Parameters.AddWithValue("@Remunerada", ckbRemunerada.Checked);
                            cmd.Parameters.AddWithValue("@Patrimonio", ckbPatrimonio.Checked);
                            cmd.ExecuteNonQuery();
                        }
                        LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De: {0} - Para: {1}", ((DataRowView)this.bindingSource.Current).Row["Razao_Social"].ToString(), txtRazaoSocial.Text));
                    }
                    else
                    {
                        if (FiadorEmUso())
                        {
                            MessageBox.Show("Fiador já Cadastrado!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            return;

                        }

                        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                        string query = "insert into Fiadores" +
                            "(Razao_Social, Pais, CGC_CPF, Endereco, Numero, Complemento" +
                            ",Bairro, Cidade, CEP, UF, Estado, Inscricao_Estadual, Importador,Pessoa,Vinculacao,Remunerada,Patrimonio)" +
                            "values" +
                            "(@Razao_Social, @Pais, @CGC_CPF, @Endereco, @Numero, @Complemento" +
                            ",@Bairro, @Cidade, @CEP, @UF, @Estado, @Inscricao_Estadual, @Importador,@Pessoa,@Vinculacao,@Remunerada,@Patrimonio)";

                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Razao_Social", txtRazaoSocial.Text);
                            cmd.Parameters.AddWithValue("@Pais", (cbbPais.SelectedValue == null ? (object)DBNull.Value : cbbPais.SelectedValue));
                            cmd.Parameters.AddWithValue("@CGC_CPF", (txtCNPJ.MaskCompleted ? txtCNPJ.Text : DBNull.Value.ToString()));
                            cmd.Parameters.AddWithValue("@Endereco", txtEndereco.Text);
                            cmd.Parameters.AddWithValue("@Numero", txtNumero.Text);
                            cmd.Parameters.AddWithValue("@Complemento", txtComplemento.Text);
                            cmd.Parameters.AddWithValue("@Bairro", txtBairro.Text);
                            cmd.Parameters.AddWithValue("@Cidade", txtCidade.Text);
                            cmd.Parameters.AddWithValue("@CEP", (txtCEP.MaskCompleted ? txtCEP.Text : (object)DBNull.Value));
                            cmd.Parameters.AddWithValue("@UF", (cbbUF.SelectedValue == null ? (object)DBNull.Value : cbbUF.SelectedValue));
                            cmd.Parameters.AddWithValue("@Estado", txtEstado.Text);
                            cmd.Parameters.AddWithValue("@Inscricao_Estadual", txtIE.Text);
                            cmd.Parameters.AddWithValue("@Importador", (cbbImportadores.SelectedValue == null ? (object)DBNull.Value : cbbImportadores.SelectedValue));
                            cmd.Parameters.AddWithValue("@Pessoa", Convert.ToInt16(cbbTipoPessoa.SelectedValue));
                            cmd.Parameters.AddWithValue("@Vinculacao", ckbVinculacao.Checked);
                            cmd.Parameters.AddWithValue("@Remunerada", ckbRemunerada.Checked);
                            cmd.Parameters.AddWithValue("@Patrimonio", ckbPatrimonio.Checked);
                            cmd.ExecuteNonQuery();
                        }
                        LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Razão Social: {0} ", txtRazaoSocial.Text));
                        bindingSource.DataSource = getFiadores();
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
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            if (tabControl.SelectedTab == tabDocumento)
            {
                bsDocumentos.CancelEdit();
            }
            else
            {
                bindingSource.CancelEdit();
            }
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            //  tabControl.SelectedTab = tabFormulario;
            txtCodigo.Enabled = false;
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {

            if (tabControl.SelectedTab == tabDocumento)
            {
                string codigo = dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells["codigo1"].Value.ToString();
                string arquivo = dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells["Arquivo"].Value.ToString();

                string diretorioServidor = caminhoDiretorioServidor(2);

                if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                {
                    excluirRegistroDocumento(arquivo, codigo);
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Codigo :{0} Arquivo: {1}", codigo, arquivo));
                    bsDocumentos.RemoveCurrent();
                    statusCadastro = StatusCadastro.None;
                    MessageBox.Show("O registro foi excluído com sucesso", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            else
            {
                if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                {
                    try
                    {
                        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                        string query = "update Fiadores set lixo = 1 where codigo = @codigo";
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
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }


        private void txtLocalizar_TextChanged(object sender, EventArgs e)
        {
            bindingSource.Filter = "Razao_Social LIKE '%" + txtLocalizar.Text + "%'";
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

        private void cbbPais_SelectedIndexChanged(object sender, EventArgs e)
        {
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

        private void cbbPais_TextChanged(object sender, EventArgs e)
        {
            cbbPais_SelectedIndexChanged(null, null);
        }

        private void btnRepresentante_Click(object sender, EventArgs e)
        {
            try
            {
                var form = new FrmRepresentanteFiadores();
                form.ID_Fiador = ((DataRowView)bindingSource.Current).Row["Codigo"].ToString();
                form.Razao_social = ((DataRowView)bindingSource.Current).Row["Razao_Social"].ToString();
                FrmPrincipal.ShowModalMdiChildren(form);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnLocalizaUpload_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();

            dlg.Filter = "pdf files (*.pdf) |*.pdf;";
            dlg.ShowDialog();
            txtArquivo.Text = Path.GetFileName(dlg.FileName);
            CaminhoArquivo = dlg.FileName;
        }
        private string numeradorDocumentos()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            SqlDataReader reader = null;

            string SQL = "SELECT NUMERADOR_DOCUMENTOS FROM PARAMETROS";

            using (SqlCommand cmd = new SqlCommand(SQL, conn))
            {
                reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        return reader["NUMERADOR_DOCUMENTOS"].ToString();
                    }
                }
            }

            return "";
        }

        private string caminhoDiretorioServidor(int codigo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string SQL = "SELECT CAMINHO FROM CAMINHODIRETORIOSERVIDOR WHERE ID = @codigo";

            SqlDataReader reader = null;

            using (SqlCommand cmd = new SqlCommand(SQL, conn))
            {
                cmd.Parameters.AddWithValue("@codigo", codigo);
                reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        return reader["CAMINHO"].ToString();
                    }
                }
                return "";
            }
        }
        private bool atualizarNumeradorDocumento(string numeradorDocumento)
        {

            string SQL = "UPDATE PARAMETROS SET NUMERADOR_DOCUMENTOS = @numeradorDocumento";

            try
            {
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(SQL, conn))
                    {
                        cmd.Parameters.AddWithValue("@numeradorDocumento", numeradorDocumento);
                        cmd.ExecuteNonQuery();
                        return true;

                    }
                }
            }

            catch (SqlException sqlex)
            {
                MessageBox.Show(sqlex.Message, "MS2000", MessageBoxButtons.OK);
                return false;
            }
        }

        private bool atualizarDocumento(Documento documento)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            StringBuilder sb = new StringBuilder();

            sb.Append("INSERT INTO DOCUMENTOS (arquivo, pagina, ftp, data_inclusao, importador, processo, tipo_doc, sub_tipo_doc,Numero_Doc, codigo, vigencia_inicial, vigencia_final, status, usuario_dig, pdf) ");
            sb.Append("VALUES (@arquivo,                                                                                                                                                                                                                                          ");
            sb.Append("        @pagina,                                                                                                                                                                                                                                           ");
            sb.Append("        0,                                                                                                                                                                                                                                                 ");
            sb.Append("        Getdate(),                                                                                                                                                                                                                                         ");
            sb.Append("        @importador,                                                                                                                                                                                                                                       ");
            sb.Append("        @processo,                                                                                                                                                                                                                                         ");
            sb.Append("        @tipo_doc,                                                                                                                                                                                                                                         ");
            sb.Append("        @sub_tipo_doc,                                                                                                                                                                                                                                     ");
            sb.Append("        @Numero_Doc,                                                                                                                                                                                                                                           ");
            sb.Append("        @Codigo,                                                                                                                                                                                                                                           ");
            sb.Append("        Cast(@Vigencia_inicial AS DATE),                                                                                                                                                                                                                   ");
            sb.Append("        Cast(@Vigencia_final AS DATE),                                                                                                                                                                                                                     ");
            sb.Append("        @Status,                                                                                                                                                                                                                                           ");
            sb.Append("        @usuario,                                                                                                                                                                                                                                         ");
            sb.Append("        1)                                                                                                                                                                                                                                                 ");

            try
            {
                using (SqlCommand cmd = new SqlCommand(sb.ToString(), conn))
                {
                    cmd.Parameters.AddWithValue("@arquivo", documento.arquivo);
                    cmd.Parameters.AddWithValue("@pagina", documento.pagina);
                    cmd.Parameters.AddWithValue("@importador", documento.importador);
                    cmd.Parameters.AddWithValue("@processo", documento.processo);
                    cmd.Parameters.AddWithValue("@tipo_doc", documento.tipoDocumento);
                    cmd.Parameters.AddWithValue("@sub_tipo_doc", documento.subTipoDocumento);
                    cmd.Parameters.AddWithValue("@Numero_Doc", txtDescricao.Text);
                    cmd.Parameters.AddWithValue("@Codigo", documento.codigo);
                    cmd.Parameters.AddWithValue("@Vigencia_inicial", txtVigenciaInicial.MaskCompleted ? (object)txtVigenciaInicial.Text : DBNull.Value);
                    cmd.Parameters.AddWithValue("@Vigencia_final", txtVigenciaFinal.MaskCompleted ? (object)txtVigenciaFinal.Text : DBNull.Value);
                    cmd.Parameters.AddWithValue("@Status", documento.status);
                    cmd.Parameters.AddWithValue("@usuario", documento.usuario);
                    cmd.ExecuteNonQuery();
                    return true;
                }
            }
            catch (SqlException sqlex)
            {
                MessageBox.Show(sqlex.Message, "MS2000", MessageBoxButtons.OK);
                return false;
            }

        }

        private void salvarArquivoPDFServidor(string diretorioDestino)
        {
            try
            {
                if (!File.Exists(diretorioDestino))
                {
                    File.Copy(CaminhoArquivo, diretorioDestino);
                }
            }
            catch (IOException ioex)
            {
                MessageBox.Show(ioex.Message, "MS2000", MessageBoxButtons.OK);

            }
        }
        private void excluirRegistroDocumento(string arquivo, string codigo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string SQL = "DELETE FROM DOCUMENTOS WHERE PDF ='1' AND ARQUIVO = @arquivo AND CODIGO = @codigo";

            using (SqlCommand cmd = new SqlCommand(SQL, conn))
            {
                cmd.Parameters.AddWithValue("@arquivo", arquivo);
                cmd.Parameters.AddWithValue("@codigo", codigo);
                cmd.ExecuteNonQuery();
            }
        }

        private void validarData()
        {
            documento.vigenciaInicial = "";
            documento.vigenciaFinal = "";
            documento.status = "0";

            if (txtVigenciaFinal.MaskCompleted)
            {
                documento.vigenciaFinal = txtVigenciaFinal.Text;

                if (DateTime.Now <= Convert.ToDateTime(txtVigenciaFinal.Text))
                {
                    documento.status = "1";
                }
                else
                {
                    documento.status = "2";
                }
            }

            if (txtVigenciaInicial.MaskCompleted)
            {
                documento.vigenciaFinal = txtVigenciaInicial.Text;
            }
        }


      

        private void tabControl_SelectedIndexChanged(object sender, EventArgs e)
        {
            if ((statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo))
            {
                btnCancelar_Click(null, null);
            }   
            
            if (tabControl.SelectedTab == tabDocumento)
            {
                bindingNavigator.DeleteItem = null;

                dataGridView.AutoGenerateColumns = false;
                bsDocumentos.DataSource = getDocumentos();

                dataGridView.DataSource = bsDocumentos;
                bindingNavigator.BindingSource = bsDocumentos;
            }
            else
            {
                   
                bindingNavigator.DeleteItem = null;
              
                dataGridView.AutoGenerateColumns = false;
                bindingSource.DataSource = getFiadores();

                dataGridView.DataSource = bindingSource;
                bindingNavigator.BindingSource = bindingSource;

            }
        }

       
        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            string pasta = dataGridView1.Rows[e.RowIndex].Cells["Codigo1"].Value.ToString().Replace("RJO", "");
            string arquivo = dataGridView1.Rows[e.RowIndex].Cells["Arquivo"].Value.ToString();
            string diretorioServidor = caminhoDiretorioServidor(2);

            try
            {
                Process.Start(diretorioServidor + pasta + "\\" + arquivo + ".pdf");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }    
    }
}
