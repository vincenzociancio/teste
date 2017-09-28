using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading.Tasks;
using System.Xml.Serialization;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;
using MSBiblioteca.BLL;
using System.IO;
using MSBiblioteca.DTO.SiscomexExpotacao;

namespace MS2000Web.Menu.Processos
{
    public partial class frmSiscomexExportacao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnArquivo_Click(object sender, EventArgs e)
        {

            Processo processo = new Processo(txtProcesso.Text);
            if (string.IsNullOrEmpty(processo.Codigo))
            {
                ScriptManager.RegisterStartupScript(this, Page.GetType(), "_Processo_Nao_Encontrado", "$('#modalNaoExisteProcesso').dialog('open');", true);
            }
            else
            {
                string processos = txtProcesso.Text.Replace("/", "");
                txtProcesso.Text = "";

                SiscomexExportacao siscomex = new SiscomexExportacao();
                XmlSerializerNamespaces sn = new XmlSerializerNamespaces();
                sn.Add("", "");
                registro_exportacao xmllote = siscomex.BuscarLote(processo.Codigo);
                XmlSerializer x = new XmlSerializer(typeof(registro_exportacao));
                TextWriter writer = new StreamWriter(@"c:\" + processos + ".xml");
                x.Serialize(writer, xmllote, sn);
                writer.Close();

                String FileName = processos + ".xml";
                String FilePath = (@"c:\" + processos + ".xml");
                System.Web.HttpResponse response = System.Web.HttpContext.Current.Response;
                response.ClearContent();
                response.Clear();
                response.ContentType = "text/plain";
                response.AddHeader("Content-Disposition", "attachment; filename=" + FileName + ";");
                response.TransmitFile(FilePath);
                response.Flush();
                Response.End();
                // ((System.Web.UI.WebControls.TextBox)(txtProcesso)).Text = string.Empty;

                //txtProcesso.Text = String.Empty;

                // ScriptManager.RegisterStartupScript(this, Page.GetType(), "_Arquivo_Salvo_Sucesso", "$('#modalSalvoSucesso').dialog('open');", true);
            }
        }


    }
}