using Microsoft.Reporting.WinForms;
using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;

namespace MS2000.Desktop.Menu.Consultas
{
    public partial class FrmGraficosGerenciais : MS2000.Desktop.Componentes.MSForm01
    {
        public class Periodo
        {
            public string MesAno { get; set; }
            public int Quantidade { get; set; }
            public string Tipo { get; set; }
        }

        DateTimeFormatInfo _dtfi;

        public FrmGraficosGerenciais()
        {
            InitializeComponent();

            CultureInfo ci = CultureInfo.CreateSpecificCulture("en-US");
            _dtfi = ci.DateTimeFormat;
            _dtfi.AbbreviatedMonthNames = new string[] { "Jan", "Feb", "Mar", 
                                                  "Apr", "May", "Jun", 
                                                  "Jul", "Aug", "Sep", 
                                                  "Oct", "Nov", "Dec", "" };
            _dtfi.AbbreviatedMonthGenitiveNames = _dtfi.AbbreviatedMonthNames;
        }


        private void FrmGraficosGerenciais_Load(object sender, EventArgs e)
        {


        }

        private void getMountUrgency()
        {
            var urgencias = (new ProcessosTipoUrgencia()).BuscarLista();
            foreach (var urgencia in urgencias)
            {
                ListViewItem item = new ListViewItem((new[] { urgencia.PK_Tipo_Urgencia.ToString(), urgencia.Sigla, urgencia.Descricao }));
                ltvUrgencia.Items.Add(item);
            }
        }

        private List<Periodo> getGraficoAir(string contrato = "", string plataforma = "")
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            using (SqlCommand cmd = new SqlCommand("PivotWizard", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@P_Row_Field", "Tipo_Declaracao");
                cmd.Parameters.AddWithValue("@P_Column_Field", "YEAR(DT_DESEMBARACO)*100+Month(DT_DESEMBARACO)");
                cmd.Parameters.AddWithValue("@P_Value", "1*1");
                cmd.Parameters.AddWithValue("@P_From", "Processos");
                //cmd.Parameters.AddWithValue("@P_Where", "DT_DESEMBARACO BETWEEN '" + dtpInicio.Text + "' and '" + dtpFinal.Text + "' and Importador in ('2','239') and Tipo_Declaracao in ('01','05') and Tipo in ('11') and FK_Processos_Tipo_Urgencia in (1,4)");

                if (ckbGraficoPorPlataforma.Checked)
                {
                    cmd.Parameters.AddWithValue("@P_Where", "DT_DESEMBARACO BETWEEN '" + dtpInicio.Text + "' and '" + dtpFinal.Text
                        + "' and status <> '4' and Importador in ('2','239','477','478','495') and Tipo_Declaracao in ('01','05') and Tipo in ('11') and FK_Processos_Tipo_Urgencia in (1,4) AND Local_Inventario = '" + plataforma + "' AND Contrato = '" + contrato + "'");

                }
                else
                {
                    cmd.Parameters.AddWithValue("@P_Where", "DT_DESEMBARACO BETWEEN '" + dtpInicio.Text + "' and '" + dtpFinal.Text + "' and status <> '4' and Importador in ('2','239','477','478','495') and Tipo_Declaracao in ('01','05') and Tipo in ('11') and FK_Processos_Tipo_Urgencia in (1,4)");
                }
                List<Periodo> lista = new List<Periodo>();
                try
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {                        
                        while (reader.Read())
                        {
                            for (int i = 1; i < reader.FieldCount; i++)
                            {
                                lista.Add(new Periodo
                               {
                                   MesAno = _dtfi.GetAbbreviatedMonthName(Convert.ToInt16(reader.GetName(i).Substring(4, 2))) + "/" + reader.GetName(i).Substring(0, 4),
                                   Quantidade = (reader.GetValue(i) == DBNull.Value ? (int)0 : ((int)reader.GetValue(i))),
                                   Tipo = (string)reader.GetValue(0)
                               });
                            }

                        }

                        return lista;
                    }
                }
                catch (SqlException e)
                {
                    return lista;
                }              
            }
        }

