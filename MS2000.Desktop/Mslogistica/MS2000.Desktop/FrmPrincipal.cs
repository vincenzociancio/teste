using System;
using System.Windows.Forms;
using MS2000.Desktop.Menu.Cadastros;
using System.Data.SqlClient;
using System.Data;
using MS2000.Desktop.Classes;
using MS2000.Desktop.Menu.ISO;
using MS2000.Desktop.Menu.Sistema;
using MS2000.Desktop.Menu.Financeiro;
using MS2000.Desktop.Menu.Financeiro.Cadastros;
using MS2000.Desktop.Menu.Financeiro.Faturamento;
using System.IO;
using MS2000.Desktop.Menu.Processos;
using MS2000.Desktop.Menu.Processos.Formularios;
using MS2000.Desktop.Menu.Ferramenta;
using MS2000.Desktop.Menu.Consultas;
using MS2000.Desktop.Componentes;
using System.Diagnostics;
using MS2000.Desktop.Menu.Controle;
using MS2000.Desktop.Menu.Ferramenta.Repetro;
using MS2000.Desktop.Menu.ISO.PesquisaDeSatisfacao;
using System.Text;
using System.Threading;
using MS2000.Desktop.Menu.RH;
using MS2000.Desktop.Menu.Financeiro.Contas_Correntes;
using MS2000.Desktop.Menu.Processos.Fatura;

namespace MS2000.Desktop
{
    public partial class FrmPrincipal : Form
    {
        static public int PK_UsuarioLogado { get; private set; }
        static public string UsuarioNomeCompleto { get; private set; }
        static public string UsuarioLogado { get; private set; }
        static public string FK_SetorUsuario { get; private set; }
        static public bool Distribuidor { get; private set; }
        static public bool AbreProcesso { get; private set; }
        static public bool Digitalizador { get; private set; }
        static public bool Registra_DI { get; private set; }
        static public bool Audita_DI { get; private set; }
        static public bool Scanner { get; private set; }
        static public bool Cadastrador { get; private set; }
        static public bool Analista_Documental { get; private set; }
        static public bool Montador { get; private set; }
        static public bool Faturista { get; private set; }
        static public bool Arquivista { get; private set; }
        static public bool Documentador { get; private set; }
        static public int Hierarquia { get; private set; }
        static public bool editaClienteInativo { get; private set; }
        static public bool editaProcessoFechado { get; private set; }
        static public string Email { get; private set; }

        const string pathTxtTabelasSiscomex = @"\\msapp01\Sistemas\MS2000.Desktop.Producao\convertec\";

        FrmApresentacao frmApresentacao;
        System.Timers.Timer checkUpdateTimer = new System.Timers.Timer();

        public FrmPrincipal()
        {
            InitializeComponent();

            menuStripMain.RenderMode = ToolStripRenderMode.Professional;
            menuStripMain.Renderer = new ToolStripProfessionalRenderer(new CoresStrip());
            statusStrip.RenderMode = ToolStripRenderMode.Professional;
            statusStrip.Renderer = new ToolStripProfessionalRenderer(new CoresStrip());
            toolStripStatusNow.Text = String.Format("{0:D}", DateTime.Now);

            //Time que verificar atualização do sistema
            checkUpdateTimer.Elapsed += new System.Timers.ElapsedEventHandler(OnTimerEvent);
            checkUpdateTimer.Interval = 10000;
            checkUpdateTimer.Enabled = true;
            checkUpdateTimer.AutoReset = true;
            checkUpdateTimer.SynchronizingObject = this;
            //

        }

        private void DeletarIncluirTab_NCM()
        {
            //Para teste
            //throw new Exception("teste");
            string line;
            string[] separators = { "!;!" };
            TabNCM tab_ncm = new TabNCM();
            char[] arr = new char[] { '\t', '-', ' ' };

            if (tab_ncm.DeleteAll())
            {
                using (var file = new StreamReader(pathTxtTabelasSiscomex + "TEC.txt", Encoding.Default))
                {
                    while ((line = file.ReadLine()) != null)
                    {
                        string[] words = line.Split(separators, StringSplitOptions.None);
                        if (words[1].ToString() == "001")
                        {
                            //Console.WriteLine(words[0]);
                            //Console.WriteLine(words[4]);
                            //Console.WriteLine("II - {0}", words[5]);
                            //Console.WriteLine("IPI - {0}", words[6]);
                            //Console.WriteLine("PIS - {0}", words[7]);
                            //Console.WriteLine("COFINS - {0}", words[8]);
                            //Console.WriteLine("ICMS - {0}", words[13]);
                            //Console.WriteLine("UNID - {0}", words[14]);
                            //Console.WriteLine("TRATADM - {0}", words[17]);                 

                            tab_ncm.Incluir(
                                new TabNCM
                                {
                                    Codigo = words[0].ToString(),
                                    Descricao = words[4].ToUpper().TrimStart(arr),
                                    AliquotaII = words[5],
                                    AliquotaIPI = words[6].ToString(),
                                    AliquotaPisADVAL = words[7].PadLeft(3, '0').PadRight(2, '0'),
                                    AliquotaCofinsADVAL = words[8].PadLeft(3, '0').PadRight(2, '0'),
                                    // UnidadeMedida = string.IsNullOrEmpty(words[14].ToString()) ? "10" : Convert.ToInt16(words[14]).ToString()
                                    UnidadeMedida = Convert.ToInt16(words[14]).ToString()
                                });
                            Application.DoEvents();
                        }
                    }
                }
            }
        }

        private void DeletarIncluir_TAB_CONVERSAO_CAMBIO()
        {
            //Para teste
            //throw new Exception("teste");
            string line;
            string[] separators = { "!;!" };
            TabConversaoCambio tab_conversao_cambio = new TabConversaoCambio();

            if (tab_conversao_cambio.DeleteAll())
            {
                using (var file = new StreamReader(pathTxtTabelasSiscomex + "MOEDA.txt", Encoding.Default))
                {
                    while ((line = file.ReadLine()) != null)
                    {
                        string[] words = line.Split(separators, StringSplitOptions.None);
                        if (!string.IsNullOrEmpty(words[0]))
                        {
                            tab_conversao_cambio.Incluir(
                                    new TabConversaoCambio
                                    {
                                        Codigo = words[0].ToString(),
                                        Descricao = words[1].ToUpper(),
                                        VigenciaInicioTaxa = words[4],
                                        VigenciaFimTaxa = words[5],
                                        TaxaConversao = words[6].Substring(0, 9),
                                    });
                        }
                        Application.DoEvents();
                    }
                }
            }
        }

