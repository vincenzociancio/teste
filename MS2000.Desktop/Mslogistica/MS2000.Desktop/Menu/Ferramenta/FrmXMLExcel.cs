using System;
using System.Collections.Generic;
using System.Data;
using System.Windows.Forms;
using System.Linq;
using System.IO;
using Microsoft.Office.Interop.Excel;
using System.Drawing;
using System.Reflection;

namespace MS2000.Desktop.Menu.Ferramenta
{
    public partial class FrmXMLExcel : MS2000.Desktop.Componentes.MSForm01
    {
        public class Adicao
        {
            public string DI { get; set; }
            public string NCM { get; set; }
            public string Descricao { get; set; }
            public int Quantidade { get; set; }
            public string adicao { get; set; }
            public string Sequencia { get; set; }
            public double Aliq_II { get; set; }
            public double Aliq_IPI { get; set; }
            public double Aliq_PIS { get; set; }
            public double Aliq_COFINS { get; set; }
            //public double Aliq_ICMS { get; set; }
            public string CNPJ { get; set; }
            public double valor_II { get; set; }
            public double valor_IPI { get; set; }
            public double valor_PIS { get; set; }
            public double valor_COFINS { get; set; }
            public double valor_Aduaneiro { get; set; }
            //public double valor_ICMS { get; set; }
        }        

        public FrmXMLExcel()
        {
            InitializeComponent();
        }

        private void FrmXMLExcel_Load(object sender, EventArgs e)
        {

        }

