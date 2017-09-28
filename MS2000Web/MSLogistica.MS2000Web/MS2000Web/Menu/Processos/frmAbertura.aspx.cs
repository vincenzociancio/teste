using MSBiblioteca.BLL;
using MSBiblioteca.Constante;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MS2000Web.Menu.Processos
{
    public partial class frmAbertura : System.Web.UI.Page
    {
        static Usuario _objUsuario = null;
        static Processo _objProcesso = null;
        static Operacao _operacao;
        // 6 - Transferência de Regime
        // 8 - Prorrogação de TR
        // 19 - Importação fícta
        // 22 - Reexportação
        // TT - Transferência de Titularidade
        // NC - Nacionalização
        // BT - Baixa de TR
        readonly string[] _arrayTipoProcessoParaVincular = { "6", "8", "19", "22", "TT", "NC", "BT" };

        // 12 - Consumo e Admissao Temporaria
        readonly string[] _arrayTipoDeclaracaoParaPgProporcional = { "12" };

        // 1 - Importação
        // 5 - Destruíção
        // 6 - Transferência de Regime
        // 9 - Trânsito Aduaneiro
        // 11 - Importação - Aéreo
        // 12 - Importação - Marítimo
        // 13 - Importação - Rodoviário
        // 16 - Importação - DTA III
        // 17 - Importação - DSI
        // 18 - Importação - COLI POSTAL
        // 19 - Importação - Fícta
        // NC - Nacionalização
        // TT - Transferência de Titularidade
        // IT - Importação - Transf. Beneficiário
        // IB - Importação - Bem Principal
        readonly string[] _arrayTipoProcessoComDeclaracao = { "1", "5", "6", "9", "11", "12", "13", "16", "17", "18", "19", "NC", "TT", "IT", "IB", "LI" };

        // Tipos de processos não vinculados(copiar e deletar)
        readonly string[] _arrayTipoProcessoNaoViculados = { "8", "27", "28", "29", "PP", "PR", "BF", "BP", "BT" };

        //Direitos de acesso
        static bool _canAbreProcesso = false;
        static bool _canAlteraProcesso = false;
        static bool _canAlteraProcessoClienteInativo = false;
        static bool _canAlteraProcessoFechado = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            pnlAvisos.Visible = false;
            if (!IsPostBack)
            {
                _objUsuario = new Usuario(Session["Usuario"].ToString());
                _canAbreProcesso = _objUsuario.AcessoOK(Operacao.Incluir, this.Page);
                _canAlteraProcesso = _objUsuario.AcessoOK(Operacao.Alterar, this.Page);
                _canAlteraProcessoClienteInativo = _objUsuario.AcessoAcaoEspecificaOK("Altera processo de clientes inativos", "frmAbertura.aspx", "canAlteraProcessoClienteInativo");
                _canAlteraProcessoFechado = _objUsuario.AcessoAcaoEspecificaOK("Altera processo fechado", "frmAbertura.aspx", "canAlteraProcessoFechado");
                //
                btnAbrirProcesso.Enabled = _canAbreProcesso;
            }
        }

        protected void LimparCampos()
        {
            lbCnpj.Text = "";
            txtData.Text = "";
            txtCodigoCliente.Text = "";
            txtVincular.Text = "";
            ddlCentro.Items.Clear();
            ddlCliente.Items.Clear();
            ddlTProcesso.Items.Clear();
            ddlTUrgencia.Items.Clear();
            txtCodigoCliente.Text = "";
            ddlTDeclaracao.Items.Clear();
            ddlContrato.Items.Clear();
            ddlLocal.Items.Clear();
        }

        protected void CarregarComboBox()
        {
            BuscarCCusto();
            BuscarTipoDeProcesso();
            BuscarTipoUrgencia();
            BuscarTipoDeclaracao();
        }

        protected void BuscarCCusto()
        {
            var ccusto = new CentroDeCusto();
            ddlCentro.DataTextField = "Descricao";
            ddlCentro.DataValueField = "Codigo";
            ddlCentro.DataSource = ccusto.BuscarTodos();
            ddlCentro.DataBind();
            ddlCentro.Items.Insert(0, "");
            ddlCentro.SelectedValue = "RJO";
        }

        protected void BuscarTodosCliente(bool ativos)
        {
            var cliente = new Importador();
            ddlCliente.DataTextField = "RAZAOCNPJ";
            ddlCliente.DataValueField = "Codigo";
            ddlCliente.DataSource = cliente.PreencherCombo(ativos);
            ddlCliente.DataBind();
            ddlCliente.Items.Insert(0, "");
        }

        protected void BuscarTipoDeProcesso()
        {
            var tipo = new TipoDeProcesso();
            ddlTProcesso.DataTextField = "Descricao";
            ddlTProcesso.DataValueField = "Codigo";
            ddlTProcesso.DataSource = tipo.BuscarTodos();
            ddlTProcesso.DataBind();
            ddlTProcesso.Items.Insert(0, "");
        }

        protected void BuscarTipoUrgencia()
        {
            var tipoUrgencia = new ProcessoTipoUrgencia();
            ddlTUrgencia.DataTextField = "Sigla";
            ddlTUrgencia.DataValueField = "PK_Tipo_Urgencia";
            ddlTUrgencia.DataSource = tipoUrgencia.BuscarTodos();
            ddlTUrgencia.DataBind();
            ddlTUrgencia.Items.Insert(0, "");
        }

        protected void BuscarTipoDeclaracao()
        {
            var tipoDeclaracao = new SiscomexTipoDeclaracao();
            ddlTDeclaracao.DataTextField = "Descricao";
            ddlTDeclaracao.DataValueField = "Codigo";
            ddlTDeclaracao.DataSource = tipoDeclaracao.BuscarTodos();
            ddlTDeclaracao.DataBind();
            ddlTDeclaracao.Items.Insert(0, "");
        }

        protected void BuscarContrato(string pkImportador, string pkContrato = "")
        {
            var importador = new Importador();
            ddlContrato.DataTextField = "Descricao";
            ddlContrato.DataValueField = "Contrato";
            var contrato = importador.BuscarContratos(pkImportador, pkContrato);
            if (ddlTProcesso.SelectedValue == "AD")
            {
                contrato = contrato.Where(c => c.Setor == "JUR").ToList();
            }
            ddlContrato.DataSource = contrato;
            ddlContrato.DataBind();
            ddlContrato.Items.Insert(0, "");

            //Locais
            BuscarLocais(ddlCliente.SelectedValue, ddlContrato.SelectedValue, "");
        }

        protected void BuscarLocais(string pkImportador, string pkContrato, string pkLocal = "")
        {
            var contrato = new Contrato(ddlCliente.SelectedValue, ddlContrato.SelectedValue, pkLocal);
            ddlLocal.DataTextField = "Descricao";
            ddlLocal.DataValueField = "Local";
            ddlLocal.DataSource = contrato.LocalInventario.ToList();
            ddlLocal.DataBind();
            ddlLocal.Items.Insert(0, "");
        }

        protected void MontarDadosClientes()
        {
            //ToolTipCliente
            var cliente = new Importador(ddlCliente.SelectedValue);
            string cnpj = string.Format("CNPJ: {0}", Convert.ToDouble(cliente.CnpjCpfCompleto).ToString(@"00\.000\.000\/0000\-00"));
            lbCnpj.Text = cnpj;
            lbTool01.Text = string.Format("RAZÃO SOCIAL: {0}", cliente.RazaoSocial.ToUpper());
            lbTool02.Text = string.Format("CNPJ: {0}", cnpj);
            lbTool03.Text = string.Format("ENDEREÇO: {0}, {1} - {2}", cliente.Endereco.ToUpper(), cliente.Numero, cliente.Complemento.ToUpper());
            lbTool04.Text = string.Format("BAIRRO: {0}", cliente.Bairro.ToUpper());
            lbTool05.Text = string.Format("CIDADE: {0}", cliente.Cidade.ToUpper());
            lbTool06.Text = string.Format("ESTADO: {0}", cliente.Estado.ToUpper());
        }

        protected void ddlCliente_SelectedIndexChanged(object sender, EventArgs e)
        {
            BuscarContrato(ddlCliente.SelectedValue);
            MontarDadosClientes();
            ScriptManager.RegisterStartupScript(this, Page.GetType(), "_toolTip", "$('#toolTipCliente').dialog('open');", true);
        }

        protected void ddlContrato_SelectedIndexChanged(object sender, EventArgs e)
        {
            BuscarLocais(ddlCliente.SelectedValue, ddlContrato.SelectedValue, "");
        }

        protected void ddlTProcesso_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (sender != null)
            {
                if (ddlTProcesso.SelectedValue == "AD")
                {
                    BuscarContrato(ddlCliente.SelectedValue);
                }
            }

            ddlTDeclaracao.Enabled = true;
            if (ddlTProcesso.SelectedValue == "IN")
            {
                ddlTDeclaracao.Enabled = false;
                ddlTDeclaracao.SelectedIndex = 0;
            }

            //Regra para vinculação de processo
            pnlViculacao.Enabled = (_arrayTipoProcessoParaVincular.Contains(ddlTProcesso.SelectedValue)) && (_operacao != Operacao.Incluir);
            //---
            //Regra para tipo de processo com declaração
            if (!_arrayTipoProcessoComDeclaracao.Contains(ddlTProcesso.SelectedValue))
            {
                ddlTDeclaracao.Enabled = false;
                ddlTDeclaracao.SelectedIndex = 0;
            }
            //---
        }

        protected void btnBuscarProcesso_Click(object sender, EventArgs e)
        {
            LimparCampos();
            btnAlterar.Enabled = false;
            btnAbrirProcesso.Enabled = _canAbreProcesso;
            pnlCampos.Enabled = false;
            pnlCampos.Visible = false;
            btnAvisos.Enabled = false;
            lbMessagens.Text = "";
            lbCnpj.Text = "";
            if (txtProcesso.Text.Length == 8)
            {
                _objProcesso = new Processo(txtProcesso.Text);
                if (!string.IsNullOrEmpty(_objProcesso.Codigo))
                {
                    //Verifica se usuário tem acesso ao cliente do processo corrente.
                    var cliente = from x in _objUsuario.Clientes
                                  select x.Codigo;

                    if (cliente.Contains(_objProcesso.FK_Importador))
                    {
                        BuscarTodosCliente(false);
                        CarregarComboBox();
                        //
                        lbCnpj.Text = string.Format("CNPJ: {0}", Convert.ToDouble(_objProcesso.Importador.CnpjCpfCompleto).ToString(@"00\.000\.000\/0000\-00"));
                        txtData.Text = _objProcesso.Data.ToString("dd/MM/yyyy");
                        ddlCentro.SelectedValue = _objProcesso.FK_Centro_Custo;
                        ddlCliente.SelectedValue = _objProcesso.FK_Importador;
                        ddlTProcesso.SelectedValue = _objProcesso.Tipo;
                        ckbUrgente.Checked = (_objProcesso.Urgente > 0);
                        ddlTUrgencia.SelectedValue = Convert.ToString(_objProcesso.FK_Processos_Tipo_Urgencia);
                        rdlMaterial.SelectedValue = Convert.ToString(_objProcesso.Material_Usado);
                        txtVincular.Text = _objProcesso.Processo_Vinculado;
                        txtCodigoCliente.Text = _objProcesso.Codigo_Cliente;
                        ddlTDeclaracao.SelectedValue = _objProcesso.Tipo_Declaracao;
                        ckbPgProporcional.Checked = (_objProcesso.Pagamento_Proporcional > 0);
                        BuscarContrato(ddlCliente.SelectedValue, _objProcesso.FK_Contrato);
                        ddlContrato.SelectedValue = _objProcesso.FK_Contrato;
                        BuscarLocais(ddlCliente.SelectedValue, ddlContrato.SelectedValue, _objProcesso.FK_Local_Inventario);
                        ddlLocal.SelectedValue = _objProcesso.FK_Local_Inventario;
                        //
                        MontarDadosClientes();
                        btnAlterar.Enabled = _canAlteraProcesso;
                        //Verificando se o cliente está inativo
                        if (_objProcesso.Importador.Ativo <= 0)
                        {
                            btnAlterar.Enabled = btnAlterar.Enabled && _canAlteraProcessoClienteInativo;
                            lbMessagens.Text = "- Este cliente está inativo. Somente usuários com permissão podem realizar alterações!<br/>";
                        }
                        //Verificando se processo está fechado
                        if (_objProcesso.Fechado >= 1)
                        {
                            btnAlterar.Enabled = btnAlterar.Enabled && _canAlteraProcessoFechado;
                            lbMessagens.Text += "- Este processo está fechado. Somente usuários com permissão podem realizar alterações!<br/>";
                        }
                        //
                        if (new TributacaoItemFatura().ExisteTributacao(_objProcesso.Codigo))
                        {
                            lbMessagens.Text += "- Este processo está tributado. Tipo do processo não pode ser alterado!" + System.Environment.NewLine;
                            ddlTProcesso.Enabled = false;
                        }
                        //
                        pnlCampos.Visible = true;
                        //
                        btnAvisos.Enabled = !string.IsNullOrEmpty(lbMessagens.Text);
                    }
                    else
                    {
                        ShowMessage("Este processo pertence a um cliente que seu acesso não está permitido!");
                    }
                }
                else
                {
                    ShowMessage("Processo não encontrado!");
                }
            }
        }

        protected void btnAlterar_Click(object sender, EventArgs e)
        {
            if (txtProcesso.Text.Length == 8 && !string.IsNullOrEmpty(_objProcesso.Codigo))
            {
                _operacao = Operacao.Alterar;
                pnlCampos.Enabled = true;
                ddlTUrgencia.Enabled = ckbUrgente.Checked;
                //Regra para vinculação de processo                                       
                //Regra para tipo de processo com declaração                
                ddlTProcesso_SelectedIndexChanged(null, null);
                //Regra para pagamento proporcional         
                ddlTDeclaracao_SelectedIndexChanged(null, null);
                btnAlterar.Enabled = false;
            }
        }

        protected void ckbUrgente_CheckedChanged(object sender, EventArgs e)
        {
            if (ckbUrgente.Checked)
            {
                BuscarTipoUrgencia();
                ddlTUrgencia.Enabled = true;
            }
            else
            {
                ddlTUrgencia.Items.Clear();
                ddlTUrgencia.Enabled = false;
            }
        }

        protected void ddlTDeclaracao_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (sender != null)
            {
                ckbPgProporcional.Checked = false;
            }
            ckbPgProporcional.Enabled = (_arrayTipoDeclaracaoParaPgProporcional.Contains(ddlTDeclaracao.SelectedValue));
        }

        protected void btnLocalizar_Click(object sender, EventArgs e)
        {

        }

        protected void btnAvisoOK_Click(object sender, EventArgs e)
        {
            pnlAvisos.Visible = false;
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            if (_objProcesso != null)
            {
                btnBuscarProcesso_Click(null, null);
            }
            else
            {
                LimparCampos();
                pnlCampos.Visible = false;
            }
        }

        protected void btnAbrirProcesso_Click(object sender, EventArgs e)
        {
            _operacao = Operacao.Incluir;
            _objProcesso = null;
            txtProcesso.Text = "";
            btnAlterar.Enabled = false;
            btnAvisos.Enabled = false;
            btnLocalizar.Enabled = false;
            LimparCampos();//Limpa dos os campos
            pnlCampos.Visible = true;//Exibe todos os campos
            pnlCampos.Enabled = true;
            BuscarTodosCliente(true);//Somente clientes ativos
            CarregarComboBox();//Carrrega todos os combobox
            txtData.Text = DateTime.Now.ToString("dd/MM/yyyy");//Preenche com data atual            
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                //Verificação bacalhau sistema antigo
                //
                // 22 - Reexportação
                // 23 - Exportação fícta
                // 6A - Transferência de regime - Bem Principal 
                // RM - RMBR - Autorização para Movimentação de Bem Admitido no REPETRO
                // PAD - Pedido de Autorização de Desembarque                
                string[] arrayTipoProcessoContratoLocalObrigatorio = { "22", "6A", "23", "RM", "PD" };
                //
                // 05 - Admissão temporaria
                string[] arrayTipoDeclaracaoContratoLocalObrigatorio = { "05" };
                //
                // Array de varias descrições de Sem Contrato cadastradas
                string[] arraySemContrato = { "", "S/ CONTRATO", "SEM CONTRATO", "SEM CONTRATO (PRAZO 90 DIAS)", "SEM CONTRATO / BRUTE TIDE", "SEM  CONTRATO", "S/CONTRATO", "SEM CONTRATO / OCEAN WHITTINGTON" };
                //
                string[] arraySemLocal = { "", "SEM  LOCAL DE INVENTÁRIO", "SEM LOCAL DE INVENTARIO", "SEM LOCAL DE INVENTÁRIO" };

                //Contrato/Local obrigatório
                if (arrayTipoProcessoContratoLocalObrigatorio.Contains(ddlTProcesso.SelectedValue))
                {
                    if (arraySemContrato.Contains(ddlContrato.SelectedItem.Text) || arraySemLocal.Contains(ddlLocal.SelectedItem.Text))
                    {
                        throw new Exception("O tipo de processo requer o contrato e o local de inventário!");
                    }
                }

                //Contrato/Local obrigatório
                if (arrayTipoDeclaracaoContratoLocalObrigatorio.Contains(ddlTDeclaracao.SelectedValue))
                {
                    if (arraySemContrato.Contains(ddlContrato.SelectedItem.Text) || arraySemLocal.Contains(ddlLocal.SelectedItem.Text))
                    {
                        throw new Exception("O tipo de declaração requer o contrato e o local de inventário!");
                    }
                }
                //--------------------------------------------Fim Bacalhau----------------------------------------------------

                var novoProcesso = new Processo
                {
                    Data = Convert.ToDateTime(DateTime.Now.ToString("dd/MM/yyyy")),
                    COD_SIT = "1",
                    Status = "0",
                    FK_Centro_Custo = ddlCentro.SelectedValue == "0" ? "" : ddlCentro.SelectedValue,
                    FK_Importador = ddlCliente.SelectedValue == "0" ? "" : ddlCliente.SelectedValue,
                    Tipo = ddlTProcesso.SelectedValue == "0" ? "" : ddlTProcesso.SelectedValue
                };
                //Tipo de urgencia
                if (ddlTUrgencia.SelectedItem != null && !string.IsNullOrEmpty(ddlTUrgencia.SelectedItem.Text))
                {
                    novoProcesso.Urgente = 1;
                    novoProcesso.FK_Processos_Tipo_Urgencia = Convert.ToInt32(ddlTUrgencia.SelectedValue);
                }
                else
                {
                    novoProcesso.Urgente = 0;
                    novoProcesso.FK_Processos_Tipo_Urgencia = null;
                }
                //--
                novoProcesso.Material_Usado = Convert.ToInt16(rdlMaterial.SelectedValue);
                novoProcesso.Codigo_Cliente = txtCodigoCliente.Text;
                novoProcesso.Tipo_Declaracao = ddlTDeclaracao.SelectedValue == "0" ? "" : ddlTDeclaracao.SelectedValue;
                novoProcesso.Pagamento_Proporcional = Convert.ToInt16(ckbPgProporcional.Checked);
                novoProcesso.FK_Contrato = ddlContrato.SelectedValue == "0" ? "" : ddlContrato.SelectedValue;
                novoProcesso.FK_Local_Inventario = ddlLocal.SelectedValue == "0" ? "" : ddlLocal.SelectedValue;

                switch (_operacao)
                {
                    case Operacao.Incluir:
                        if (novoProcesso.Incluir(novoProcesso))
                        {
                            //Atualizando campo processo
                            txtProcesso.Text = novoProcesso.Codigo;
                            //Grava no controle de pastas
                            var controle = new ControleDePasta
                                {
                                    Empresa = Parametro.Empresa,
                                    Filial = Parametro.Filial,
                                    FK_Processo = novoProcesso.Codigo,
                                    FK_Usuario = Session["Usuario"].ToString(),
                                    Aceite = 1,
                                    Data = DateTime.Now
                                };
                            controle.Incluir(controle);
                            //Grava follow de abertura
                            var follow = new FollowUp
                                {
                                    FK_Processo = novoProcesso.Codigo,
                                    CodigoEvento = "412",
                                    CodigoObs = "0",
                                    Data = Convert.ToDateTime(DateTime.Now.ToString("dd/MM/yyyy")),
                                    Hora = DateTime.Now.ToString("HH:mm"),
                                    FK_Usuario = Session["Usuario"].ToString()
                                };
                            follow.Incluir(follow);
                            //---
                            ShowMessage("Abertura realizada com sucesso!");
                            btnBuscarProcesso_Click(null, null);
                        }
                        break;
                    case Operacao.Alterar:
                        novoProcesso.Codigo = _objProcesso.Codigo;
                        if (novoProcesso.Alterar(novoProcesso))
                        {
                            new ProcessoImposto().AtualizadoZero(_objProcesso.Codigo);
                            new ProcessoVisaoGeral().AtualizadoZero(_objProcesso.Codigo);
                            ShowMessage("Alteração realizada com sucesso!");
                            btnBuscarProcesso_Click(null, null);
                        }
                        break;
                }

                //Verifica se o cliente tem faturamento, se não tiver enviar email para financeiro.
                if (!new ParametroFaturamento().ClienteTemParametroFaturamento(novoProcesso.FK_Importador))
                {
                    var email = new EmailAuto
                        {
                            Programa = "MS2000",
                            Titulo = "MS2000 WEB - Sistema Gerencial Aduaneiro",
                            Assunto = "MS2000 WEB - Ausência de Parâmetros de Faturamento",
                            De = "MS2000WEB<auditoria@logistic-ms.com.br>",
                            Para = "financeiro@mslogistica.com.br",
                            Body = "<BR>" +
                                   "Prezado(a),<BR>" +
                                   "<BR>" +
                                   "Por meio deste, informamos que foi aberto o Processo " + novoProcesso.Codigo +
                                   ",<BR>" +
                                   "do importador " + novoProcesso.Importador.RazaoSocial + ", <BR>" +
                                   "porém não existem parâmetros de faturamento cadastrados ou ativos para esse importador.<BR><BR><BR><BR>" +
                                   "Este e-mail é automático e não necessita de resposta. <BR><BR><BR>" +
                                   "Atenciosamente,<BR><BR>" +
                                   "MS2000WEB - SISTEMA GERENCIAL ADUANEIRO<BR><BR>",
                            HTML = 1,
                            CC = "",
                            CCO = "",
                            Anexo = ""
                        };
                    email.Incluir(email);
                }
            }
            catch (Exception ex)
            {
                _operacao = Operacao.Leitura;
                ShowMessage(ex.Message);
            }
        }

        protected void btnFechar_Click(object sender, EventArgs e)
        {

        }

        protected void btnVincular_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtVincular.Text))
            {
                var pro = new Processo();
                if (pro.ExisteProcesso(txtVincular.Text))
                {
                    if (_arrayTipoProcessoNaoViculados.Contains(ddlTProcesso.SelectedValue))
                    {
                        if (pro.Vincular(_objProcesso.Codigo, txtVincular.Text, false))
                        {
                            ShowMessage("Vinculação foi realizada com sucesso!");
                            btnCancelar_Click(null, null);
                        }
                    }
                    else
                    {
                        if (pro.Desvincular(_objProcesso.Codigo))
                        {
                            if (pro.Vincular(_objProcesso.Codigo, txtVincular.Text, ckbCopiar.Checked))
                            {
                                ShowMessage("Vinculação foi realizada com sucesso!");
                                btnCancelar_Click(null, null);
                            }
                        }
                    }
                }
                else
                {
                    ShowMessage("Processo vinculado não foi localizado!");
                }
            }
        }

        protected void ShowMessage(string msg)
        {
            lbAviso.Text = msg;
            pnlAvisos.Visible = true;
        }

        protected void btnDesvincular_Click(object sender, EventArgs e)
        {
            var pro = new Processo();
            if (pro.Desvincular(_objProcesso.Codigo))
            {
                ShowMessage("Processo desvinculado com sucesso!");
                btnCancelar_Click(null, null);
            }
            else
                ShowMessage("Ocorreu um erro na desvinculação do processo!");
        }

        protected void ckbCopiar_CheckedChanged(object sender, EventArgs e)
        {

        }

    }
}