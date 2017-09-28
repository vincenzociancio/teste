using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Microsoft.Reporting.WinForms;
using System.IO;
using System.Diagnostics;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmControleEntregaEPI : MS2000.Desktop.Componentes.MSForm01
    {

        string diretorioRaiz = @"C:\Temp\";

        public FrmControleEntregaEPI()
        {
            InitializeComponent();
        }

        private void criaRelatorioControleEntregaEPI()
        {
            ReportViewer rv = new ReportViewer();

            rv.ProcessingMode = ProcessingMode.Local;

            rv.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.ISO.rptFrmControleEntregaEPI.rdlc";

            IList<ReportParameter> parametros = new List<ReportParameter>();

            parametros.Add(new ReportParameter("Nome",     txtNome.Text));
            parametros.Add(new ReportParameter("Area",     txtArea.Text));
            parametros.Add(new ReportParameter("Matricula",txtMatricula.Text));
            parametros.Add(new ReportParameter("Cargo",    txtCargo.Text));

            rv.LocalReport.SetParameters(parametros);

            Warning[] warnings;
            string[] streamids;
            string mimeType;
            string encoding;
            string extension;

            try
            {
                byte[] bytes = rv.LocalReport.Render("Pdf", null, out mimeType, out encoding, out extension, out streamids, out warnings);

                FileStream fs = new FileStream(diretorioRaiz + "controle_entrega_epi.pdf", FileMode.Create);
                fs.Write(bytes, 0, bytes.Length);
                fs.Close();
                Process.Start(diretorioRaiz + "controle_entrega_epi.pdf");
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
        private void btnPrint_Click(object sender, EventArgs e)
        {
            criaRelatorioControleEntregaEPI();
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
