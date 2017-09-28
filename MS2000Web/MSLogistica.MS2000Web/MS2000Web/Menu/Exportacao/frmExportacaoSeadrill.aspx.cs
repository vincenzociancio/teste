using System.Web.UI;
using MSBiblioteca.BLL;
using System;
using System.IO;


namespace MS2000Web.Menu.Exportação
{
    public partial class frmExportacaoSeadrill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // btnDownload.Enabled = false;
        }

        protected void btnBuscarProcesso_Click(object sender, EventArgs e)
        {
            lbMessage.Text = "";
            ListBox1.Items.Clear();
            if (!string.IsNullOrEmpty(txtProcesso.Text) && new Processo().ExisteProcesso(txtProcesso.Text))
            {
                var export = new ExportacaoSeadrill(txtProcesso.Text).ObterArquivoTxt();
                ListBox1.DataSource = export;
                ListBox1.DataBind();
                //btnDownload.Enabled = true;
            }
            else
            {
                //btnDownload.Enabled = false;
                lbMessage.Text = @"Processo não encontrado!";
            }
        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {
            if (ListBox1.Items.Count > 0)
            {
                const string path = @"c:\inetpub\wwwroot\ARQUIVOS\EXPORTACAOSEADRILL\";

                string processo = txtProcesso.Text.Replace("/", "");

                using (var writer = new StreamWriter(path + processo + ".txt"))
                {
                    for (var i = 0; i < ListBox1.Items.Count; i++)
                    {
                        writer.WriteLine(ListBox1.Items[i]);
                    }
                }
                String fileName = processo + ".txt";
                string filePath = (path + processo + ".txt");
                System.Web.HttpResponse response = System.Web.HttpContext.Current.Response;
                response.ClearContent();
                response.Clear();
                response.ContentType = "text/plain";
                response.AddHeader("Content-Disposition", "attachment; filename=" + fileName + ";");
                response.TransmitFile(filePath);
                response.Flush();
                Response.End();
            }

        }
    }
}