        private List<Adicao> getDI()
        {
            DataSet ds = new DataSet();
            ds.ReadXml(@"" + txtArquivo.Text + "");
       
            List<Adicao> di = new List<Adicao>();            
        
            //DI
            di = (  from adic in ds.Tables["adicao"].AsEnumerable()
                    join merc in ds.Tables["mercadoria"].AsEnumerable()                    
                      on adic.Field<Int32>("adicao_id")
                  equals merc.Field<Int32>("adicao_id")
                    join decl in ds.Tables["declaracaoImportacao"].AsEnumerable()
                      on adic.Field<Int32>("declaracaoImportacao_id")
                  equals decl.Field<Int32>("declaracaoImportacao_id")               
                 orderby adic.Field<string>("numeroDI"), adic.Field<string>("numeroAdicao")
                  
                 select new Adicao
                  {
                      DI           = adic.Field<string>("numeroDI"),
                      NCM          = adic.Field<string>("dadosMercadoriaCodigoNcm"),
                      Descricao    = merc.Field<string>("descricaoMercadoria"),
                      Quantidade   = Convert.ToInt32(merc.Field<string>("quantidade").Substring(0, 9)),
                      adicao       = adic.Field<string>("numeroAdicao"),
                      Sequencia    = merc.Field<string>("numeroSequencialItem"),

                      Aliq_II      = string.IsNullOrEmpty(adic.Field<string>("iiAliquotaAdValorem")) ? 0 : Convert.ToDouble(adic.Field<string>("iiAliquotaAdValorem").Substring(0, 3) + ',' + adic.Field<string>("iiAliquotaAdValorem").Substring(3, 2)),
                      Aliq_IPI     = string.IsNullOrEmpty(adic.Field<string>("ipiAliquotaAdValorem")) ? 0 : Convert.ToDouble(adic.Field<string>("ipiAliquotaAdValorem").Substring(0, 3) + ',' + adic.Field<string>("ipiAliquotaAdValorem").Substring(3, 2)),
                      Aliq_PIS     = string.IsNullOrEmpty(adic.Field<string>("pisPasepAliquotaAdValorem")) ? 0 : Convert.ToDouble(adic.Field<string>("pisPasepAliquotaAdValorem").Substring(0, 3) + ',' + adic.Field<string>("pisPasepAliquotaAdValorem").Substring(3, 2)),
                      Aliq_COFINS  = string.IsNullOrEmpty(adic.Field<string>("cofinsAliquotaAdValorem")) ? 0 : Convert.ToDouble(adic.Field<string>("cofinsAliquotaAdValorem").Substring(0, 3) + ',' + adic.Field<string>("cofinsAliquotaAdValorem").Substring(3, 2)),
                      //Aliq_ICMS    = string.IsNullOrEmpty(adic.Field<string>("pisCofinsBaseCalculoAliquotaICMS")) ? 0 : Convert.ToDouble(adic.Field<string>("pisCofinsBaseCalculoAliquotaICMS").Substring(0, 3) + ',' + adic.Field<string>("pisCofinsBaseCalculoAliquotaICMS").Substring(3, 2)),
                      valor_II     = string.IsNullOrEmpty(adic.Field<string>("iiAliquotaValorRecolher")) ? 0 : Convert.ToDouble(adic.Field<string>("iiAliquotaValorRecolher").Substring(0, 13) + ',' + adic.Field<string>("iiAliquotaValorRecolher").Substring(13, 2)),
                      valor_IPI    = string.IsNullOrEmpty(adic.Field<string>("ipiAliquotaValorRecolher")) ? 0 : Convert.ToDouble(adic.Field<string>("ipiAliquotaValorRecolher").Substring(0, 13) + ',' + adic.Field<string>("ipiAliquotaValorRecolher").Substring(13, 2)),
                      valor_PIS    = string.IsNullOrEmpty(adic.Field<string>("pisPasepAliquotaValorRecolher")) ? 0 : Convert.ToDouble(adic.Field<string>("pisPasepAliquotaValorRecolher").Substring(0, 13) + ',' + adic.Field<string>("pisPasepAliquotaValorRecolher").Substring(13, 2)),
                      valor_COFINS = string.IsNullOrEmpty(adic.Field<string>("cofinsAliquotaValorRecolher")) ? 0 : Convert.ToDouble(adic.Field<string>("cofinsAliquotaValorRecolher").Substring(0, 13) + ',' + adic.Field<string>("cofinsAliquotaValorRecolher").Substring(13, 2)),
                      //valor_ICMS = string.IsNullOrEmpty(adic.Field<string>("cofinsAliquotaValorRecolher")) ? 0 : Convert.ToDouble(adic.Field<string>("cofinsAliquotaValorRecolher").Substring(0, 13) + ',' + adic.Field<string>("cofinsAliquotaValorRecolher").Substring(13, 2))
                      valor_Aduaneiro = string.IsNullOrEmpty(adic.Field<string>("iiBaseCalculo")) ? 0 : Convert.ToDouble(adic.Field<string>("iiBaseCalculo").Substring(0, 13) + ',' + adic.Field<string>("iiBaseCalculo").Substring(13, 2)),

                  }).ToList();

            return di;
        }

        private void btnLocaliza_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();

            dlg.Filter = "Xml files (*.xml) |*.xml;";
            dlg.ShowDialog();
            txtArquivo.Text = dlg.FileName;

