using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using MS2000.Desktop.Classes;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace MS2000.Desktop.Menu.Processos
{
    public partial class FrmDesembaraco : MS2000.Desktop.Componentes.MSForm01
    {
        private StatusCadastro statusCadastro;

        Processo processo = new Processo();

        Documentos documento = new Documentos();

        TabConversaoCambio tabConversaoCambio = new TabConversaoCambio();

        bool processodeExportacao = false;

        ControleDeValidacoes controleDeValidacoes = new ControleDeValidacoes();

        TiposDeProcesso tipo = new TiposDeProcesso();

        bool _canAlteraCampos;

        double total_pis = 0;
        double total_cofins = 0;

        readonly string[] _arrayTipoProcesso = { "5", "IT", "22", "31", "32", "33", "34", "35", "6A", "NC", "BT", "40" };

        public class Processos_Registros_Impostos
        {
            public string tipo_declaracao { get; set; }
            public double Taxa_SISCOMEX { get; set; }
            public double Taxa_SISCOMEXC { get; set; }
        }

        class DadosURF
        {
            public string URF_Despacho { get; set; }
            public string Descricao { get; set; }
        }

        class DadosAviso
        {
            public string Contrato { get; set; }
            public string Local { get; set; }
            public string CodigoCliente { get; set; }
            public string TipoProcesso { get; set; }
            public string TipoDeclaracao { get; set; }
            public string Processo { get; set; }
        }

        private DadosAviso getDadosAviso(string processo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select C.Descricao as Contrato,L.Descricao as Local, P.Codigo_Cliente, p.Codigo,TP.DESCRICAO as TipoProcesso,TD.Descricao as TipoDeclaracao from Processos P " +
                           "inner join Contratos C on P.Importador =  C.Importador and P.Contrato = C.Contrato " +
                           "inner join Locais_Inventario L on P.Importador = L.Importador and P.Contrato = L.Contrato and P.Local_Inventario = L.Local " +
                           "inner join Tipos_de_Processos TP on Tp.CODIGO = p.Tipo " +
                           "left join TAB_TIPO_DECLARACAO TD on TD.Codigo = P.Tipo_Declaracao " +
                           "Where P.Codigo =  @Processo  ";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Processo", processo);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DadosAviso dados = null;
                    while (reader.Read())
                    {
                        dados = new DadosAviso
                        {
                            Contrato = reader["Contrato"].ToString(),
                            Local = reader["Local"].ToString(),
                            CodigoCliente = reader["Codigo_Cliente"].ToString(),
                            TipoProcesso = reader["TipoProcesso"].ToString(),
                            TipoDeclaracao = reader["TipoDeclaracao"].ToString(),
                            Processo = reader["Codigo"].ToString()
                        };
                    }
                    return dados;
                }
            }
        }

        private DadosURF getDadosURF(string processo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select C.URF_Despacho,T.DESCRICAO " +
                           "from Conhecimento_Processo C inner join TAB_URF T " +
                           "on C.URF_Despacho = T.CODIGO " +
                           "Where C.Processo = @Processo ";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Processo", processo);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DadosURF dados = null;
                    while (reader.Read())
                    {
                        dados = new DadosURF
                        {
                            URF_Despacho = reader["URF_Despacho"].ToString(),
                            Descricao = reader["DESCRICAO"].ToString()
                        };
                    }
                    return dados;
                }
            }
        }

        public FrmDesembaraco()
        {
            InitializeComponent();

            _canAlteraCampos = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Processos - Desembaraço - Altera Número DI/DDE",
                Chave_Busca = "txtAlteraCampo"
            });
        }

        public virtual void VerificaBotoes()
        {
            btnEditar.Enabled = ((statusCadastro == StatusCadastro.None) && (txtProcesso.MaskCompleted));
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar);
            btnFechar.Enabled = (statusCadastro == StatusCadastro.None);
            txtProcesso.Enabled = statusCadastro == StatusCadastro.None;
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in tabControl1.Controls)
            {
                controle.Enabled = bValue;
            }

            gpbADCED.Enabled = bValue;

            if (bValue == true)
            {
                if (processodeExportacao)
                {
                    tabControl1.TabPages[0].Enabled = !bValue;
                    tabControl1.TabPages[1].Enabled = bValue;

                    tabControl1.SelectedTab = tabDDE;
                }
                else
                {
                    tabControl1.TabPages[0].Enabled = bValue;
                    tabControl1.TabPages[1].Enabled = !bValue;

                    tabControl1.SelectedTab = tabDI;
                }
            }
            else
            {
                tabControl1.TabPages[0].Enabled = bValue;
                tabControl1.TabPages[1].Enabled = bValue;

                if (processodeExportacao)
                {
                    tabControl1.SelectedTab = tabDDE;
                }
                else
                {
                    tabControl1.SelectedTab = tabDI;
                }
            }

            VerificaBotoes();
        }

        private void FrmDesembaraco_Load(object sender, EventArgs e)
        {
            getMoedas();
            getCanais();
            getSituacaoFiscal();
            getTransportadores();

            statusCadastro = StatusCadastro.None;

            dtgrdDITaxa.AutoGenerateColumns = false;
            dtgrdDDETaxa.AutoGenerateColumns = false;
            dtgrdDDERe.AutoGenerateColumns = false;

            HabilitarDesabilitaControles(false);

            AtualizaDados();

            //Desembaraço da DI
            txtDI.DataBindings.Add(new Binding("Text", bindingSource1, "NR_DECLARACAO_IMP", true));
            txtDIDtRegistro.DataBindings.Add(new Binding("Text", bindingSource1, "DT_REGISTRO_DI", true));
            txtDIDtDesembaraco.DataBindings.Add(new Binding("Text", bindingSource1, "DT_DESEMBARACO", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            cbbDICanal.DataBindings.Add("SelectedValue", bindingSource1, "Canal", true);
            txtDIDtDistribuicao.DataBindings.Add(new Binding("Text", bindingSource1, "DT_DISTRIBUICAO", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtDIFiscal.DataBindings.Add(new Binding("Text", bindingSource1, "Fiscal", true));
            cbbDiSitFiscal.DataBindings.Add("SelectedValue", bindingSource1, "COD_SIT", true);
            txtDIQtdLI.DataBindings.Add(new Binding("Text", bindingSource1, "Quantidade_LI", true));
            txtDIDtCI.DataBindings.Add(new Binding("Text", bindingSource1, "Data_CI", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtDIProtocolo.DataBindings.Add(new Binding("Text", bindingSource1, "DI_Protocolo", true));
            txtDIBanco.DataBindings.Add(new Binding("Text", bindingSource1, "Banco", true));
            txtDIAgencia.DataBindings.Add(new Binding("Text", bindingSource1, "Agencia", true));
            txtDICC.DataBindings.Add(new Binding("Text", bindingSource1, "Conta_Corrente", true));
            txtDIII.DataBindings.Add(new Binding("Text", bindingSource1, "II", true));
            txtDIIPI.DataBindings.Add(new Binding("Text", bindingSource1, "IPI", true));
            txtDITaxaSiscomex.DataBindings.Add(new Binding("Text", bindingSource1, "Taxa_SISCOMEX", true));
            txtDIFob.DataBindings.Add(new Binding("Text", bindingSource1, "Valor_FOB", true));
            txtDICif.DataBindings.Add(new Binding("Text", bindingSource1, "Valor_CIF", true));

            //Desembaraço da DDE
            txtDDE.DataBindings.Add(new Binding("Text", bindingSource1, "DDE", true));
            txtDDEDtRegistro.DataBindings.Add(new Binding("Text", bindingSource1, "DT_REGISTRO_DI", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtDDEDtDesembaraco.DataBindings.Add(new Binding("Text", bindingSource1, "DT_DESEMBARACO", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            cbbDDECanal.DataBindings.Add("SelectedValue", bindingSource1, "Canal", true);
            txtDDEDtDistribuicao.DataBindings.Add(new Binding("Text", bindingSource1, "DT_DISTRIBUICAO", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtDDEFiscal.DataBindings.Add(new Binding("Text", bindingSource1, "Fiscal", true));
            cbbDDESitFiscal.DataBindings.Add("SelectedValue", bindingSource1, "COD_SIT", true);
            txtDDEProtocolo.DataBindings.Add(new Binding("Text", bindingSource1, "DI_Protocolo", true));
            txtDDEFob.DataBindings.Add(new Binding("Text", bindingSource1, "Valor_FOB", true));
            txtDDECif.DataBindings.Add(new Binding("Text", bindingSource1, "Valor_CIF", true));
            txtDDEProcAdm.DataBindings.Add(new Binding("Text", bindingSource1, "Processo_Adm", true));
            txtDDEProcAdmDtEntrada.DataBindings.Add(new Binding("Text", bindingSource1, "Proc_Adm_Data_Entrada", true));

            txtDataEntregaDoc.DataBindings.Add(new Binding("Text", bindingSource1, "Data_liberacao", true));

            mccbTransportadores.DataBindings.Add("SelectedValue", bindingSource4, "Transportador", true);
            txtDescMerc.DataBindings.Add("Text", bindingSource4, "Descricao_mercadoria", true);
            ckbADCED.DataBindings.Add("Checked", bindingSource4, "Enviou", true);

            this.ActiveControl = txtProcesso;
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;

            HabilitarDesabilitaControles(true);

            if (processodeExportacao)
            {
                txtDDE.Enabled = !(txtDDE.Text.Trim().Length == 11);
                txtDDEDtRegistro.Enabled = !(txtDDE.Text.Trim().Length == 11);

                if (!txtDDEDtRegistro.Enabled)
                {
                    txtDDEDtRegistro.Enabled = _canAlteraCampos;
                    txtDDE.Enabled = _canAlteraCampos;
                }

                txtDDE.Focus();
            }
            else
            {
                txtDI.Enabled = !(txtDI.Text.Trim().Length == 10);
                txtDIDtRegistro.Enabled = !(txtDI.Text.Trim().Length == 10);

                if (!txtDIDtRegistro.Enabled)
                {
                    txtDIDtRegistro.Enabled = _canAlteraCampos;
                    txtDI.Enabled = _canAlteraCampos;
                }

                txtDI.Focus();
            }
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (ValidaInformacoes() == false) return;

            if (txtDataEntregaDoc.MaskCompleted)
            {
                if (ValidaCampos() == false) return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query = " UPDATE Processos                                      " +
                                   "    SET DT_REGISTRO_DI        = @DT_REGISTRO_DI        " +
                                   "	   ,DT_DESEMBARACO        = @DT_DESEMBARACO        " +
                                   "	   ,Status                = @Status                " +
                                   "	   ,Canal                 = @Canal                 " +
                                   "	   ,DT_DISTRIBUICAO       = @DT_DISTRIBUICAO       " +
                                   "	   ,Fiscal                = @Fiscal                " +
                                   "	   ,COD_SIT               = @COD_SIT               " +
                                   "	   ,DT_TRANSMISSAO        = @DT_TRANSMISSAO        " +
                                   "	   ,DT_PROCESSAMENTO      = @DT_PROCESSAMENTO      " +
                                   "       ,DI_Protocolo          = @DI_Protocolo          " +
                                   "	   ,Valor_FOB             = @Valor_FOB             " +
                                   "	   ,Valor_CIF             = @Valor_CIF             " +
                                   "	   ,Data_liberacao        = @Data_liberacao        ";

                    if (tabControl1.SelectedTab == tabDI)
                    {
                        query += " ,NR_DECLARACAO_IMP     = @NR_DECLARACAO_IMP " +
                                 " ,Quantidade_LI         = @Quantidade_LI     " +
                                 " ,Data_CI		          = @Data_CI           ";
                    }
                    else
                    {
                        query += " ,DDE                   = @DDE                   " +
                                 " ,Processo_Adm          = @Processo_Adm          " +
                                 " ,Proc_Adm_Data_Entrada = @Proc_Adm_Data_Entrada ";
                    }

                    query += " WHERE Codigo = @Codigo; ";

                    if (tabControl1.SelectedTab == tabDI)
                    {
                        query += " UPDATE Processos_registro_impostos SET Banco = @Banco, Agencia = @Agencia, Conta_Corrente = @Conta_Corrente, II = @II, IPI = @IPI, Taxa_Siscomex = @Taxa_Siscomex WHERE Processo = @Codigo ";
                    }

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        if (tabControl1.SelectedTab == tabDI)
                        {
                            cmd.Parameters.AddWithValue("@NR_DECLARACAO_IMP", txtDI.Text);
                            cmd.Parameters.AddWithValue("@DT_REGISTRO_DI", txtDIDtRegistro.Text);
                            cmd.Parameters.AddWithValue("@DT_DESEMBARACO", txtDIDtDesembaraco.MaskCompleted ? (object)txtDIDtDesembaraco.Text : DBNull.Value);
                            cmd.Parameters.AddWithValue("@Canal", string.IsNullOrEmpty(cbbDICanal.Text) ? DBNull.Value : cbbDICanal.SelectedValue);
                            cmd.Parameters.AddWithValue("@DT_DISTRIBUICAO", txtDIDtDistribuicao.MaskCompleted ? (object)txtDIDtDistribuicao.Text : DBNull.Value);
                            cmd.Parameters.AddWithValue("@Fiscal", txtDIFiscal.Text);
                            cmd.Parameters.AddWithValue("@COD_SIT", string.IsNullOrEmpty(cbbDiSitFiscal.Text) ? DBNull.Value : cbbDiSitFiscal.SelectedValue);
                            cmd.Parameters.AddWithValue("@Quantidade_LI", string.IsNullOrEmpty(txtDIQtdLI.Text) ? 0 : (object)txtDIQtdLI.Text);
                            cmd.Parameters.AddWithValue("@Data_CI", txtDIDtCI.MaskCompleted ? (object)txtDIDtCI.Text : DBNull.Value);
                            cmd.Parameters.AddWithValue("@DT_TRANSMISSAO", txtDIDtRegistro.Text);
                            cmd.Parameters.AddWithValue("@DT_PROCESSAMENTO", txtDIDtRegistro.Text);
                            cmd.Parameters.AddWithValue("@DI_Protocolo", txtDIProtocolo.Text);

                            cmd.Parameters.AddWithValue("@Banco", txtDIBanco.Text);
                            cmd.Parameters.AddWithValue("@Agencia", txtDIAgencia.Text);
                            cmd.Parameters.AddWithValue("@Conta_Corrente", txtDICC.Text);
                            cmd.Parameters.AddWithValue("@II", string.IsNullOrEmpty(txtDIII.Text) ? 0 : Convert.ToDouble(txtDIII.Text));
                            cmd.Parameters.AddWithValue("@IPI", string.IsNullOrEmpty(txtDIIPI.Text) ? 0 : Convert.ToDouble(txtDIIPI.Text));
                            cmd.Parameters.AddWithValue("@Taxa_Siscomex", string.IsNullOrEmpty(txtDITaxaSiscomex.Text) ? 0 : Convert.ToDouble(txtDITaxaSiscomex.Text));

                            cmd.Parameters.AddWithValue("@Valor_FOB", string.IsNullOrEmpty(txtDIFob.Text) ? 0 : Convert.ToDouble(txtDIFob.Text));
                            cmd.Parameters.AddWithValue("@Valor_CIF", string.IsNullOrEmpty(txtDICif.Text) ? 0 : Convert.ToDouble(txtDICif.Text));
                        }
                        else
                        {
                            cmd.Parameters.AddWithValue("@DDE", txtDDE.Text);
                            cmd.Parameters.AddWithValue("@DT_REGISTRO_DI", txtDDEDtRegistro.Text);
                            cmd.Parameters.AddWithValue("@DT_DESEMBARACO", txtDDEDtDesembaraco.MaskCompleted ? (object)txtDDEDtDesembaraco.Text : DBNull.Value);
                            cmd.Parameters.AddWithValue("@Canal", string.IsNullOrEmpty(cbbDDECanal.Text) ? DBNull.Value : cbbDDECanal.SelectedValue);
                            cmd.Parameters.AddWithValue("@DT_DISTRIBUICAO", txtDDEDtDistribuicao.MaskCompleted ? (object)txtDDEDtDistribuicao.Text : DBNull.Value);
                            cmd.Parameters.AddWithValue("@Fiscal", txtDDEFiscal.Text);
                            cmd.Parameters.AddWithValue("@COD_SIT", string.IsNullOrEmpty(cbbDDESitFiscal.Text) ? DBNull.Value : cbbDDESitFiscal.SelectedValue);
                            cmd.Parameters.AddWithValue("@DT_TRANSMISSAO", txtDDEDtRegistro.Text);
                            cmd.Parameters.AddWithValue("@DT_PROCESSAMENTO", txtDDEDtRegistro.Text);
                            cmd.Parameters.AddWithValue("@DI_Protocolo", txtDDEProtocolo.Text);
                            cmd.Parameters.AddWithValue("@Valor_FOB", string.IsNullOrEmpty(txtDDEFob.Text) ? 0 : Convert.ToDouble(txtDDEFob.Text));
                            cmd.Parameters.AddWithValue("@Valor_CIF", string.IsNullOrEmpty(txtDDECif.Text) ? 0 : Convert.ToDouble(txtDDECif.Text));
                            cmd.Parameters.AddWithValue("@Processo_Adm", txtDDEProcAdm.MaskCompleted ? (object)txtDDEProcAdm.Text : DBNull.Value);
                            cmd.Parameters.AddWithValue("@Proc_Adm_Data_Entrada", txtDDEProcAdmDtEntrada.MaskCompleted ? (object)txtDDEProcAdmDtEntrada.Text : DBNull.Value);
                        }

                        if ((processo.Status == "0") && (!string.IsNullOrEmpty(txtDI.Text.Trim())))
                        {
                            cmd.Parameters.AddWithValue("@Status", "01");
                        }
                        else
                        {
                            cmd.Parameters.AddWithValue("@Status", processo.Status);
                        }

                        cmd.Parameters.AddWithValue("@Data_liberacao", txtDataEntregaDoc.MaskCompleted ? (object)txtDataEntregaDoc.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Codigo", txtProcesso.Text);
                        cmd.ExecuteNonQuery();
                    }

                    if (tabControl1.SelectedTab == tabDI)
                    {
                        LogSistemas.AddLogSistema("Desembaraço DI", FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Processo: {0}, DI: {1}, Data Registro: {2}, Desembaraço: {3}, Data Entrega: {4} ", txtProcesso.Text, txtDI.Text, txtDIDtRegistro.Text, txtDIDtDesembaraco.Text, txtDataEntregaDoc.Text));
                    }
                    else
                    {
                        LogSistemas.AddLogSistema("Desembaraço DDE", FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Processo: {0}, DDE: {1}, Data Registro: {2}, Desembaraço: {3}, Data Entrega: {4} ", txtProcesso.Text, txtDDE.Text, txtDDEDtRegistro, txtDDEDtDesembaraco.Text, txtDataEntregaDoc.Text));
                    }
                }

                AvisoDesembaraco();

                AtualizaDados();

                MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);

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
            bindingSource1.CancelEdit();

            statusCadastro = StatusCadastro.None;

            btnADCEDFechar_Click(btnADCEDFechar, e);
            btnCancelarRE_Click(btnCancelarRE, e);
            btnCancelarTaxa_Click(btnCancelarTaxa, e);

            HabilitarDesabilitaControles(false);
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }
        private bool ValidaInformacoes()
        {
            if (!(txtProcesso.MaskCompleted))
            {
                MessageBox.Show("Processo obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                txtProcesso.Focus();

                return false;
            }

            if (!string.IsNullOrEmpty(txtDI.Text.Trim()))
            {
                //Prorrogação de Bem Principal e Prorrogação partes e peças não cobrar DI e CI, para os demais sim
                if ((processo.Tipo != "34") && (processo.Tipo != "35") && (!string.IsNullOrEmpty(processo.Tipo_Declaracao)))
                {
                    //Verifica DI
                    if ((!Documentos.ExisteDocumento(txtProcesso.Text, "PROC", "3")) && (!Documentos.ExisteDocumento(txtProcesso.Text, "PROC", "16")))
                    {
                        MessageBox.Show("Só é possível informar o número da DI/DSI se o documento estiver digitalizado.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                        return false;
                    }
                    else
                    {
                        //Verifica status da solicitação de registro, se já está constando registrada prossegue
                        if (Processo.statusDIRegistradaSolRegNOTOK(txtProcesso.Text))
                        {
                            MessageBox.Show("Só é possível informar o número da DI, se informar DI registrada na tela de controle de solicitação de registro.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                            return false;
                        }
                    }

                    if (txtDIDtDesembaraco.MaskCompleted)
                    {
                        //Verifica CI
                        if (!Documentos.ExisteDocumento(txtProcesso.Text, "PROC", "5"))
                        {
                            MessageBox.Show("Só é possível informar o número da CI se o documento estiver digitalizado.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                            return false;
                        }
                    }

                    if ((processo.Tipo_Declaracao == "05") || (processo.Tipo_Declaracao == "12"))
                    {
                        if ((processo.TR_VAL_FOB_US == 0) && (processo.TR_VAL_CIF_US == 0) && (processo.TR_VAL_II == 0) && (processo.TR_VAL_IPI == 0) && (processo.TR_VAL_PIS == 0) && (processo.TR_VAL_COFINS == 0))
                        {
                            TotalizarSaldosTotais();
                        }
                    }

                    if ((Convert.ToDateTime(txtDIDtRegistro.Text.Substring(0, 2) + "/" + txtDIDtRegistro.Text.Substring(2, 2) + "/" + txtDIDtRegistro.Text.Substring(4, 4))) > Convert.ToDateTime("05/07/2016"))
                    {
                        if (string.IsNullOrEmpty(txtDIProtocolo.Text.Trim()))
                        {
                            MessageBox.Show("Nº de Protocolo de registro obrigatório.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                            txtDIProtocolo.Focus();

                            return false;
                        }
                    }
                }
            }

            if (txtDataEntregaDoc.MaskCompleted)
            {
                //NACIONALIZACAO DE ADMISSAO TEMPORARIA OU TIPO DE PROCESSO DESTRUIÇÃO
                if ((processo.Tipo_Declaracao != "13") && (processo.Tipo != "5"))
                {
                    //Verifica Conhecimento
                    if (!Documentos.ExisteDocumento(txtProcesso.Text, "PROC", "2"))
                    {
                        MessageBox.Show("Só é possível informar a Data do ADCED se o documento(Conhecimento) estiver digitalizado.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                        return false;
                    }

                    if (processo.Tipo != "AA")
                    {
                        DadosURF Dados = getDadosURF(txtProcesso.Text);

                        //processo marítimo                
                        if (Dados.Descricao.StartsWith("PORTO"))
                        {
                            //Verifica Siscarga
                            if (!Documentos.ExisteDocumento(txtProcesso.Text, "PROC", "115"))
                            {
                                MessageBox.Show("Só é possível informar a Data do ADCED se o documento(Siscarga) estiver digitalizado.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                                return false;
                            }
                        }

                        //processo aéreo                
                        if (Dados.Descricao.StartsWith("AEROPORTO"))
                        {
                            //Verifica Mantra

                            if (!Documentos.ExisteDocumento(txtProcesso.Text, "PROC", "114"))
                            {
                                MessageBox.Show("Só é possível informar a Data do ADCED se o documento(Mantra) estiver digitalizado.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                                return false;
                            }
                        }
                    }                    
                }

                //Cobrar transmittal somente para processos diferentes de Bem Principal
                if ((processo.Tipo != "IB") && (processo.Tipo != "31") && (processo.Tipo != "32") && (processo.Tipo != "6A") && (processo.Tipo != "33") && (processo.Tipo != "5") && (processo.Tipo != "NC") && (processo.Tipo != "19"))
                {
                    //Verifica Transmittal
                    if (!Documentos.ExisteDocumento(txtProcesso.Text, "OPN", "106"))
                    {
                        MessageBox.Show("Só é possível informar a Data do ADCED se o documento(Transmittal de Entrega da Carga) estiver digitalizado.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                        return false;
                    }
                }

                //Inclui follow de "Documentos entregues para a Transportadora - Retirar a Carga" se ausente
                FollowUp.VerificaEIncluiSeAusenteComData(txtProcesso.Text, "914", "1", txtDataEntregaDoc.Text);
            }

            //IMPORTAÇÃO
            if ((tabControl1.SelectedTab == tabDI))
            {
                //Verifica RAT preenchido                
                if ((processo.Tipo_Declaracao == "05") && (processo.Tipo_Declaracao == "12"))
                {
                    if (!string.IsNullOrEmpty(txtDIDtRegistro.Text.Trim()))
                    {
                        MessageBox.Show(FrmPrincipal.UsuarioLogado + ", não foi possível salvar a data de registro, preencha o RAT na tela de RAT.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                        return false;
                    }
                }

                //Verifica DI preenchida se canal estiver informado
                if (!string.IsNullOrEmpty(cbbDICanal.Text.Trim()))
                {
                    if (string.IsNullOrEmpty(txtDI.Text.Trim()))
                    {
                        MessageBox.Show(FrmPrincipal.UsuarioLogado + ", favor informar a DI", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                        return false;
                    }
                }

                if ((processo.Tipo == "11") || (processo.Tipo == "12") || (processo.Tipo == "13") || (processo.Tipo == "14") || (processo.Tipo == "15") || (processo.Tipo == "TT") || (processo.Tipo == "NC") || (processo.Tipo == "20") || (processo.Tipo == "IB") || (processo.Tipo == "43") || (processo.Tipo == "19") || (processo.Tipo == "40") || (processo.Tipo == "6A") || (processo.Tipo == "33") || (processo.Tipo == "5") || (processo.Tipo == "32"))
                {
                    Conhecimento conhecimento = new Conhecimento();

                    conhecimento = conhecimento.BuscarPorConhecimento(txtProcesso.Text);

                    //Verifica numero de identificação na tela de registro de chegada
                    if (processo.Tipo == "11")
                    {
                        if ((string.IsNullOrEmpty(conhecimento.Numeromanifesto.ToString().Trim())) && (conhecimento.Modalidade_Despacho.ToString() != "2"))
                        {
                            MessageBox.Show(FrmPrincipal.UsuarioLogado + ", favor preencher o número de identificação na tela de registro de chegada", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                            return false;
                        }
                    }

                    //Verifica numero de identificação e código de presença da carga na tela de registro de chegada
                    if (processo.Tipo == "12")
                    {
                        if ((string.IsNullOrEmpty(conhecimento.Numeromanifesto.ToString().Trim())) && (string.IsNullOrEmpty(conhecimento.Codigo_Presenca_Carga.ToString().Trim())) && (conhecimento.Modalidade_Despacho.ToString() != "2"))
                        {
                            MessageBox.Show(FrmPrincipal.UsuarioLogado + ", favor preencher o número de identificação e código de presença de carga na tela de registro de chegada.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                            return false;
                        }
                    }

                    //Verifica numero de identificação na tela de registro de chegada
                    if (processo.Tipo == "11")
                    {
                        if ((string.IsNullOrEmpty(conhecimento.Numeromanifesto.ToString().Trim())) && (conhecimento.Modalidade_Despacho.ToString() != "2"))
                        {
                            MessageBox.Show(FrmPrincipal.UsuarioLogado + ", favor preencher o número de identificação na tela de registro de chegada", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                            return false;
                        }
                    }

                    //Verifica numero de identificação e código de presença da carga na tela de registro de chegada
                    if (processo.Tipo == "12")
                    {
                        if ((string.IsNullOrEmpty(conhecimento.Numeromanifesto.ToString().Trim())) && (string.IsNullOrEmpty(conhecimento.Codigo_Presenca_Carga.ToString().Trim())) && (conhecimento.Modalidade_Despacho.ToString() != "2"))
                        {
                            MessageBox.Show(FrmPrincipal.UsuarioLogado + ", favor preencher o número de identificação e código de presença de carga na tela de registro de chegada.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                            return false;
                        }
                    }


                    if ((!string.IsNullOrEmpty(conhecimento.URF_Despacho.ToString())) && (txtDIDtDesembaraco.MaskCompleted))
                    {
                        if (conhecimento.URF_Despacho.ToString() == "0710203")
                        {
                            if (FollowUp.VerificaEIncluiSeAusente(txtProcesso.Text, "2418", "1105"))
                            {
                                MessageBox.Show(FrmPrincipal.UsuarioLogado + ", ATENÇÃO! Foi INCLUÍDO follow up RFB / Aeroporto de Cabo Frio -  Desembaraçou a DI - Declaração de Importação!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            }
                        }

                        if (conhecimento.URF_Despacho.ToString() == "0717700")
                        {
                            if (FollowUp.VerificaEIncluiSeAusente(txtProcesso.Text, "2426", "1104"))
                            {
                                MessageBox.Show(FrmPrincipal.UsuarioLogado + ", ATENÇÃO! Foi INCLUÍDO follow up RFB / Alfândega do Aeroporto do Rio de Janeiro - Desembaraçou a DI - Declaração de Importação!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            }
                        }

                        if (conhecimento.URF_Despacho.ToString() == "0817700")
                        {
                            if (FollowUp.VerificaEIncluiSeAusente(txtProcesso.Text, "2425", "1105"))
                            {
                                MessageBox.Show(FrmPrincipal.UsuarioLogado + ", ATENÇÃO! Foi INCLUÍDO follow up ALF/RFB Aeroporto Internacional de Viracopos (São Paulo) - Desembaraçou a Declaração de Importação!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            }
                        }

                        if (conhecimento.URF_Despacho.ToString() == "0517600")
                        {
                            if (FollowUp.VerificaEIncluiSeAusente(txtProcesso.Text, "2436", "1107"))
                            {
                                MessageBox.Show(FrmPrincipal.UsuarioLogado + ", ATENÇÃO! Foi INCLUÍDO follow up RFB / Alfândega de Salvador - Desembaraçou a DI - Declaração de Importação!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            }
                        }

                        if (conhecimento.URF_Despacho.ToString() == "0717600")
                        {
                            if (FollowUp.VerificaEIncluiSeAusente(txtProcesso.Text, "2422", "1103"))
                            {
                                MessageBox.Show(FrmPrincipal.UsuarioLogado + ", ATENÇÃO! Foi INCLUÍDO follow up RFB / Alfândega do Porto do Rio de Janeiro - Desembaraçou a DI - Declaração de Importação!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            }
                        }

                        if (conhecimento.URF_Despacho.ToString() == "0710200")
                        {
                            if (FollowUp.VerificaEIncluiSeAusente(txtProcesso.Text, "2417", "1105"))
                            {
                                MessageBox.Show(FrmPrincipal.UsuarioLogado + ", ATENÇÃO! Foi INCLUÍDO follow up RFB / DRF - Niterói - Desembaraçou a DI - Declaração de Importação!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            }
                        }

                        if (conhecimento.URF_Despacho.ToString() == "0727600")
                        {
                            if (FollowUp.VerificaEIncluiSeAusente(txtProcesso.Text, "2389", "0"))
                            {
                                MessageBox.Show(FrmPrincipal.UsuarioLogado + ", ATENÇÃO! Foi INCLUÍDO follow up Alfândega do Porto de Vitória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            }
                        }

                        if (conhecimento.URF_Despacho.ToString() == "0717800")
                        {
                            if (FollowUp.VerificaEIncluiSeAusente(txtProcesso.Text, "2399", "1106"))
                            {
                                MessageBox.Show(FrmPrincipal.UsuarioLogado + ", ATENÇÃO! Foi INCLUÍDO follow up RFB/ Alfândega do Porto de Sepetiba - Desembaraçou a DI - Declaração de Importação!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            }
                        }

                        if (conhecimento.URF_Despacho.ToString() == "0710300")
                        {
                            if (FollowUp.VerificaEIncluiSeAusente(txtProcesso.Text, "2464", "0"))
                            {
                                MessageBox.Show(FrmPrincipal.UsuarioLogado + ", ATENÇÃO! Foi INCLUÍDO follow up RFB / Alfândega de Nova Iguaçú!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            }
                        }

                        if (conhecimento.URF_Despacho.ToString() == "0811000")
                        {
                            if (FollowUp.VerificaEIncluiSeAusente(txtProcesso.Text, "2684", "1102"))
                            {
                                MessageBox.Show(FrmPrincipal.UsuarioLogado + ", ATENÇÃO! Foi INCLUÍDO follow up RFB DRF EADI Aurora/SP-Sorocaba!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            }
                        }

                        if (conhecimento.URF_Despacho.ToString() == "0317700")
                        {
                            if (FollowUp.VerificaEIncluiSeAusente(txtProcesso.Text, "2543", "1103"))
                            {
                                MessageBox.Show(FrmPrincipal.UsuarioLogado + ", ATENÇÃO! Foi INCLUÍDO follow up RFB/Alfândega de Fortaleza - Desembaraçou a DI!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            }
                        }

                        if (conhecimento.URF_Despacho.ToString() == "0317800")
                        {
                            if (FollowUp.VerificaEIncluiSeAusente(txtProcesso.Text, "2710", "1102"))
                            {
                                MessageBox.Show(FrmPrincipal.UsuarioLogado + ", ATENÇÃO! Foi INCLUÍDO follow up RFB/Alfandega de PECEM - Desembaraçou a DI!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            }
                        }

                        if (conhecimento.URF_Despacho.ToString() == "0145200")
                        {
                            if (FollowUp.VerificaEIncluiSeAusente(txtProcesso.Text, "2724", "1102"))
                            {
                                MessageBox.Show(FrmPrincipal.UsuarioLogado + ", ATENÇÃO! Foi INCLUÍDO follow up IRF / Corumbá - Desembaraçou a DI!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            }
                        }

                        if (conhecimento.URF_Despacho.ToString() == "0710400")
                        {
                            if (FollowUp.VerificaEIncluiSeAusente(txtProcesso.Text, "2781", "1103"))
                            {
                                MessageBox.Show(FrmPrincipal.UsuarioLogado + ", ATENÇÃO! Foi INCLUÍDO follow up RFB/DRF Campos de Goitacazes - Desembaraçou a DI!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            }
                        }

                        if (conhecimento.URF_Despacho.ToString() == "0817900")
                        {
                            if (FollowUp.VerificaEIncluiSeAusente(txtProcesso.Text, "2785", "1102"))
                            {
                                MessageBox.Show(FrmPrincipal.UsuarioLogado + ", ATENÇÃO! Foi INCLUÍDO follow up RFB/ Alfandega EADI ELOG de São Paulo - Desembaraçou a DI!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            }
                        }                                                
                    }

                    if ((processo.Tipo != "BT") && (processo.Tipo != "34") && (processo.Tipo != "35") && (processo.Tipo != "8") && (processo.Tipo != "IN") && (processo.Tipo != "PA"))
                    {
                        if (!string.IsNullOrEmpty(txtDI.Text.Trim()))
                        {
                            if (!string.IsNullOrEmpty(txtDIDtRegistro.Text.Trim()))
                            {
                                //if ((Convert.ToDateTime(txtDIDtRegistro.Text.Substring(0, 2) + "/" + txtDIDtRegistro.Text.Substring(2, 2) + "/" + txtDIDtRegistro.Text.Substring(4, 4)) != DateTime.Now.Date) && (FrmPrincipal.UsuarioLogado != "ODILMA") && (!txtDIDtDesembaraco.MaskCompleted))
                                //{
                                //    MessageBox.Show("Data de Registro inválida!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                                //    txtDIDtRegistro.Focus();

                                //    return false;
                                //}

                                if (txtDIDtDistribuicao.MaskCompleted)
                                {
                                    if (Convert.ToDateTime(txtDIDtDistribuicao.Text) < Convert.ToDateTime(txtDIDtRegistro.Text.Substring(0, 2) + "/" + txtDIDtRegistro.Text.Substring(2, 2) + "/" + txtDIDtRegistro.Text.Substring(4, 4)))
                                    {
                                        MessageBox.Show("'Data de Distribuição' é menor que a 'Data de Registro', favor verificar!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                                        txtDIDtDistribuicao.Focus();

                                        return false;
                                    }

                                    if (txtDIDtDesembaraco.MaskCompleted)
                                    {
                                        if (Convert.ToDateTime(txtDIDtDesembaraco.Text) < Convert.ToDateTime(txtDIDtDistribuicao.Text))
                                        {
                                            MessageBox.Show("'Data de Desembaraço' é menor que a 'Data de Distribuição', favor verificar!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                                            txtDIDtDesembaraco.Focus();

                                            return false;
                                        }

                                        if (txtDIDtCI.MaskCompleted)
                                        {
                                            if ((processo.Tipo == "NC") || (processo.Tipo == "6") || (processo.Tipo == "6A") || (processo.Tipo == "IT") || (processo.Tipo == "14") || (processo.Tipo == "15") || (processo.Tipo == "5") || (processo.Tipo == "20") || (processo.Tipo == "IB") || (processo.Tipo == "17") || (processo.Tipo == "19") || (processo.Tipo == "40"))
                                            {
                                                if (!Documentos.ExisteDocumento(txtProcesso.Text, "PROC", "5"))
                                                {
                                                    MessageBox.Show("Não é possível informar a 'Data da CI', documento da 'CI' não está digitalizado!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                                                    return false;
                                                }
                                            }

                                            if (Convert.ToDateTime(txtDIDtCI.Text) < Convert.ToDateTime(txtDIDtDesembaraco.Text))
                                            {
                                                MessageBox.Show("'Data da CI' é menor que a 'Data de Desembaraço', favor verificar!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                                                txtDIDtDesembaraco.Focus();

                                                return false;
                                            }

                                            if (txtDataEntregaDoc.MaskCompleted)
                                            {
                                                if (MessageBox.Show("A carga é de entrega antecipada?", "Atenção", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                                                {
                                                    if (Convert.ToDateTime(txtDataEntregaDoc.Text) > Convert.ToDateTime(txtDIDtCI.Text))
                                                    {
                                                        if (MessageBox.Show("'Data de Liberação da Carga' é maior que a 'Data CI', processo com Entrega Antecipada?", "Atenção", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.No)
                                                        {
                                                            txtDataEntregaDoc.Focus();

                                                            return false;
                                                        }
                                                    }
                                                }
                                                else
                                                {
                                                    if (Convert.ToDateTime(txtDataEntregaDoc.Text) < Convert.ToDateTime(txtDIDtCI.Text))
                                                    {
                                                        if (MessageBox.Show("'Data de Liberação da Carga' é menor que a 'Data CI', processo com Entrega Antecipada?", "Atenção", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.No)
                                                        {
                                                            txtDataEntregaDoc.Focus();

                                                            return false;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            if (FollowUp.VerificaEIncluiSeAusenteComData(txtProcesso.Text, "1021", "1117", txtDIDtRegistro.Text.Substring(0, 2) + "/" + txtDIDtRegistro.Text.Substring(2, 2) + "/" + txtDIDtRegistro.Text.Substring(4, 4)))
                            {
                                MessageBox.Show(FrmPrincipal.UsuarioLogado + ", ATENÇÃO! foi INCLUÍDO Follow up de Registrou a Declaração de Importação!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            }

                            Documentos.ApagaVigenciaLI(txtProcesso.Text);
                        }
                    }

                    if ((processo.Tipo != "21") && (processo.Tipo != "22") && (processo.Tipo != "23") && (processo.Tipo != "24") && (processo.Tipo != "26") && (processo.Tipo != "35") && (processo.Tipo != "DV"))
                    {
                        if (!string.IsNullOrEmpty(cbbDICanal.Text.Trim()))
                        {
                            //Verifica se a solicitação de registro está contabilizada
                            if (!Processo.DIContabilizadaSolReg(txtProcesso.Text))
                            {
                                MessageBox.Show("DI precisa estar contabilizada na solicitação de registro para ser salva.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                                return false;
                            }

                            //Canal CINZA
                            if (cbbDICanal.SelectedValue.ToString() == "A")
                            {
                                if (FollowUp.VerificaEIncluiSeAusente(txtProcesso.Text, "1057", "1104"))
                                {
                                    MessageBox.Show("ATENÇÃO! Foi INCLUÍDO follow up Declaração de Importação (DI) parametrizada - Canal CINZA!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                }

                            }

                            //Canal VERDE
                            if (cbbDICanal.SelectedValue.ToString() == "D")
                            {
                                if (FollowUp.VerificaEIncluiSeAusente(txtProcesso.Text, "1057", "1102"))
                                {
                                    MessageBox.Show("ATENÇÃO! Foi INCLUÍDO follow up Declaração de Importação (DI) parametrizada - Canal VERDE!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                }

                            }

                            //Canal VERMELHO
                            if (cbbDICanal.SelectedValue.ToString() == "L")
                            {
                                if (FollowUp.VerificaEIncluiSeAusente(txtProcesso.Text, "1057", "1"))
                                {
                                    MessageBox.Show("ATENÇÃO! Foi INCLUÍDO follow up Declaração de Importação (DI) parametrizada - Canal VERMELHO!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                }
                            }

                            //Canal AMARELO
                            if (cbbDICanal.SelectedValue.ToString() == "V")
                            {
                                if (FollowUp.VerificaEIncluiSeAusente(txtProcesso.Text, "1057", "1103"))
                                {
                                    MessageBox.Show("ATENÇÃO! Foi INCLUÍDO follow up Declaração de Importação (DI) parametrizada - Canal AMARELO!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                }
                            }
                        }
                    }

                    //SetProcessosALC(true);

                    VerificaRateioTaxaSiscomex();
                }
            }

            //EXPORTAÇÃO
            if ((tabControl1.SelectedTab == tabDDE))
            {
                if (!string.IsNullOrEmpty(txtDDE.Text.Trim()))
                {
                    if ((Convert.ToDateTime(txtDDEDtRegistro.Text.Substring(0, 2) + "/" + txtDDEDtRegistro.Text.Substring(2, 2) + "/" + txtDDEDtRegistro.Text.Substring(4, 4))) > Convert.ToDateTime("05/07/2016"))
                    {
                        if (string.IsNullOrEmpty(txtDDEProtocolo.Text.Trim()))
                        {
                            MessageBox.Show("Nº de Protocolo de registro obrigatório.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                            txtDDEProtocolo.Focus();

                            return false;
                        }
                    }
                }
            }

            return true;
        }

        private bool ValidaCampos()
        {
            if ((tabControl1.SelectedTab == tabDI))
            {
                if (string.IsNullOrEmpty(txtDI.Text))
                {
                    MessageBox.Show("DI obrigatória.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                    return false;
                }

                if (string.IsNullOrEmpty(txtDIDtRegistro.Text))
                {
                    MessageBox.Show("Data de Registro obrigatória.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                    return false;
                }

                if (!txtDIDtDesembaraco.MaskCompleted)
                {
                    MessageBox.Show("Data de Desembaraço obrigatória.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                    return false;
                }

                if (string.IsNullOrEmpty(cbbDICanal.Text))
                {
                    MessageBox.Show("Canal obrigatório.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                    return false;
                }

                if (!txtDIDtDistribuicao.MaskCompleted)
                {
                    MessageBox.Show("Data de Distribuição obrigatória.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                    return false;
                }

                if (string.IsNullOrEmpty(txtDIFiscal.Text))
                {
                    MessageBox.Show("Fiscal obrigatório.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                    return false;
                }

                if (string.IsNullOrEmpty(cbbDiSitFiscal.Text))
                {
                    MessageBox.Show("Situação fiscal obrigatória.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                    return false;
                }

                if (!txtDIDtCI.MaskCompleted)
                {
                    MessageBox.Show("Data da CI obrigatória.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                    return false;
                }

                if (string.IsNullOrEmpty(txtDIProtocolo.Text))
                {
                    MessageBox.Show("Protocolo obrigatório.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                    return false;
                }

                if (string.IsNullOrEmpty(txtDIBanco.Text))
                {
                    MessageBox.Show("Banco obrigatório.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                    return false;
                }

                if (string.IsNullOrEmpty(txtDIAgencia.Text))
                {
                    MessageBox.Show("Agência obrigatória.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                    return false;
                }

                if (string.IsNullOrEmpty(txtDICC.Text))
                {
                    MessageBox.Show("Conta corrente obrigatória.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                    return false;
                }

                if (string.IsNullOrEmpty(txtDIII.Text))
                {
                    MessageBox.Show("II obrigatório.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                    return false;
                }

                if (string.IsNullOrEmpty(txtDIIPI.Text))
                {
                    MessageBox.Show("IPI obrigatório.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                    return false;
                }

                if (string.IsNullOrEmpty(txtDITaxaSiscomex.Text))
                {
                    MessageBox.Show("Taxa Siscomex obrigatória.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                    return false;
                }

                if (string.IsNullOrEmpty(txtDIFob.Text))
                {
                    MessageBox.Show("FOB obrigatório.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                    return false;
                }

                if (string.IsNullOrEmpty(txtDICif.Text))
                {
                    MessageBox.Show("CIF obrigatório.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                    return false;
                }
            }

            return true;
        }

        private DataTable getTaxasProcesso()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " SELECT Moeda, Taxa_conversao FROM Processos_Taxas_Conversao WHERE Processo = @Processo ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void SetProcessosALC(bool Enviou)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " UPDATE Processos_ALC SET Enviou = @Enviou WHERE Processo = @Processo ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Enviou", ((Enviou == true) ? 1 : 0));
                cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                cmd.ExecuteNonQuery();
            }
        }

        private DataTable getREProcesso()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " SELECT Processo, RE FROM Processos_RES WHERE Processo = @Processo ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void getCanais()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " SELECT CODIGO, DESCRICAO FROM Canais ORDER BY DESCRICAO ";

            DataTable table;
            DataTable table1;

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }

                    using (SqlDataReader reader1 = cmd.ExecuteReader())
                    {
                        table1 = new DataTable();
                        table1.Load(reader1);
                    }
                }

                cbbDICanal.DataSource = table;
                cbbDICanal.DisplayMember = "Descricao";
                cbbDICanal.ValueMember = "Codigo";

                cbbDDECanal.DataSource = table1;
                cbbDDECanal.DisplayMember = "Descricao";
                cbbDDECanal.ValueMember = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getSituacaoFiscal()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " SELECT CODIGO, DESCRICAO FROM Tipos_situacao_fiscal ORDER BY DESCRICAO ";

            DataTable table;
            DataTable table1;

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }

                    using (SqlDataReader reader1 = cmd.ExecuteReader())
                    {
                        table1 = new DataTable();
                        table1.Load(reader1);
                    }
                }

                cbbDiSitFiscal.DataSource = table;
                cbbDiSitFiscal.DisplayMember = "Descricao";
                cbbDiSitFiscal.ValueMember = "Codigo";

                cbbDDESitFiscal.DataSource = table1;
                cbbDDESitFiscal.DisplayMember = "Descricao";
                cbbDDESitFiscal.ValueMember = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getMoedas()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " SELECT CODIGO, DESCRICAO FROM TAB_MOEDA ORDER BY DESCRICAO ";

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

                cbbMoeda.DataSource = null;
                cbbMoeda.DataSource = table;
                cbbMoeda.DisplayMember = "DESCRICAO";
                cbbMoeda.ValueMember = "CODIGO";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getTransportadores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " SELECT Codigo, Razao_Social FROM Transportadores ORDER BY Razao_Social ";

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

                mccbTransportadores.DataSource = null;
                mccbTransportadores.DataSource = table;
                mccbTransportadores.DisplayMember = "Razao_Social";
                mccbTransportadores.ValueMember = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void AtualizaGridRE()
        {
            bindingSource3.DataSource = getREProcesso();

            dtgrdDDERe.DataSource = bindingSource3;

            bindingSource3.MoveFirst();
        }

        private void AtualizaGridTaxas()
        {
            bindingSource2.DataSource = getTaxasProcesso();

            dtgrdDITaxa.DataSource = null;
            dtgrdDDETaxa.DataSource = null;

            if (tabControl1.SelectedTab == tabDI)
            {
                dtgrdDITaxa.DataSource = bindingSource2;
            }
            else
            {
                dtgrdDDETaxa.DataSource = bindingSource2;
            }

            bindingSource2.MoveFirst();
        }

        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            if (txtProcesso.MaskCompleted)
            {
                processo = processo.BuscarPorCodigo(txtProcesso.Text);

                if (processo != null)
                {
                    var cliente = new Importador();

                    cliente = cliente.BuscarPorCodigo(processo.Importador);

                    txtCNPJ.Text = cliente.CNPJ_CPF_COMPLETO;
                    txtCliente.Text = cliente.Razao_Social;

                    if (controleDeValidacoes.LiberaAcessoProcesso(processo.Codigo, processo.Importador, processo.Fechado))
                    {
                        if (Usuario.AcessaPasta(txtProcesso.Text, this, processo.Tipo))
                        {
                            if (tipo.VerificaItemPassivelAdmissao(processo.Tipo))
                            {
                                if (processo.TemItemPassivelDeAdmissao(processo.Codigo))
                                {
                                    if (!processo.TemDIAutorizada(processo.Codigo))
                                    {
                                        MessageBox.Show("Processo não tem autorização para o registro da DI!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                                        return;
                                    }
                                }
                            }

                            lblStatus.Text = "Status: " + processo.StatusProcesso(processo.Status);

                            VerificaBotoes();

                            processodeExportacao = tipo.Exportacao(processo.Tipo);

                            if (processodeExportacao)
                            {
                                AtualizaGridRE();

                                tabControl1.SelectedTab = tabDDE;
                            }
                            else
                            {
                                tabControl1.SelectedTab = tabDI;
                            }

                            AtualizaGridTaxas();

                            AtualizaDados();
                        }
                    }
                }
            }
            else
            {
                LimparCampos();

                HabilitarDesabilitaControles(false);
            }
        }

        private DataTable getDesembaraco()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "  SELECT NR_DECLARACAO_IMP, DT_REGISTRO_DI, DT_DESEMBARACO, Canal, DT_DISTRIBUICAO, Fiscal, COD_SIT, Quantidade_LI,         " +
                           "         Data_CI, DT_TRANSMISSAO, DT_PROCESSAMENTO, DI_Protocolo, PRI.Banco, PRI.Agencia, PRI.Conta_Corrente,               " +
                           "         PRI.II, PRI.IPI, PRI.Taxa_SISCOMEX, Valor_FOB, Valor_CIF, DDE, Processo_Adm, Proc_Adm_Data_Entrada, Data_liberacao " +
                           "    FROM Processos                                                                                                          " +
                           "         LEFT JOIN Processos_registro_impostos PRI ON Processos.CODIGO = PRI.Processo                                       " +
                           "   WHERE Codigo = @Codigo                                                                                                   ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Codigo", txtProcesso.Text);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private DataTable getADCED()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " SELECT Processo, Transportador, Descricao_mercadoria, Enviou FROM Processos_ALC Where Processo = @Processo ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void AtualizaDados()
        {
            bindingSource1.DataSource = getDesembaraco();

            AtualizaEntregaDoc();
        }

        private void AtualizaEntregaDoc()
        {
            bindingSource4.DataSource = getADCED();
        }

        private void txtDI_TextChanged(object sender, EventArgs e)
        {
            if (txtDI.Text.Trim().Length == 10)
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    if (string.IsNullOrEmpty(txtDIDtRegistro.Text.Trim()))
                    {
                        txtDIDtRegistro.Text = DateTime.Today.ToString("dd/MM/yyyy").Replace("/", "");
                        txtDIDtDesembaraco.Focus();
                    }
                }
            }
        }

        private void ExcluiTaxa()
        {
            if (bindingSource2.Count > 0)
            {
                if (MessageBox.Show("Tem certeza que deseja excluir a taxa ?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                {
                    try
                    {
                        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                        string query = " DELETE FROM Processos_Taxas_Conversao WHERE Processo = @Processo AND Moeda = @Moeda ";

                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                            cmd.Parameters.AddWithValue("@Moeda", ((DataRowView)this.bindingSource2.Current).Row["Moeda"].ToString());
                            cmd.ExecuteNonQuery();
                        }

                        LogSistemas.AddLogSistema("Taxa Conversão", FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Exclusão da Moeda {0}, Taxa {1} para o processo:{2}", ((DataRowView)this.bindingSource2.Current).Row["Moeda"].ToString(), ((DataRowView)this.bindingSource2.Current).Row["Taxa_conversao"].ToString(), txtProcesso.Text));

                        bindingSource2.RemoveCurrent();

                        MessageBox.Show("Registro excluído com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);

                        AtualizaGridTaxas();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
        }

        private void btnDDEExcluiRE_Click(object sender, EventArgs e)
        {
            if (bindingSource3.Count > 0)
            {
                if (MessageBox.Show("Tem certeza que deseja excluir o RE ?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                {
                    try
                    {
                        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                        string query = " DELETE FROM Processos_REs WHERE Processo = @Processo AND RE = @RE ";

                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                            cmd.Parameters.AddWithValue("@RE", ((DataRowView)this.bindingSource3.Current).Row["RE"].ToString());
                            cmd.ExecuteNonQuery();
                        }

                        LogSistemas.AddLogSistema("Inclusão RE", FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Re: {0} excluído do Processo: {1}", ((DataRowView)this.bindingSource3.Current).Row["RE"].ToString(), txtProcesso.Text));
                        bindingSource3.RemoveCurrent();

                        MessageBox.Show("Registro excluído com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);

                        AtualizaGridRE();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
        }

        private void cbbMoeda_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbbMoeda.SelectedValue != null)
            {
                txtTaxa.Text = tabConversaoCambio.BuscaTaxaDia(cbbMoeda.SelectedValue.ToString());
            }
        }

        private void btnCancelarTaxa_Click(object sender, EventArgs e)
        {
            cbbMoeda.SelectedIndex = -1;
            txtTaxa.Clear();

            pnlTaxas.Visible = false;
        }

        private bool ValidaCamposTaxa()
        {
            if (string.IsNullOrEmpty(cbbMoeda.Text.Trim()))
            {
                MessageBox.Show("Moeda obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbMoeda.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtTaxa.Text.Trim()))
            {
                MessageBox.Show("Taxa obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtTaxa.Focus();
                return false;
            }
            else
            {
                if (!Util.ValidaCampoDouble(txtTaxa.Text))
                {
                    MessageBox.Show("Taxa inválida!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    txtTaxa.Focus();
                    return false;
                }
            }

            return true;
        }

        private bool ValidaCamposRE()
        {
            if (string.IsNullOrEmpty(txtRE.Text.Trim()))
            {
                MessageBox.Show("RE obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtRE.Focus();
                return false;
            }

            return true;
        }

        private void btnSalvarTaxa_Click(object sender, EventArgs e)
        {
            pnlTaxas.Visible = true;

            if (ValidaCamposTaxa() == false) return;

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = " INSERT INTO Processos_Taxas_Conversao (Processo, Moeda, Taxa_Conversao, Taxa_Conversaoc) VALUES (@Processo, @Moeda, @Taxa_Conversao, @Taxa_Conversaoc) ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                    cmd.Parameters.AddWithValue("@Moeda", cbbMoeda.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@Taxa_Conversao", Convert.ToDouble(txtTaxa.Text));
                    cmd.Parameters.AddWithValue("@Taxa_Conversaoc", Convert.ToDouble(txtTaxa.Text));
                    cmd.ExecuteNonQuery();
                }

                LogSistemas.AddLogSistema("Inclusão Taxa", FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Incluída para o Processo: {0} a Moeda: {1}, Taxa: {2}", txtProcesso.Text, cbbMoeda.Text, txtTaxa.Text));

                AtualizaGridTaxas();

                pnlTaxas.Visible = false;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnSalvarRE_Click(object sender, EventArgs e)
        {
            if (ValidaCamposRE() == false) return;

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = " INSERT INTO Processos_REs (Processo, RE) VALUES (@Processo, @RE) ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                    cmd.Parameters.AddWithValue("@RE", txtRE.Text);
                    cmd.ExecuteNonQuery();
                }

                LogSistemas.AddLogSistema("Inclusão RE", FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Incluído para o Processo: {0}, o RE: {1}", txtProcesso.Text, txtRE.Text));

                AtualizaGridRE();

                pnlRE.Visible = false;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void LimparCampos()
        {
            txtCNPJ.Clear();
            txtCliente.Clear();

            txtDI.Clear();
            txtDIDtRegistro.Clear();
            txtDIDtDesembaraco.Clear();
            cbbDICanal.SelectedValue = -1;
            txtDIDtDistribuicao.Clear();
            txtDIFiscal.Clear();
            cbbDiSitFiscal.SelectedValue = -1;
            txtDIQtdLI.Clear();
            txtDIDtCI.Clear();
            txtDIProtocolo.Clear();
            txtDIBanco.Clear();
            txtDIAgencia.Clear();
            txtDICC.Clear();
            txtDIII.Clear();
            txtDIIPI.Clear();
            txtDITaxaSiscomex.Clear();
            txtDIFob.Clear();
            txtDICif.Clear();

            dtgrdDITaxa.DataSource = null;

            txtDDE.Clear();
            txtDDEDtRegistro.Clear();
            txtDDEDtDesembaraco.Clear();
            cbbDDECanal.SelectedValue = -1;
            txtDDEDtDistribuicao.Clear();
            txtDDEFiscal.Clear();
            cbbDDESitFiscal.SelectedValue = -1;
            txtDDEProtocolo.Clear();
            txtDDEFob.Clear();
            txtDDECif.Clear();
            txtDDEProcAdm.Clear();
            txtDDEProcAdmDtEntrada.Clear();

            dtgrdDDETaxa.DataSource = null;
            dtgrdDDERe.DataSource = null;

            lblStatus.Text = "Status: ";
        }

        private void btnDIIncluiTaxa_Click(object sender, EventArgs e)
        {
            AbrePnlTaxa();
        }

        private void btnDDEIncluiTaxa_Click(object sender, EventArgs e)
        {
            AbrePnlTaxa();
        }

        private void btnDDEIncluiRE_Click(object sender, EventArgs e)
        {
            pnlRE.Visible = true;

            txtRE.Clear();
            txtRE.Focus();
        }

        private void btnCancelarRE_Click(object sender, EventArgs e)
        {
            txtRE.Clear();

            pnlRE.Visible = false;
        }

        private void btnADCED_Click(object sender, EventArgs e)
        {
            if (ValidaCampos() == false) return;

            pnlEntregaDoc.Visible = true;

            ckbADCED.Visible = ckbADCED.Checked;

            if (!ckbADCED.Checked)
            {
                mccbTransportadores.Enabled = true;
                txtDescMerc.Enabled = true;
                btnADCEDSalvar.Enabled = true;

                ckbADCED.Visible = false;

                mccbTransportadores.Focus();
            }
            else
            {
                mccbTransportadores.Enabled = false;
                txtDescMerc.Enabled = false;
                btnADCEDSalvar.Enabled = false;

                ckbADCED.Visible = true;
            }
        }

        private void AbrePnlTaxa()
        {
            pnlTaxas.Visible = true;

            txtTaxa.Clear();
            cbbMoeda.SelectedValue = "220";
            bindingSource2.MoveFirst();
        }

        private void btnDIExcluiTaxa_Click(object sender, EventArgs e)
        {
            ExcluiTaxa();
        }

        private void btnDDEExcluiTaxa_Click(object sender, EventArgs e)
        {
            ExcluiTaxa();
        }

        private void btnADCEDSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = "DELETE Processos_ALC WHERE Processo = @Processo; INSERT INTO Processos_ALC (Processo,Transportador,Descricao_mercadoria) VALUES (@Processo,@Transportador,@Descricao_mercadoria) ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                    cmd.Parameters.AddWithValue("@Transportador", mccbTransportadores.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@Descricao_mercadoria", txtDescMerc.Text);
                    cmd.ExecuteNonQuery();
                }

                LogSistemas.AddLogSistema("Entrega DOC", FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Informado para o Processo: {0}, o Transportador: {1}, Mercadoria: {2}", txtProcesso.Text, mccbTransportadores.Text, txtDescMerc.Text));

                AtualizaEntregaDoc();

                pnlEntregaDoc.Visible = false;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void VerificaRateioTaxaSiscomex()
        {
            try
            {
                double somaqtd_itens = 0;

                List<Processos_Registros_Impostos> lista = new List<Processos_Registros_Impostos>();

                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = " SELECT P.Tipo_Declaracao, PRI.Taxa_SISCOMEX, PRI.Taxa_SISCOMEXc                                                                                              "
                             + "   FROM Processos_registro_impostos PRI                                                                                                                       "
                             + "        INNER JOIN Processos P ON p.Codigo = pri.Processo                                                                                                     "
                             + "  WHERE ((PRI.Banco <> '') OR (PRI.Agencia <> '') OR (PRI.Conta_Corrente <> '') OR (PRI.Bancoc <> '') OR (PRI.Agenciac <> '') OR (PRI.Conta_Correntec <> '')) "
                             + "    AND PRI.Processo = @Processo                                                                                                                              ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    try
                    {
                        cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    lista.Add(new Processos_Registros_Impostos
                                    {
                                        tipo_declaracao = (string)reader["Tipo_Declaracao"],
                                        Taxa_SISCOMEX = (double)reader["Taxa_SISCOMEX"],
                                        Taxa_SISCOMEXC = (double)reader["Taxa_SISCOMEXC"]
                                    });

                                    Application.DoEvents();
                                }

                                if ((lista[0].tipo_declaracao != "12") && (lista[0].Taxa_SISCOMEXC == 0))
                                {
                                    somaqtd_itens = ItensFaturas.SomaQTDItens(txtProcesso.Text, "%", "%");

                                    if (somaqtd_itens > 0)
                                    {
                                        RateiaTaxaSiscomex((lista[0].Taxa_SISCOMEX / somaqtd_itens), "%", "%");
                                    }
                                }
                                else
                                {
                                    //admissão
                                    somaqtd_itens = ItensFaturas.SomaQTDItens(txtProcesso.Text, "5", "5");

                                    if (somaqtd_itens > 0)
                                    {
                                        RateiaTaxaSiscomex((lista[0].Taxa_SISCOMEX / somaqtd_itens), "5", "5");
                                    }

                                    //consumo
                                    somaqtd_itens = ItensFaturas.SomaQTDItens(txtProcesso.Text, "1", "4");

                                    if (somaqtd_itens > 0)
                                    {
                                        RateiaTaxaSiscomex((lista[0].Taxa_SISCOMEXC / somaqtd_itens), "1", "4");
                                    }
                                }
                            }
                        }
                    }
                    catch (SqlException e)
                    {
                    }
                }
            }
            catch (SqlException e)
            {
            }
        }

        private void RateiaTaxaSiscomex(double taxa, string ii, string ipi)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = " UPDATE ItensFaturas SET Rateio_Taxa_Siscomex = @Taxa                                                                                                                         " +
                                "   FROM ItensFaturas                                                                                                                      " +
                                "        INNER JOIN Tributacao_Item_Fatura TIF ON ItensFaturas.Fatura_Id = TIF.Fatura_Id AND ItensFaturas.Sequencial = TIF.Sequencial_Item " +
                                "        INNER JOIN Faturas F ON F.Fatura_id = ItensFaturas.Fatura_id                                                                      " +
                                "  WHERE F.Processo=@Processo AND TIF.Regime_Tributacao_II Like @Ii AND TIF.Regime_Tributacao_IPI Like @Ipi                                ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Taxa", taxa);
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                    cmd.Parameters.AddWithValue("@Ii", ii);
                    cmd.Parameters.AddWithValue("@Ipi", ipi);
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void TotalizarSaldosTotais()
        {
            double val_fob = 0;
            double val_cif = 0;
            double val_ii = 0;
            double val_ipi = 0;

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = "  SELECT F.Processo, F.Fatura_Id, Sum(T.Quantidade) AS SomaDeQuantidade, Sum(IFA.Valor_Aduaneiro) AS SomaDeValor_Aduaneiro, Sum(IFA.Valor_mercadoria) AS SomaDeValor_mercadoria, Sum(IFA.Base_Calc_II) AS SomaDeBase_Calc_II, Sum(T.Valor_II_Devido) AS SomaDeValor_II_Devido, Sum(T.Valor_IPI_Devido) AS SomaDeValor_IPI_Devido " +
                               "    FROM Processos P                                                                                                                                                                                                                                                                                                             " +
                               "         INNER JOIN Faturas F ON P.Codigo = F.Processo                                                                                                                                                                                                                                                                           " +
                               "         INNER JOIN ItensFaturas IFA ON F.Fatura_Id = IFA.Fatura_Id                                                                                                                                                                                                                                                              " +
                               "         INNER JOIN Tributacao_Item_Fatura AS T ON IFA.Fatura_Id = T.Fatura_Id AND IFA.Sequencial = T.Sequencial_Item                                                                                                                                                                                                            " +
                               "   WHERE P.Codigo = @Processo AND (P.Tipo_Declaracao='12' OR P.Tipo_Declaracao= '05') AND ((T.Regime_Tributacao_II = '5' AND T.Regime_Tributacao_IPI = '5') OR (T.Prazo_permanencia > 0))                                                                                                                                        " +
                               "GROUP BY F.Processo, F.Fatura_Id                                                                                                                                                                                                                                                                                                 ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    try
                    {
                        cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                double o_val_fob = 0;
                                double o_val_cif = 0;

                                double taxa_conversao = 0;
                                string moeda = "";

                                while (reader.Read())
                                {
                                    moeda = Faturas.MoedaFatura(txtProcesso.Text);
                                    taxa_conversao = Processo.TaxaConversaoCambio(txtProcesso.Text, moeda);

                                    if (moeda == "220")
                                    {
                                        val_fob = val_fob + (double)reader["SomaDeValor_mercadoria"];
                                        val_cif = val_cif + (double)reader["SomaDeBase_Calc_II"];

                                        //converte para real
                                        val_ii = val_ii + ((double)reader["SomaDeValor_II_Devido"] * taxa_conversao);
                                        val_ipi = val_ipi + ((double)reader["SomaDeValor_IPI_Devido"] * taxa_conversao);
                                    }
                                    else
                                    {
                                        //converte para real
                                        o_val_fob = (double)reader["SomaDeValor_mercadoria"] * taxa_conversao;
                                        o_val_cif = (double)reader["SomaDeBase_Calc_II"] * taxa_conversao;

                                        val_ii = val_ii + ((double)reader["SomaDeValor_II_Devido"] * taxa_conversao);
                                        val_ipi = val_ipi + ((double)reader["SomaDeValor_IPI_Devido"] * taxa_conversao);

                                        //converte para dolar
                                        taxa_conversao = Processo.TaxaConversaoCambio(txtProcesso.Text, "220");

                                        o_val_fob = o_val_fob / taxa_conversao;
                                        o_val_cif = o_val_cif / taxa_conversao;

                                        val_fob = val_fob + o_val_fob;
                                        val_cif = val_cif + o_val_cif;
                                    }
                                }
                            }
                        }
                    }
                    catch (SqlException e)
                    {
                    }
                }

                total_pis = 0;
                total_cofins = 0;

                VerificaADICOES(txtProcesso.Text);

                PreencheValoresTR(val_fob, val_cif, val_ii, val_ipi, total_pis, total_cofins);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void PreencheValoresTR(double val_fob_us, double val_cif_us, double val_ii, double val_ipi, double val_pis, double val_cofins)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = " UPDATE PROCESSOS " +
                               "    SET tr_val_fob_us = @tr_val_fob_us, tr_val_cif_us = @tr_val_cif_us, tr_val_ii = @tr_val_ii, tr_val_ipi = @tr_val_ipi, tr_val_pis = @tr_val_pis, tr_val_cofins = @tr_val_cofins " +
                               "  WHERE CODIGO = @CODIGO ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@tr_val_fob_us", Math.Round(val_fob_us, 2));
                    cmd.Parameters.AddWithValue("@tr_val_cif_us", Math.Round(val_cif_us, 2));
                    cmd.Parameters.AddWithValue("@tr_val_ii", Math.Round(val_ii, 2));
                    cmd.Parameters.AddWithValue("@tr_val_ipi", Math.Round(val_ipi, 2));
                    cmd.Parameters.AddWithValue("@tr_val_pis", Math.Round(val_pis, 2));
                    cmd.Parameters.AddWithValue("@tr_val_cofins", Math.Round(val_cofins, 2));
                    cmd.Parameters.AddWithValue("@Codigo", txtProcesso.Text);
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private bool ESuspenso(string Processo, string Adicao)
        {
            var query = "SELECT TIT.Regime_Tributacao_II, TIT.Regime_Tributacao_IPI                                          " +
                        "  FROM Tributacao_Item_Fatura TIT                                                                   " +
                        "       INNER JOIN TAB_REG_TRIBUTARIO TRT ON TIT.Regime_Tributacao_II = TRT.CODIGO                   " +
                        "       INNER JOIN Faturas F ON TIT.Fatura_Id = F.Fatura_Id                                          " +
                        " WHERE F.Processo = @Processo AND TIT.Adicao = @Adicao                                              " +
                        "GROUP BY F.Processo, TIT.Adicao, TIT.Regime_Tributacao_II, TIT.Regime_Tributacao_IPI, TRT.DESCRICAO " +
                        "ORDER BY TIT.Adicao                                                                                 ";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", Processo);
                    cmd.Parameters.AddWithValue("@Adicao", Adicao);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                if ((reader["Regime_Tributacao_II"].ToString() == "5") || (reader["Regime_Tributacao_II"].ToString() == "3"))
                                {
                                    return true;
                                }
                                else
                                {
                                    return false;
                                }
                            }
                        }

                        return false;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);

                return false;
            }
        }

        private void VerificaADICOES(string Processo)
        {
            var query = " SELECT Adicao, VALOR_PIS_PASEP, VALOR_COFINS, VALOR_ICMS FROM Processos_ADICOES_ICMS_PIS_COFINS WHERE Processo = @Processo ";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", Processo);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                if (ESuspenso(Processo, reader["Adicao"].ToString()))
                                {
                                    total_pis = total_pis + (double)reader["VALOR_PIS_PASEP"];
                                    total_cofins = total_cofins + (double)reader["VALOR_COFINS"];
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnADCEDFechar_Click(object sender, EventArgs e)
        {
            mccbTransportadores.SelectedIndex = -1;
            txtDescMerc.Clear();
            ckbADCED.Checked = false;

            pnlEntregaDoc.Visible = false;
        }

        private void txtDDEDtRegistro_KeyPress(object sender, KeyPressEventArgs e)
        {
            Util.SomenteNumero(e);
            if (e.KeyChar == '/')
            {
                e.Handled = true;
            }
        }

        private void AvisoDesembaraco()
        {
            if ((_arrayTipoProcesso.Contains(processo.Tipo)) && (txtDIDtDesembaraco.MaskCompleted || txtDDEDtDesembaraco.MaskCompleted) &&
                processo.AVISO_DESEMBARACO == 0)
            {
                DadosAviso Dados = getDadosAviso(txtProcesso.Text);

                try
                {
                    string corpoDoEmail = "";
                    string assunto = "";
                    string para = "";

                    StringBuilder sb = new StringBuilder();

                    assunto = "MS LOGÍSTICA - AVISO DESEMBARAÇO REF.MS.:" + processo.Codigo + "- DI: " + processo.NR_DECLARACAO_IMP;

                    corpoDoEmail = "<BR><TABLE align='center' ><TR><TD colspan='2' nowrap CLASS='celulatitulo'>Aviso Desembaraço:<BR></TD></TR>";

                    corpoDoEmail = corpoDoEmail + "<TR><TD nowrap CLASS='celulatitulo'  >Empresa</TD><TD nowrap CLASS='estilocelula'  >" + txtCliente.Text + "</TD></TR>";
                    corpoDoEmail = corpoDoEmail + "<TR><TD nowrap CLASS='celulatitulo'  >Contrato</TD><TD nowrap CLASS='estilocelula'  >" + Dados.Contrato + "</TD></TR>";
                    corpoDoEmail = corpoDoEmail + "<TR><TD nowrap CLASS='celulatitulo'  >Local</TD><TD nowrap CLASS='estilocelula'  >" + Dados.Local + "</TD></TR>";
                    corpoDoEmail = corpoDoEmail + "<TR><TD nowrap CLASS='celulatitulo'  >Ref.Empresa</TD><TD nowrap CLASS='estilocelula'  >" + Dados.CodigoCliente + "</TD></TR>";
                    corpoDoEmail = corpoDoEmail + "<TR><TD nowrap CLASS='celulatitulo'  ><br>Ref.MS.<br></TD><TD nowrap CLASS='estilocelula' >" + Dados.Processo + "</TD></TR>";
                    corpoDoEmail = corpoDoEmail + "<TR><TD nowrap CLASS='celulatitulo'  >Tipo de Processo</TD><TD nowrap CLASS='estilocelula'  >" + Dados.TipoProcesso + "</TD></TR>";
                    corpoDoEmail = corpoDoEmail + "<TR><TD nowrap CLASS='celulatitulo'  ><br>DI<br></TD><TD nowrap CLASS='estilocelula' >" + processo.NR_DECLARACAO_IMP + "</TD></TR>";
                    corpoDoEmail = corpoDoEmail + "<TR><TD nowrap CLASS='celulatitulo'  >Tipo de Declaração</TD><TD nowrap CLASS='estilocelula'  >" + Dados.TipoDeclaracao + "</TD></TR>";
                    corpoDoEmail = corpoDoEmail + "</TABLE><br><br>";

                    sb.Append("<BR> Prezado, <BR>");
                    sb.Append("<BR>");
                    sb.Append(corpoDoEmail);
                    sb.Append("<BR><BR>");
                    sb.Append("Este e-mail é automático e não necessita de resposta. <BR>");
                    sb.Append("<BR><BR>");
                    sb.Append("Atenciosamente,<BR><BR>");
                    sb.Append("MS2000 - SISTEMA GERENCIAL ADUANEIRO<BR><BR>");

                    EmailAuto.incluir("DESEM", assunto, assunto, "MS2000 <auditoria@logistic-ms.com.br>", "Repetro@mslogistica.com.br", "", "", sb.ToString(), "", 1);
                    //   EmailAuto.incluir("DESEM", assunto, assunto, "MS2000 <auditoria@logistic-ms.com.br>", "wellington.medeiros@mslogistica.com.br", "", "", sb.ToString(), "", 1);

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Processos set AVISO_DESEMBARACO = 1 where Codigo = @codigo";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@codigo", txtProcesso.Text);
                        cmd.ExecuteNonQuery();
                    }

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }
    }
}