        private List<Periodo> getGraficoOcean(string contrato = "", string plataforma = "")
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            using (SqlCommand cmd = new SqlCommand("PivotWizard", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@P_Row_Field", "Tipo_Declaracao");
                cmd.Parameters.AddWithValue("@P_Column_Field", "YEAR(DT_DESEMBARACO)*100+Month(DT_DESEMBARACO)");
                cmd.Parameters.AddWithValue("@P_Value", "1*1");
                cmd.Parameters.AddWithValue("@P_From", "Processos");
                //cmd.Parameters.AddWithValue("@P_Where", "DT_DESEMBARACO BETWEEN '" + dtpInicio.Text + "' and '" + dtpFinal.Text + "' and Importador in ('2','239') and Tipo_Declaracao in ('01','05') and Tipo in ('12') ");

                if (ckbGraficoPorPlataforma.Checked)
                {
                    cmd.Parameters.AddWithValue("@P_Where", "DT_DESEMBARACO BETWEEN '" + dtpInicio.Text + "' and '" + dtpFinal.Text
                        + "' and status <> '4' and Importador in ('2','239','477','478','495') and Tipo_Declaracao in ('01','05') and Tipo in ('12') AND Local_Inventario = '" + plataforma + "' AND Contrato = '" + contrato + "'");
                }
                else
                {
                    cmd.Parameters.AddWithValue("@P_Where", "DT_DESEMBARACO BETWEEN '" + dtpInicio.Text + "' and '" + dtpFinal.Text + "' and status <> '4' and Importador in ('2','239','477','478','495') and Tipo_Declaracao in ('01','05') and Tipo in ('12') ");
                }

                List<Periodo> lista = new List<Periodo>();
                try
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {                        
                        while (reader.Read())
                        {
                            for (int i = 1; i < reader.FieldCount; i++)
                            {
                                lista.Add(new Periodo
                                {
                                    MesAno = _dtfi.GetAbbreviatedMonthName(Convert.ToInt16(reader.GetName(i).Substring(4, 2))) + "/" + reader.GetName(i).Substring(0, 4),
                                    Quantidade = (reader.GetValue(i) == DBNull.Value ? (int)0 : ((int)reader.GetValue(i))),
                                    Tipo = (string)reader.GetValue(0)
                                });
                            }

                        }

                        return lista;
                    }
                }
                catch (SqlException e)
                {
                    return lista;
                }
            }
        }

        private List<Periodo> getGraficoUrgencias(string contrato = "", string plataforma = "")
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            using (SqlCommand cmd = new SqlCommand("PivotWizard", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@P_Row_Field", "u.Sigla");
                cmd.Parameters.AddWithValue("@P_Column_Field", "YEAR(DT_DESEMBARACO)*100+Month(DT_DESEMBARACO)");
                cmd.Parameters.AddWithValue("@P_Value", "1*1");
                cmd.Parameters.AddWithValue("@P_From", "Processos INNER JOIN Processos_Tipo_Urgencia u on Processos.FK_Processos_Tipo_Urgencia = u.PK_Tipo_Urgencia");
                //d.Parameters.AddWithValue("@P_Where", "DT_DESEMBARACO BETWEEN '" + dtpInicio.Text + "' and '" + dtpFinal.Text + "' and Importador in ('2','239') and FK_Processos_Tipo_Urgencia in (1,4,5)");

                if (ckbGraficoPorPlataforma.Checked)
                {
                    cmd.Parameters.AddWithValue("@P_Where", "DT_DESEMBARACO BETWEEN '" + dtpInicio.Text + "' and '" + dtpFinal.Text
                        + "' and status <> '4' and Importador in ('2','239','477','478','495') and FK_Processos_Tipo_Urgencia in (1,4,5) AND Tipo in ('11','12') and Tipo_Declaracao in ('01','05') AND Local_Inventario = '" + plataforma + "' AND Contrato = '" + contrato + "'");
                }
                else
                {
                    cmd.Parameters.AddWithValue("@P_Where", "DT_DESEMBARACO BETWEEN '" + dtpInicio.Text + "' and '" + dtpFinal.Text + "' and status <> '4' and Importador in ('2','239','477','478','495') and FK_Processos_Tipo_Urgencia in (1,4,5) AND Tipo in ('11','12') and Tipo_Declaracao in ('01','05') ");
                }

                try
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        List<Periodo> lista = new List<Periodo>();
                        while (reader.Read())
                        {
                            for (int i = 1; i < reader.FieldCount; i++)
                            {
                                lista.Add(new Periodo
                                {
                                    MesAno = _dtfi.GetAbbreviatedMonthName(Convert.ToInt16(reader.GetName(i).Substring(4, 2))) + "/" + reader.GetName(i).Substring(0, 4),
                                    Quantidade = (reader.GetValue(i) == DBNull.Value ? (int)0 : ((int)reader.GetValue(i))),
                                    Tipo = (string)reader.GetValue(0)
                                });
                            }
                        }
                        return lista;
                    }
                }
                catch (SqlException e)
                {
                    return null;
                }
            }
        }

        private List<Periodo> getGraficoCAF_UAF(string contrato = "", string plataforma = "")
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string sql = "SELECT u.Sigla, " +
            "SUM(CASE WHEN DATEDIFF(day, c.Data_Chegada_URF_Cheg, p.DT_DESEMBARACO)<=5 THEN 1 END) AS '1', " +
            "SUM(CASE WHEN DATEDIFF(day, c.Data_Chegada_URF_Cheg, p.DT_DESEMBARACO)>5  " +
            "AND DATEDIFF(day, c.Data_Chegada_URF_Cheg, p.DT_DESEMBARACO)<=10 THEN 1 END) AS '2', " +
            "SUM(CASE WHEN DATEDIFF(day, c.Data_Chegada_URF_Cheg, p.DT_DESEMBARACO)>10  " +
            "AND DATEDIFF(day, c.Data_Chegada_URF_Cheg, p.DT_DESEMBARACO)<=15 THEN 1 END) AS '3', " +
            "SUM(CASE WHEN DATEDIFF(day, c.Data_Chegada_URF_Cheg, p.DT_DESEMBARACO)>15 THEN 1 END) AS '4' " +
            "FROM Processos p inner join Processos_Tipo_Urgencia u on p.FK_Processos_Tipo_Urgencia = u.PK_Tipo_Urgencia " +
            "INNER JOIN Conhecimento_Processo c on c.FK_Processo = p.ID " +
            "WHERE p.DT_DESEMBARACO between '" + dtpInicio.Text + "' and '" + dtpFinal.Text + "' and status <> '4' and p.Importador in ('2','239','477','478','495') and p.FK_Processos_Tipo_Urgencia in (1,4) AND p.Tipo in ('11','12') and p.Tipo_Declaracao in ('01','05') ";

            if (ckbGraficoPorPlataforma.Checked)
            {
                sql += " AND Local_Inventario = '" + plataforma + "' AND Contrato = '" + contrato + "'  GROUP BY  u.Sigla";
            }
            else
            {
                sql += "GROUP BY  u.Sigla";
            }

            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                try
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        List<Periodo> lista = new List<Periodo>();
                        while (reader.Read())
                        {
                            for (int i = 1; i < reader.FieldCount; i++)
                            {
                                lista.Add(new Periodo
                                {
                                    MesAno = (string)reader.GetName(i),
                                    Quantidade = (reader.GetValue(i) == DBNull.Value ? (int)0 : ((int)reader.GetValue(i))),
                                    Tipo = (string)reader.GetValue(0)
                                });
                            }
                        }
                        return lista;
                    }
                }
                catch (SqlException e)
                {
                    return null;
                }
            }
        }

        private List<Periodo> getGraficoOF(string contrato = "", string plataforma = "")
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string sql = "SELECT u.Sigla, " +
            "SUM(CASE WHEN DATEDIFF(day, c.Data_Chegada_URF_Cheg, p.DT_DESEMBARACO)<=10 THEN 1 END) AS '1', " +
            "SUM(CASE WHEN DATEDIFF(day, c.Data_Chegada_URF_Cheg, p.DT_DESEMBARACO)>10  " +
            "AND DATEDIFF(day, c.Data_Chegada_URF_Cheg, p.DT_DESEMBARACO)<=20 THEN 1 END) AS '2', " +
            "SUM(CASE WHEN DATEDIFF(day, c.Data_Chegada_URF_Cheg, p.DT_DESEMBARACO)>20 " +
            "AND DATEDIFF(day, c.Data_Chegada_URF_Cheg, p.DT_DESEMBARACO)<=30 THEN 1 END) AS '3', " +
            "SUM(CASE WHEN DATEDIFF(day, c.Data_Chegada_URF_Cheg, p.DT_DESEMBARACO)>30 " +
            "AND DATEDIFF(day, c.Data_Chegada_URF_Cheg, p.DT_DESEMBARACO)<=40 THEN 1 END) AS '4', " +
            "SUM(CASE WHEN DATEDIFF(day, c.Data_Chegada_URF_Cheg, p.DT_DESEMBARACO)>40 " +
            "AND DATEDIFF(day, c.Data_Chegada_URF_Cheg, p.DT_DESEMBARACO)<=50 THEN 1 END) AS '5', " +
            "SUM(CASE WHEN DATEDIFF(day, c.Data_Chegada_URF_Cheg, p.DT_DESEMBARACO)>50 THEN 1 END) AS '6' " +
            "FROM Processos p inner join Processos_Tipo_Urgencia u on p.FK_Processos_Tipo_Urgencia = u.PK_Tipo_Urgencia " +
            "INNER JOIN Conhecimento_Processo c on c.FK_Processo = p.ID " +
            "WHERE p.DT_DESEMBARACO between '" + dtpInicio.Text + "' and '" + dtpFinal.Text + "' and status <> '4' and p.Importador in ('2','239','477','478','495') and FK_Processos_Tipo_Urgencia in (5) AND p.Tipo in ('11','12') and p.Tipo_Declaracao in ('01','05') ";

            if (ckbGraficoPorPlataforma.Checked)
            {
                sql += " AND Local_Inventario = '" + plataforma + "' AND Contrato = '" + contrato + "'  GROUP BY  u.Sigla";
            }
            else
            {
                sql += "GROUP BY  u.Sigla";
            }


            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                try
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        List<Periodo> lista = new List<Periodo>();
                        while (reader.Read())
                        {
                            for (int i = 1; i < reader.FieldCount; i++)
                            {
                                lista.Add(new Periodo
                                {
                                    MesAno = reader.GetName(i).ToString(),
                                    Quantidade = (reader.GetValue(i) == DBNull.Value ? (int)0 : ((int)reader.GetValue(i))),
                                    Tipo = reader.GetValue(0).ToString()
                                });
                            }

                        }
                        return lista;
                    }
                }
                catch (SqlException e)
                {
                    return null;
                }
            }
        }

        private void getMountClient()
        {
            var clientes = (new Importador()).BuscarListaAtivos();
            foreach (var cliente in clientes)
            {
                ListViewItem item = new ListViewItem((new[] { cliente.Codigo, Convert.ToUInt64(cliente.CNPJ_CPF_COMPLETO).ToString(@"00\.000\.000\/0000\-00"), cliente.Razao_Social }));
                ltvClientes.Items.Add(item);
            }
        }

        private void btnGerarGrafico_Click(object sender, EventArgs e)
        {
            List<Periodo> dtAir;
            List<Periodo> dtOcean;
            List<Periodo> dtUrgencias;
            List<Periodo> dtCAF_UAF;
            List<Periodo> dtOF;

            if (ckbGraficoPorPlataforma.Checked)
            {
                dtAir = getGraficoAir(((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo,
                    ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo);
                dtOcean = getGraficoOcean(((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo,
                   ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo);
                dtUrgencias = getGraficoUrgencias(((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo,
                   ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo);
                dtCAF_UAF = getGraficoCAF_UAF(((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo,
                    ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo);
                dtOF = getGraficoOF(((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo,
                    ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo);
            }
            else
            {
                dtAir = getGraficoAir();
                dtOcean = getGraficoOcean();
                dtUrgencias = getGraficoUrgencias();
                dtCAF_UAF = getGraficoCAF_UAF();
                dtOF = getGraficoOF();
            }

            if (dtAir != null || dtOcean != null || dtUrgencias != null || dtCAF_UAF != null || dtOF != null)
            {
                rptView.LocalReport.DataSources.Clear();
                if (ckbGraficoPorPlataforma.Checked)
                {
                    rptView.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Consultas.rptTransoceanPorPlataforma.rdlc";
                    ReportParameter param = new ReportParameter("txtPlataforma", ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao);
                    rptView.LocalReport.SetParameters(param);
                }
                else
                {
                    rptView.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Consultas.rptTransocean.rdlc";
                }
                rptView.LocalReport.EnableHyperlinks = true;

                ReportDataSource dataset1 = new ReportDataSource("dsAirShipments", dtAir);
                rptView.LocalReport.DataSources.Add(dataset1);
                
                ReportDataSource dataset2 = new ReportDataSource("dsOceanShipments", dtOcean);
                rptView.LocalReport.DataSources.Add(dataset2);                                 

                ReportDataSource dataset3 = new ReportDataSource("dsUrgencias", dtUrgencias);
                rptView.LocalReport.DataSources.Add(dataset3);

                ReportDataSource dataset4 = new ReportDataSource("dsCAF_UAF", dtCAF_UAF);
                rptView.LocalReport.DataSources.Add(dataset4);

                ReportDataSource dataset5 = new ReportDataSource("dsOF", dtOF);
                rptView.LocalReport.DataSources.Add(dataset5);

                rptView.LocalReport.Refresh();
                rptView.RefreshReport();
            }
            else
            {
                MessageBox.Show("Não existem dados para exibição dos gráficos",
                    "Informação",
                     MessageBoxButtons.OK,
                     MessageBoxIcon.Information);
            }

        }

        //private void btnExportar_Click(object sender, EventArgs e)
        //{
        //savedlg.Filter = "Windows Bitmap (*.bmp)|*.bmp|" +
        //              "Graphics Interchange Format (*.gif)|*.gif|" +
        //              "JPEG File Interchange Format (*.jpg)|" +
        //                 "*.jpg;*.jpeg;*.jfif|" +
        //              "Portable Network Graphics (*.png)|*.png|" +
        //              "Tagged Imaged File Format (*.tif)|*.tif;*.tiff";

        //saveChart.Filter = "JPEG File Interchange Format (*.jpg)|" +
        //                   "*.jpg;*.jpeg;*.jfif";
        //if (saveChart.ShowDialog() == DialogResult.OK)
        //{
        //    try
        //    {
        //        //var chartimage = new MemoryStream();

        //        chart1.SaveImage(saveChart.FileName, ChartImageFormat.Jpeg);
        //    }
        //    catch (Exception exc)
        //    {
        //        MessageBox.Show(exc.Message, Text);
        //        return;
        //    }
        //}
        //}

        private void chart1_Click(object sender, EventArgs e)
        {

        }

        private void ckbGraficoPorPlataforma_CheckedChanged(object sender, EventArgs e)
        {
            Application.DoEvents();
            cbbListaPlataformas.Enabled = ckbGraficoPorPlataforma.Checked;
            Application.DoEvents();
            if (ckbGraficoPorPlataforma.Checked)
            {
                cbbListaPlataformas.DataSource = getContratosLocal();
                cbbListaPlataformas.DisplayMember = "Full";
            }
            else
            {
                cbbListaPlataformas.DataSource = null;
            }
        }

        public class ContratoLocal
        {

            public string LocalCodigo { get; set; }
            public string LocalDescricao { get; set; }
            public string ContratoCodigo { get; set; }
            public string ContratoDescricao { get; set; }

            public string Full
            {
                get
                {
                    return string.Format("{0}/ {1}", ContratoDescricao, LocalDescricao);
                }
            }
        }

        private List<ContratoLocal> getContratosLocal()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string sql = "SELECT L.Local as 'CodigoLocal', L.Descricao as 'LocalDescricao', C.Descricao AS 'ContratoDescricao', L.Contrato as 'CodigoContrato' " +
                        "FROM Contratos C " +
                        "INNER JOIN Locais_Inventario L ON C.Contrato = L.Contrato AND L.Importador = C.Importador " +
                        "INNER JOIN Processos p on p.Contrato = C.Contrato and p.Local_Inventario = L.Local AND C.Importador = P.Importador " +
                        "WHERE P.Status <> '4' AND (p.NR_DECLARACAO_IMP <> '') AND (p.NR_DECLARACAO_IMP IS NOT NULL) AND " +
                        "p.DT_DESEMBARACO BETWEEN '" + dtpInicio.Text + "' AND '" + dtpFinal.Text + "' AND L.Descricao <> '' AND C.Importador IN  ('2','239','477','478','495') " +
                        "GROUP BY L.Local, L.Descricao, C.Descricao, L.Contrato " +
                        "ORDER BY 3";

            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                try
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        List<ContratoLocal> lista = new List<ContratoLocal>();
                        while (reader.Read())
                        {
                            lista.Add(
                                new ContratoLocal
                                {
                                    ContratoCodigo = reader["CodigoContrato"].ToString(),
                                    ContratoDescricao = reader["ContratoDescricao"].ToString().ToUpper(),
                                    LocalCodigo = reader["CodigoLocal"].ToString(),
                                    LocalDescricao = reader["LocalDescricao"].ToString().ToUpper()
                                });
                            Application.DoEvents();
                        }
                        return lista;
                    }
                }
                catch (SqlException e)
                {
                    return null;
                }
            }
        }

        private void dtpInicio_ValueChanged(object sender, EventArgs e)
        {
            Application.DoEvents();
            ckbGraficoPorPlataforma_CheckedChanged(null, null);
        }

        private void dtpFinal_ValueChanged(object sender, EventArgs e)
        {
            Application.DoEvents();
            ckbGraficoPorPlataforma_CheckedChanged(null, null);
        }

    }
}
