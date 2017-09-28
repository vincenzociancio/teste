using System;
using System.Diagnostics;
using Microsoft.Reporting.WinForms;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.IO;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmControleVeiculos : MS2000.Desktop.Componentes.MSForm01
    {
        
        string diretorioRaiz = @"C:\Temp\";
    
        public FrmControleVeiculos()
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

            Warning[] warnings;
            string[] streamids;
            string mimeType;
            string encoding;
            string extension;

            rv.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.ISO.rptFrmControleVeiculos.rdlc";

            IList<ReportParameter> parametros = new List<ReportParameter>();

            parametros.Add(new ReportParameter("NomeCondutor", txtNomeCondutor.Text));
            parametros.Add(new ReportParameter("Modelo", txtModeloCarro.Text));
            parametros.Add(new ReportParameter("Placa", txtPlacaCarro.Text));
            parametros.Add(new ReportParameter("Numero", txtNumeroCarro.Text));

            rv.LocalReport.SetParameters(parametros);

            try
            {
                byte[] bytes = rv.LocalReport.Render("Pdf", null, out mimeType, out encoding, out extension, out streamids, out warnings);
                FileStream fs = new FileStream(diretorioRaiz + "controle_de_veiculos.pdf", FileMode.Create);
                fs.Write(bytes, 0, bytes.Length);
                fs.Close();
                Process.Start(diretorioRaiz + "controle_de_veiculos.pdf");
            }
            catch (IOException ioex)
            {
                MessageBox.Show("O arquivo já está aberto");
                ioex.Source = "";
            }
        }
    }
}
