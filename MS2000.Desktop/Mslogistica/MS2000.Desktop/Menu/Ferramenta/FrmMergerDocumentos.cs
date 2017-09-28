using iTextSharp.text.pdf;
using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Ferramenta
{

    public partial class FrmMergerDocumentos : MS2000.Desktop.Componentes.MSForm01
    {
        int Numerador;
        long bytes;
        List<DocumentosSelecionados> lista = new List<DocumentosSelecionados>();
        class DocumentosSelecionados
        {
            public string Tipo_Doc { get; set; }
            public string Sub_Tipo_Doc { get; set; }
            public string Descricao { get; set; }
            public string Arquivo { get; set; }
            public string DescricaoArquivo { get; set; }
        }

        public FrmMergerDocumentos()
        {
            InitializeComponent();
        }

        private DataTable getDocumentos()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "(select D.Tipo_Doc,D.Sub_Tipo_Doc,T.descricao as DescricaoTipo, STD.Descricao,D.Numero_Doc, "+
                           "(select top 1 Arquivo from Documentos where Processo = D.Processo and Tipo_doc = D.Tipo_Doc and Sub_Tipo_Doc = D.Sub_Tipo_Doc ) As Arquivo,D.Codigo from Documentos D " +
                           "inner join Sub_Tipo_Documentos STD on D.Tipo_Doc = STD.Tipo_doc and D.Sub_Tipo_Doc =  STD.codigo " +
                           "inner join Tipo_Documentos T on T.codigo = D.Tipo_Doc " +
                           "where Processo = @processo " +
                           "group by D.Tipo_Doc,D.Sub_Tipo_Doc,T.descricao, STD.Descricao ,D.Numero_Doc,D.Codigo,D.PDF,D.Processo) ";
            if (ckbDocumentos.Checked)
            {
                query = query + "union all " +
                                "(select D.Tipo_Doc,D.Sub_Tipo_Doc, T.descricao as DescricaoTipo, STD.Descricao,D.Numero_Doc,D.Arquivo,D.Codigo " +
                                "from Processos P " +
                                "inner join Documentos D on P.Fk_Fiador = D.Importador " +
                                "inner join Sub_Tipo_Documentos STD on D.Tipo_Doc = STD.Tipo_doc and D.Sub_Tipo_Doc =  STD.codigo " +
                                "inner join Tipo_Documentos T on T.codigo = D.Tipo_Doc " +
                                "where  P.Codigo = @processo  and D.Tipo_Doc = 'DOC') ";
            }
            query = query + " order by T.descricao desc, STD.Descricao,D.Numero_Doc ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }
        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            lista.Clear();
            lblDescricao.Text = string.Empty;
            double? total = 0;

            ckbDocumentos.Checked = false;
            ckbDocumentos.Visible = false;

            if (txtProcesso.MaskCompleted)
            {
                var processo = (new Processo()).BuscarPorCodigo(txtProcesso.Text);
                if (processo != null)
                {
                    grvDocumento.AutoGenerateColumns = false;
                    grvDocumento.DataSource = getDocumentos();

                    total = processo.TR_VAL_PIS + processo.TR_VAL_COFINS + processo.TR_VAL_II + processo.TR_VAL_IPI;

                    if (total >= 100000)
                        ckbDocumentos.Visible = true;
                }
                else
                {
                    MessageBox.Show("Processo não encontrado!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    txtProcesso.Clear();
                }
            }
            else
            {
                grvDocumento.DataSource = null;
            }
        }

        private void listaDocumentos(string tipo, string subTipo)
        {
            List<Documentos> ListaDoc = new List<Documentos>();

            string query = "select Numero_Doc,Arquivo,Codigo,PDF from Documentos where Processo = @processo and Tipo_Doc = @Tipo_Doc and Sub_Tipo_Doc = @Sub_Tipo_Doc and pdf = @PDF and  " +
                           "cast(Data_inclusao as date)  = (select top 1 CONVERT(varchar, Cast(Data_inclusao as date),103)    " +
                           "from Documentos where Processo = @processo and Tipo_Doc = @Tipo_Doc and Sub_Tipo_Doc = @Sub_Tipo_Doc  and pdf = @PDF  " +
                           "order by Data_inclusao desc) group by Numero_Doc,Arquivo,Codigo,PDF ";

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            using (var objCommand = new SqlCommand(query, conn))
            {
                objCommand.Parameters.AddWithValue("@processo", txtProcesso.Text);
                objCommand.Parameters.AddWithValue("@Tipo_Doc", tipo);
                objCommand.Parameters.AddWithValue("@Sub_Tipo_Doc", subTipo);
                objCommand.Parameters.AddWithValue("@PDF", "0");
                using (SqlDataReader objDr = objCommand.ExecuteReader())
                {
                    if (objDr.HasRows)
                    {
                        while (objDr.Read())
                        {
                            ListaDoc.Add(new Documentos
                            {
                                Arquivo = objDr["Arquivo"].ToString(),
                                Codigo = objDr["Codigo"].ToString(),
                                PDF = (int)objDr["PDF"],
                            }
                                );
                        }
                        CopiandoDocumentos(ListaDoc);
                    }
                    else
                    {
                        objDr.Close();
                        objCommand.Parameters.Clear();
                        objCommand.Parameters.AddWithValue("@processo", txtProcesso.Text);
                        objCommand.Parameters.AddWithValue("@Tipo_Doc", tipo);
                        objCommand.Parameters.AddWithValue("@Sub_Tipo_Doc", subTipo);
                        objCommand.Parameters.AddWithValue("@PDF", "1");
                        using (SqlDataReader objDr1 = objCommand.ExecuteReader())
                        {
                            if (objDr1.HasRows)
                            {
                                while (objDr1.Read())
                                {
                                    ListaDoc.Add(new Documentos
                                    {
                                        Arquivo = objDr1["Arquivo"].ToString(),
                                        Codigo = objDr1["Codigo"].ToString(),
                                        PDF = (int)objDr1["PDF"],
                                    }
                                        );
                                }
                                CopiandoDocumentos(ListaDoc);
                            }
                        }
                    }
                }
            }
        }

        private void btnUnificar_Click(object sender, EventArgs e)
        {
            //    GetDocumentosChecked(grvDocumento);
            bytes = 0;
            bool GoOn = false;
            try
            {
                grvDocumento.EndEdit();
                if (Directory.Exists(@"C:\temp\" + txtProcesso.Text.Replace('/', '_')))
                {
                    Directory.Delete(@"C:\temp\" + txtProcesso.Text.Replace('/', '_'), true);
                }
                Numerador = 1;
                foreach (var item in lista)
                {
                    if (item.Tipo_Doc.ToString() == "DOC")
                    {
                        GoOn = true;
                        var documentos = (new Documentos()).DocumentosFianca(txtProcesso.Text, item.Tipo_Doc.ToString(), item.Sub_Tipo_Doc.ToString(), item.Arquivo.ToString());
                        CopiandoDocumentos(documentos);
                    }
                    else if (!((item.Tipo_Doc.ToString() == "PROC") && ((item.Sub_Tipo_Doc.ToString() == "1") || (item.Sub_Tipo_Doc.ToString() == "2") || (item.Sub_Tipo_Doc.ToString() == "3"))))
                    {
                        GoOn = true;
                        var documentos = (new Documentos()).BuscarPorDocumento(txtProcesso.Text, item.Tipo_Doc.ToString(), item.Sub_Tipo_Doc.ToString());
                        CopiandoDocumentos(documentos);
                    }
                    else
                    {
                        GoOn = true;
                        listaDocumentos(item.Tipo_Doc.ToString(), item.Sub_Tipo_Doc.ToString());
                    }
                }

                /* if (ckbDocumentos.Checked)
                 {
                     var documentos = (new Documentos()).DocumentosFianca(txtProcesso.Text);
                     CopiandoDocumentos(documentos);
                 }*/

                if (GoOn)
                {
                    ProccessFolder(@"C:\temp\" + txtProcesso.Text.Replace('/', '_') + @"\");
                }
                else
                {
                    MessageBox.Show("Favor selecionar um documento.");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }

        private void GetDocumentosChecked(DataGridView gridView)
        {
            //bool GoOn = false;
            //try
            //{
            //    grvDocumento.EndEdit();
            //    if (Directory.Exists(@"C:\temp\" + txtProcesso.Text.Replace('/', '_')))
            //    {
            //        Directory.Delete(@"C:\temp\" + txtProcesso.Text.Replace('/', '_'), true);
            //    }
            //    foreach (DataGridViewRow row in gridView.Rows)
            //    {
            //        if (Convert.ToBoolean(row.Cells[0].Value))
            //        {
            //            GoOn = true;
            //            var documentos = (new Documentos()).BuscarPorDocumento(txtProcesso.Text, row.Cells[1].Value.ToString(), row.Cells[2].Value.ToString());
            //            CopiandoDocumentos(documentos);
            //        }
            //    }
            //    if (GoOn)
            //    {
            //        ProccessFolder(@"C:\temp\" + txtProcesso.Text.Replace('/', '_') + @"\");
            //    }
            //    else
            //    {
            //        MessageBox.Show("Favor selecionar um documento.");
            //    }
            //}
            //catch (Exception ex)
            //{
            //    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            //}
        }

        private string VerificaFaixa(string a)
        {
            string v = a.Substring(4, 7);
            int n = Convert.ToInt32(v);
            var f = Convert.ToInt32(n / 10000);
            string d = string.Empty;

            if (n % 10000 != 0)
            {
                f += 1;
            }

            switch (Convert.ToString(f).Length)
            {
                case 1:
                    d = "000" + f + "0000"; // 1..9
                    break;
                case 2:
                    d = "00" + f + "0000"; // 10..99
                    break;
                case 3:
                    d = "0" + f + "0000"; // 100..999
                    break;
                case 4:
                    d = "" + f + "0000"; // 1000..9999                    
                    break;
            }
            return d;
        }

        private void CopiandoDocumentos(List<Documentos> documentos)
        {          
            foreach (var doc in documentos)
            {
                    
                string extensao = doc.PDF == 1 ? ".pdf" : ".jpg";
                string pathFull = string.Format(@"{0}\{1}\{2}{3}", _caminho_doc_processos, VerificaFaixa(doc.Codigo), doc.Arquivo, extensao);
                string pathDestino = @"C:\temp\" + txtProcesso.Text.Replace('/', '_');

                FileInfo fileInfo = new FileInfo(pathFull);
                bytes = bytes + fileInfo.Length;

                if (bytes > 15728640)
                {
                    MessageBox.Show("Arquivo maior de 15MB.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    return;
                }

                //  File.Delete(pathDestino);
                if (File.Exists(pathFull))
                {
                    // 
                    if (!Directory.Exists(pathDestino))
                    {
                        Directory.CreateDirectory(pathDestino);
                    }

                    if (!File.Exists(pathDestino + @"\" + doc.Arquivo + extensao))
                    {
                        File.Copy(pathFull, pathDestino + @"\" + Numerador + extensao);
                    }
                }
                Numerador++;
                Application.DoEvents();
            }
        }

        private string PadExt(string s)
        {
            //s =  UCase(s);
            if (s.Length > 3)
            {
                s = s.Substring(1, 3);
            }
            return s;
        }

        public int GetPageCount(string sFolderPath)
        {
            int iRet = 0;
            string[] oFiles = Directory.GetFiles(sFolderPath);

            for (int i = 0; i <= oFiles.Length - 1; i++)
            {
                string sFromFilePath = oFiles[i];
                FileInfo oFileInfo = new FileInfo(sFromFilePath);
                string sExt = PadExt(oFileInfo.Extension);

                if (sExt == "pdf")
                {
                    iRet += 1;
                }
                else if (sExt == "jpg" | sExt == "TIF")
                {
                    iRet += 1;
                }
            }
            return iRet;
        }

        private void ProccessFolder(string sFolderPath)
        {
            bool bOutputfileAlreadyExists = false;
            var oFolderInfo = new DirectoryInfo(sFolderPath);
            string sOutFilePath;

            SaveFileDialog sdlg = new SaveFileDialog();
            sdlg.Filter = "All files (*.*)|*.*";
            sdlg.FilterIndex = 1;
            sdlg.Title = "Salvar Arquivo";
            sdlg.FileName = txtProcesso.Text.Replace('/', '_') + ".pdf";

            if (sdlg.ShowDialog() == DialogResult.OK)
            {
                sOutFilePath = sdlg.FileName + ".pdf";
                int iPageCount = GetPageCount(sFolderPath);
                if (((iPageCount > 0) && (bOutputfileAlreadyExists == false)))
                {
                    iTextSharp.text.Document oPdfDoc = null;
                    try
                    {
                        string[] oFiles = Directory.GetFiles(sFolderPath);

                        oPdfDoc = new iTextSharp.text.Document();
                        PdfWriter oPdfWriter = PdfWriter.GetInstance(oPdfDoc, new FileStream(sOutFilePath, FileMode.Create));
                        oPdfDoc.Open();

                        NumericComparer ns = new NumericComparer();
                        Array.Sort(oFiles, ns);

                        for (int i = 0; i <= oFiles.Length - 1; i++)
                        {
                            string sFromFilePath = oFiles[i];
                            FileInfo oFileInfo = new FileInfo(sFromFilePath);
                            string sExt = PadExt(oFileInfo.Extension);

                            try
                            {
                                if (sExt == "pdf")
                                {
                                    AddPdf(sFromFilePath, oPdfDoc, oPdfWriter);
                                }
                                else if (sExt == "jpg" | sExt == "tif")
                                {
                                    AddImage(sFromFilePath, oPdfDoc, oPdfWriter, sExt);
                                }
                            }
                            catch (Exception ex)
                            {
                                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            }
                        }

                        File.Delete(sOutFilePath.Replace(".pdf", ""));
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        try
                        {
                            File.Delete(sOutFilePath);
                        }
                        catch (Exception ex2)
                        {
                            MessageBox.Show(ex2.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                    }
                    finally
                    {
                        oPdfDoc.Close();
                        oPdfDoc = null;
                    }

                }

                string[] oFolders = Directory.GetDirectories(sFolderPath);
                for (int i = 0; i <= oFolders.Length - 1; i++)
                {
                    string sChildFolder = oFolders[i];
                    int iPos = sChildFolder.LastIndexOf("\\");
                    string sFolderName = sChildFolder.Substring(iPos + 1);
                    ProccessFolder(sChildFolder);
                }
                MessageBox.Show("Arquivo Unificado com Sucesso");
                LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.None, Convert.ToInt32(this.Tag), "");
            }
        }

        public void AddPdf(string sInFilePath, iTextSharp.text.Document oPdfDoc, PdfWriter oPdfWriter)
        {
            PdfContentByte oDirectContent = oPdfWriter.DirectContent;
            PdfReader oPdfReader = new PdfReader(sInFilePath);
            int iNumberOfPages = oPdfReader.NumberOfPages;
            int iPage = 0;

            while ((iPage < iNumberOfPages))
            {
                iPage += 1;
                oPdfDoc.SetPageSize(oPdfReader.GetPageSizeWithRotation(iPage));
                oPdfDoc.NewPage();

                iTextSharp.text.pdf.PdfImportedPage oPdfImportedPage = oPdfWriter.GetImportedPage(oPdfReader, iPage);
                int iRotation = oPdfReader.GetPageRotation(iPage);
                if ((iRotation == 90) | (iRotation == 270))
                {
                    oDirectContent.AddTemplate(oPdfImportedPage, 0, -1f, 1f, 0, 0, oPdfReader.GetPageSizeWithRotation(iPage).Height);
                }
                else
                {
                    oDirectContent.AddTemplate(oPdfImportedPage, 1f, 0, 0, 1f, 0, 0);
                }
            }
        }

        public void AddImage(string sInFilePath, iTextSharp.text.Document oPdfDoc, PdfWriter oPdfWriter, string sExt)
        {

            iTextSharp.text.pdf.PdfContentByte oDirectContent = oPdfWriter.DirectContent;
            iTextSharp.text.Image oPdfImage = default(iTextSharp.text.Image);
            oPdfImage = iTextSharp.text.Image.GetInstance(sInFilePath);
            oPdfImage.SetAbsolutePosition(1, 1);
            oPdfDoc.SetPageSize(new iTextSharp.text.Rectangle(oPdfImage.Width, oPdfImage.Height));
            oPdfDoc.NewPage();
            oDirectContent.AddImage(oPdfImage);
            return;

            Image oImage = Image.FromFile(sInFilePath);

            //Multi-Page Tiff
            if (sExt == "TIF")
            {
                int iPageCount = oImage.GetFrameCount(System.Drawing.Imaging.FrameDimension.Page);
                if (iPageCount > 1)
                {
                    for (int iPage = 0; iPage <= iPageCount - 1; iPage++)
                    {
                        oImage.SelectActiveFrame(System.Drawing.Imaging.FrameDimension.Page, iPage);
                        System.IO.MemoryStream oMemoryStream = new System.IO.MemoryStream();
                        oImage.Save(oMemoryStream, System.Drawing.Imaging.ImageFormat.Png);
                        System.Drawing.Image oImage2 = System.Drawing.Image.FromStream(oMemoryStream);
                        AddImage2(oImage2, oPdfDoc, oPdfWriter);
                        oMemoryStream.Close();
                    }
                    return;
                }
            }

            AddImage2(oImage, oPdfDoc, oPdfWriter);
        }

        public void AddImage2(Image oImage, iTextSharp.text.Document oPdfDoc, PdfWriter oPdfWriter)
        {
            PdfContentByte oDirectContent = oPdfWriter.DirectContent;
            iTextSharp.text.Image oPdfImage = default(iTextSharp.text.Image);
            float iWidth = oImage.Width;
            float iHeight = oImage.Height;
            double iAspectRatio = iWidth / iHeight;

            float iWidthPage = iTextSharp.text.PageSize.LETTER.Width;
            float iHeightPage = iTextSharp.text.PageSize.LETTER.Height;
            double iPageAspectRatio = iWidthPage / iHeightPage;

            int iWidthGoal = 0;
            int iHeightGoal = 0;
            bool bFitsWithin = false;

            if (iWidth < iWidthPage & iHeight < iHeightPage)
            {
                //Image fits within the page
                bFitsWithin = true;
                iWidthGoal = (int)iWidth;
                iHeightGoal = (int)iHeight;

            }
            else if (iAspectRatio > iPageAspectRatio)
            {
                //Width is too big
                iWidthGoal = (int)iWidthPage;
                iHeightGoal = Convert.ToInt32(iWidthPage * (iHeight / iWidth));

            }
            else
            {
                //Height is too big
                iWidthGoal = Convert.ToInt32(iHeightPage * (iWidth / iHeight));
                iHeightGoal = (int)iHeightPage;
            }

            if (bFitsWithin == false)
            {
                oImage = FixedSize(oImage, iWidthGoal, iHeightGoal);
            }

            oPdfImage = iTextSharp.text.Image.GetInstance(oImage, System.Drawing.Imaging.ImageFormat.Png);
            oPdfImage.SetAbsolutePosition(1, 1);
            oPdfDoc.SetPageSize(iTextSharp.text.PageSize.LETTER);

            oPdfDoc.NewPage();
            oPdfImage.ScaleAbsolute(iWidthGoal, iHeightGoal);
            oDirectContent.AddImage(oPdfImage);
        }

        private static Image FixedSize(Image imgPhoto, int Width, int Height)
        {
            int sourceWidth = imgPhoto.Width;
            int sourceHeight = imgPhoto.Height;
            int sourceX = 0;
            int sourceY = 0;
            int destX = 0;
            int destY = 0;

            float nPercent = 0;
            float nPercentW = 0;
            float nPercentH = 0;

            nPercentW = (Convert.ToSingle(Width) / Convert.ToSingle(sourceWidth));
            nPercentH = (Convert.ToSingle(Height) / Convert.ToSingle(sourceHeight));

            if (nPercentH < nPercentW)
            {
                nPercent = nPercentH;
                destX = Convert.ToInt32(((Width - (sourceWidth * nPercent)) / 3));
            }
            else
            {
                nPercent = nPercentW;
                destY = Convert.ToInt32(((Height - (sourceHeight * nPercent)) / 3));
            }

            int destWidth = Convert.ToInt32((sourceWidth * nPercent));
            int destHeight = Convert.ToInt32((sourceHeight * nPercent));

            Bitmap bmPhoto = new Bitmap(Width, Height, PixelFormat.Format24bppRgb);
            bmPhoto.SetResolution(imgPhoto.HorizontalResolution, imgPhoto.VerticalResolution);

            Graphics grPhoto = Graphics.FromImage(bmPhoto);
            grPhoto.Clear(Color.White);
            grPhoto.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;

            grPhoto.DrawImage(imgPhoto, new Rectangle(destX, destY, destWidth, destHeight), new Rectangle(sourceX, sourceY, sourceWidth, sourceHeight), GraphicsUnit.Pixel);

            grPhoto.Dispose();
            return bmPhoto;
        }


        private void grvDocumento_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (string.Compare(grvDocumento.CurrentCell.OwningColumn.Name, "selecao") == 0)
            {
                bool checkBoxStatus = Convert.ToBoolean(grvDocumento.CurrentCell.EditedFormattedValue);
                int cont = 1;
                if (checkBoxStatus)
                {
                    lista.Add(new DocumentosSelecionados
                    {
                        Descricao = grvDocumento.CurrentRow.Cells["descricao"].Value.ToString(),
                        Sub_Tipo_Doc = grvDocumento.CurrentRow.Cells["Sub_Tipo_doc"].Value.ToString(),
                        Tipo_Doc = grvDocumento.CurrentRow.Cells["Tipo_doc"].Value.ToString(),
                        Arquivo = grvDocumento.CurrentRow.Cells["Arquivo"].Value.ToString(),
                        DescricaoArquivo = grvDocumento.CurrentRow.Cells["Numero_Doc"].Value.ToString()

                    });

                    lblDescricao.Text = "";
                    foreach (var item in lista)
                    {
                        lblDescricao.Text = lblDescricao.Text + cont + " - " + item.Descricao.ToString() + "( " + item.DescricaoArquivo.ToString() + " ), ";
                        cont++;
                    }
                }
                else
                {
                    lista.Remove(
                        lista.Find(c => c.Tipo_Doc == grvDocumento.CurrentRow.Cells["Tipo_doc"].Value.ToString() &&
                        c.Sub_Tipo_Doc == grvDocumento.CurrentRow.Cells["Sub_Tipo_doc"].Value.ToString()));

                    lblDescricao.Text = "";
                    foreach (var item in lista)
                    {
                        lblDescricao.Text = lblDescricao.Text + cont + " - " + item.Descricao.ToString() + ",  ";
                        cont++;
                    }
                }
            }
        }


        const int CODIGO_CAMINHO_DOCUMENTOS_PROCESSO = 2;
        string _caminho_doc_processos;

        private void FrmMergerDocumentos_Load(object sender, EventArgs e)
        {
            _caminho_doc_processos = (new CaminhoDiretorioServidor().GetCaminhoById(CODIGO_CAMINHO_DOCUMENTOS_PROCESSO)).Caminho;

            lblDescricao.Text = "";
        }

        private void ckbDocumentos_CheckedChanged(object sender, EventArgs e)
        {
            lista.Clear();
            lblDescricao.Text = string.Empty;
            grvDocumento.AutoGenerateColumns = false;
            grvDocumento.DataSource = getDocumentos();
        }

        private void grvDocumento_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            if (e.Value != null && grvDocumento.Rows[e.RowIndex].Cells[1].Value.ToString() == "DOC")
            {
                grvDocumento.Rows[e.RowIndex].DefaultCellStyle.BackColor = Color.Aqua;
                grvDocumento.Rows[e.RowIndex].DefaultCellStyle.ForeColor = Color.Red;
            }
        }

        private void btnLimpar_Click(object sender, EventArgs e)
        {
            lista.Clear();
            lblDescricao.Text = string.Empty;
            grvDocumento.AutoGenerateColumns = false;
            grvDocumento.DataSource = getDocumentos();
        }

        private void grvDocumento_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            string pasta = grvDocumento.Rows[e.RowIndex].Cells["Codigo"].Value.ToString();//.Replace("RJO", "");
            string arquivo = grvDocumento.Rows[e.RowIndex].Cells["Arquivo"].Value.ToString();           

            try
            {
                Process.Start(_caminho_doc_processos + VerificaFaixa(pasta) + "\\" + arquivo + ".pdf");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
