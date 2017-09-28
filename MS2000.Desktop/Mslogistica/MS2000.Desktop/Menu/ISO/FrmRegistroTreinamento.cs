using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.IO;
using Microsoft.Reporting.WinForms;
using System.Diagnostics;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmRegistroTreinamento : MS2000.Desktop.Componentes.MSForm01
    {
        string diretorioRaiz = @"C:\Temp\";

        public FrmRegistroTreinamento()
        {
            InitializeComponent();
        }      
   
        private void btnFechar_Click_1(object sender, EventArgs e)
        {
            Close();
        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            ReportViewer rv = new ReportViewer();

            rv.ProcessingMode = ProcessingMode.Local;

            rv.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.ISO.rptFrmRegistroTreinamento.rdlc";

            IList<ReportParameter> parametros = new List<ReportParameter>();

            parametros.Add(new ReportParameter("Treinamento", txtTreinamento.Text));
            parametros.Add(new ReportParameter("Ministrado", txtMinistrado.Text));
            parametros.Add(new ReportParameter("Local", txtLocal.Text));
            parametros.Add(new ReportParameter("Data", string.IsNullOrEmpty(mskData.Text.Replace("/", "").Trim()) ? "" : mskData.Text));
            parametros.Add(new ReportParameter("Horario", string.IsNullOrEmpty(mskHora.Text.Replace(":", "").Trim()) ? "" : mskHora.Text));
            parametros.Add(new ReportParameter("Ementa",txtEmenta.Text));
            rv.LocalReport.SetParameters(parametros);

            Warning[] warnings;
            string[] streamids;
            string mimeType;
            string encoding;
            string extension;

            try
            {
                byte[] bytes = rv.LocalReport.Render("Pdf", null, out mimeType, out encoding, out extension, out streamids, out warnings);
                FileStream fs = new FileStream(diretorioRaiz + "registro_de_treinamento.pdf", FileMode.Create);
                fs.Write(bytes, 0, bytes.Length);
                fs.Close();
                Process.Start(diretorioRaiz + "registro_de_treinamento.pdf");
            }
            catch (IOException ioex)
            {
                ioex.Source = "";
                MessageBox.Show("O arquivo já está aberto");
            }
        }
    }
}