        private void DeletarIncluir_TAB_MOEDA()
        {
            //Para teste
            //throw new Exception("Erro: teste teste teste");
            string line;
            string[] separators = { "!;!" };
            TabMoeda tab_moeda = new TabMoeda();

            if (tab_moeda.DeleteAll())
            {
                using (var file = new StreamReader(pathTxtTabelasSiscomex + "MOEDA.txt", Encoding.Default))
                {
                    while ((line = file.ReadLine()) != null)
                    {
                        string[] words = line.Split(separators, StringSplitOptions.None);
                        if (!string.IsNullOrEmpty(words[0]))
                        {
                            tab_moeda.Incluir(
                                    new TabMoeda
                                    {
                                        Codigo = words[0].ToString(),
                                        Descricao = words[1].ToUpper()
                                    });
                        }
                        Application.DoEvents();
                    }
                }
            }
        }

        private void DeparaTabelaNCMAliquotaCOFINS()
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "UPDATE TAB_NCM SET ALIQUOTA_COFINS_ADVAL = D.ALIQUOTA_COFINS_ADVAL " +
                    "FROM TAB_NCM INNER JOIN TAB_NCM_ALIQUOTA_DIFERENTE D ON TAB_NCM.CODIGO = D.CODIGO ";
                //"WHERE LOWER(TAB_NCM.ALIQUOTA_COFINS_ADVAL) = 'reduz' ";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.ExecuteReader();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void DeparaTabelaNCMAliquotaPIS()
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "UPDATE TAB_NCM SET ALIQUOTA_PIS_ADVAL = D.ALIQUOTA_PIS_ADVAL " +
                    "FROM TAB_NCM INNER JOIN TAB_NCM_ALIQUOTA_DIFERENTE D ON TAB_NCM.CODIGO = D.CODIGO ";
                //"WHERE LOWER(TAB_NCM.ALIQUOTA_PIS_ADVAL) = 'reduz' ";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.ExecuteReader();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void VerificarAtualizarTabelasSiscomex()
        {
            SiscomexAtualizacaoTabelas objSiscomex = null;
            FrmAvisoAtualizacaoTabelas frmAvisoAtualizacao = null;

            try
            {
                //Testando data de modificação de 1 arquivo                 
                DateTime modification = File.GetLastWriteTime(pathTxtTabelasSiscomex + "MOEDA.txt").Date;
                //----

                objSiscomex = new SiscomexAtualizacaoTabelas();
                var tabelaSiscomex = objSiscomex.getAllTabela();
                if (tabelaSiscomex[0].Data_Atualizacao < modification/*DateTime.Now.Date*/)
                {
                    frmAvisoAtualizacao = new FrmAvisoAtualizacaoTabelas();
                    frmAvisoAtualizacao.Show();
                    Application.DoEvents();
                    frmAvisoAtualizacao.lbMensagem.Items.Add(string.Format("{0} - {1}", DateTime.Now, "Processo de atualização iniciado."));
                    objSiscomex.updateData(DateTime.Now.Date);
                    foreach (var registro in tabelaSiscomex)
                    {
                        if (registro.Tabela == "TAB_NCM")
                        {
                            frmAvisoAtualizacao.lbMensagem.Items.Add(string.Format("{0} - {1}", DateTime.Now, "Atualizando TAB_NCM."));
                            DeletarIncluirTab_NCM();
                        }
                        else
                            if (registro.Tabela == "TAB_CONVERSAO_CAMBIO")
                            {
                                frmAvisoAtualizacao.lbMensagem.Items.Add(string.Format("{0} - {1}", DateTime.Now, "Atualizando TAB_CONVERSAO_CAMBIO."));
                                DeletarIncluir_TAB_CONVERSAO_CAMBIO();
                            }
                            else
                                if (registro.Tabela == "TAB_MOEDA")
                                {
                                    frmAvisoAtualizacao.lbMensagem.Items.Add(string.Format("{0} - {1}", DateTime.Now, "Atualizando TAB_MOEDA."));
                                    DeletarIncluir_TAB_MOEDA();
                                }
                        Application.DoEvents();
                        Thread.Sleep(1000);
                    }
                    frmAvisoAtualizacao.lbMensagem.Items.Add(string.Format("{0} - {1}", DateTime.Now, "Realizando ''DE-PARA'' TAB_NCM_ALIQUOTA_COFINS."));
                    DeparaTabelaNCMAliquotaCOFINS();
                    DeparaTabelaNCMAliquotaPIS();
                    Application.DoEvents();
                    Thread.Sleep(1000);
                    frmAvisoAtualizacao.lbMensagem.Items.Add(string.Format("{0} - {1}", DateTime.Now, "As atualizações foram realizadas com sucesso!"));
                    Application.DoEvents();
                    Thread.Sleep(1000);
                    frmAvisoAtualizacao.Hide();
                    frmAvisoAtualizacao.Dispose();
                }
            }
            catch (Exception ex)
            {
                objSiscomex.updateData(DateTime.Now.Date.Subtract(TimeSpan.FromDays(10)));
                frmAvisoAtualizacao.lbMensagem.Items.Add(string.Format("{0} - {1}", DateTime.Now, ex.Message));
                frmAvisoAtualizacao.lbMensagem.Items.Add(string.Format("{0} - {1}", DateTime.Now, "Ocorreu um erro. Entre em contato com MS Sistemas."));
                //frmAvisoAtualizacao.btnFechar.Visible = true;                
                Application.DoEvents();
                Thread.Sleep(10000);
                frmAvisoAtualizacao.Hide();
                frmAvisoAtualizacao.Dispose();
            }
        }

