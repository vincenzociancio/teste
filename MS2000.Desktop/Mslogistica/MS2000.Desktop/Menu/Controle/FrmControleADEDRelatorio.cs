using Microsoft.Office.Interop.Excel;
using Microsoft.Reporting.WinForms;
using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.IO;
using System.Windows.Forms;
using DataTable = System.Data.DataTable;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmControleADEDRelatorio : MS2000.Desktop.Componentes.MSForm01
    {
        public class RelatorioADEDeferida
        {
            public string Data { get; set; }
            public string Razao_Social { get; set; }
            public string Embarcacao { get; set; }
            public string Num_Contrato { get; set; }
            public string day { get; set; }
        }

        private SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
        public string statusADE;


        List<RelatorioADEDeferida> listaRelatorioADEDeferida;

        public FrmControleADEDRelatorio()
        {
            InitializeComponent();
        }


        private void FrmControleADEDRelatorio_Load(object sender, EventArgs e)
        {
            chkTodosClientes.Checked = true;
            rdbTodos.Checked = true;
            cbbOpcao.SelectedIndex = 0;
            gvClientes.AutoGenerateColumns = false;
            bindingNavigator.BindingSource = bsRelatorio;
            bsRelatorio.DataSource = GetClientes();
            gvClientes.DataSource = bsRelatorio;            
        }

        private DataTable GetClientes()
        {
            string query = "SELECT " +
                "Codigo, Razao_Social, CNPJ_CPF_COMPLETO FROM Importadores ORDER BY Razao_social";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void PopulaReportView()
        {
            var dataset = new ReportDataSource("ds01", MontaReportView());
                rptView.LocalReport.DataSources.Clear();
                rptView.LocalReport.EnableHyperlinks = true;
                rptView.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Controle.rpRelatorioADEDeferida.rdlc";
                rptView.LocalReport.DataSources.Add(dataset);
          
                IList<ReportParameter> parameters = new List<ReportParameter>();
                parameters.Add(new ReportParameter("DataHora", DateTime.Now.ToShortDateString()));
                parameters.Add(new ReportParameter("Status", statusADE));
                rptView.LocalReport.SetParameters(parameters);
                rptView.LocalReport.Refresh();
                rptView.RefreshReport();
        }
        private List<RelatorioADEDeferida> MontaReportView()
        {

            if (chkTodosClientes.Checked)
            {
                if (rdbAVencer.Checked)
                {
                    statusADE = rdbAVencer.Text;
                    string query =
                        "select cast(ad.DT_VECTO_ADE as datetime) as Data, im.Razao_Social, ad.Embarcacao, ad.Num_Contrato, " +
                        "DATEDIFF(day, cast(GETDATE() as date ), cast( ad.DT_VECTO_ADE as date))+1 as day " +
                        "from Controle_ADE_Deferido ad inner join Importadores im on (im.Codigo = ad.FK_Importador) " +
                        "where cast( ad.DT_VECTO_ADE as date) >= cast(GETDATE() as date ) and Excluido = 0 " +
                        "order by  Cast(DT_VECTO_ADE as Datetime)";
                    listaRelatorioADEDeferida = new List<RelatorioADEDeferida>();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    listaRelatorioADEDeferida.Add(new RelatorioADEDeferida
                                    {
                                        Data = Convert.ToDateTime(reader[0].ToString()).ToShortDateString(),
                                        Razao_Social = reader[1].ToString(),
                                        Embarcacao = reader[2].ToString(),
                                        Num_Contrato = reader[3].ToString(),
                                        day = reader[4].ToString()
                                    });

                                    System.Windows.Forms.Application.DoEvents();
                                }
                            }
                            else
                            {
                                MessageBox.Show("Não há registros de ADE Deferida sobre esse Cliente", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                return listaRelatorioADEDeferida;
                            }
                        }
                    }
                    return listaRelatorioADEDeferida;

                }
                if (rdbVencidos.Checked)
                {
                    statusADE = rdbVencidos.Text;
                    string query = "select cast(ad.DT_VECTO_ADE as datetime) as Data, im.Razao_Social, ad.Embarcacao, ad.Num_Contrato, " +
                                    "DATEDIFF(day, cast( ad.DT_VECTO_ADE as date),cast(GETDATE() as date ))+1 as day " +
                                    "from Controle_ADE_Deferido ad inner join Importadores im on (im.Codigo = ad.FK_Importador) " +
                                    "where cast( ad.DT_VECTO_ADE as date) < cast(GETDATE() as date ) and Excluido = 0 " +
                                        "order by  Cast(DT_VECTO_ADE as Datetime)";

                    listaRelatorioADEDeferida = new List<RelatorioADEDeferida>();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    listaRelatorioADEDeferida.Add(new RelatorioADEDeferida
                                    {
                                        Data = Convert.ToDateTime(reader[0].ToString()).ToShortDateString(),
                                        Razao_Social = reader[1].ToString(),
                                        Embarcacao = reader[2].ToString(),
                                        Num_Contrato = reader[3].ToString(),
                                        day = reader[4].ToString()
                                    });

                                    System.Windows.Forms.Application.DoEvents();
                                }
                            }
                            else
                            {
                                MessageBox.Show("Não há registros de ADE Deferida sobre esse Cliente", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                return listaRelatorioADEDeferida;
                            }
                        }
                    }
                    return listaRelatorioADEDeferida;
                }
                if (rdbTodos.Checked)
                {
                    statusADE = rdbTodos.Text;
                    string query =
                        "select cast(ad.DT_VECTO_ADE as datetime) as Data, im.Razao_Social, ad.Embarcacao, ad.Num_Contrato, " +
                        "DATEDIFF(day, cast(GETDATE() as date ), cast( ad.DT_VECTO_ADE as date))+1 as day, " +
                        "DATEDIFF(day, cast( ad.DT_VECTO_ADE as date),cast(GETDATE() as date ))+1 as day2 " +
                        "from Controle_ADE_Deferido ad inner join Importadores im on (im.Codigo = ad.FK_Importador) " +
                        "where Excluido = 0 " +
                        "order by Razao_Social, Cast(DT_VECTO_ADE as Datetime)";


                    listaRelatorioADEDeferida = new List<RelatorioADEDeferida>();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    listaRelatorioADEDeferida.Add(new RelatorioADEDeferida
                                    {
                                        Data = Convert.ToDateTime(reader[0].ToString()).ToShortDateString(),
                                        Razao_Social = reader[1].ToString(),
                                        Embarcacao = reader[2].ToString(),
                                        Num_Contrato = reader[3].ToString(),
                                        day = reader[4].ToString()
                                    });

                                    System.Windows.Forms.Application.DoEvents();
                                }
                            }
                            else
                            {
                                MessageBox.Show("Não há registros de ADE Deferida sobre esse Cliente", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                return listaRelatorioADEDeferida;
                            }
                        }
                    }
                    return listaRelatorioADEDeferida;
                }
            }
            else
            {
                if (rdbAVencer.Checked)
                {
                    statusADE = rdbAVencer.Text;
                    string query =
                        "select cast(ad.DT_VECTO_ADE as datetime) as Data, im.Razao_Social, ad.Embarcacao, ad.Num_Contrato, " +
                            "DATEDIFF(day, cast(GETDATE() as date ), cast( ad.DT_VECTO_ADE as date))+1 as day " +
                            "from Controle_ADE_Deferido ad inner join Importadores im on (im.Codigo = ad.FK_Importador) " +
                            "where cast( ad.DT_VECTO_ADE as date) >= cast(GETDATE() as date ) and Excluido = 0 and fk_Importador=@fk_Importador " +
                            "order by  Cast(DT_VECTO_ADE as Datetime)";


                    listaRelatorioADEDeferida = new List<RelatorioADEDeferida>();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@fk_importador",
                               bsRelatorio.GetRelatedCurrencyManager("Codigo").Current.ToString());
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    listaRelatorioADEDeferida.Add(new RelatorioADEDeferida
                                    {
                                        Data = Convert.ToDateTime(reader[0].ToString()).ToShortDateString(),
                                        Razao_Social = reader[1].ToString(),
                                        Embarcacao = reader[2].ToString(),
                                        Num_Contrato = reader[3].ToString(),
                                        day = reader[4].ToString()
                                    });

                                    System.Windows.Forms.Application.DoEvents();
                                }
                            }
                            else
                            {
                                MessageBox.Show("Não há registros de ADE Deferida sobre esse Cliente", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                return listaRelatorioADEDeferida;
                            }


                        }
                    }
                    return listaRelatorioADEDeferida;
                }
                if (rdbVencidos.Checked)
                {
                    statusADE = rdbVencidos.Text;
                    string query =
                        "select cast(ad.DT_VECTO_ADE as datetime) as Data, im.Razao_Social, ad.Embarcacao, ad.Num_Contrato, " +
                        "DATEDIFF(day, cast( ad.DT_VECTO_ADE as date),cast(GETDATE() as date ))+1 as day " +
                        "from Controle_ADE_Deferido ad inner join Importadores im on (im.Codigo = ad.FK_Importador) " +
                        "where cast( ad.DT_VECTO_ADE as date) < cast(GETDATE() as date ) and Excluido = 0 and fk_Importador=@fk_Importador " +
                        "order by  Cast(DT_VECTO_ADE as Datetime)";


                    listaRelatorioADEDeferida = new List<RelatorioADEDeferida>();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@fk_importador",
                               bsRelatorio.GetRelatedCurrencyManager("Codigo").Current.ToString());
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    listaRelatorioADEDeferida.Add(new RelatorioADEDeferida
                                    {
                                        Data = Convert.ToDateTime(reader[0].ToString()).ToShortDateString(),
                                        Razao_Social = reader[1].ToString(),
                                        Embarcacao = reader[2].ToString(),
                                        Num_Contrato = reader[3].ToString(),
                                        day = reader[4].ToString()
                                    });

                                    System.Windows.Forms.Application.DoEvents();
                                }
                            }
                            else
                            {
                                MessageBox.Show("Não há registros de ADE Deferida sobre esse Cliente", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                return listaRelatorioADEDeferida;
                            }


                        }
                    }
                    return listaRelatorioADEDeferida;
                }
                if (rdbTodos.Checked)
                {
                    statusADE = rdbTodos.Text;
                    string query =
                        "select cast(ad.DT_VECTO_ADE as datetime) as Data, im.Razao_Social, ad.Embarcacao, ad.Num_Contrato, " +
                            "DATEDIFF(day, cast(GETDATE() as date ), cast( ad.DT_VECTO_ADE as date))+1 as day, " +
                            "DATEDIFF(day, cast( ad.DT_VECTO_ADE as date),cast(GETDATE() as date ))+1 as day2 " +
                            "from Controle_ADE_Deferido ad inner join Importadores im on (im.Codigo = ad.FK_Importador) " +
                            "where Excluido = 0 and fk_Importador=@fk_Importador " +
                            "order by Razao_Social, Cast(DT_VECTO_ADE as Datetime)";


                    listaRelatorioADEDeferida = new List<RelatorioADEDeferida>();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@fk_importador",
                               bsRelatorio.GetRelatedCurrencyManager("Codigo").Current.ToString());
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    listaRelatorioADEDeferida.Add(new RelatorioADEDeferida
                                    {
                                        Data = Convert.ToDateTime(reader[0].ToString()).ToShortDateString(),
                                        Razao_Social = reader[1].ToString(),
                                        Embarcacao = reader[2].ToString(),
                                        Num_Contrato = reader[3].ToString(),
                                        day = reader[4].ToString()
                                    });

                                    System.Windows.Forms.Application.DoEvents();
                                }
                            }
                            else
                            {
                                MessageBox.Show("Não há registros de ADE Deferida sobre esse Cliente", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                return listaRelatorioADEDeferida;
                            }
                        }
                    }
                    return listaRelatorioADEDeferida;
                }

            }
            return listaRelatorioADEDeferida;
        }

        private void chkTodosClientes_CheckedChanged(object sender, EventArgs e)
        {
            txtLocalizar.Clear();
            txtLocalizar.Enabled = !chkTodosClientes.Checked;
            gvClientes.Enabled = !chkTodosClientes.Checked;

        }

        private void btnGerarGrafico_Click(object sender, EventArgs e)
        {
            PopulaReportView();
        }
        private void txtLocalizar_TextChanged(object sender, EventArgs e)
        {
            if (cbbOpcao.SelectedIndex == 0)
                bsRelatorio.Filter = "Razao_Social like '" + txtLocalizar.Text + "%'";
            else
                bsRelatorio.Filter = "CNPJ_CPF_COMPLETO like '" + txtLocalizar.Text + "%'";
        }

    }
}

