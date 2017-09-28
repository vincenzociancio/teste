using Microsoft.Reporting.WinForms;
using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Consultas
{
    public partial class FrmGraficoDeImpostos : Form
    {
        public class ImpostoConsolidado
        {
            public int Ano { get; set; }
            public int Mes { get; set; }
            public double? II { get; set; }
            public double? IPI { get; set; }
            public double? PIS { get; set; }
            public double? COFINS { get; set; }
            public double? ICMS { get; set; }
            public double? CIF { get; set; }            
            public double? ARMAZENAGEM { get; set; }
            public string Url { get; set; }

            public string MesAno
            {
                get
                {
                    return Enum.GetName(typeof(MesesAbrevING), Mes) + "/" + Ano;
                }
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

        public FrmGraficoDeImpostos()
        {
            InitializeComponent();
        }

        private void FrmGraficoImpostosConsolidado_Load(object sender, EventArgs e)
        {
            //this.rptView.RefreshReport();           
            dtpInicio.Value = Convert.ToDateTime("01/" + DateTime.Now.Date.Month.ToString() + "/" + DateTime.Now.Date.Year.ToString());
            dtpFinal.Value = DateTime.Now.Date;

            getMountClient();
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

        private List<ImpostoConsolidado> getDadosImpostosConsolidados(List<string> importadores)
        {            
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string sql = string.Empty;
            if (rdbPagos.Checked)
            {                
                sql = "SELECT MONTH(p.DT_DESEMBARACO) AS 'MONTH', " +
                      "       YEAR(p.DT_DESEMBARACO) AS 'YEAR', " +
                      "       ROUND(SUM(ps.VALOR_CIF),2) AS 'CIF', " +
                      "       ROUND(SUM(ps.VALOR_II),2) AS 'I.I', " +
                      "       ROUND(SUM(ps.VALOR_IPI),2) AS 'I.P.I', " +
                      "       ROUND(SUM(ps.VALOR_PIS),2) AS 'PIS', " +
                      "       ROUND(SUM(ps.VALOR_COFINS),2) AS 'COFINS', " +
                      "       ROUND(SUM(ps.VALOR_ICMS + ps.VALOR_FECP),2) AS 'ICMS', MIN(p.DT_DESEMBARACO) AS 'DT_INICIO', MAX(p.DT_DESEMBARACO) AS 'DT_FIM', " +                      
                      "       ROUND(SUM(NP.VALOR_REGISTRADO),2) AS ARMAZENAGEM " +
                      "  FROM Processos p " +
                      "       INNER JOIN Processos_Impostos ps on p.Codigo = ps.PROCESSO " +
                      "        LEFT JOIN Numerarios_Processos NP on p.Codigo = NP.PROCESSO AND NP.Numerario IN ('AE','AA','ARMF','ARM','ARMB','ARMA','ect','ARNI','ASEP','ARMP','ARMS','ARSP','SEPB','TMC','AT','ARM.','ARMM','AAC','AEJU','ARMU') AND Valor_Registrado > 0	";   	       
            }
            else
            {
                sql = "SELECT MONTH(p.DT_DESEMBARACO) AS 'MONTH', " +
                      "       YEAR(p.DT_DESEMBARACO) AS 'YEAR', " +
                      "       ROUND(SUM(ps.VALOR_CIF),2) AS 'CIF', " +
                      "       ROUND(SUM(ps.VALOR_SUSPENSO_II),2) AS 'I.I', " +
                      "       ROUND(SUM(ps.VALOR_SUSPENSO_IPI),2) AS 'I.P.I', " +
                      "       ROUND(SUM(ps.VALOR_SUSPENSO_PIS),2) AS 'PIS', " +
                      "       ROUND(SUM(ps.VALOR_SUSPENSO_COFINS),2) AS 'COFINS', " +
                      "       ROUND(SUM(ps.VALOR_SUSPENSO_ICMS + ps.VALOR_SUSPENSO_FECP),2) AS 'ICMS', MIN(p.DT_DESEMBARACO) AS 'DT_INICIO', MAX(p.DT_DESEMBARACO) AS 'DT_FIM', " +
                      "       ROUND(SUM(NP.VALOR_REGISTRADO),2) AS ARMAZENAGEM " +
                      "  FROM Processos p " +
                      "       INNER JOIN Processos_Impostos ps on p.Codigo = ps.PROCESSO " +
                      "        LEFT JOIN Numerarios_Processos NP on p.Codigo = NP.PROCESSO AND NP.Numerario IN ('AE','AA','ARMF','ARM','ARMB','ARMA','ect','ARNI','ASEP','ARMP','ARMS','ARSP','SEPB','TMC','AT','ARM.','ARMM','AAC','AEJU','ARMU') AND Valor_Registrado > 0	";   
            }
            
            sql += "WHERE /*(p.valor_fob > 0) AND*/ p.Status <> '4' AND (p.NR_DECLARACAO_IMP <> '') AND (p.NR_DECLARACAO_IMP IS NOT NULL) AND p.DT_DESEMBARACO BETWEEN '" + dtpInicio.Text + "' AND '" + dtpFinal.Text + "' AND p.Importador IN  ('" + String.Join("','", importadores.ToArray()) + "')";

            if (ckbSomenteImportacao.Checked)
            {
                sql += " AND p.TIPO IN ('11','12') ";                               
            }

            if (ckbGraficoPorPlataforma.Checked)
            {
                var local = ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo;
                var contrato = ((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo;
                sql += string.Format("AND p.Contrato='{0}' AND p.Local_Inventario='{1}' ", contrato, local);
            }
            sql += "GROUP BY YEAR(p.DT_DESEMBARACO), MONTH(p.DT_DESEMBARACO) " +
                "ORDER BY YEAR(p.DT_DESEMBARACO), MONTH(p.DT_DESEMBARACO)";

            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                try
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        List<ImpostoConsolidado> lista = new List<ImpostoConsolidado>();
                        var url = string.Empty;
                        while (reader.Read())
                        {
                            if (rdbPagos.Checked)
                            {
                                url = MontarUrlCriptografada(ltvClientes.CheckedItems[0].SubItems[2].Text,
                                ltvClientes.CheckedItems[0].SubItems[1].Text,
                                Convert.ToDateTime(reader["DT_INICIO"].ToString()),
                                Convert.ToDateTime(reader["DT_FIM"].ToString()),
                                ((ContratoLocal)cbbListaPlataformas.SelectedItem) != null ? ((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo : "",
                                ((ContratoLocal)cbbListaPlataformas.SelectedItem) != null ? ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo : "");
                            }

                            lista.Add(
                                new ImpostoConsolidado
                                {
                                    Mes = (int)reader["MONTH"],
                                    Ano = (int)reader["YEAR"],
                                    II = (reader["I.I"] == DBNull.Value ? (double?)null : (double?)reader["I.I"]),
                                    IPI = (reader["I.P.I"] == DBNull.Value ? (double?)null : (double?)reader["I.P.I"]),
                                    PIS = (reader["PIS"] == DBNull.Value ? (double?)null : (double?)reader["PIS"]),
                                    COFINS = (reader["COFINS"] == DBNull.Value ? (double?)null : (double?)reader["COFINS"]),
                                    ICMS = (reader["ICMS"] == DBNull.Value ? (double?)null : (double?)reader["ICMS"]),
                                    CIF = (reader["CIF"] == DBNull.Value ? (double?)null : (double?)reader["CIF"]),
                                    ARMAZENAGEM = (reader["ARMAZENAGEM"] == DBNull.Value ? (double?)null : (double?)reader["ARMAZENAGEM"]),

                                    Url = url
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

        private string MontarUrlCriptografada(
            string razao_social,
            string cnpj_resumido,
            DateTime data_inicio,
            DateTime data_final, string contrato, string local)
        {

            var string_encriptar = String.Format("{0}|{1}|{2}|{3}|{4}|{5}",
            razao_social,
            cnpj_resumido.Replace(".", "").Replace("/", "").Replace("-", "").Substring(0, 10),
            Convert.ToDateTime(data_inicio.ToString()).ToString("dd/MM/yyyy"),
            Convert.ToDateTime(data_final.ToString()).ToString("dd/MM/yyyy"),
            contrato, local);

            var strig_encriptado = (new MsCriptografia()).Encriptar(string_encriptar);

            var url = String.Format(@"http://187.16.120.99/mslogistica/web/msScriptIng/cusPeriodoResp.asp?op={0}", strig_encriptado);
            return url;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            List<string> importadores = new List<string>();

            foreach (ListViewItem item in ltvClientes.CheckedItems)
            {
                importadores.Add(item.Text);
            }

            if (importadores.Count < 1)
            {
                MessageBox.Show("Selecione um cliente para continuar!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            var nomecliente = ltvClientes.CheckedItems[0].SubItems[2].Text;
            rptView.LocalReport.DataSources.Clear();
            rptView.LocalReport.EnableHyperlinks = true;
            ReportDataSource dataset = new ReportDataSource("dsImpostosConsolidados", getDadosImpostosConsolidados(importadores));

            List<ReportParameter> param = new List<ReportParameter>();
            param.Add(new ReportParameter("txtTitulo", nomecliente));

            if (rdbPagos.Checked)
            {
                if (ckbGraficoPorPlataforma.Checked)
                {
                    param.Add(new ReportParameter("txtTituloChart", "TOTAL OF DUTIES PAID - " + ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao));
                }
                else
                {
                    param.Add(new ReportParameter("txtTituloChart", "TOTAL OF DUTIES PAID"));
                }
                var url_total_geral = MontarUrlCriptografada(ltvClientes.CheckedItems[0].SubItems[2].Text,
                     ltvClientes.CheckedItems[0].SubItems[1].Text,
                     dtpInicio.Value,
                     dtpFinal.Value,
                    ((ContratoLocal)cbbListaPlataformas.SelectedItem) != null ? ((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo : "",
                    ((ContratoLocal)cbbListaPlataformas.SelectedItem) != null ? ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo : "");
                param.Add(new ReportParameter("txtUrlSiteTotal", url_total_geral));
            }
            else
            {
                if (ckbGraficoPorPlataforma.Checked)
                {
                    param.Add(new ReportParameter("txtTituloChart", "TOTAL DUTIES SUSPENDED - " + ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao));
                }
                else
                {
                    param.Add(new ReportParameter("txtTituloChart", "TOTAL DUTIES SUSPENDED"));
                }

                    var url_total_geral = MontarUrlCriptografada(ltvClientes.CheckedItems[0].SubItems[2].Text,
                 ltvClientes.CheckedItems[0].SubItems[1].Text,
                 dtpInicio.Value,
                 dtpFinal.Value,
                ((ContratoLocal)cbbListaPlataformas.SelectedItem) != null ? ((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo : "",
                ((ContratoLocal)cbbListaPlataformas.SelectedItem) != null ? ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo : "");
                            param.Add(new ReportParameter("txtUrlSiteTotal", url_total_geral));
            }


            rptView.LocalReport.SetParameters(param);
            rptView.LocalReport.DataSources.Add(dataset);
            rptView.LocalReport.Refresh();
            rptView.RefreshReport();
            //rptView.SetDisplayMode(DisplayMode.PrintLayout);
            //rptView.ZoomMode = ZoomMode.PageWidth;
        }

        private List<ContratoLocal> getContratosLocal(List<string> importadores)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string sql = "SELECT L.Local as 'CodigoLocal', L.Descricao as 'LocalDescricao', C.Descricao AS 'ContratoDescricao', L.Contrato as 'CodigoContrato' " +
                        "FROM Contratos C " +
                        "INNER JOIN Locais_Inventario L ON C.Contrato = L.Contrato AND L.Importador = C.Importador " +
                        "INNER JOIN Processos p on p.Contrato = C.Contrato and p.Local_Inventario = L.Local AND C.Importador = P.Importador " +
                        "WHERE P.Status <> '4' AND (p.NR_DECLARACAO_IMP <> '') AND (p.NR_DECLARACAO_IMP IS NOT NULL) AND " +
                        "p.DT_DESEMBARACO BETWEEN '" + dtpInicio.Text + "' AND '" + dtpFinal.Text + "' AND L.Descricao <> '' AND C.Importador IN  ('" + String.Join("','", importadores.ToArray()) + "')" +
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

        private void ckbGraficoPorPlataforma_CheckedChanged(object sender, EventArgs e)
        {
            Application.DoEvents();
            cbbListaPlataformas.Enabled = ckbGraficoPorPlataforma.Checked;
            if (ckbGraficoPorPlataforma.Checked && ltvClientes.CheckedItems.Count > 0)
            {
                List<string> importadores = new List<string>();
                foreach (ListViewItem item in ltvClientes.CheckedItems)
                {
                    importadores.Add(item.Text);
                }

                cbbListaPlataformas.DataSource = getContratosLocal(importadores).ToList();
                cbbListaPlataformas.DisplayMember = "Full";
            }
            else
            {
                cbbListaPlataformas.DataSource = null;
            }
        }

        private void ltvClientes_ItemChecked(object sender, ItemCheckedEventArgs e)
        {
            Application.DoEvents();
            ckbGraficoPorPlataforma_CheckedChanged(null, null);
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