        private DataTable getDadosMenuUsuario(int pk_usuario)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "SELECT FK_Usuario, Menu, Acessa FROM UsuariosMenus WHERE FK_Usuario = @FK_Usuario";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_Usuario", pk_usuario);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        DataTable table = new DataTable();
                        table.Load(reader);
                        return table;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return null;
            }
        }

        private void setAutorizacaoMenuSistema(int pk_usuario)
        {
            if (pk_usuario > 0)
            {
                DataTable dtDadosMenuUsuario = getDadosMenuUsuario(pk_usuario);
                foreach (ToolStripItem tsi in menuStripMain.Items)
                {
                    if (tsi is ToolStripMenuItem)
                    {
                        DataRow[] result = dtDadosMenuUsuario.Select(string.Format("Menu ='{0}'", tsi.Tag.ToString()));
                        tsi.Enabled = false;
                        foreach (DataRow row in result)
                        {
                            tsi.Enabled = Convert.ToBoolean(row["Acessa"]);
                            if (tsi.Enabled)
                            {
                                foreach (ToolStripItem subItem in ((tsi as ToolStripMenuItem).DropDownItems))
                                {
                                    if (subItem is ToolStripMenuItem)
                                    {
                                        DataRow[] resultSubItem = dtDadosMenuUsuario.Select(string.Format("Menu ='{0}'", subItem.Tag.ToString()));
                                        subItem.Enabled = false;
                                        foreach (DataRow sub in resultSubItem)
                                        {
                                            subItem.Enabled = Convert.ToBoolean(sub["Acessa"]);

                                            //novo nivel 3
                                            try
                                            {
                                                if (subItem.Enabled)
                                                {
                                                    foreach (ToolStripItem subItem3 in ((subItem as ToolStripMenuItem).DropDownItems))
                                                    {
                                                        if (subItem3.Tag != null)
                                                        {
                                                            if (subItem3 is ToolStripMenuItem)
                                                            {
                                                                DataRow[] resultSubItem3 = dtDadosMenuUsuario.Select(string.Format("Menu ='{0}'", subItem3.Tag.ToString()));
                                                                subItem3.Enabled = false;
                                                                foreach (DataRow sub3 in resultSubItem3)
                                                                {
                                                                    subItem3.Enabled = Convert.ToBoolean(sub3["Acessa"]);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            catch (Exception e)
                                            {
                                                MessageBox.Show(e.Message.ToString() + "-" + subItem.Tag.ToString());
                                            }
                                            //---
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            else
            {
                Application.Exit();
            }
        }

        private void FrmPrincipal_Load(object sender, EventArgs e)
        {
            //Verifica de cara se o stop está ativo
            string _path = string.Format(@"{0}\MS2000.Desktop.Stop", Environment.CurrentDirectory);
            if (File.Exists(_path))
            {
                checkUpdateTimer.Enabled = false;

                //Esouza 24/11/2015
                //Pega o nome do processo deste programa
                string nomeProcesso = Process.GetCurrentProcess().ProcessName;
                //Busca os processos com este nome que estão em execução
                Process[] processos = Process.GetProcessesByName(nomeProcesso);
                foreach (var processo in processos)
                {
                    processo.Kill();
                    processo.WaitForExit();
                }
                //Esouza 24/11/2015
                //Application.Exit();
            }
            //---
            foreach (Control control in this.Controls)
            {
                MdiClient client = control as MdiClient;
                if (!(client == null))
                {
                    client.BackColor = System.Drawing.Color.White;
                    break;
                }
            }

            // Chamando formulário Acesso
            using (FrmAcesso frmAcesso = new FrmAcesso())
            {
                if (frmAcesso.ShowDialog() == DialogResult.OK)
                {
                    PK_UsuarioLogado = frmAcesso.PK_Usuario;
                    UsuarioNomeCompleto = frmAcesso.NomeCompleto;
                    UsuarioLogado = frmAcesso.Usuario;
                    FK_SetorUsuario = frmAcesso.FK_Setor;
                    Distribuidor = frmAcesso.Distribuidor;
                    AbreProcesso = frmAcesso.AbreProcesso;
                    Arquivista = frmAcesso.Arquivista;
                    Hierarquia = frmAcesso.Hierarquia;
                    Documentador = frmAcesso.Documentador;
                    Scanner = frmAcesso.Scanner;
                    Montador = frmAcesso.Montador;
                    Faturista = frmAcesso.Faturista;
                    Analista_Documental = frmAcesso.Analista_Documental;
                    editaClienteInativo = frmAcesso.editaClienteInativo;
                    editaProcessoFechado = frmAcesso.editaProcessoFechado;
                    Digitalizador = frmAcesso.Digitalizador;
                    Registra_DI = frmAcesso.Registra_DI;
                    Audita_DI = frmAcesso.Audita_DI;
                    Email = frmAcesso.Email;
                    Cadastrador = frmAcesso.Cadastrador;
                    toolStripStatusUser.Text = string.Format("Usuário: {0}", UsuarioNomeCompleto);
                    frmAcesso.Close();
                }
                else
                {
                    Application.Exit();
                    return;
                }
            }
            frmApresentacao = new FrmApresentacao();
            frmApresentacao.MdiParent = this;
            frmApresentacao.Show();

            setAutorizacaoMenuSistema(PK_UsuarioLogado);

            //Autrização botões rápidsos
            btnProdutos.Enabled = produtosToolStripMenuItem.Enabled;
            btnAberturaProcesso.Enabled = aberturaToolStripMenuItem.Enabled;
            //**************************

            LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.None, Convert.ToInt32(this.Tag), "Acessou o sistema.");

#if DEBUG
                this.Text += " (***DESENVOLVIMENTO***)";
                Thread thread = new Thread(new ThreadStart(VerificarAtualizarTabelasSiscomex));
                thread.Start();                
#else
            Thread thread = new Thread(new ThreadStart(VerificarAtualizarTabelasSiscomex));
            thread.Start();
#endif
        }

        private void CheckMdiChildren(Form form)
        {
            foreach (Form frm in this.MdiChildren)
            {
                if (frm.GetType() == form.GetType())
                {
                    frm.Focus();
                    if (frm.WindowState == FormWindowState.Minimized)
                    {
                        //frm.wi = FormStartPosition.CenterParent;
                        frm.WindowState = FormWindowState.Normal;
                    }
                    return;
                }
            }
            form.MdiParent = this;
            Application.DoEvents();
            form.Show();
        }

        public static DialogResult ShowModalMdiChildren(Form form)
        {
            form.ShowInTaskbar = false;
            form.StartPosition = FormStartPosition.CenterParent;
            return form.ShowDialog(FrmPrincipal.ActiveForm);
        }

        private void despachantesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmDespachante = new FrmDespachante();
            CheckMdiChildren(frmDespachante);
        }

        private void cAEToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmcae = new FrmCAE();
            CheckMdiChildren(frmcae);
        }

        private void armazensToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmArmazens = new FrmArmazens();
            CheckMdiChildren(frmArmazens);
            //frmArmazens.MdiParent = this;
            //frmArmazens.Show();
        }

        private void tiposDeCargasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmTipoDeCargas = new FrmTipoDeCargas();
            CheckMdiChildren(frmTipoDeCargas);
            //frmTipoDeCargas.MdiParent = this;
            //frmTipoDeCargas.Show();
        }

        private void unidadeDeMedidaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmUnidadeDeMedidas = new FrmUnidadeDeMedidas();
            CheckMdiChildren(frmUnidadeDeMedidas);
            //frmUnidadeDeMedidas.MdiParent = this;
            //frmUnidadeDeMedidas.Show();
        }

        private void feriadosGrevesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmGrevesEFeriados = new FrmGrevesEFeriados();
            CheckMdiChildren(frmGrevesEFeriados);
            //frmGrevesEFeriados.MdiParent = this;
            //frmGrevesEFeriados.Show();
        }

        private void fundamentaçãoRATToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmFundamentacaoRAT = new FrmFundamentacaoRAT();
            CheckMdiChildren(frmFundamentacaoRAT);
            //frmFundamentacaoRAT.MdiParent = this;
            //frmFundamentacaoRAT.Show();
        }

        private void exportadoresToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmExportadores = new FrmExportadores();
            CheckMdiChildren(frmExportadores);
            //frmExportadores.MdiParent = this;
            //frmExportadores.Show();
        }

        private void observaçõesEspecíficasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //Fora de uso - Tela de RCR 
            //var frmObservacaoEspecifica = new FrmObservacaoEspecifica();
            //CheckMdiChildren(frmObservacaoEspecifica);
            //frmObservacaoEspecifica.MdiParent = this;
            //frmObservacaoEspecifica.Show();
        }

        private void fabricantesProdutoresToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmFabricantesEProdutores = new FrmFabricantesEProdutores();
            CheckMdiChildren(frmFabricantesEProdutores);
            //frmFabricantesEProdutores.MdiParent = this;
            //frmFabricantesEProdutores.Show();
        }

        private void transportadoresToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmTransportadores = new FrmTransportadores();
            CheckMdiChildren(frmTransportadores);
            //frmTransportadores.MdiParent = this;
            //frmTransportadores.Show();
        }

        private void fiadoresToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmFiadores = new FrmFiadores();
            CheckMdiChildren(frmFiadores);
            //frmFiadores.MdiParent = this;
            //frmFiadores.Show();
        }

        private void tratamentoTributárioICMSToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmTratamentoTributarioICMS = new FrmTratamentoTributarioICMS();
            CheckMdiChildren(frmTratamentoTributarioICMS);
            //frmTratamentoTributarioICMS.MdiParent = this;
            //frmTratamentoTributarioICMS.Show();
        }

        private void atosLegaisToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmAtosLegais = new FrmAtosLegais();
            CheckMdiChildren(frmAtosLegais);
            //frmAtosLegais.MdiParent = this;
            //frmAtosLegais.Show();
        }

        private void fundamentoLegalICMSToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmFundamentoLegalICMS = new FrmFundamentoLegalICMS();
            CheckMdiChildren(frmFundamentoLegalICMS);
            //frmFundamentoLegalICMS.MdiParent = this;
            //frmFundamentoLegalICMS.Show();
        }

        private void plataformasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmPlataformas = new FrmPlataformas();
            CheckMdiChildren(frmPlataformas);
            //frmPlataformas.MdiParent = this;
            //frmPlataformas.Show();
        }

        private void produtosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmProdutos = new FrmProdutos();
            CheckMdiChildren(frmProdutos);
            //frmProdutos.MdiParent = this;
            //frmProdutos.Show();
        }

        private void tiposDeLocaisDeInventarioToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmTiposDeLocaisDeInventario = new FrmTipoLocaisInventario();
            CheckMdiChildren(frmTiposDeLocaisDeInventario);
            //frmTiposDeLocaisDeInventario.MdiParent = this;
            //frmTiposDeLocaisDeInventario.Show();
        }

        private void importadoresToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmImportadores = new FrmImportadores();
            CheckMdiChildren(frmImportadores);
            //frmImportadores.MdiParent = this;
            //frmImportadores.Show();
        }

        private void eventosObservaçõesFollowUpToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmEventosDeFollowUp = new FrmEventosDeFollowUp();
            CheckMdiChildren(frmEventosDeFollowUp);
            //frmEventosDeFollowUp.MdiParent = this;
            //frmEventosDeFollowUp.Show();
        }

        private void contratosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmContratosAdmissaoTemporaria = new FrmContratosAdmissaoTemporaria();
            CheckMdiChildren(frmContratosAdmissaoTemporaria);
            //frmContratosAdmissaoTemporaria.MdiParent = this;
            //frmContratosAdmissaoTemporaria.Show();
        }

        private void sairToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void FrmPrincipal_SizeChanged(object sender, EventArgs e)
        {
            if (frmApresentacao != null)
            {
                frmApresentacao.Width = this.Width - 130;
                frmApresentacao.Height = this.Height - 200;
            }
        }

        //private void button1_Click(object sender, EventArgs e)
        //{
        //    //XmlTextReader reader = new XmlTextReader("C:\\Users\\leonardo.alabarce\\Desktop\\1501012659.xml");

        ////    DataSet ds = new DataSet();

        ////    ds.ReadXml(@"C:\Users\leonardo.alabarce\Desktop\1501012659.xml");


        //    //            DataTable dataview = new DataTable();
        //    // dataview = ds.Tables["armazem"];



        //    //while (reader.Read())
        //    //{
        //    //    if (reader.NodeType == XmlNodeType.Element && reader.Name == "numeroDI")
        //    //    {
        //    //        //textBox1.Text = reader.Value;
        //    //    }
        //    //}
        //    //OleDbConnection con = DatabaseAccessConnection.Instance.Conexao;
        //    //OleDbCommand comando = new OleDbCommand("select * from DECLARAÇÃO_IMPORTAÇÃO where NR_DECLARACAO_IMP = @DI ", con);
        //    //comando.Parameters.AddWithValue("@DI", "1020565375");
        //    //OleDbDataReader dados = comando.ExecuteReader();
        //    //while (dados.Read())
        //    //{
        //    //    MessageBox.Show(dados[1].ToString());
        //    //}           
        //}

        private void btnProdutos_Click(object sender, EventArgs e)
        {
            produtosToolStripMenuItem_Click(null, null);
        }

        private void FrmPrincipal_FormClosed(object sender, FormClosedEventArgs e)
        {
            if (FrmPrincipal.PK_UsuarioLogado != null)
            {
                LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.None, Convert.ToInt32(this.Tag), "Encerrou o sistema.");
            }
        }

        private void btnRamais_Click(object sender, EventArgs e)
        {
            ramaisToolStripMenuItem_Click(null, null);
        }

        private void controleHierárquicoToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void ramaisToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmRamais = new FrmRamais();
            CheckMdiChildren(frmRamais);
            //frmRamais.MdiParent = this;
            //frmRamais.Show();
        }

        private void lançamentoDeHoraExtraToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmHoraExtra = new FrmLancamentoHoraExtra();
            CheckMdiChildren(frmHoraExtra);
            //frmHoraExtra.MdiParent = this;
            //frmHoraExtra.Show();
        }

        private void turnoverToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmRotatividade = new FrmLancamentoRotatividade();
            CheckMdiChildren(frmRotatividade);
            //frmRotatividade.MdiParent = this;
            //frmRotatividade.Show();
        }

        private void consumoDeEnergiaToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void adesãoLaboralToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmAdesaoLaboral = new FrmAdesaoLaboral();
            CheckMdiChildren(frmAdesaoLaboral);
            //frmAdesaoLaboral.MdiParent = this;
            //frmAdesaoLaboral.Show();
        }

        private void lançamentoDeAcidentesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmLancamentoDeAcidentes = new FrmLancamentoFrequenciaAcidentes();
            CheckMdiChildren(frmLancamentoDeAcidentes);
            //frmLancamentoDeAcidentes.MdiParent = this;
            //frmLancamentoDeAcidentes.Show();
        }

        private void usuáriosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmUsuarios = new FrmUsuarios();
            CheckMdiChildren(frmUsuarios);
            //frmUsuarios.MdiParent = this;
            //frmUsuarios.Show();
        }

        private void registroDeEmpregadosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmRegistroDeEmpregados = new FrmRegistroDeEmpregados();
            CheckMdiChildren(frmRegistroDeEmpregados);
        }

        private void tiposDeCréditosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmTiposCreditos = new FrmTiposCreditos();
            CheckMdiChildren(frmTiposCreditos);
        }

        private void saláriosMínimosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmSalariosMinimos = new FrmSalariosMinimos();
            CheckMdiChildren(frmSalariosMinimos);
        }

        private void planoDeContasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmPlanoDeContas = new FrmPlanoDeContas();
            CheckMdiChildren(frmPlanoDeContas);
        }

        private void HabilitaçãoRepetroToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmContratosDeHabilitaçãoAoRepetro = new FrmHabilitacaoRepetro();
            CheckMdiChildren(frmContratosDeHabilitaçãoAoRepetro);
        }

        private void associaçãoNumeráriosXDocumentosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmAssociacaoNumerariosDocumentos = new FrmAssociacaoNumerariosDocumentos();
            CheckMdiChildren(frmAssociacaoNumerariosDocumentos);
        }

        //Eduardo Souza - 16/05/2014
        //private void tmVerificaAtualizacao_Tick(object sender, EventArgs e)
        //{
        //    tmVerificaAtualizacao.Enabled = false;
        //    string _path = string.Format(@"{0}\MS2000.Desktop.Stop", Environment.CurrentDirectory);
        //    if (File.Exists(_path))
        //    {
        //        tmVerificaAtualizacao.Enabled = false;                
        //        FrmSuporte sup = new FrmSuporte();    
        //        sup.Show();
        //    }
        //    else
        //    {
        //        tmVerificaAtualizacao.Enabled = true;
        //    }            
        //}

        private void OnTimerEvent(object sender, EventArgs e)
        {
            checkUpdateTimer.Enabled = false;
            string _path = string.Format(@"{0}\MS2000.Desktop.Stop", Environment.CurrentDirectory);
            if (File.Exists(_path))
            {
                FrmSuporte sup = new FrmSuporte();
                sup.Show();
            }
            else
            {
                checkUpdateTimer.Enabled = true;
            }
        }

        private void controleDeTributosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmControleTributos = new FrmControleTributos();
            CheckMdiChildren(frmControleTributos);
        }

        private void tiposDeNumeráriosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmTiposNumerarios = new FrmTiposNumerarios();
            CheckMdiChildren(frmTiposNumerarios);
        }

        private void contaCorrenteParaRegistroMSToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmFornecedores = new FrmFornecedores();
            CheckMdiChildren(FrmFornecedores);
        }

        private void solicitaçãoIN1361ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmRATSolicitacao = new FrmRATSolicitacao();
            CheckMdiChildren(FrmRATSolicitacao);
        }

        private void contratoDeFornecedoresToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmContratoFornecedores = new FrmContratoFornecedores();
            CheckMdiChildren(FrmContratoFornecedores);
        }

        private void agrupamentoDeClientesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmAgrupamentoImportadores = new FrmAgrupamentoImportadores();
            CheckMdiChildren(FrmAgrupamentoImportadores);
        }

        private void cartaDoGarantidorToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void tiposDeCustosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmTiposCustos = new FrmTiposCustos();
            CheckMdiChildren(FrmTiposCustos);
        }

        private void aberturaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmAberturaDeProcessos = new FrmAberturaDeProcessos();
            CheckMdiChildren(FrmAberturaDeProcessos);
        }

        private void btnAberturaProcesso_Click(object sender, EventArgs e)
        {
            aberturaToolStripMenuItem_Click(null, null);
        }

        private void solicitaçãoRepetroToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmSolicitacaoRepetro = new FrmRATRepetro();
            CheckMdiChildren(FrmSolicitacaoRepetro);
        }

        private void btnLocalizaProcesso_Click(object sender, EventArgs e)
        {
            var FrmLocalizarProcesso = new FrmLocalizarProcesso();
            CheckMdiChildren(FrmLocalizarProcesso);
        }

        private void parâmetrosDeContabilizaçãoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmParametrosContabilizacao = new FrmParametrosContabilizacao();
            CheckMdiChildren(FrmParametrosContabilizacao);
        }

        private void voucherTransoceanToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmVoucherTransocean = new FrmVoucher();
            CheckMdiChildren(FrmVoucherTransocean);
        }

        private void cadastroToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmCadastroFormulario = new FrmCadastroFormulario();
            CheckMdiChildren(FrmCadastroFormulario);
        }

        private void downloadToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmDownloadFormulario = new FrmDownloadFormulario();
            CheckMdiChildren(FrmDownloadFormulario);
        }

        private void transcoeanToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmGraficosGerenciais = new FrmGraficosGerenciais();
            CheckMdiChildren(FrmGraficosGerenciais);
        }

        private void prorrogaçãoRepetroToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmRATRepetroProrrogacao = new FrmRATRepetroProrrogacao();
            CheckMdiChildren(FrmRATRepetroProrrogacao);
        }

        private void mergerDocumentosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmMergerDocumentos = new FrmMergerDocumentos();
            CheckMdiChildren(FrmMergerDocumentos);
        }

        private void extraçãoDeDocumentosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmExtracaoDocumentos = new FrmExtracaoDocumentos();
            CheckMdiChildren(FrmExtracaoDocumentos);
        }

        private void taxasDeConversãoSISCOMEXToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmTaxaConversao = new FrmTaxaConversao();
            CheckMdiChildren(FrmTaxaConversao);
        }

        private void movimentaçãoDePastasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmMovimentacaoPasta = new FrmMovimentacaoPasta();
            CheckMdiChildren(FrmMovimentacaoPasta);
        }

        private void impostosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmGraficoDeImpostos = new FrmGraficoDeImpostos();
            CheckMdiChildren(FrmGraficoDeImpostos);
        }

        private void aberturaDeNãoConformidadeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmAberturaNaoConformidade = new FrmAberturaNaoConformidade();
            CheckMdiChildren(FrmAberturaNaoConformidade);
        }

        private void visualizarIndicadoresToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Process.Start("http://msapp01/mslogistica/web/monitoramento/aspx/tv_indicadores/frmIndicadorAbertura.aspx");
        }

        private void financeiroToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            var form = new FrmVisualizaNorma();
            form.tag = financeiroToolStripMenuItem1.Tag.ToString();
            form.titulo = "Visualizar Procedimentos do Financeiro";
            form.Setor = 10; //FINANCEIRO
            CheckMdiChildren(form);
        }

        private void rHToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            var form = new FrmVisualizaNorma();
            form.tag = rHToolStripMenuItem1.Tag.ToString();
            form.titulo = "Visualizar Procedimentos do RH";
            form.Setor = 9; //RH
            CheckMdiChildren(form);
        }

        private void tIToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var form = new FrmVisualizaNorma();
            form.tag = tIToolStripMenuItem.Tag.ToString();
            form.titulo = "Visualizar Procedimentos do TI";
            form.Setor = 13; //TI
            CheckMdiChildren(form);

        }

        private void sGIToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var form = new FrmVisualizaNorma();
            form.tag = sGIToolStripMenuItem.Tag.ToString();
            form.titulo = "Visualizar Procedimentos do SGI";
            form.Setor = 12; //SGI
            CheckMdiChildren(form);

        }

        private void sMSToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var form = new FrmVisualizaNorma();
            form.tag = sMSToolStripMenuItem.Tag.ToString();
            form.titulo = "Visualizar Procedimentos do SMS";
            form.Setor = 14; //SMS
            CheckMdiChildren(form);

        }

        private void jurídicoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var form = new FrmVisualizaNorma();
            form.tag = jurídicoToolStripMenuItem.Tag.ToString();
            form.titulo = "Visualizar Procedimentos do Jurídico";
            form.Setor = 16; //JURÍDICO
            CheckMdiChildren(form);

        }

        private void importaçãoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var form = new FrmVisualizaNorma();
            form.tag = importaçãoToolStripMenuItem.Tag.ToString();
            form.titulo = "Visualizar Procedimentos do Operacional - Importação";
            form.Setor = 8; //OPERACIONAL
            form.SubSetor = 1; //IMPORTAÇÃO
            CheckMdiChildren(form);
        }

        private void exportaçãoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var form = new FrmVisualizaNorma();
            form.tag = importaçãoToolStripMenuItem.Tag.ToString();
            form.titulo = "Visualizar Procedimentos do Operacional - EXPORTAÇÃO";
            form.Setor = 8; //OPERACIONAL
            form.SubSetor = 2; //EXPORTAÇÃO
            CheckMdiChildren(form);
        }

        private void documentalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var form = new FrmVisualizaNorma();
            form.tag = importaçãoToolStripMenuItem.Tag.ToString();
            form.titulo = "Visualizar Procedimentos do Operacional - DOCUMENTAL";
            form.Setor = 8; //OPERACIONAL
            form.SubSetor = 3; //DOCUMENTAL
            CheckMdiChildren(form);
        }

        private void controleDeCaixaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmControleCaixa = new FrmControleCaixa();
            CheckMdiChildren(FrmControleCaixa);
        }

        private void controleDeNãoConformidadeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmControleNaoConformidade = new FrmControleNaoConformidade();
            CheckMdiChildren(FrmControleNaoConformidade);
        }

        private void controleDeBackupEmFitaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmControleBackupFita = new FrmControleBackupFita();
            CheckMdiChildren(FrmControleBackupFita);
        }

        private void controleDeLicenciamentoDeSoftwareToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmControleLicenciamentoSoftware = new FrmControleLicenciamentoSoftware();
            CheckMdiChildren(FrmControleLicenciamentoSoftware);
        }

        private void processosVinculadosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmProcessoVinculado = new FrmProcessoVinculado();
            CheckMdiChildren(FrmProcessoVinculado);
        }

        private void gerenciamentoDeProcedimentoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmGerenciaNormaProcedimento = new FrmGerenciaNormaProcedimento();
            CheckMdiChildren(FrmGerenciaNormaProcedimento);
        }

        private void formuláriosToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            var FrmFormularioISO = new FrmFormularioISO();
            CheckMdiChildren(FrmFormularioISO);
        }

        private void tiposDeOrigemToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmTiposOrigem = new FrmTiposOrigem();
            CheckMdiChildren(FrmTiposOrigem);
        }

        private void controleDeBrindesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmControleBrinde = new FrmControleBrinde();
            CheckMdiChildren(FrmControleBrinde);
        }

        private void controelToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmControleSenhaUsuario = new FrmControleSenhaUsuario();
            CheckMdiChildren(FrmControleSenhaUsuario);
        }

        private void cadastroDeEquipamentoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmCadastroEquipamento = new FrmCadastroEquipamento();
            CheckMdiChildren(FrmCadastroEquipamento);
        }

        private void controleDeEquipamentoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmControleEquipamento = new FrmControleEquipamento();
            CheckMdiChildren(FrmControleEquipamento);
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void transferênciaDeBemToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmRepetroTransferenciaBem = new FrmRepetroTransferenciaBem();
            CheckMdiChildren(FrmRepetroTransferenciaBem);
        }

        private void inclusãoDeDIToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmRepetroInclusaoDI = new FrmRepetroInclusaoDI();
            CheckMdiChildren(FrmRepetroInclusaoDI);
        }

        private void controleDeAtaDeReuniãoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmControleAta = new FrmControleAta();
            CheckMdiChildren(FrmControleAta);
        }

        private void formuláioDeDesunitizaçãoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmFormularioDesunitizacao = new FrmFormularioDesunitizacao();
            CheckMdiChildren(FrmFormularioDesunitizacao);
        }

        private void controleTRToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmControleTR = new FrmControleTR();
            CheckMdiChildren(FrmControleTR);
        }

        private void controleBLToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmControleBL = new FrmControleBL();
            CheckMdiChildren(FrmControleBL);
        }

        private void exportaçãoSeadrillToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmExportaçãoSeadril = new FrmExportaçãoSeadril();
            CheckMdiChildren(FrmExportaçãoSeadril);
        }

        private void consultaEspecíficaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmControleRepetroEspecifica = new FrmControleRepetroEspecifica();
            CheckMdiChildren(FrmControleRepetroEspecifica);
        }

        private void consultaRTCToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmControleRepetroRTC = new FrmControleRepetroRTC();
            CheckMdiChildren(FrmControleRepetroRTC);
        }

        private void documentosVencidosAVencerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmDocumentosVencidosVencer = new FrmDocumentosVencidosVencer();
            CheckMdiChildren(FrmDocumentosVencidosVencer);
        }

        private void controleADEAndamentoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmControleADEAndamento = new FrmControleADEAndamento();
            CheckMdiChildren(frmControleADEAndamento);
        }

        private void termosDeResponsabilidadesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmTermosResponsabilidade = new FrmTermosResponsabilidade();
            CheckMdiChildren(FrmTermosResponsabilidade);
        }

        private void controleChegadaDeNaviosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmControleChegadaNavios = new FrmControleNaviosChegada();
            CheckMdiChildren(frmControleChegadaNavios);
        }

        private void kPIPerfomanceToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmKPIPerformances = new FrmKPIPerformances();
            CheckMdiChildren(frmKPIPerformances);
        }

        private void controleADEDeferidaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmControleADEDeferido = new FrmControleADEDeferido();
            CheckMdiChildren(frmControleADEDeferido);
        }

        private void controleDeTransmittalToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            var frmControleTransmittal = new FrmControleTransmittal();
            CheckMdiChildren(frmControleTransmittal);
        }

        private void requerimentoDeAgriculturaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmRequerimentoAgricultura = new FrmRequerimentoAgricultura();
            CheckMdiChildren(frmRequerimentoAgricultura);
        }

        private void uploadDeArquivosPDFToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmUploadArquivos = new FrmUploadArquivos();
            CheckMdiChildren(frmUploadArquivos);
        }

        private void armazenagensToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmParametrosArmazenagens = new FrmParametrosArmazenagens();
            CheckMdiChildren(frmParametrosArmazenagens);
        }

        private void cadastroDeDestinatárioToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmCadastroDestinatario = new FrmCadastroDestinatario();
            CheckMdiChildren(frmCadastroDestinatario);
        }

        private void conhecimentosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmConhecimentoTransportes = new FrmConhecimentoTransportes();
            CheckMdiChildren(frmConhecimentoTransportes);
        }

        private void documentosParametrizadosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmDocumentosParametrizados = new FrmDocumentoParametrizado();
            CheckMdiChildren(frmDocumentosParametrizados);
        }

        private void dTRToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmDTR = new FrmDTR();
            CheckMdiChildren(FrmDTR);
        }

        private void registroDeChegadaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmRegistroChegada = new FrmRegistroChegada();
            CheckMdiChildren(frmRegistroChegada);
        }

        private void acréscimoICMSATAéreoToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void documentosDeInstruçãoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmDocumentoInstrucao = new FrmDocumentoInstrucao();
            CheckMdiChildren(FrmDocumentoInstrucao);
        }

        private void nomenclaturaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmNVE = new FrmNVE();
            CheckMdiChildren(frmNVE);
        }

        private void informaçõesDaCargaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmInformacaoCarga = new FrmInformacaoCarga();
            CheckMdiChildren(frmInformacaoCarga);
        }

        private void FrmPrincipal_FormClosing(object sender, FormClosingEventArgs e)
        {
            Form frmAvisoAtualizacao = Application.OpenForms["FrmAvisoAtualizacaoTabelas"];
            if (((FrmAvisoAtualizacaoTabelas)frmAvisoAtualizacao) != null)
            {
                MessageBox.Show("Favor aguardar, atualização das tabelas do sistema em andamento...", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                e.Cancel = true;
            }
        }

        private void processosVinculadoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmProcessosVinculado = new FrmProcessosVinculado();
            CheckMdiChildren(frmProcessosVinculado);
        }

        private void AntidumpingToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmControleAntidumping = new FrmControleAntidumping();
            CheckMdiChildren(frmControleAntidumping);
        }

        private void distribuiçãoOperacionalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmDistribuicaoOperacional = new FrmDistribuicaoOperacional();
            CheckMdiChildren(frmDistribuicaoOperacional);
        }

        private void consumoDeEnergiaToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            var frmConsumoEnergia = new FrmConsumoEnergia();
            CheckMdiChildren(frmConsumoEnergia);
        }

        private void declaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmDE = new FrmDE();
            CheckMdiChildren(frmDE);
        }

        private void documentoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmDocumentoVinculado = new FrmDocumentoVinculado();
            CheckMdiChildren(frmDocumentoVinculado);
        }

        private void solicitaçãoToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            var frmControleHoraExtraSolicitacao = new FrmControleHoraExtraSolicitacao();
            CheckMdiChildren(frmControleHoraExtraSolicitacao);
        }

        private void PesquisaDeSatisfacaotoolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmPesquisaDeSatisfacao = new FrmPesquisaDeSatisfacao();
            CheckMdiChildren(frmPesquisaDeSatisfacao);
        }

        private void autorizaçãoToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            var frmControleHoraExtraAutorizacao = new FrmControleHoraExtraAutorizacao();
            CheckMdiChildren(frmControleHoraExtraAutorizacao);
        }

        private void registroDeLIToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmRegistroLI = new FrmRegistroLI();
            CheckMdiChildren(frmRegistroLI);
        }

        private void cadastroDeCélulasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmControleHierarquicoCelula = new FrmControleHierarquicoCelula();
            CheckMdiChildren(frmControleHierarquicoCelula);
        }

        private void controleHierárquicoToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            var frmControleHierarquico = new FrmControleHierarquico();
            CheckMdiChildren(frmControleHierarquico);
        }

        private void solicitaçãoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmSolicitacaoDeNumerario = new FrmSolicitacaoDeNumerario();
            CheckMdiChildren(frmSolicitacaoDeNumerario);
        }

        private void autorizaçãoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmAutorizacaoDeNumerario = new FrmAutorizacaoDeNumerario();
            CheckMdiChildren(frmAutorizacaoDeNumerario);
        }

        private void controleDeMediçãoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmControleMedicoes = new FrmControleMedicoes();
            CheckMdiChildren(frmControleMedicoes);
        }

        private void iN1361ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmContratoFiancaIN1361 = new FrmContratoFiancaIN1361();
            CheckMdiChildren(FrmContratoFiancaIN1361);
        }

        private void repetroToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            var FrmContratoFiancaRepetro = new FrmContratoFiancaRepetro();
            CheckMdiChildren(FrmContratoFiancaRepetro);
        }

        private void notasDeDébitosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmNotasDebitos = new FrmNotasDebitos();
            CheckMdiChildren(FrmNotasDebitos);
        }

        private void cadastroToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            var FrmCadastroContaCorrente = new FrmCadastroContaCorrente();
            CheckMdiChildren(FrmCadastroContaCorrente);
        }

        private void notasDeCréditosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmNotasCreditos = new FrmNotasCreditos();
            CheckMdiChildren(FrmNotasCreditos);
        }

        private void recibosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var FrmRecibos = new FrmRecibos();
            CheckMdiChildren(FrmRecibos);
        }

        private void notaFiscalNFeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmNFe = new FrmNFe();
            CheckMdiChildren(frmNFe);
        }

        private void desembaraçoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmDesembaraco = new FrmDesembaraco();
            CheckMdiChildren(frmDesembaraco);
        }

        private void controleDePastasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmControlePastas = new FrmControlePastas();
            CheckMdiChildren(frmControlePastas);
        }

        private void verificaAPENCToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmVerificaAPENC = new FrmVerificaAPENC();
            CheckMdiChildren(frmVerificaAPENC);
        }

        private void faturasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmFaturas = new FrmFaturas();
            CheckMdiChildren(frmFaturas);
        }

        private void controleDePlanilhasOceanRigToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmControlePlanilhaOceanRig = new FrmControlePlanilhaOceanRig();
            CheckMdiChildren(frmControlePlanilhaOceanRig);
        }

        private void controleDePlanilhasBemPrincipalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //
        }

        private void contraChequeOnlineToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Process.Start("http://187.94.63.252:3010/corpore.net");
        }

        private void xMLToExcelToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmXMLExcel = new FrmXMLExcel();
            CheckMdiChildren(frmXMLExcel);
        }

        private void despesasFollowsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmFollowsDespesas = new FrmFollowsDespesas();
            CheckMdiChildren(frmFollowsDespesas);
        }

        private void acréscimoATAéreoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmATAERO = new FrmATAERO();
            CheckMdiChildren(frmATAERO);
        }

        private void jurosEMultasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmICMSMultasJuros = new FrmICMSMultasJuros();
            CheckMdiChildren(frmICMSMultasJuros);
        }

        private void controleDeDocumentosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmControleValidadeDocumentos = new FrmControleValidadeDocumentos();
            CheckMdiChildren(frmControleValidadeDocumentos);
        }

        private void planoDeContasContábilToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmPlanoDeContasContabil = new FrmPlanoDeContasContabil();
            CheckMdiChildren(frmPlanoDeContasContabil);
        }        

        private void contasAPagasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmContasAPagar = new FrmContasAPagar();
            CheckMdiChildren(frmContasAPagar);
        }
    }
}
