using Microsoft.Reporting.WinForms;
using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmFormularioDesunitizacao : MS2000.Desktop.Componentes.MSForm01
    {
        private Image _originalImage;
        string nomeArquivo;
        string logo;
        private void PrintaReport()
        {
            try
            {
                var query = "select p.Codigo as CodigoProcesso, " +
                            " i.Codigo as CodigoImportador, i.CNPJ_CPF_COMPLETO as CnpjCPf, i.Razao_Social, i.Endereco, i.Numero, i.Complemento, i.bairro, i.Cidade, i.CEP, i.UF, i.Estado, " +
                            " cp.Numerodoccarga, cp.Embarcacao, cp.Data_Chegada_URF_Cheg " +
                            " from Importadores i " +
                            " inner join PROCESSOS p on p.Importador = i.Codigo " +
                            " left join Conhecimento_Processo cp on cp.Processo = p.Codigo " +
                            " where p.Codigo = @codigo ";

                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@codigo", txtProcesso.Text);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                                if (reader.Read())
                                {
                                    IList<ReportParameter> parametros = new List<ReportParameter>();
                                    string exeFolder = Path.GetDirectoryName(Application.StartupPath);
                                    string reportPath = Path.Combine(exeFolder, @"\Menu\Controle\rptFormularioDesunitizacao.rdlc");
                                    LocalReport localReport = new LocalReport();
                                    localReport.EnableExternalImages = true;
                                    localReport.ReportPath = @"C:\VStudio\MS2000.Desktop\Mslogistica\MS2000.Desktop\Menu\Controle\rptFormularioDesunitizacao.rdlc";
                                    parametros.Add(new ReportParameter("Logo", logo));
                                    parametros.Add(new ReportParameter("LogoMimeType", "image/png"));
                                    parametros.Add(new ReportParameter("Importador", reader["Razao_Social"].ToString()));
                                    parametros.Add(new ReportParameter("Endereco", reader["Endereco"].ToString()));
                                    parametros.Add(new ReportParameter("Numero", reader["Numero"].ToString()));
                                    parametros.Add(new ReportParameter("Complemento", reader["Complemento"].ToString()));
                                    parametros.Add(new ReportParameter("Bairro", reader["bairro"].ToString()));
                                    parametros.Add(new ReportParameter("Cidade", reader["Cidade"].ToString()));
                                    parametros.Add(new ReportParameter("CEP", reader["CEP"].ToString()));
                                    parametros.Add(new ReportParameter("CNPJ", reader["CnpjCPf"].ToString()));
                                    parametros.Add(new ReportParameter("Embarcacao", reader["Embarcacao"].ToString()));
                                    parametros.Add(new ReportParameter("DataChegada", string.IsNullOrEmpty(reader["Data_Chegada_URF_Cheg"].ToString()) ? null : reader["Data_Chegada_URF_Cheg"].ToString()));
                                    parametros.Add(new ReportParameter("House", reader["Numerodoccarga"].ToString()));
                                    parametros.Add(new ReportParameter("Terminal", txtTerminal.Text));
                                    parametros.Add(new ReportParameter("TerminalEndereco", txtEndTerminal.Text));
                                    parametros.Add(new ReportParameter("InformacaoComplementar", rtxtInformacoes.Text));
                                    parametros.Add(new ReportParameter("Conteiner1", txtConteiner1.Text));
                                    parametros.Add(new ReportParameter("Conteiner2", txtConteiner2.Text));
                                    parametros.Add(new ReportParameter("Conteiner3", txtConteiner3.Text));
                                    parametros.Add(new ReportParameter("Conteiner4", txtConteiner4.Text));
                                    parametros.Add(new ReportParameter("BL1", txtBL1.Text));
                                    parametros.Add(new ReportParameter("BL2", txtBL2.Text));
                                    parametros.Add(new ReportParameter("BL3", txtBL3.Text));
                                    parametros.Add(new ReportParameter("BL4", txtBL4.Text));
                                    parametros.Add(new ReportParameter("Porto1", txtPortoOrigem1.Text));
                                    parametros.Add(new ReportParameter("Porto2", txtPortoOrigem2.Text));
                                    parametros.Add(new ReportParameter("Porto3", txtPortoOrigem3.Text));
                                    parametros.Add(new ReportParameter("Porto4", txtPortoOrigem4.Text));

                                    parametros.Add(new ReportParameter("Data", DateTime.Now.ToString("dd/MM/yyyy")));
                                    localReport.SetParameters(parametros);
                                    string reportType = "PDF";
                                    string mimeType;
                                    string encoding;
                                    string fileNameExtension;
                                    Warning[] warnings;
                                    string[] streams;
                                    byte[] renderedBytes;
                                    //Render the report             
                                    renderedBytes = localReport.Render(
                                        reportType,
                                        null,
                                        out mimeType,
                                        out encoding,
                                        out fileNameExtension,
                                        out streams,
                                        out warnings);

                                    using (FileStream fs = new FileStream(Path.GetTempPath() + @"\" + txtTerminal.Text + ".pdf", FileMode.Create))
                                    {
                                        fs.Write(renderedBytes, 0, renderedBytes.Length);
                                        System.Diagnostics.Process.Start(Path.GetTempPath() + @"\" + txtTerminal.Text + ".pdf");
                                    }
                                }
                            else
                            {
                                MessageBox.Show("Número de Processo inválido","Aviso");
                            }

                        }

                    }
                }


            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public FrmFormularioDesunitizacao()
        {
            InitializeComponent();
        }

        private void btnFoto_Click(object sender, EventArgs e)
        {
            openFileDialog1.Filter = "Images (*.PNG)|*.PNG";
            openFileDialog1.Title = "Procurar Logo";
            openFileDialog1.FileName = "";
            openFileDialog1.CheckFileExists = true;
            openFileDialog1.CheckPathExists = true;
            openFileDialog1.FilterIndex = 2;
            openFileDialog1.RestoreDirectory = true;
            openFileDialog1.ReadOnlyChecked = true;
            openFileDialog1.ShowReadOnly = true;

            DialogResult dr = this.openFileDialog1.ShowDialog();

            if (dr == System.Windows.Forms.DialogResult.OK)
            {
                try
                {
                    using (MemoryStream ms = new MemoryStream())
                    {
                        Image Imagem = Image.FromFile(openFileDialog1.FileName);
                        pcbFoto.SizeMode = PictureBoxSizeMode.StretchImage;
                        pcbFoto.Image = Imagem;
                        pcbFoto.ImageLocation = openFileDialog1.FileName;
                        // Convert Image to byte[]
                        Imagem.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                        byte[] imageBytes = ms.ToArray();

                        // Convert byte[] to Base64 String
                        logo = Convert.ToBase64String(imageBytes);
                    }

                }
                catch (Exception ex)
                {
                    MessageBox.Show("Não é possível exibir a imagem");
                }

            }
        }
        private void btnImprimir_Click(object sender, EventArgs e)
        {
            if (txtProcesso.Text != "     /")
            {             
                PrintaReport();
            }
            else
            {
                MessageBox.Show("O Número de Processo é obrigatório","Aviso");
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

    }
}
