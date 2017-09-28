using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Diagnostics;
using Microsoft.Reporting.WinForms;
using System.IO;    

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmControleModem : MS2000.Desktop.Componentes.MSForm01
    {
        public FrmControleModem()
        {
            InitializeComponent();
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            ReportViewer rv = new ReportViewer();

            rv.ProcessingMode = ProcessingMode.Local;

            rv.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.ISO.rptFrmControleModem.rdlc";

            IList<ReportParameter> parametros = new List<ReportParameter>();

            parametros.Add(new ReportParameter("Nome", txtUsuario.Text));
            parametros.Add(new ReportParameter("Modelo", txtAparelho.Text));
            parametros.Add(new ReportParameter("Numero", txtNumero.Text));
            parametros.Add(new ReportParameter("Serie", txtSerie.Text));

            rv.LocalReport.SetParameters(parametros);

            Warning[] warnings;
            string[] streamids;
            string mimeType;
            string encoding;
            string extension;

            try
            {
                byte[] bytes = rv.LocalReport.Render("Pdf", null, out mimeType, out encoding, out extension, out streamids, out warnings);

                FileStream fs = new FileStream(@"c:\temp\controle_de_modem.pdf", FileMode.Create);
                fs.Write(bytes, 0, bytes.Length);
                fs.Close();
                Process.Start(@"c:\temp\controle_de_modem.pdf");
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
    }
}
