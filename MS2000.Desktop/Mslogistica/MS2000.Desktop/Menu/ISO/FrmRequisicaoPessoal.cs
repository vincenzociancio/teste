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
    public partial class FrmRequisicaoPessoal : MS2000.Desktop.Componentes.MSForm01
    {
        string diretorioRaiz = @"C:\Temp\";
        
        public FrmRequisicaoPessoal()
        {
            InitializeComponent();
        }   
      
        private void btnPrint_Click(object sender, EventArgs e)
        {
            ReportViewer rv = new ReportViewer();

            rv.ProcessingMode = ProcessingMode.Local;

            rv.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.ISO.rptFrmRequisicaoPessoal.rdlc";

            IList<ReportParameter> parametros = new List<ReportParameter>();

            Warning[] warnings;
            string[] streamids;
            string mimeType;
            string encoding;
            string extension;

            try
            {
                parametros.Add(new ReportParameter("SOLICITANTE", txtSolicitante.Text));
                parametros.Add(new ReportParameter("SETOR", txtSetor.Text));
                parametros.Add(new ReportParameter("VAGAS", txtVagas.Text));
                parametros.Add(new ReportParameter("DATA", string.IsNullOrEmpty(mskData.Text.Replace("/", "").Trim()) ? "" : mskData.Text));
                parametros.Add(new ReportParameter("CARGO", txtCargo.Text));
                rv.LocalReport.SetParameters(parametros);
                byte[] bytes = rv.LocalReport.Render("Pdf", null, out mimeType, out encoding, out extension, out streamids, out warnings);
                FileStream fs = new FileStream(diretorioRaiz + "requisicao_de_pessoal.pdf", FileMode.Create);
                fs.Write(bytes, 0, bytes.Length);
                fs.Close();
                Process.Start(diretorioRaiz + "requisicao_de_pessoal.pdf");
            }
            catch (IOException ioex)
            {
                MessageBox.Show("O arquivo já está aberto");
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }
       
    }
   
}