            if (txtArquivo.Text == "")
            {
                MessageBox.Show("Favor Informar o XML.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                btnLocaliza.Focus();
                return;
            }

            dataGridView.AutoGenerateColumns = false;
            dataGridView.DataSource = getDI();

            if (dataGridView.RowCount == 0)
            {
                MessageBox.Show("DI não localizada na base do Siscomex.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                btnExportar.Enabled = false;
            }
            else
            {
                btnExportar.Enabled = true;
            }
        }

        private void btnExportar_Click(object sender, EventArgs e)
        {
            if (dataGridView.RowCount > 0)
            {
                try
                {
                    ExportarDataGridViewExcel();

                    MessageBox.Show("Planilha gerada com sucesso em 'C:\\ms2000\\Planilhas_Ms2000\\'", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception)
                {
                    MessageBox.Show("Erro na geração da planilha.", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void ExportarDataGridViewExcel()
        {
            string pathDestino = @"C:\MS2000\Planilhas_Ms2000\";

            if (!Directory.Exists(pathDestino))
            {
                Directory.CreateDirectory(pathDestino);
            }

            Microsoft.Office.Interop.Excel.Application app = null;
            Workbook workbook = null;
            Worksheet oSheet = null;
            Range workSheet_range = null;

            app = new Microsoft.Office.Interop.Excel.Application();
            workbook = app.Workbooks.Add();

            app.DisplayAlerts = false;
            app.Visible = true;

            oSheet = null;
            oSheet = (Worksheet)workbook.Sheets[1];
            oSheet.Name = "SUMMARY";
            oSheet.Tab.Color = Color.FromArgb(255, 192, 0);

            const string PATH_IMG = @"c:\ms2000\logoms.jpg";
            oSheet.Shapes.AddPicture(PATH_IMG, Microsoft.Office.Core.MsoTriState.msoFalse, Microsoft.Office.Core.MsoTriState.msoCTrue, 5, 5, 140, 40);

            //Logotipo
            oSheet.get_Range("A1", "A4").Merge(Type.Missing);
            workSheet_range = oSheet.get_Range("A1", "A4");
            workSheet_range.VerticalAlignment = 2;
            workSheet_range.Font.Size = 14;
            workSheet_range.Font.Bold = true;
            workSheet_range.Interior.Color = Color.White;

            //Titulo
            oSheet.get_Range("B2", "W2").Merge(Type.Missing);
            workSheet_range = oSheet.get_Range("B2", "W2");
            workSheet_range.Value2 = "DIS Siscomex";
            workSheet_range.VerticalAlignment = 2;
            workSheet_range.Font.Size = 10;
            workSheet_range.Interior.Color = Color.White;
            //---            

            //oSheet.get_Range("A5", "I5").Borders.Color = Color.White.ToArgb();
            //oSheet.get_Range("A5", "I5").Font.Color = Color.White;
            //oSheet.get_Range("A5", "I5").HorizontalAlignment = XlHAlign.xlHAlignCenter;
            //oSheet.get_Range("A5", "I5").Font.Size = 6;
            //oSheet.get_Range("A5", "I5").Interior.Color = Color.Blue;
            //oSheet.get_Range("A5", "I5").Font.Bold = true;
            //oSheet.get_Range("A5", "I5").Font.Color = Color.White;

            oSheet.get_Range("A5", "P5").Borders.Color = Color.White.ToArgb();
            oSheet.get_Range("A5", "P5").Font.Color = Color.White;
            oSheet.get_Range("A5", "P5").HorizontalAlignment = XlHAlign.xlHAlignCenter;
            oSheet.get_Range("A5", "P5").Font.Size = 6;
            oSheet.get_Range("A5", "P5").Interior.Color = Color.Blue;
            oSheet.get_Range("A5", "P5").Font.Bold = true;
            oSheet.get_Range("A5", "P5").Font.Color = Color.White;

            oSheet.Cells[5, 1] = "DI";
            oSheet.Cells[5, 2] = "";
            oSheet.Cells[5, 3] = "Descrição";
            oSheet.Cells[5, 4] = "NCM";
            oSheet.Cells[5, 5] = "Quantidade";
            oSheet.Cells[5, 6] = "Adição";
            oSheet.Cells[5, 7] = "Sequencial";
            //oSheet.Cells[5, 7] = "Aliq. II";
            //oSheet.Cells[5, 8] = "Aliq. IPI";
            oSheet.Cells[5, 8] = "Aduaneiro";
            oSheet.Cells[5, 9] = "II";
            oSheet.Cells[5, 10] = "IPI";
            oSheet.Cells[5, 11] = "PIS";
            oSheet.Cells[5, 12] = "COFINS";            

            oSheet.Cells[5, 13] = "Aliq. II";
            oSheet.Cells[5, 14] = "Aliq. IPI";
            oSheet.Cells[5, 15] = "Aliq. PIS";
            oSheet.Cells[5, 16] = "Aliq. COFINS";            

            int i = 6;
            string adicao = "0";
            string di = "0";
          
            foreach (var item in getDI())
            {

                if (di != item.DI)
                {
                    oSheet.Cells[i, 1] = item.DI;  
                }
                else
                {
                    oSheet.Cells[i, 1] = "-";
                }

                oSheet.Cells[i, 2] = item.DI;
                oSheet.Cells[i, 3] = item.Descricao;
                oSheet.Cells[i, 4] = item.NCM;
                oSheet.Cells[i, 5] = item.Quantidade;               
                oSheet.Cells[i, 7] = item.Sequencia;
                //oSheet.Cells[i, 7] = item.Aliq_II;
                //oSheet.Cells[i, 8] = item.Aliq_IPI;
                oSheet.Cells[i, 13] = item.Aliq_II;
                oSheet.Cells[i, 14] = item.Aliq_IPI;
                oSheet.Cells[i, 15] = item.Aliq_PIS;
                oSheet.Cells[i, 16] = item.Aliq_COFINS;                
                
                if ((adicao != item.adicao) || (di != item.DI))
                {
                    oSheet.Cells[i,  6] = item.adicao;
                    oSheet.Cells[i,  8] = item.valor_Aduaneiro;
                    oSheet.Cells[i,  9] = item.valor_II;
                    oSheet.Cells[i, 10] = item.valor_IPI;
                    oSheet.Cells[i, 11] = item.valor_PIS;
                    oSheet.Cells[i, 12] = item.valor_COFINS;                                     
                }
                else
                {
                    oSheet.Cells[i,  6] = "";
                    oSheet.Cells[i,  8] = "";
                    oSheet.Cells[i,  9] = "";
                    oSheet.Cells[i, 10] = "";
                    oSheet.Cells[i, 11] = "";
                    oSheet.Cells[i, 12] = "";
                }                

                adicao = item.adicao;
                di = item.DI;
                i++;
            }

            for (int z = 6; z < i; z++)
            {
                oSheet.get_Range("A" + z.ToString(), "P" + z.ToString()).Font.Color = Color.Black;
                oSheet.get_Range("A" + z.ToString(), "P" + z.ToString()).Borders.Color = Color.White.ToArgb();
                oSheet.get_Range("A" + z.ToString(), "P" + z.ToString()).Interior.Color = Color.FromArgb(220, 230, 241);
                oSheet.get_Range("A" + z.ToString(), "P" + z.ToString()).Font.Size = 8;

                oSheet.get_Range("B" + z.ToString(), "P" + z.ToString()).ColumnWidth = 20;


                oSheet.get_Range("A" + z.ToString(), "A" + z.ToString()).ColumnWidth = 30;

                oSheet.get_Range("A" + z.ToString(), "P" + z.ToString()).HorizontalAlignment = XlHAlign.xlHAlignCenter;

                oSheet.get_Range("A" + z.ToString(), "H" + z.ToString()).NumberFormatLocal = "@";

                oSheet.get_Range("H" + z.ToString(), "P" + z.ToString()).NumberFormatLocal = "#.##0,00;-#.##0,00";
                //oSheet.get_Range("I" + z.ToString(), "I" + z.ToString()).NumberFormatLocal = "#.##0,00;-#.##0,00";
                //oSheet.get_Range("J" + z.ToString(), "J" + z.ToString()).NumberFormatLocal = "#.##0,00;-#.##0,00";
            }

            workbook.SaveAs(pathDestino + "DISiscomex_" + DateTime.Now.ToString("ddMMyyyy HHmmss") + ".xls", Microsoft.Office.Interop.Excel.XlFileFormat.xlWorkbookNormal,
                                                    Missing.Value,
                                                    Missing.Value,
                                                    Missing.Value,
                                                    Missing.Value,
                                                    Microsoft.Office.Interop.Excel.XlSaveAsAccessMode.xlExclusive,
                                                    Missing.Value,
                                                    Missing.Value,
                                                    Missing.Value);

            workbook.Close(true, Missing.Value, Missing.Value);
            app.Quit();
        }
    }
}
