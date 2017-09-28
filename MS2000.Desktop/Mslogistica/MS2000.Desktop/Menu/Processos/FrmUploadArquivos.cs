using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Diagnostics;

namespace MS2000.Desktop.Menu.Processos
{
    public partial class FrmUploadArquivos : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        bool _canAlteraUpload;
        bool _canExcluiUpload;
        bool processoNoControleDoUsuario;
        bool telaLimpa;
        Processo RefMS = new Processo();
        string tipo;
        string tipo_declaracao;

        struct Documento
        {
            public string arquivo;
            public string pagina;
            public string importador;
            public string contrato;
            public string numeroTR;
            public string processo;
            public string cnpj;
            public string localInventario;
            public string codigo;
            public string status;
            public string conhecimento;
            public string di;
            public string tipoDocumento;
            public string subTipoDocumento;
            public string numeroDocumento;
            public string vigenciaInicial;
            public string vigenciaFinal;
            public string observacoes;
            public string usuario;
            public string registroNumerario;
        };

        Documento documento = new Documento();
        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            //btnExcluir.Enabled  = (statusCadastro == StatusCadastro.None) && (((_canExcluiUpload) || (FrmPrincipal.Analista_Documental)) && (mskProcesso.MaskCompleted));
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None) && (mskProcesso.MaskCompleted) && ((_canExcluiUpload) || ((FrmPrincipal.Analista_Documental) && (processoNoControleDoUsuario)));
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None) && (mskProcesso.MaskCompleted);
            //btnEditar.Enabled   = (statusCadastro == StatusCadastro.None) && (((_canAlteraUpload) || (FrmPrincipal.Analista_Documental)) && (mskProcesso.MaskCompleted));
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None) && (mskProcesso.MaskCompleted) && ((_canAlteraUpload) || ((FrmPrincipal.Analista_Documental) && (processoNoControleDoUsuario)));
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            mskProcesso.Enabled = (statusCadastro == StatusCadastro.None);
            groupBox2.Enabled = false;
            groupBox1.Enabled = (mskProcesso.MaskCompleted) && (statusCadastro == StatusCadastro.None);
            grdArquivos.Enabled = (statusCadastro == StatusCadastro.None);
            //   groupBox1.Enabled   = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            foreach (Control controle in groupBox4.Controls)
            {
                controle.Enabled = bValue;
            }
            VerificaBotoes();
        }

        public FrmUploadArquivos()
        {
            InitializeComponent();
            _canAlteraUpload = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Processos - Upload de Arquivo - Edita",
                Chave_Busca = " btnEditaRUpload"
            });

            _canExcluiUpload = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Processos - Upload de Arquivo - Exclui",
                Chave_Busca = "btnExcluirUpload"
            });


        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;

            HabilitarDesabilitaControles(true);

            txtLocalizarArquivo.Enabled = false;

            if (!string.IsNullOrEmpty(txtLocalizarArquivo.Text))
            {
                txtLocalizarArquivo.Clear();
            }

            cmbDocumento.Focus();
        }

        private bool verificaArquivo()
        {
            if (txtLocalizarArquivo.Text.Equals(""))
            {
                MessageBox.Show("O caminho do arquivo não pode ficar em branco", "MS2000");
                return false;
            }

            return true;
        }

        private void updateDocumento()
        {
            string codigo = grdArquivos.Rows[grdArquivos.CurrentRow.Index].Cells["codigo"].Value.ToString();
            string arquivo = grdArquivos.Rows[grdArquivos.CurrentRow.Index].Cells["Arquivo"].Value.ToString();
            //string status = "0";

            //if ((mskVigenciaInicial.MaskCompleted) && (mskVigenciaFinal.MaskCompleted))
            //{
            //    if (DateTime.Now <= Convert.ToDateTime(mskVigenciaFinal.Text))
            //    {
            //        status = "1";
            //    }
            //    else
            //    {
            //        status = "2";
            //    }
            //}


            string SQL = "UPDATE DOCUMENTOS SET NUMERO_DOC=@numeroDoc, " +
                         "Tipo_Doc = @Tipo_Doc,Sub_Tipo_Doc = @Sub_Tipo_Doc," +
                         "Vigencia_inicial = @Vigencia_inicial  ,Vigencia_final = @Vigencia_final " +
                         ",Observacoes = @Observacoes,Status = @Status " +
                         "WHERE CODIGO = @codigo AND PDF='1' AND PROCESSO=@processo AND ARQUIVO=@arquivo";
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            validarData();
            using (SqlCommand cmd = new SqlCommand(SQL, conn))
            {
                cmd.Parameters.AddWithValue("@numeroDoc", txtNumeroDocumento.Text);
                cmd.Parameters.AddWithValue("@Tipo_Doc", cmbDocumento.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@Sub_Tipo_Doc", cmbSubDocumento.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@Vigencia_inicial", mskVigenciaInicial.MaskCompleted ? (object)mskVigenciaInicial.Text : DBNull.Value);
                cmd.Parameters.AddWithValue("@Vigencia_final", mskVigenciaFinal.MaskCompleted ? (object)mskVigenciaFinal.Text : DBNull.Value);
                cmd.Parameters.AddWithValue("@Status", documento.status);
                cmd.Parameters.AddWithValue("@Observacoes", txtObservacao.Text);
                cmd.Parameters.AddWithValue("@codigo", codigo);
                cmd.Parameters.AddWithValue("@processo", mskProcesso.Text);
                cmd.Parameters.AddWithValue("@arquivo", arquivo);
                cmd.ExecuteNonQuery();
            }
        }

        private void inserirNovoDocumento()
        {
            string arquivo = "";

            string numerador = numeradorDocumentos();
            string codigoPasta = "";
            string diretorioServidor = Util.caminhoDiretorioServidor(2);
            bool continua = false;


            numerador = Convert.ToString(Convert.ToInt32(numerador) + 1);
            numerador = new string('0', 8 - numerador.Length) + numerador;
            arquivo = "RJO" + numerador;
            try
            {
                if (atualizarNumeradorDocumento(numerador))
                {
                    codigoPasta = Constantes.VerificarFaixa(arquivo);
                    documento.codigo = "RJO" + codigoPasta;
                    documento.arquivo = arquivo;
                    documento.pagina = "1";
                    documento.processo = mskProcesso.Text;
                    documento.tipoDocumento = ((cmbDocumento.SelectedValue == null) ? "" : cmbDocumento.SelectedValue.ToString());
                    documento.subTipoDocumento = ((cmbSubDocumento.SelectedValue == null) ? "" : cmbSubDocumento.SelectedValue.ToString());
                    documento.numeroDocumento = txtNumeroDocumento.Text;
                    documento.observacoes = txtObservacao.Text;
                    documento.registroNumerario = "";
                    documento.usuario = FrmPrincipal.UsuarioLogado;
                    validarData();
                    continua = atualizarDocumento(documento);

                }
                if (continua)
                {
                    salvarArquivoPDFServidor(diretorioServidor + codigoPasta + "\\" + arquivo + ".pdf");
                    bindingSource.DataSource = getUpload(mskProcesso.Text);

                }
                else
                {
                    excluirRegistroDocumento(documento.arquivo, documento.codigo);
                    MessageBox.Show("Ocorreu um erro ao tentar fazer o upload do arquivo. Tente novamente", "MS2000", MessageBoxButtons.OK);
                }
            }
            catch (SqlException sqlex)
            {
                MessageBox.Show(sqlex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void vincularDadosControle()
        {
            bindingNavigator.DeleteItem = null;
            statusCadastro = StatusCadastro.None;
            getDocumentos();

            HabilitarDesabilitaControles(false);
            montaCampos(mskProcesso.Text);
            bindingSource.DataSource = getUpload(mskProcesso.Text);

            grdArquivos.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtObservacao.DataBindings.Clear();
            cmbDocumento.DataBindings.Clear();
            cmbSubDocumento.DataBindings.Clear();
            mskVigenciaInicial.DataBindings.Clear();
            mskVigenciaFinal.DataBindings.Clear();
            txtNumeroDocumento.DataBindings.Clear();

            cmbDocumento.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Tipo_Doc"));
            cmbSubDocumento.DataBindings.Add(new Binding("SelectedValue", bindingSource, "sub_tipo_doc"));
            mskVigenciaInicial.DataBindings.Add(new Binding("Text", bindingSource, "Vigencia_inicial", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            mskVigenciaFinal.DataBindings.Add(new Binding("Text", bindingSource, "Vigencia_final", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtNumeroDocumento.DataBindings.Add(new Binding("Text", bindingSource, "numero_doc", true));
            txtObservacao.DataBindings.Add(new Binding("Text", bindingSource, "observacoes", true));
        }

        private bool validarCampos()
        {
            var GoOn = true;
            if (string.IsNullOrEmpty(cmbDocumento.Text) || cmbDocumento.SelectedValue == null)
            {
                MessageBox.Show("O campo tipo de documento não pode ficar em branco.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GoOn = false;
            }

            if (string.IsNullOrEmpty(cmbSubDocumento.Text) || cmbSubDocumento.SelectedValue == null)
            {
                MessageBox.Show("O campo subtipo de documento não pode ficar em branco.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GoOn = false;
            }

            if (string.IsNullOrEmpty(txtNumeroDocumento.Text))
            {
                MessageBox.Show("O campo número do documento não pode ficar em branco.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GoOn = false;
            }

            if (statusCadastro == StatusCadastro.Novo)
            {
                if (string.IsNullOrEmpty(txtLocalizarArquivo.Text))
                {
                    MessageBox.Show("O campo caminho do arquivo não pode ficar em branco.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    GoOn = false;
                }
            }

            if (((cmbDocumento.SelectedValue.ToString() == "PROC") && (cmbSubDocumento.SelectedValue.ToString() == "136")) &&
               ((!mskVigenciaInicial.MaskCompleted) || (!mskVigenciaFinal.MaskCompleted)))
            {
                MessageBox.Show("A Vigência inicial e final são obrigatórias para esse tipo de documento!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GoOn = false;
            }            

            if ((cmbDocumento.SelectedValue.ToString() == "PROC") && (cmbSubDocumento.SelectedValue.ToString() == "80"))
            {
                tipo = RefMS.BuscarPorCodigo(mskProcesso.Text).Tipo;
                tipo_declaracao = RefMS.BuscarPorCodigo(mskProcesso.Text).Tipo_Declaracao;

                if (TiposDeProcesso.VerificaDespachoDecisorio(tipo))
                {
                    //Importações...
                    if ((tipo == "11") || (tipo == "20") || (tipo == "IB") || (tipo == "43") || (tipo == "19") || (tipo == "12") || (tipo == "13") || (tipo == "40"))
                    {
                        //Admissão temporária / Consumo e Admissão 
                        if ((tipo_declaracao == "05") || (tipo_declaracao == "12"))
                        {
                            if ((!mskVigenciaInicial.MaskCompleted) || (!mskVigenciaFinal.MaskCompleted))
                            {                                
                                MessageBox.Show("A Vigência inicial e final são obrigatórias para esse tipo de documento!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                GoOn = false;                                
                            }
                        }
                    }
                    else
                    {                        
                        if ((!mskVigenciaInicial.MaskCompleted) || (!mskVigenciaFinal.MaskCompleted))
                        {
                            if ((tipo == "34") || (tipo == "35"))
                            {
                                if (MessageBox.Show("A Vigência inicial e final são obrigatórias para esse tipo de documento! Confirma documento de despacho sem vigência inicial e final ?", "Informação", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                                {
                                    
                                }
                                else
                                {
                                    GoOn = false;
                                }
                            }
                            else
                            {
                                MessageBox.Show("A Vigência inicial e final são obrigatórias para esse tipo de documento!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                GoOn = false;
                            }
                        }                        
                    }
                }

            }                           

            return GoOn;
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


        private void validarData()
        {
            documento.vigenciaInicial = "";
            documento.vigenciaFinal = "";
            documento.status = "0";

            if (mskVigenciaFinal.MaskCompleted)
            {
                documento.vigenciaFinal = mskVigenciaFinal.Text;

                if (DateTime.Now <= Convert.ToDateTime(mskVigenciaFinal.Text))
                {
                    documento.status = "1";
                }
                else
                {
                    documento.status = "2";
                }
            }

            if (mskVigenciaInicial.MaskCompleted)
            {
                documento.vigenciaFinal = mskVigenciaInicial.Text;
            }

            //if (mskVigenciaInicial.MaskCompleted)
            //{
            //    documento.vigenciaInicial = mskVigenciaInicial.Text;

            //    if (DateTime.Now <= Convert.ToDateTime(mskVigenciaFinal.Text))
            //    {
            //        documento.status = "1";
            //    }
            //    else
            //    {
            //        documento.status = "2";
            //    }
            //}
            //else
            //{
            //    documento.vigenciaInicial = "";
            //    documento.status = "0";
            //}

            //if (mskVigenciaFinal.MaskCompleted)
            //{
            //    documento.vigenciaFinal = mskVigenciaFinal.Text;
            //}
            //else
            //{
            //    documento.vigenciaFinal = "";
            //}
        }

        private bool atualizarDocumento(Documento documento)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            StringBuilder sb = new StringBuilder();

            sb.Append("INSERT INTO DOCUMENTOS (arquivo, pagina, ftp, data_inclusao, importador, processo, tipo_doc, sub_tipo_doc, numero_doc, codigo, vigencia_inicial, vigencia_final, observacoes, contrato, [local], status, usuario_dig, reg_numerario, pdf) ");
            sb.Append("VALUES (@arquivo,                                                                                                                                                                                                                                          ");
            sb.Append("        @pagina,                                                                                                                                                                                                                                           ");
            sb.Append("        0,                                                                                                                                                                                                                                                 ");
            sb.Append("        Getdate(),                                                                                                                                                                                                                                         ");
            sb.Append("        @importador,                                                                                                                                                                                                                                       ");
            sb.Append("        @processo,                                                                                                                                                                                                                                         ");
            sb.Append("        @tipo_doc,                                                                                                                                                                                                                                         ");
            sb.Append("        @sub_tipo_doc,                                                                                                                                                                                                                                     ");
            sb.Append("        @Numero_Doc,                                                                                                                                                                                                                                       ");
            sb.Append("        @Codigo,                                                                                                                                                                                                                                           ");
            sb.Append("        Cast(@Vigencia_inicial AS DATE),                                                                                                                                                                                                                   ");
            sb.Append("        Cast(@Vigencia_final AS DATE),                                                                                                                                                                                                                     ");
            sb.Append("        @Observacoes,                                                                                                                                                                                                                                      ");
            sb.Append("        @Contrato,                                                                                                                                                                                                                                         ");
            sb.Append("        @Local,                                                                                                                                                                                                                                            ");
            sb.Append("        @Status,                                                                                                                                                                                                                                           ");
            sb.Append("        @usuario,                                                                                                                                                                                                                                          ");
            sb.Append("        @Reg_Numerario,                                                                                                                                                                                                                                    ");
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
                    cmd.Parameters.AddWithValue("@Numero_Doc", documento.numeroDocumento);
                    cmd.Parameters.AddWithValue("@Codigo", documento.codigo);
                    cmd.Parameters.AddWithValue("@Vigencia_inicial", mskVigenciaInicial.MaskCompleted ? (object)mskVigenciaInicial.Text : DBNull.Value);
                    cmd.Parameters.AddWithValue("@Vigencia_final", mskVigenciaFinal.MaskCompleted ? (object)mskVigenciaFinal.Text : DBNull.Value);
                    cmd.Parameters.AddWithValue("@Observacoes", documento.observacoes);
                    cmd.Parameters.AddWithValue("@Contrato", documento.contrato);
                    cmd.Parameters.AddWithValue("@Local", documento.localInventario);
                    cmd.Parameters.AddWithValue("@Status", documento.status);
                    cmd.Parameters.AddWithValue("@usuario", documento.usuario);
                    cmd.Parameters.AddWithValue("@Reg_Numerario", documento.registroNumerario);
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
                    File.Copy(opfArquivoPDF.FileName, diretorioDestino);
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
            string SQL = "DELETE FROM DOCUMENTOS WHERE PDF ='1' AND ARQUIVO = @arquivo AND CODIGO = @codigo AND processo = @processo";

            using (SqlCommand cmd = new SqlCommand(SQL, conn))
            {
                cmd.Parameters.AddWithValue("@arquivo", arquivo);
                cmd.Parameters.AddWithValue("@codigo", codigo);
                cmd.Parameters.AddWithValue("@processo", mskProcesso.Text);
                cmd.ExecuteNonQuery();
            }
        }

        private void excluirArquivoServidor(string arquivo)
        {
            try
            {
                if (File.Exists(arquivo))
                    File.Delete(arquivo);
            }
            catch (IOException ioex)
            {
                MessageBox.Show(ioex.Message, "MS2000");
            }
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                if (validarCampos())
                {                    
                    if (statusCadastro == StatusCadastro.Editar)
                    {
                        updateDocumento();
                        pnlNumeroDocumento.Visible = false;
                        MessageBox.Show("Registro alterado com sucesso", "Alterar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        LogSistemas.AddLogSistema(mskProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),
                        string.Format("Tipo:{0} Sub-Tipo :{1} Vigência Inicial:{2} Vigência Final:{3} N° documento:{4} Observação:{5} ",
                        cmbDocumento.SelectedValue.ToString(), cmbSubDocumento.SelectedValue.ToString(), mskVigenciaInicial.Text, mskVigenciaFinal.Text, txtNumeroDocumento.Text, txtObservacao.Text));
                    }
                    else
                    {
                        inserirNovoDocumento();
                        pnlNumeroDocumento.Visible = false;
                        MessageBox.Show("Registro salvo com sucesso", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        if (!string.IsNullOrEmpty(txtLocalizarArquivo.Text))
                            txtLocalizarArquivo.Text = "";


                        LogSistemas.AddLogSistema(mskProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag),
                        string.Format("Tipo:{0} Sub-Tipo :{1} Vigência Inicial:{2} Vigência Final:{3} N° documento:{4} Observação:{5} ",
                        cmbDocumento.SelectedValue.ToString(), cmbSubDocumento.SelectedValue.ToString(), mskVigenciaInicial.Text, mskVigenciaFinal.Text, txtNumeroDocumento.Text, txtObservacao.Text));

                    }

                    statusCadastro = StatusCadastro.None;
                    HabilitarDesabilitaControles(false);
                    var id_codigo = bindingSource.GetRelatedCurrencyManager("arquivo").Current.ToString();
                    bindingSource.DataSource = getUpload(mskProcesso.Text);
                    bindingSource.Position = bindingSource.Find("arquivo", id_codigo);
                    mskProcesso.Focus();
                }
            }
            catch (SqlException sqlex)
            {
                MessageBox.Show(sqlex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            pnlNumeroDocumento.Visible = false;
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
            if (!string.IsNullOrEmpty(txtLocalizarArquivo.Text))
            {
                txtLocalizarArquivo.Text = "";
            }

            mskProcesso.Focus();

        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            if (FrmPrincipal.Analista_Documental)
            {
                if (!ValidaAcaoAnalistaDocumental())
                {
                    return;
                }
            }

            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            cmbDocumento.Focus();
            txtCNPJ.Enabled = false;
            txtCliente.Enabled = false;
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (FrmPrincipal.Analista_Documental)
            {
                if (!ValidaAcaoAnalistaDocumental())
                {
                    return;
                }
            }

            string codigo = grdArquivos.Rows[grdArquivos.CurrentRow.Index].Cells["codigo"].Value.ToString();
            string arquivo = grdArquivos.Rows[grdArquivos.CurrentRow.Index].Cells["Arquivo"].Value.ToString();

            string diretorioServidor = Util.caminhoDiretorioServidor(2);

            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                excluirRegistroDocumento(arquivo, codigo);
                //excluirArquivoServidor(diretorioServidor + codigo.Replace("RJO", "") + "\\" + arquivo + ".pdf");
                LogSistemas.AddLogSistema(mskProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Codigo :{0} Arquivo: {1}", codigo, arquivo));
                MessageBox.Show("O registro foi excluído com sucesso", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                bindingSource.RemoveCurrent();
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void getDocumentos()
        {
            string query = "SELECT CODIGO,DESCRICAO FROM TIPO_DOCUMENTOS ORDER BY 2";
            DataTable table;

            try
            {
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                using (SqlCommand cmd = new SqlCommand(query, conn))
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    table = new DataTable();
                    table.Load(reader);
                }

                cmbDocumento.DataSource = table;
                cmbDocumento.DisplayMember = "DESCRICAO";
                cmbDocumento.ValueMember = "CODIGO";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getSubDocumentos(string codigo)
        {
            DataTable table;
            string query = "SELECT CODIGO, DESCRICAO FROM SUB_TIPO_DOCUMENTOS WHERE TIPO_DOC = @tipoDoc ORDER BY DESCRICAO";

            try
            {
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@tipoDoc", codigo);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }

                cmbSubDocumento.DataSource = null;
                cmbSubDocumento.DataSource = table;
                cmbSubDocumento.DisplayMember = "DESCRICAO";
                cmbSubDocumento.ValueMember = "CODIGO";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private DataTable getUpload(string numeroProcesso)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            StringBuilder sb = new StringBuilder();

            sb.Append("SELECT cast(D.data_inclusao as Date) as data_inclusao,                ");
            sb.Append("       D.numero_doc,                                                  ");
            sb.Append("       D.codigo,                                                      ");
            sb.Append("       D.arquivo,                                                     ");
            sb.Append("       D.observacoes,                                                 ");
            sb.Append("       D.processo,                                                    ");
            sb.Append("       D.pdf,                                                         ");
            sb.Append("       D.Tipo_Doc,D.sub_tipo_doc,D.Vigencia_inicial, D.Vigencia_final,");
            sb.Append("       TD.descricao  AS Tipo,                                         ");
            sb.Append("       STD.descricao AS Sub_tipo,                                     ");
            sb.Append("       I.CNPJ_CPF_COMPLETO,                                           ");
            sb.Append("       I.Razao_Social                                                 ");
            sb.Append("FROM   documentos D                                                   ");
            sb.Append("       INNER JOIN tipo_documentos TD                                  ");
            sb.Append("               ON D.tipo_doc = TD.codigo                              ");
            sb.Append("     inner join Importadores I on I.Codigo = D.Importador	         ");
            sb.Append("       LEFT JOIN sub_tipo_documentos STD                              ");
            sb.Append("              ON D.tipo_doc = STD.tipo_doc                            ");
            sb.Append("                 AND D.sub_tipo_doc = STD.codigo                      ");
            sb.Append("WHERE D.UploadPagamento = 0 AND D.pdf = 1 AND D.processo = @processo  ");


            DataTable table = new DataTable();

            using (SqlCommand cmd = new SqlCommand(sb.ToString(), conn))
            {
                cmd.Parameters.AddWithValue("@processo", numeroProcesso);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void FrmUploadArquivos_Load(object sender, EventArgs e)
        {
            HabilitarDesabilitaControles(false);
            grdArquivos.AutoGenerateColumns = false;
            grdArquivos.MultiSelect = false;
            mskProcesso.Focus();
        }

        private void mskProcesso_TextChanged(object sender, EventArgs e)
        {
            if (mskProcesso.MaskCompleted)
            {
                var processo = new Processo();

                processoNoControleDoUsuario = processo.ProcessoNoControleDoUsuario(mskProcesso.Text);

                vincularDadosControle();

                telaLimpa = false;
            }
            else
            {
                if (!telaLimpa)
                {
                    limparCampos();
                }

                groupBox1.Enabled = false;
            }
        }

        private void limparCampos()
        {
            txtCNPJ.Clear();
            txtCliente.Clear();
            txtNumeroDocumento.Clear();
            cmbDocumento.SelectedIndex = -1;
            cmbSubDocumento.SelectedIndex = -1;
            grdArquivos.DataSource = null;
            HabilitarDesabilitaControles(false);

            telaLimpa = true;
            processoNoControleDoUsuario = false;
        }

        private void montaCampos(string numeroProcesso)
        {
            StringBuilder sb = new StringBuilder();

            sb.Append("SELECT                                                        ");
            sb.Append("	p.Codigo,                                                    ");
            sb.Append("	p.Numero_TR,                                                 ");
            sb.Append("	p.Local_Inventario,                                          ");
            sb.Append("	p.Contrato,                                                  ");
            sb.Append("	p.Status,                                                    ");
            sb.Append("	i.Codigo as CodImportador,                                   ");
            sb.Append("	i.CNPJ_CPF_COMPLETO,                                         ");
            sb.Append("	i.Razao_Social,                                              ");
            sb.Append("	p.NR_DECLARACAO_IMP as DI,                                   ");
            sb.Append("	cp.Numerodoccarga as conhecimento                            ");
            sb.Append("FROM                                                          ");
            sb.Append("	Processos p                                                  ");
            sb.Append("	inner join Importadores i on i.Codigo = p.Importador         ");
            sb.Append("	left join Conhecimento_Processo cp on cp.Processo = p.Codigo ");
            sb.Append("WHERE                                                         ");
            sb.Append(" p.Codigo =@pCodigo                                           ");

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            using (SqlCommand cmd = new SqlCommand(sb.ToString(), conn))
            {
                cmd.Parameters.AddWithValue("@pCodigo", numeroProcesso);
                using (SqlDataReader reader = cmd.ExecuteReader())
                    if (reader.HasRows)
                    {
                        reader.Read();
                        documento.contrato = reader["CONTRATO"].ToString();
                        documento.importador = reader["CODIMPORTADOR"].ToString();
                        documento.numeroTR = reader["NUMERO_TR"].ToString();
                        documento.cnpj = reader["CNPJ_CPF_COMPLETO"].ToString();
                        documento.localInventario = reader["LOCAL_INVENTARIO"].ToString();
                        documento.status = reader["STATUS"].ToString();
                        documento.conhecimento = reader["CONHECIMENTO"].ToString();
                        documento.localInventario = reader["LOCAL_INVENTARIO"].ToString();
                        documento.di = reader["DI"].ToString();

                        txtCNPJ.Text = reader["CNPJ_CPF_COMPLETO"].ToString();
                        txtCliente.Text = reader["Razao_Social"].ToString();
                    }
                    else
                    {
                        MessageBox.Show("Processo não localizado!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                        limparCampos();
                        mskProcesso.Focus();
                    }
            }
        }

        private void cmbDocumento_SelectionChangeCommitted(object sender, EventArgs e)
        {
            getSubDocumentos(cmbDocumento.SelectedValue.ToString());
            cmbSubDocumento.SelectedIndex = -1;
        }

        private void grdArquivos_SelectionChanged(object sender, EventArgs e)
        {
            if (bindingSource.Count > 0)
            {
                getSubDocumentos(((DataRowView)bindingSource.Current).Row["Tipo_doc"].ToString());
                cmbDocumento.SelectedValue = ((DataRowView)bindingSource.Current).Row["Tipo_doc"].ToString();
                cmbSubDocumento.SelectedValue = ((DataRowView)bindingSource.Current).Row["sub_tipo_doc"].ToString();
            }
        }


        private void btnOK_Click(object sender, EventArgs e)
        {
            txtNumeroDocumento.Text = cmbNumeroDocumento.Text;
            pnlNumeroDocumento.Visible = false;
        }

        private void btnSair_Click(object sender, EventArgs e)
        {
            pnlNumeroDocumento.Visible = false;
        }

        private void verificarFaturas(string processo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string SQL = "SELECT CODIGO FROM FATURAS WHERE PROCESSO = @processo";

            DataTable table = new DataTable();
            SqlDataReader reader = null;

            using (SqlCommand cmd = new SqlCommand(SQL, conn))
            {
                cmd.Parameters.AddWithValue("@processo", processo);
                reader = cmd.ExecuteReader();

                table.Load(reader);

                if (table.Rows.Count > 1)
                {
                    cmbNumeroDocumento.DataSource = table;
                    cmbNumeroDocumento.DisplayMember = "CODIGO";
                    pnlNumeroDocumento.Visible = true;
                    cmbNumeroDocumento.Focus();
                }
                else if (table.Rows.Count == 1)
                {
                    txtNumeroDocumento.Text = table.Rows[0]["CODIGO"].ToString();
                }
            }
        }

        private void carregaNumeroDocumentos(string tipo, string subTipo)
        {
            if (tipo.Equals("PROC") && subTipo.Equals("2"))
            {
                if (!documento.conhecimento.Equals(""))
                {
                    txtNumeroDocumento.Text = documento.conhecimento;
                }
            }

            if (tipo.Equals("PROC") && (subTipo.Equals("3") || subTipo.Equals("5")))
            {
                if (!documento.di.Equals(""))
                {
                    txtNumeroDocumento.Text = documento.di;
                }
            }

            if (tipo.Equals("PROC") && (subTipo.Equals("1") || subTipo.Equals("7")))
            {
                verificarFaturas(mskProcesso.Text);
            }
        }

        private void cmbSubDocumento_SelectedIndexChanged(object sender, EventArgs e)
        {
            if ((statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo))
            {
                txtNumeroDocumento.Clear();
                if (!string.IsNullOrEmpty(cmbSubDocumento.Text) && !string.IsNullOrEmpty(cmbDocumento.Text))
                {
                    carregaNumeroDocumentos(cmbDocumento.SelectedValue.ToString(), cmbSubDocumento.SelectedValue.ToString());
                }
            }
        }

        private void btnAbrirArquivoPDF_Click(object sender, EventArgs e)
        {
            opfArquivoPDF.Filter = "files (*.pdf,) |*.pdf;";
            opfArquivoPDF.Title = "Arquivos PDF";
            opfArquivoPDF.FileName = "";
            opfArquivoPDF.ShowDialog();
            txtLocalizarArquivo.Text = opfArquivoPDF.FileName;

        }

        private void grdArquivos_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            string pasta = grdArquivos.Rows[e.RowIndex].Cells["codigo"].Value.ToString().Replace("RJO", "");
            string arquivo = grdArquivos.Rows[e.RowIndex].Cells["Arquivo"].Value.ToString();
            string diretorioServidor = Util.caminhoDiretorioServidor(2);

            try
            {
                Process.Start(diretorioServidor + pasta + "\\" + arquivo + ".pdf");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnLimpar_Click(object sender, EventArgs e)
        {
            txtLocalizarArquivo.Clear();
        }

        private bool ValidaAcaoAnalistaDocumental()
        {
            if ((!processoNoControleDoUsuario))
            {
                MessageBox.Show(FrmPrincipal.UsuarioLogado + ", para essa ação o processo precisa estar no seu controle e aceito.", "MS2000");

                return false;
            }

            if (!((cmbDocumento.SelectedValue.ToString() == "PROC") && ((cmbSubDocumento.SelectedValue.ToString() == "1") || (cmbSubDocumento.SelectedValue.ToString() == "2") || (cmbSubDocumento.SelectedValue.ToString() == "7"))))
            {
                MessageBox.Show(FrmPrincipal.UsuarioLogado + ", o documento não é do tipo (Fatura / Packing List / Conhecimento).", "MS2000");

                return false;
            }

            return true;
        }
    }

}
