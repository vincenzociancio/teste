using MS2000.Desktop.Classes;
using System;
using System.Windows.Forms;
using System.IO;
using System.Threading;
using System.Diagnostics;
using Microsoft.Reporting.WinForms;


namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmFormularioISO : MS2000.Desktop.Componentes.MSForm01
    {
        const int CODIGO_CAMINHO_FORMULARIO_ISO = 9;
        string _caminho_formulario_iso;
        string diretorioRaiz = @"C:\Temp\";

        public FrmFormularioISO()
        {
            InitializeComponent();
        }

        private bool existeArquivo(string nomeDiretorio, string nomeArquivo)
        {
            if (File.Exists(nomeDiretorio + nomeArquivo))
            {
                File.Delete(nomeDiretorio + nomeArquivo);
                return true;
            }

            return false;
        }

        private void criaRelatorioProcedimentosIniciais()
        {
            ReportViewer rv = new ReportViewer();

            rv.ProcessingMode = ProcessingMode.Local;

            rv.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.ISO.rptProcedimentosIniciais.rdlc";

            Warning[] warnings;
            string[] streamids;
            string mimeType;
            string encoding;
            string extension;

            try
            {
                byte[] bytes = rv.LocalReport.Render("Pdf", null, out mimeType, out encoding, out extension, out streamids, out warnings);

                FileStream fs = new FileStream(diretorioRaiz + "procedimentos_iniciais.pdf", FileMode.Create);
                fs.Write(bytes, 0, bytes.Length);
                fs.Close();
                Process.Start(diretorioRaiz + "procedimentos_iniciais.pdf");
            }

            catch (LocalProcessingException ex)
            {
                MessageBox.Show(ex.Message);
            }

            catch (IOException ioex)
            {
                MessageBox.Show("O arquivo já está aberto");
            }
        }

        private void criaRelatorioListaMateriais()
        {
            ReportViewer rv = new ReportViewer();

            rv.ProcessingMode = ProcessingMode.Local;

            rv.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.ISO.rptListaMateriais.rdlc";

            Warning[] warnings;
            string[] streamids;
            string mimeType;
            string encoding;
            string extension;

            try
            {
                byte[] bytes = rv.LocalReport.Render("Pdf", null, out mimeType, out encoding, out extension, out streamids, out warnings);

                FileStream fs = new FileStream(diretorioRaiz + "lista_de_materiais.pdf", FileMode.Create);
                fs.Write(bytes, 0, bytes.Length);
                fs.Close();
                Process.Start(diretorioRaiz + "lista_de_materiais.pdf");
            }

            catch (LocalProcessingException ex)
            {
                MessageBox.Show(ex.Message);
            }

            catch (IOException ioex)
            {
                MessageBox.Show("O arquivo já está aberto");
            }
        }

        private void criaRelatorioComunicacaoExterna()
        {
            ReportViewer rv = new ReportViewer();

            rv.ProcessingMode = ProcessingMode.Local;

            rv.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.ISO.rptComunicacaoExterna.rdlc";

            Warning[] warnings;
            string[] streamids;
            string mimeType;
            string encoding;
            string extension;

            try
            {
                byte[] bytes = rv.LocalReport.Render("Pdf", null, out mimeType, out encoding, out extension, out streamids, out warnings);

                FileStream fs = new FileStream(diretorioRaiz + "comunicacao_externa.pdf", FileMode.Create);
                fs.Write(bytes, 0, bytes.Length);
                fs.Close();
                Process.Start(diretorioRaiz + "comunicacao_externa.pdf");
            }

            catch (LocalProcessingException ex)
            {
                MessageBox.Show(ex.Message);
            }

            catch (IOException ioex)
            {
                MessageBox.Show("O arquivo já está aberto");
            }
        }

        private void criaRelatorioMedicaoMonitoramento()
        {
            ReportViewer rv = new ReportViewer();

            rv.ProcessingMode = ProcessingMode.Local;

            rv.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.ISO.rptMedicaoMonitoramento.rdlc";

            Warning[] warnings;
            string[] streamids;
            string mimeType;
            string encoding;
            string extension;

            try
            {
                byte[] bytes = rv.LocalReport.Render("Pdf", null, out mimeType, out encoding, out extension, out streamids, out warnings);

                FileStream fs = new FileStream(diretorioRaiz + "medicao_monitoramento.pdf", FileMode.Create);
                fs.Write(bytes, 0, bytes.Length);
                fs.Close();
                Process.Start(diretorioRaiz + "medicao_monitoramento.pdf");
            }

            catch (LocalProcessingException ex)
            {
                MessageBox.Show(ex.Message);
            }

            catch (IOException ioex)
            {
                MessageBox.Show("O arquivo já está aberto");
            }
        }
        private void criaRelatorioFichaAdmissao()
        {
            ReportViewer rv = new ReportViewer();

            rv.ProcessingMode = ProcessingMode.Local;

            rv.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.ISO.rptFichaAdmissao.rdlc";

            Warning[] warnings;
            string[] streamids;
            string mimeType;
            string encoding;
            string extension;

            try
            {
                byte[] bytes = rv.LocalReport.Render("Pdf", null, out mimeType, out encoding, out extension, out streamids, out warnings);

                FileStream fs = new FileStream(diretorioRaiz + "ficha_admissao.pdf", FileMode.Create);
                fs.Write(bytes, 0, bytes.Length);
                fs.Close();
                Process.Start(diretorioRaiz + "ficha_admissao.pdf");
            }

            catch (LocalProcessingException ex)
            {
                MessageBox.Show(ex.Message);
            }

            catch (IOException ioex)
            {
                MessageBox.Show("O arquivo já está aberto");
            }
        }

        private void criarExcel(String nomePlanilha)
        {
            String diretorioFonte = (new CaminhoDiretorioServidor().GetCaminhoById(CODIGO_CAMINHO_FORMULARIO_ISO)).Caminho;
            String arquivoFonte = Path.Combine(diretorioFonte, nomePlanilha);
            String arquivoDestino = Path.Combine(diretorioRaiz, nomePlanilha);

            existeArquivo(diretorioRaiz, nomePlanilha);
            File.Copy(arquivoFonte, arquivoDestino);
        }

        private void lstbxFormulario_DoubleClick(object sender, EventArgs e)
        {
            switch (lstbxFormulario.SelectedIndex)
            {
                case 0:
                    var frmveiculos = new FrmControleVeiculos();
                    FrmPrincipal.ShowModalMdiChildren(frmveiculos);
                    break;
                case 1:
                    Process.Start(_caminho_formulario_iso + "termo de responsabilidade telefonia movel.pdf");
                    break;
                case 2:
                    Process.Start(_caminho_formulario_iso + "Termo de responsabilidade Notebook.pdf");
                    break;
                case 3:
                    var frmmodem = new FrmControleModem();
                    FrmPrincipal.ShowModalMdiChildren(frmmodem);
                    break;
                case 4:
                    criaRelatorioProcedimentosIniciais();
                    break;
                case 5:
                    var frmreqpessoa = new FrmRequisicaoPessoal();
                    FrmPrincipal.ShowModalMdiChildren(frmreqpessoa);
                    break;
                case 6:
                    var frmregtreinamento = new FrmRegistroTreinamento();
                    FrmPrincipal.ShowModalMdiChildren(frmregtreinamento);
                    break;
                case 7:
                    criarExcel("coleta_de_preco.xlsx");
                    Process.Start(diretorioRaiz + "coleta_de_preco.xlsx");
                    break;
                case 8:
                    criarExcel("ordem_de_compra.xlsx");
                    Process.Start(diretorioRaiz + "ordem_de_compra.xlsx");
                    break;
                case 9:
                    Process.Start(_caminho_formulario_iso + "Requisicao de compras.pdf");
                    break;
                case 10:
                    criaRelatorioListaMateriais();
                    break;
                case 11:
                    Process.Start(_caminho_formulario_iso + "Relatorio de avaliacao de fornecedores.pdf");
                    break;
                case 12:
                    criaRelatorioComunicacaoExterna();
                    break;
                case 13:
                    criaRelatorioMedicaoMonitoramento();
                    break;
                case 14:
                    criaRelatorioFichaAdmissao();
                    break;
                case 15:
                    var frmepi = new FrmControleEntregaEPI();
                    FrmPrincipal.ShowModalMdiChildren(frmepi);
                    break;
                case 16:
                    Process.Start(_caminho_formulario_iso + "Requisicao_de_Mudancas.pdf");
                    break;
                case 17:
                    Process.Start(_caminho_formulario_iso + "Anexo A - Jogo de Documentos para DI.pdf");
                    break;
                case 18:
                    Process.Start(_caminho_formulario_iso + "Procedimento IT-04.pdf");
                    break;
                case 19:
                    Process.Start(_caminho_formulario_iso + "Procedimento IT 14.pdf");
                    break;
                case 20:
                    Process.Start(_caminho_formulario_iso + "Anexo A - Procedimento IT 23.pdf");
                    break;
                case 21:
                    Process.Start(_caminho_formulario_iso + "Termo de responsabilidade controle ar condicionado.pdf");
                    break;
                case 22:
                    Process.Start(_caminho_formulario_iso + "matriz_procedimentos_por_cargo.pdf");
                    break;
                case 23:
                    Process.Start(_caminho_formulario_iso + "Registro_de_Reclamacoes_de_clientes.xlsx");
                    break;

            }
        }

        private void FrmFormularioISO_Load(object sender, EventArgs e)
        {
            _caminho_formulario_iso = (new CaminhoDiretorioServidor().GetCaminhoById(CODIGO_CAMINHO_FORMULARIO_ISO)).Caminho;
        }
    }
}
