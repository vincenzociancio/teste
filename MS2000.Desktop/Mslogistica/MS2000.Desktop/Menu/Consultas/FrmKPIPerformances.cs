using Microsoft.Reporting.WinForms;
using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Consultas
{
    public partial class FrmKPIPerformances : MS2000.Desktop.Componentes.MSForm01
    {           
        public class KPITpProcessos
        {
            public double? Per_Air { get; set; } //Porcentagem Aereos Total         
            public double? Per_Sea { get; set; } //Porcentagem Maritimos Total                                                         

            public int Qtd_Air { get; set; } //Quantidade Aereos Total         
            public int Qtd_Sea { get; set; } //Quantidade Maritimos Total       

            public double? Per_Air_Consumo { get; set; } //Porcentagem Aereos Consumo         
            public double? Per_Air_Admissao { get; set; } //Porcentagem Aereos Admissao         

            public double? Per_Sea_Consumo { get; set; } //Porcentagem Maritimos Consumo      
            public double? Per_Sea_Admissao { get; set; } //Porcentagem Maritimos Admissao      

            public double? Per_Canal_Verde { get; set; } //Porcentagem Canal Verde
            public double? Per_Canal_Amarelo { get; set; } //Porcentagem Canal Amarelo
            public double? Per_Canal_Cinza { get; set; } //Porcentagem Canal Cinza
            public double? Per_Canal_Vermelho { get; set; } //Porcentagem Canal Vermelho

            public int Qtd_Air_Consumo { get; set; } //Quantidade Aereo Consumo          
            public int Qtd_Air_Admissao { get; set; } //Quantidade Aereos Admissao         

            public int Qtd_Sea_Consumo { get; set; } //Quantidade Maritimos Consumo                                                                    
            public int Qtd_Sea_Admissao { get; set; } //Quantidade Maritimos Admissao                                                        

            public int Qtd_Canal_Verde { get; set; } //Quantidade Canal Verde
            public int Qtd_Canal_Amarelo { get; set; } //Quantidade Canal Amarelo
            public int Qtd_Canal_Cinza { get; set; } //Quantidade Canal Cinza
            public int Qtd_Canal_Vermelho { get; set; } //Quantidade Canal Vermelho

            public double? Total { get; set; }

            public int Ano { get; set; }
            public int Mes { get; set; }

            public string MesAno
            {
                get
                {
                    return Enum.GetName(typeof(MesesAbrevING), Mes) + "/" + Ano;
                }
            }

            public string Url { get; set; }
        }

        public class KPIShipmentsNumbers
        {
            public int Qtd_Air_Freight_Shipment { get; set; } //Quantidade Aereos          
            public int Qtd_Sea_Freigth_Shipment { get; set; } //Quantidade Maritimos                                                                     

            public int Ano { get; set; }
            public int Mes { get; set; }

            public string MesAno
            {
                get
                {
                    return Enum.GetName(typeof(MesesAbrevING), Mes) + "/" + Ano;
                }
            }

            public string Url { get; set; }
        }

        public class KPIDIRegistroXDesembaraco
        {
            public string RefMS { get; set; }
            public int Dias { get; set; }
            public int Dias_Armazenagem { get; set; }

            public int Ano { get; set; }
            public int Mes { get; set; }

            public string MesAno
            {
                get
                {
                    return Enum.GetName(typeof(MesesAbrevING), Mes) + "/" + Ano;
                }
            }

            public string Url { get; set; }
        }

        public class KPIChegadaCargaXDesembaracoXRegistroDI
        {
            public string RefMS { get; set; }
            public int Dias_Ate_Desembaraco { get; set; }
            public int Dias_Ate_RegistroDI { get; set; }

            public int Ano { get; set; }
            public int Mes { get; set; }

            public string MesAno
            {
                get
                {
                    return Enum.GetName(typeof(MesesAbrevING), Mes) + "/" + Ano;
                }
            }

            public string Url { get; set; }
        }

        public class KPIArmazenagem
        {
            public string RefMS { get; set; }
            public double Valor { get; set; }
            public int Periodo { get; set; }

            public int Ano { get; set; }
            public int Mes { get; set; }

            public string MesAno
            {
                get
                {
                    return Enum.GetName(typeof(MesesAbrevING), Mes) + "/" + Ano;
                }
            }

            public string Url { get; set; }
        }

        public class KPIMultas
        {
            public string RefMS { get; set; }
            public double Valor { get; set; }

            public int Ano { get; set; }
            public int Mes { get; set; }

            public string MesAno
            {
                get
                {
                    return Enum.GetName(typeof(MesesAbrevING), Mes) + "/" + Ano;
                }
            }

            public string Url { get; set; }
        }

        public class KPIChegadaCargaXRegAprova
        {
            public string RefMS { get; set; }
            public int Dias_ChegadaCargaXRegAprova { get; set; }

            public int Ano { get; set; }
            public int Mes { get; set; }

            public string MesAno
            {
                get
                {
                    return Enum.GetName(typeof(MesesAbrevING), Mes) + "/" + Ano;
                }
            }

            public string Url { get; set; }
        }

        public class KPIAprovRegistroXRegistroDIxCargaVisadaXDesembaraco
        {
            public string RefMS { get; set; }
            public int Dias_RegAprovaXRegistroDI { get; set; }
            public int Dias_CargaVisadaXDesembaraco { get; set; }

            public int Ano { get; set; }
            public int Mes { get; set; }

            public string MesAno
            {
                get
                {
                    return Enum.GetName(typeof(MesesAbrevING), Mes) + "/" + Ano;
                }
            }

            public string Url { get; set; }
        }

        public class KPIDesembaracoXPagamentoICMSXEntregaDocumental
        {
            public string RefMS { get; set; }
            public int Dias_DesembaracoXPagamentoICMS { get; set; }
            public int Dias_DesembaracoXEntregaDocumental { get; set; }

            public int Ano { get; set; }
            public int Mes { get; set; }

            public string MesAno
            {
                get
                {
                    return Enum.GetName(typeof(MesesAbrevING), Mes) + "/" + Ano;
                }
            }

            public string Url { get; set; }
        }

        public class KPIAberturaXRegistroDseRexPresencaCargaXDesembaraco
        {
            public string RefMS { get; set; }
            public int Dias_AberturaXRegistroDseRe { get; set; }
            public int Dias_PresencaCargaXDesembaraco { get; set; }

            public int Ano { get; set; }
            public int Mes { get; set; }

            public string MesAno
            {
                get
                {
                    return Enum.GetName(typeof(MesesAbrevING), Mes) + "/" + Ano;
                }
            }

            public string Url { get; set; }
        }

        public class KPIImpostoConsolidado
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

        public FrmKPIPerformances()
        {
            InitializeComponent();
        }

        private void FrmKPIImportProcess_Load(object sender, EventArgs e)
        {
            dtpInicio.Value = Convert.ToDateTime("01/" + DateTime.Now.Date.Month.ToString() + "/" + DateTime.Now.Date.Year.ToString());
            dtpFinal.Value = DateTime.Now.Date;
            getTpRelatorio();
            getImportadores();
           
        }

        private void getImportadores()
        {
            var clientes = (new Importador()).BuscarListaAtivos();
            foreach (var cliente in clientes)
            {
                ListViewItem item = new ListViewItem((new[] { cliente.Codigo, Convert.ToUInt64(cliente.CNPJ_CPF_COMPLETO).ToString(@"00\.000\.000\/0000\-00"), cliente.Razao_Social }));

                //ListViewItem item = new ListViewItem((new[] { cliente.Codigo, (cliente.CNPJ_CPF_COMPLETO.Length == 14 ? Convert.ToUInt64(cliente.CNPJ_CPF_COMPLETO).ToString(@"00\.000\.000\/0000\-00") : cliente.CNPJ_CPF_COMPLETO), cliente.Razao_Social }));                
                
                ltvClientes.Items.Add(item);
            }            
        }

        private void getTpRelatorio()
        {
            Dictionary<int, string> itensTpRelatorio = new Dictionary<int, string>();

            itensTpRelatorio.Add(0, "Apresentação");
            itensTpRelatorio.Add(1, "Quantidade(s) e Porcentagem(ns) por Período");
            itensTpRelatorio.Add(2, "Quantidade(s) por Mês(es)");
            itensTpRelatorio.Add(3, "Registro DI ao Desembaraço");
            itensTpRelatorio.Add(4, "Chegada da Carga X ( Desembaraço / Registro DI )");
            itensTpRelatorio.Add(5, "Armazenagem");
            itensTpRelatorio.Add(6, "Multas");
            itensTpRelatorio.Add(7, "Chegada da Carga X Registro Aprovado");
            itensTpRelatorio.Add(8, "Registro Aprov. X Registro DI - (Carga Visada/BL Averb) X Desembaraço");
            itensTpRelatorio.Add(9, "Desembaraço X ( Pagamento do ICMS / Entrega Documental )");
            itensTpRelatorio.Add(10, "EXP - Abertura X Registro DSE/RE - Presença de Carga X Desembaraço");

            cbbTpRelatorio.DisplayMember = "Value";
            cbbTpRelatorio.ValueMember = "Key";
            cbbTpRelatorio.DataSource = new BindingSource(itensTpRelatorio, null);
        }

        private void ckbGraficoPorPlataforma_CheckedChanged(object sender, EventArgs e)
        {
            Application.DoEvents();
            cbbListaPlataformas.Enabled = ckbGraficoPorPlataforma.Checked;
            Application.DoEvents();

            List<string> importadores = new List<string>();

            foreach (ListViewItem item in ltvClientes.CheckedItems)
            {
                importadores.Add(item.Text);
            }

            if (ckbGraficoPorPlataforma.Checked)
            {
                cbbListaPlataformas.DataSource = getContratosLocal(importadores, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString());
                cbbListaPlataformas.DisplayMember = "Full";
            }
            else
            {
                cbbListaPlataformas.DataSource = null;
            }
        }

        private List<ContratoLocal> getContratosLocal(List<string> importadores, string ano, string mes)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string sql = " SELECT L.Local as 'CodigoLocal', L.Descricao as 'LocalDescricao', C.Descricao AS 'ContratoDescricao', L.Contrato as 'CodigoContrato' " +
                         "   FROM Contratos C                                                                                                                   " +
                         "        INNER JOIN Locais_Inventario L ON C.Contrato = L.Contrato AND L.Importador = C.Importador                                     " +
                         "        INNER JOIN Processos p on p.Contrato = C.Contrato and p.Local_Inventario = L.Local AND C.Importador = P.Importador            " +
                         "  WHERE P.Status <> '4' AND (p.NR_DECLARACAO_IMP <> '') AND (p.NR_DECLARACAO_IMP IS NOT NULL) AND L.Descricao <> '' AND               " +
                         "        MONTH(P.DT_DESEMBARACO) = @Mes AND YEAR(P.DT_DESEMBARACO) = @Ano AND C.Importador IN ('" + String.Join("','", importadores.ToArray()) + "') " +
                         "GROUP BY L.Local, L.Descricao, C.Descricao, L.Contrato                                         " +
                         "ORDER BY 3";

            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                try
                {
                    cmd.Parameters.AddWithValue("@Ano", ano);
                    cmd.Parameters.AddWithValue("@Mes", mes);

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

        private string MontarUrlCriptografada_periodo(string razao_social, string cnpj_resumido, DateTime data_inicio, DateTime data_final)
        {
            var string_encriptar = String.Format("{0}|{1}|{2}|{3}", razao_social, cnpj_resumido, Convert.ToDateTime(data_inicio.ToString()).ToString("dd/MM/yyyy"),
                                                                                                 Convert.ToDateTime(data_final.ToString()).ToString("dd/MM/yyyy"));

            var string_encriptado = (new MsCriptografia()).Encriptar(string_encriptar);

            var url = String.Format(@"http://187.16.120.99/mslogistica/web/msScriptIng/PerTiposProcessosMes.asp?op={0}", string_encriptado);

            return url;
        }

        private Boolean ValidaCampos()
        {
            if (ltvClientes.CheckedItems.Count <= 0)
            {
                MessageBox.Show("Selecione um cliente para continuar!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }

            return true;
        }

        private void btnGerarGrafico_Click(object sender, EventArgs e)
        {
            if (ValidaCampos() == false) return;

            List<string> importadores = new List<string>();

            foreach (ListViewItem item in ltvClientes.CheckedItems)
            {
                importadores.Add(item.Text);
            }

            var nomecliente = ltvClientes.CheckedItems[0].SubItems[2].Text;

            rptView.LocalReport.DataSources.Clear();

            if (cbbTpRelatorio.SelectedValue.ToString() == "0")
            {
                GerarApresentacao(importadores, nomecliente);
            }

            if (cbbTpRelatorio.SelectedValue.ToString() == "1")
            {
                GerarGraficoQtdPerPeriodo(importadores, nomecliente);
            }

            if (cbbTpRelatorio.SelectedValue.ToString() == "2")
            {
                GerarGraficoQtdPorMes(importadores, nomecliente);
            }

            if (cbbTpRelatorio.SelectedValue.ToString() == "3")
            {
                GerarGraficoRegistroDIxDesembaraco(importadores, nomecliente);
            }

            if (cbbTpRelatorio.SelectedValue.ToString() == "4")
            {
                GerarGraficoChegadaCargaxDesembaracoRegistroDI(importadores, nomecliente);
            }

            if (cbbTpRelatorio.SelectedValue.ToString() == "5")
            {
                GerarGraficoArmazenagem(importadores, nomecliente);
            }

            if (cbbTpRelatorio.SelectedValue.ToString() == "6")
            {
                GerarGraficoMultas(importadores, nomecliente);
            }

            if (cbbTpRelatorio.SelectedValue.ToString() == "7")
            {
                GerarGraficoChegadaCargaxRegistroAprovado(importadores, nomecliente);
            }

            if (cbbTpRelatorio.SelectedValue.ToString() == "8")
            {
                GerarGraficoRegAprovxRegistroDIxCargaVisadaOuBlAverxDesembaraco(importadores, nomecliente);
            }

            if (cbbTpRelatorio.SelectedValue.ToString() == "9")
            {
                GerarGraficoDesembaracoxPagamentoICMSxEntregaDoc(importadores, nomecliente);
            }

            if (cbbTpRelatorio.SelectedValue.ToString() == "10")
            {
                GerarGraficoExportacao(importadores, nomecliente);
            }
        }

        private List<KPITpProcessos> getDadosKPIPercentualTpProcessos(List<string> importadores, string data_inicio, string data_final)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string sql = string.Empty;

            sql = "SELECT TOP 1 I.CGC_CPF, " +
                  "       (SELECT COUNT(Codigo) FROM Processos WHERE Status <> 4 AND Tipo IN ('12') AND Tipo_Declaracao IN ('01','12') AND Importador IN ('" + String.Join("','", importadores.ToArray()) + "')" + " AND DT_REGISTRO_DI <> '' AND DT_DESEMBARACO BETWEEN @Data_inicio AND @Data_fim) AS Processos_Maritimos_Consumo,  " +
                  "       (SELECT COUNT(Codigo) FROM Processos WHERE Status <> 4 AND Tipo IN ('12') AND Tipo_Declaracao IN ('05','10')      AND Importador IN ('" + String.Join("','", importadores.ToArray()) + "')" + " AND DT_REGISTRO_DI <> '' AND DT_DESEMBARACO BETWEEN @Data_inicio AND @Data_fim) AS Processos_Maritimos_Admissao, " +
                  "       (SELECT COUNT(Codigo) FROM Processos WHERE Status <> 4 AND Tipo IN ('11') AND Tipo_Declaracao IN ('01','12') AND Importador IN ('" + String.Join("','", importadores.ToArray()) + "')" + " AND DT_REGISTRO_DI <> '' AND DT_DESEMBARACO BETWEEN @Data_inicio AND @Data_fim) AS Processos_Aereos_Consumo,     " +
                  "       (SELECT COUNT(Codigo) FROM Processos WHERE Status <> 4 AND Tipo IN ('11') AND Tipo_Declaracao IN ('05','10')      AND Importador IN ('" + String.Join("','", importadores.ToArray()) + "')" + " AND DT_REGISTRO_DI <> '' AND DT_DESEMBARACO BETWEEN @Data_inicio AND @Data_fim) AS Processos_Aereos_Admissao,    " +
                  "       (SELECT COUNT(Codigo) FROM Processos WHERE Status <> 4 AND Tipo IN ('11','12') AND Tipo_Declaracao IN ('01','05','12','10') AND Importador IN ('" + String.Join("','", importadores.ToArray()) + "')" + " AND DT_REGISTRO_DI <> '' AND DT_DESEMBARACO BETWEEN @Data_inicio AND @Data_fim) AS Total,         " +
                  "       (SELECT COUNT(Codigo) FROM Processos WHERE Canal = 'D' AND Status <> 4 AND Tipo IN ('11','12') AND Tipo_Declaracao IN ('01','05','12','10') AND Importador IN ('" + String.Join("','", importadores.ToArray()) + "')" + " AND DT_REGISTRO_DI <> '' AND DT_DESEMBARACO BETWEEN @Data_inicio AND @Data_fim) AS Canal_Verde,    " +
                  "       (SELECT COUNT(Codigo) FROM Processos WHERE Canal = 'A' AND Status <> 4 AND Tipo IN ('11','12') AND Tipo_Declaracao IN ('01','05','12','10') AND Importador IN ('" + String.Join("','", importadores.ToArray()) + "')" + " AND DT_REGISTRO_DI <> '' AND DT_DESEMBARACO BETWEEN @Data_inicio AND @Data_fim) AS Canal_Cinza,    " +
                  "       (SELECT COUNT(Codigo) FROM Processos WHERE Canal = 'L' AND Status <> 4 AND Tipo IN ('11','12') AND Tipo_Declaracao IN ('01','05','12','10') AND Importador IN ('" + String.Join("','", importadores.ToArray()) + "')" + " AND DT_REGISTRO_DI <> '' AND DT_DESEMBARACO BETWEEN @Data_inicio AND @Data_fim) AS Canal_Vermelho, " +
                  "       (SELECT COUNT(Codigo) FROM Processos WHERE Canal = 'V' AND Status <> 4 AND Tipo IN ('11','12') AND Tipo_Declaracao IN ('01','05','12','10') AND Importador IN ('" + String.Join("','", importadores.ToArray()) + "')" + " AND DT_REGISTRO_DI <> '' AND DT_DESEMBARACO BETWEEN @Data_inicio AND @Data_fim) AS Canal_Amarelo   " +
                  "  FROM Importadores I          " +
                  " WHERE I.Codigo IN ('" + String.Join("','", importadores.ToArray()) + "')";

            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                try
                {
                    cmd.Parameters.AddWithValue("@Data_inicio", data_inicio);
                    cmd.Parameters.AddWithValue("@Data_fim", data_final);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        List<KPITpProcessos> lista = new List<KPITpProcessos>();

                        var url = string.Empty;

                        url = MontarUrlCriptografada_periodo(ltvClientes.CheckedItems[0].SubItems[2].Text, ltvClientes.CheckedItems[0].SubItems[1].Text, dtpInicio.Value, dtpFinal.Value);

                        reader.Read();

                        double tot = (int)reader["Total"];

                        double per_aer = 0;
                        double per_mar = 0;

                        double per_canal_verde = 0;
                        double per_canal_vermelho = 0;
                        double per_canal_amarelo = 0;
                        double per_canal_cinza = 0;

                        double qtd_aer_consumo = (int)reader["Processos_Aereos_Consumo"];
                        double qtd_aer_admissao = (int)reader["Processos_Aereos_Admissao"];

                        double qtd_mar_consumo = (int)reader["Processos_Maritimos_Consumo"];
                        double qtd_mar_admissao = (int)reader["Processos_Maritimos_Admissao"];

                        double qtd_canal_verde = (int)reader["Canal_Verde"];
                        double qtd_canal_cinza = (int)reader["Canal_Cinza"];
                        double qtd_canal_vermelho = (int)reader["Canal_Vermelho"];
                        double qtd_canal_amarelo = (int)reader["Canal_Amarelo"];

                        double qtd_aer = qtd_aer_admissao + qtd_aer_consumo;
                        double qtd_mar = qtd_mar_admissao + qtd_mar_consumo;

                        per_aer = (qtd_aer / tot);
                        per_mar = (qtd_mar / tot);

                        per_canal_verde = (qtd_canal_verde / tot);
                        per_canal_vermelho = (qtd_canal_vermelho / tot);
                        per_canal_amarelo = (qtd_canal_amarelo / tot);
                        per_canal_cinza = (qtd_canal_cinza / tot);

                        double per_aer_consumo;

                        if ((qtd_aer_consumo == 0) || (qtd_aer == 0))
                        {
                            per_aer_consumo = 0;
                        }
                        else
                        {
                            per_aer_consumo = (qtd_aer_consumo / qtd_aer);
                        }

                        double per_aer_admissao;

                        if ((qtd_aer_admissao == 0) || (qtd_aer == 0))
                        {
                            per_aer_admissao = 0;
                        }
                        else
                        {
                            per_aer_admissao = (qtd_aer_admissao / qtd_aer);
                        }

                        double per_mar_consumo;

                        if ((qtd_mar_consumo == 0) || (qtd_mar == 0))
                        {
                            per_mar_consumo = 0;
                        }
                        else
                        {
                            per_mar_consumo = (qtd_mar_consumo / qtd_mar);
                        }

                        double per_mar_admissao;

                        if ((qtd_mar_admissao == 0) || (qtd_mar == 0))
                        {
                            per_mar_admissao = 0;
                        }
                        else
                        {
                            per_mar_admissao = (qtd_mar_admissao / qtd_mar);
                        }

                        lista.Add(new KPITpProcessos
                        {
                            Qtd_Air = (int)qtd_aer,
                            Qtd_Sea = (int)qtd_mar,

                            Per_Air = per_aer,
                            Per_Sea = per_mar,

                            Qtd_Air_Admissao = (int)qtd_aer_admissao,
                            Qtd_Air_Consumo = (int)qtd_aer_consumo,

                            Qtd_Sea_Admissao = (int)qtd_mar_admissao,
                            Qtd_Sea_Consumo = (int)qtd_mar_consumo,

                            Qtd_Canal_Verde = (int)qtd_canal_verde,
                            Qtd_Canal_Vermelho = (int)qtd_canal_vermelho,
                            Qtd_Canal_Cinza = (int)qtd_canal_cinza,
                            Qtd_Canal_Amarelo = (int)qtd_canal_amarelo,

                            Per_Canal_Amarelo = per_canal_amarelo,
                            Per_Canal_Cinza = per_canal_cinza,
                            Per_Canal_Verde = per_canal_verde,
                            Per_Canal_Vermelho = per_canal_vermelho,

                            Per_Sea_Admissao = per_mar_admissao,
                            Per_Sea_Consumo = per_mar_consumo,

                            Per_Air_Admissao = per_aer_admissao,
                            Per_Air_Consumo = per_aer_consumo,

                            Total = tot,

                            Url = url
                        });

                        Application.DoEvents();

                        return lista;
                    }
                }
                catch (SqlException e)
                {
                    return null;
                }
            }
        }

        private List<KPIShipmentsNumbers> getDadosKPIQtdProcessos(List<string> importadores, string data_inicio, string data_final)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string sql = string.Empty;

            sql = " SELECT CAST(YEAR(P.DT_DESEMBARACO)  AS INT) AS Ano, " +
                  "        CAST(MONTH(P.DT_DESEMBARACO) AS INT) AS Mes, " +
                  "        (SELECT COUNT(Codigo) FROM Processos WHERE Status <> 4 AND Tipo IN ('12') AND Importador IN ('" + String.Join("','", importadores.ToArray()) + "') AND YEAR(DT_DESEMBARACO) = YEAR(P.DT_DESEMBARACO) AND MONTH(DT_DESEMBARACO) = MONTH(P.DT_DESEMBARACO)) AS Processos_Maritimos,   " +
                  "        (SELECT COUNT(Codigo) FROM Processos WHERE Status <> 4 AND Tipo IN ('11') AND Importador IN ('" + String.Join("','", importadores.ToArray()) + "') AND YEAR(DT_DESEMBARACO) = YEAR(P.DT_DESEMBARACO) AND MONTH(DT_DESEMBARACO) = MONTH(P.DT_DESEMBARACO)) AS Processos_Aereos       " +
                  "  FROM Processos P                                                                                    " +
                  " WHERE P.DT_REGISTRO_DI <> '' AND P.Status <> 4 AND P.TIPO IN ('11','12') AND P.Importador IN ('" + String.Join("','", importadores.ToArray()) + "')  AND P.DT_DESEMBARACO BETWEEN @Data_inicio AND @Data_fim " +
                  "GROUP BY YEAR(P.DT_DESEMBARACO), MONTH(P.DT_DESEMBARACO)  " +
                  "ORDER BY YEAR(P.DT_DESEMBARACO), MONTH(P.DT_DESEMBARACO)  ";

            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                try
                {
                    cmd.Parameters.AddWithValue("@Data_inicio", data_inicio);
                    cmd.Parameters.AddWithValue("@Data_fim", data_final);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        List<KPIShipmentsNumbers> lista = new List<KPIShipmentsNumbers>();

                        var url = string.Empty;

                        url = MontarUrlCriptografada_periodo(ltvClientes.CheckedItems[0].SubItems[2].Text, ltvClientes.CheckedItems[0].SubItems[1].Text, dtpInicio.Value, dtpFinal.Value);

                        while (reader.Read())
                        {
                            lista.Add(new KPIShipmentsNumbers
                            {
                                Qtd_Air_Freight_Shipment = (int)reader["Processos_Aereos"],
                                Qtd_Sea_Freigth_Shipment = (int)reader["Processos_Maritimos"],

                                Mes = (int)reader["Mes"],
                                Ano = (int)reader["Ano"],

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

        private List<KPIDIRegistroXDesembaraco> getDadosKPIDIRegistroXDesembaraco(List<string> importadores, bool Aereo, string ano, string mes, string contrato = "", string plataforma = "")
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string sql = string.Empty;

            sql = " SELECT P.Codigo, " +
                  "        (CAST(P.DT_DESEMBARACO AS INT) - " +
                  "        CAST(CAST(SUBSTRING(P.DT_REGISTRO_DI,1,2) + '/' + SUBSTRING(P.DT_REGISTRO_DI,3,2) + '/' + SUBSTRING(P.DT_REGISTRO_DI,5,5) as datetime) AS INT)) AS Dias_Desembaraco, " +
                  "        ISNULL(CAST(((SELECT MAX(Data + 1) FROM Followup WHERE (Codevento = '914' AND Codobs = '1') AND Processo = P.Codigo) - CP.Data_Chegada_URF_Desp) AS INT),0) AS Dias_Armazenagem, " +
                  "        CP.Data_Chegada_URF_Desp, " +
                  "        CP.URF_Despacho, " +
                  "        CP.Recinto_Alfandegario " +
                  "   FROM Processos P  " +
                  "        LEFT JOIN Conhecimento_Processo CP ON P.Codigo = CP.Processo " +
                  "  WHERE P.DT_REGISTRO_DI <> '' AND CP.Data_Chegada_URF_Desp IS NOT NULL AND P.Status <> 4 AND P.Importador IN ('" + String.Join("','", importadores.ToArray()) + "') AND YEAR(P.DT_DESEMBARACO) = @Ano AND MONTH(P.DT_DESEMBARACO) = @Mes ";

            if (Aereo)
            {
                sql = sql + " AND P.TIPO IN ('11') ";
            }
            else
            {
                sql = sql + " AND P.TIPO IN ('12') ";
            }

            if (ckbGraficoPorPlataforma.Checked)
            {
                sql = sql + " AND P.Local_Inventario = @plataforma AND P.Contrato = @contrato ";
            }

            sql = sql + " ORDER BY P.Codigo ";

            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                try
                {
                    cmd.Parameters.AddWithValue("@Ano", ano);
                    cmd.Parameters.AddWithValue("@Mes", mes);

                    if (ckbGraficoPorPlataforma.Checked)
                    {
                        cmd.Parameters.AddWithValue("@plataforma", plataforma);
                        cmd.Parameters.AddWithValue("@contrato", contrato);
                    }

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        List<KPIDIRegistroXDesembaraco> lista = new List<KPIDIRegistroXDesembaraco>();

                        var url = string.Empty;

                        url = MontarUrlCriptografada_periodo(ltvClientes.CheckedItems[0].SubItems[2].Text, ltvClientes.CheckedItems[0].SubItems[1].Text, dtpInicio.Value, dtpFinal.Value);

                        while (reader.Read())
                        {
                            lista.Add(new KPIDIRegistroXDesembaraco
                            {
                                RefMS = reader["Codigo"].ToString(),
                                Dias = (int)reader["Dias_Desembaraco"],
                                Dias_Armazenagem = getPeriodoArmazenagem((int)reader["Dias_Armazenagem"], (string)reader["URF_Despacho"], (string)reader["Recinto_Alfandegario"], (DateTime)reader["Data_Chegada_URF_Desp"]),

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

        private List<KPIChegadaCargaXDesembaracoXRegistroDI> getDadosKPIChegadaCargaXDesembaracoXRegistroDI(List<string> importadores, bool Aereo, string ano, string mes, string contrato = "", string plataforma = "")
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string sql = string.Empty;

            sql = " SELECT P.Codigo,     " +
                  "        (CAST(P.DT_DESEMBARACO AS INT) - CAST(CP.Data_Chegada_URF_Cheg AS INT)) AS Dias_ate_Desembaraco, " +
                  "        (CAST(CAST(PVG.Data_Registro AS datetime) AS INT) - CAST(CP.Data_Chegada_URF_Cheg AS INT)) AS Dias_ate_RegistroDI " +
                  "   FROM Processos P   " +
                  "        LEFT JOIN Conhecimento_Processo CP ON P.Codigo = CP.Processo " +
                  "        INNER JOIN Processos_Visao_Geral PVG ON P.Codigo = PVG.Processo " +
                  "  WHERE P.DT_REGISTRO_DI <> '' AND CP.Data_Chegada_URF_Cheg IS NOT NULL AND P.Status <> 4 AND P.Importador IN ('" + String.Join("','", importadores.ToArray()) + "') AND YEAR(P.DT_DESEMBARACO) = @Ano AND MONTH(P.DT_DESEMBARACO) = @Mes ";

            if (Aereo)
            {
                sql = sql + " AND P.TIPO IN ('11') ";
            }
            else
            {
                sql = sql + " AND P.TIPO IN ('12') ";
            }

            if (ckbGraficoPorPlataforma.Checked)
            {
                sql = sql + " AND P.Local_Inventario = @plataforma AND P.Contrato = @contrato ";
            }

            sql = sql + " ORDER BY P.Codigo ";

            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                try
                {
                    cmd.Parameters.AddWithValue("@Ano", ano);
                    cmd.Parameters.AddWithValue("@Mes", mes);

                    if (ckbGraficoPorPlataforma.Checked)
                    {
                        cmd.Parameters.AddWithValue("@plataforma", plataforma);
                        cmd.Parameters.AddWithValue("@contrato", contrato);
                    }

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        List<KPIChegadaCargaXDesembaracoXRegistroDI> lista = new List<KPIChegadaCargaXDesembaracoXRegistroDI>();

                        var url = string.Empty;

                        url = MontarUrlCriptografada_periodo(ltvClientes.CheckedItems[0].SubItems[2].Text, ltvClientes.CheckedItems[0].SubItems[1].Text, dtpInicio.Value, dtpFinal.Value);

                        while (reader.Read())
                        {
                            lista.Add(new KPIChegadaCargaXDesembaracoXRegistroDI
                            {
                                RefMS = reader["Codigo"].ToString(),
                                Dias_Ate_Desembaraco = (int)reader["Dias_ate_Desembaraco"],
                                Dias_Ate_RegistroDI = (int)reader["Dias_ate_RegistroDI"],

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

        private List<KPIArmazenagem> getDadosKPIArmazenagem(List<string> importadores, bool Aereo, string ano, string mes, string contrato = "", string plataforma = "")
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string sql = string.Empty;

            sql = " SELECT P.Codigo,                                    " +
                  "        SUM(Valor_Registrado) AS Valor,              " +
                  "        ISNULL(CAST(((SELECT MAX(Data + 1) FROM Followup WHERE (Codevento = '914' AND Codobs = '1') AND Processo = P.Codigo) - CP.Data_Chegada_URF_Desp) AS INT),0) AS Dias_Armazenagem, " +
                  "        ISNULL(CP.Data_Chegada_URF_Desp,0) AS Data_Chegada_URF_Desp, " +
                  "        CP.URF_Despacho,                             " +
                  "        CP.Recinto_Alfandegario                      " +
                  "   FROM Numerarios_Processos NP                                       " +
                  "        INNER JOIN Tipos_Numerario TP ON NP.Numerario = TP.Codigo     " +
                  "        INNER JOIN Processos P ON NP.Processo = P.Codigo              " +
                  "        LEFT JOIN Conhecimento_Processo CP ON P.Codigo = CP.Processo  " +
                  "  WHERE P.DT_REGISTRO_DI <> '' AND Data_Chegada_URF_Desp IS NOT NULL AND NP.Valor_Registrado > 0 AND TP.Descricao LIKE 'ARMAZENAGEM%' AND P.Status <> 4 AND P.Importador IN ('" + String.Join("','", importadores.ToArray()) + "') AND YEAR(P.DT_DESEMBARACO) = @Ano AND MONTH(P.DT_DESEMBARACO) = @Mes ";

            if (Aereo)
            {
                sql = sql + " AND P.TIPO IN ('11') ";
            }
            else
            {
                sql = sql + " AND P.TIPO IN ('12') ";
            }

            if (ckbGraficoPorPlataforma.Checked)
            {
                sql = sql + " AND P.Local_Inventario = @plataforma AND P.Contrato = @contrato ";
            }


            sql = sql + " GROUP BY P.Codigo, CP.Data_Chegada_URF_Desp, CP.URF_Despacho, CP.Recinto_Alfandegario " +
                        " ORDER BY P.Codigo ";

            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                try
                {
                    cmd.Parameters.AddWithValue("@Ano", ano);
                    cmd.Parameters.AddWithValue("@Mes", mes);

                    if (ckbGraficoPorPlataforma.Checked)
                    {
                        cmd.Parameters.AddWithValue("@plataforma", plataforma);
                        cmd.Parameters.AddWithValue("@contrato", contrato);
                    }

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        List<KPIArmazenagem> lista = new List<KPIArmazenagem>();

                        var url = string.Empty;

                        url = MontarUrlCriptografada_periodo(ltvClientes.CheckedItems[0].SubItems[2].Text, ltvClientes.CheckedItems[0].SubItems[1].Text, dtpInicio.Value, dtpFinal.Value);

                        while (reader.Read())
                        {
                            lista.Add(new KPIArmazenagem
                            {
                                RefMS = reader["Codigo"].ToString(),
                                Valor = Convert.ToDouble(reader["Valor"]),
                                Periodo = getPeriodoArmazenagem(
                                (int)reader["Dias_Armazenagem"],
                                (string)reader["URF_Despacho"],
                                (string)reader["Recinto_Alfandegario"],
                                (DateTime)reader["Data_Chegada_URF_Desp"]),

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

        private List<KPIMultas> getDadosKPIMultas(List<string> importadores, bool Aereo, string data_inicio, string data_final, string contrato = "", string plataforma = "")
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string sql = string.Empty;

            sql = " SELECT NP.Processo,                                 " +
                  "        SUM(Valor_Registrado) AS Valor               " +
                  "   FROM Numerarios_Processos NP                                       " +
                  "        INNER JOIN Tipos_Numerario TP ON NP.Numerario = TP.Codigo     " +
                  "        INNER JOIN Processos P ON NP.Processo = P.Codigo              " +
                  "  WHERE P.DT_REGISTRO_DI <> '' AND TP.Descricao LIKE 'MULTA%' AND P.Status <> 4 AND P.Importador IN ('" + String.Join("','", importadores.ToArray()) + "') AND P.DT_DESEMBARACO BETWEEN @Data_inicio AND @Data_fim ";

            if (Aereo)
            {
                sql = sql + " AND P.TIPO IN ('11') ";
            }
            else
            {
                sql = sql + " AND P.TIPO IN ('12') ";
            }

            if (ckbGraficoPorPlataforma.Checked)
            {
                sql = sql + " AND P.Local_Inventario = @plataforma AND P.Contrato = @contrato ";
            }

            sql = sql + " GROUP BY NP.Processo " +
                        " ORDER BY NP.Processo ";

            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                try
                {
                    cmd.Parameters.AddWithValue("@Data_inicio", data_inicio);
                    cmd.Parameters.AddWithValue("@Data_fim", data_final);

                    if (ckbGraficoPorPlataforma.Checked)
                    {
                        cmd.Parameters.AddWithValue("@plataforma", plataforma);
                        cmd.Parameters.AddWithValue("@contrato", contrato);
                    }

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        List<KPIMultas> lista = new List<KPIMultas>();

                        var url = string.Empty;

                        url = MontarUrlCriptografada_periodo(ltvClientes.CheckedItems[0].SubItems[2].Text, ltvClientes.CheckedItems[0].SubItems[1].Text, dtpInicio.Value, dtpFinal.Value);

                        while (reader.Read())
                        {
                            lista.Add(new KPIMultas
                            {
                                RefMS = reader["Processo"].ToString(),
                                Valor = (double)reader["Valor"],

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

        private List<KPIChegadaCargaXRegAprova> getDadosKPIChegadaCargaXRegAprova(List<string> importadores, bool Aereo, string ano, string mes, string contrato = "", string plataforma = "")
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string sql = string.Empty;

            sql = " SELECT P.Codigo, " +
                  "        ISNULL(CAST(((SELECT MAX(Data + 1) FROM Followup WHERE (((Codevento = '35') AND (Codobs = '0')) OR ((Codevento = '628') AND (Codobs = '0'))) AND Processo = P.Codigo) - CP.Data_Chegada_URF_Cheg) AS INT),0) AS Dias_ChegadaCargaXRegAprova " +
                  "   FROM Processos P  " +
                  "        LEFT JOIN Conhecimento_Processo CP ON P.Codigo = CP.Processo " +
                  "  WHERE (((SELECT COUNT(*) FROM Followup WHERE Codevento = '35' AND Codobs = '0' AND Processo = P.Codigo) > 0) OR ((SELECT COUNT(*) FROM Followup WHERE Codevento = '628' AND Codobs = '0' AND Processo = P.Codigo) > 0)) " +
                  "    AND CP.Data_Chegada_URF_Desp IS NOT NULL AND P.Status <> 4 AND P.Importador IN ('" + String.Join("','", importadores.ToArray()) + "') AND YEAR(P.DT_DESEMBARACO) = @Ano AND MONTH(P.DT_DESEMBARACO) = @Mes            ";

            if (Aereo)
            {
                sql = sql + " AND P.TIPO IN ('11') ";
            }
            else
            {
                sql = sql + " AND P.TIPO IN ('12') ";
            }

            if (ckbGraficoPorPlataforma.Checked)
            {
                sql = sql + " AND P.Local_Inventario = @plataforma AND P.Contrato = @contrato ";
            }

            sql = sql + " ORDER BY P.Codigo ";

            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                try
                {
                    cmd.Parameters.AddWithValue("@Ano", ano);
                    cmd.Parameters.AddWithValue("@Mes", mes);

                    if (ckbGraficoPorPlataforma.Checked)
                    {
                        cmd.Parameters.AddWithValue("@plataforma", plataforma);
                        cmd.Parameters.AddWithValue("@contrato", contrato);
                    }

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        List<KPIChegadaCargaXRegAprova> lista = new List<KPIChegadaCargaXRegAprova>();

                        var url = string.Empty;

                        url = MontarUrlCriptografada_periodo(ltvClientes.CheckedItems[0].SubItems[2].Text, ltvClientes.CheckedItems[0].SubItems[1].Text, dtpInicio.Value, dtpFinal.Value);

                        while (reader.Read())
                        {
                            lista.Add(new KPIChegadaCargaXRegAprova
                            {
                                RefMS = reader["Codigo"].ToString(),
                                Dias_ChegadaCargaXRegAprova = (int)reader["Dias_ChegadaCargaXRegAprova"],

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

        private List<KPIAprovRegistroXRegistroDIxCargaVisadaXDesembaraco> getDadosKPIAprovRegistroXRegistroDIxCargaVisadaXDesembaraco(List<string> importadores, bool Aereo, string ano, string mes, string contrato = "", string plataforma = "")
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string sql = string.Empty;

            sql = "SELECT P.Codigo,     " +
                  "        ISNULL(CAST(CAST(SUBSTRING(P.DT_REGISTRO_DI,1,2) + '/' + SUBSTRING(P.DT_REGISTRO_DI,3,2) + '/' + SUBSTRING(P.DT_REGISTRO_DI,5,5) as datetime) - " +
                  "        (SELECT MAX(Data) FROM Followup WHERE (((Codevento = '35') AND (Codobs = '0')) OR ((Codevento = '628') AND (Codobs = '0')))              " +
                  "        AND Processo = P.Codigo) AS INT),0) AS Dias_RegAprova_ate_RegistroDI,                                                                    " +
                  "        CAST((P.DT_DESEMBARACO) - (SELECT TOP 1(Data) FROM Followup WHERE (((Codevento = '490') AND (Codobs = '0')) OR                           " +
                  "			          								                          ((Codevento = '1021') AND (Codobs = '1424')) OR                       " +
                  "													                          ((Codevento = '1021') AND (Codobs = '1440')) OR                       " +
                  "													                          ((Codevento = '1021') AND (Codobs = '1441')) OR                       " +
                  "													                          ((Codevento = '2741') AND (Codobs = '0'))    OR                       " +
                  "													                          ((Codevento = '2435') AND (Codobs = '1115')) OR                       " +
                  "													                          ((Codevento = '2435') AND (Codobs = '1116')) OR                       " +
                  "													                          ((Codevento = '2435') AND (Codobs = '1117')) OR                       " +
                  "													                          ((Codevento = '2435') AND (Codobs = '1122')) OR                       " +                 
                  "													                          ((Codevento = '2435') AND (Codobs = '1123'))) AND Processo = P.Codigo) AS INT) AS Dias_CargaVisada_ate_Desembaraco " +
                  "   FROM Processos P " +
                  "  WHERE (((SELECT COUNT(Data) FROM Followup WHERE Codevento = '490'  AND Codobs = '0' AND Processo = P.Codigo) > 0) OR       " +
                  "	        ((SELECT COUNT(Data) FROM Followup WHERE Codevento = '1021' AND Codobs = '1424' AND Processo = P.Codigo) > 0) OR    " +
                  "		    ((SELECT COUNT(Data) FROM Followup WHERE Codevento = '1021' AND Codobs = '1440' AND Processo = P.Codigo) > 0) OR    " +
                  "		    ((SELECT COUNT(Data) FROM Followup WHERE Codevento = '1021' AND Codobs = '1441' AND Processo = P.Codigo) > 0) OR    " +
                  "		    ((SELECT COUNT(Data) FROM Followup WHERE Codevento = '2741' AND Codobs = '0'    AND Processo = P.Codigo) > 0) OR    " +
                  "		    ((SELECT COUNT(Data) FROM Followup WHERE Codevento = '2435' AND Codobs = '1115' AND Processo = P.Codigo) > 0) OR    " +
                  "		    ((SELECT COUNT(Data) FROM Followup WHERE Codevento = '2435' AND Codobs = '1116' AND Processo = P.Codigo) > 0) OR    " +
                  "		    ((SELECT COUNT(Data) FROM Followup WHERE Codevento = '2435' AND Codobs = '1117' AND Processo = P.Codigo) > 0) OR    " +
                  "		    ((SELECT COUNT(Data) FROM Followup WHERE Codevento = '2435' AND Codobs = '1122' AND Processo = P.Codigo) > 0) OR    " +
                  "		    ((SELECT COUNT(Data) FROM Followup WHERE Codevento = '2435' AND Codobs = '1123' AND Processo = P.Codigo) > 0))      " +
                  "	    AND P.DT_REGISTRO_DI <> '' AND P.Status <> 4 AND P.Importador IN ('" + String.Join("','", importadores.ToArray()) + "') AND YEAR(P.DT_DESEMBARACO) = @Ano AND MONTH(P.DT_DESEMBARACO) = @Mes ";

            if (Aereo)
            {
                sql = sql + " AND P.TIPO IN ('11') ";
            }
            else
            {
                sql = sql + " AND P.TIPO IN ('12') ";
            }

            if (ckbGraficoPorPlataforma.Checked)
            {
                sql = sql + " AND P.Local_Inventario = @plataforma AND P.Contrato = @contrato ";
            }

            sql = sql + " ORDER BY P.Codigo ";

            List<KPIAprovRegistroXRegistroDIxCargaVisadaXDesembaraco> lista = new List<KPIAprovRegistroXRegistroDIxCargaVisadaXDesembaraco>();

            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                try
                {
                    cmd.Parameters.AddWithValue("@Ano", ano);
                    cmd.Parameters.AddWithValue("@Mes", mes);

                    if (ckbGraficoPorPlataforma.Checked)
                    {
                        cmd.Parameters.AddWithValue("@plataforma", plataforma);
                        cmd.Parameters.AddWithValue("@contrato", contrato);
                    }

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        var url = string.Empty;

                        url = MontarUrlCriptografada_periodo(ltvClientes.CheckedItems[0].SubItems[2].Text, ltvClientes.CheckedItems[0].SubItems[1].Text, dtpInicio.Value, dtpFinal.Value);

                        while (reader.Read())
                        {
                            lista.Add(new KPIAprovRegistroXRegistroDIxCargaVisadaXDesembaraco
                            {
                                RefMS = reader["Codigo"].ToString(),
                                Dias_RegAprovaXRegistroDI = (int)reader["Dias_RegAprova_ate_RegistroDI"],
                                Dias_CargaVisadaXDesembaraco = (int)reader["Dias_CargaVisada_ate_Desembaraco"],

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

        private List<KPIDesembaracoXPagamentoICMSXEntregaDocumental> getDadosKPIDesembaracoXPagamentoICMSXEntregaDocumental(List<string> importadores, bool Aereo, string ano, string mes, string contrato = "", string plataforma = "")
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string sql = string.Empty;

            sql = "SELECT P.Codigo,                                                                                                                                                                                             " +
                  "       ISNULL(CAST(((SELECT MAX(Data + 1) FROM Followup WHERE (((Codevento = '1021') AND (Codobs = '1363'))) AND Processo = P.Codigo) - CAST(P.DT_DESEMBARACO AS INT)) AS INT),0) AS Dias_ate_PagamentoICMS, " +
                  "       ISNULL(CAST((P.Data_liberacao - CAST(P.DT_DESEMBARACO AS INT)) AS INT),0) AS Dias_ate_EntregaDOC                                                                                                      " +
                  "  FROM Processos P                                                                                                                                                                                           " +
                  " WHERE ((SELECT COUNT(*) FROM Followup WHERE Codevento = '1021' AND Codobs = '1363' AND Processo = P.Codigo) > 0)                                                                                            " +
                  "	  AND P.DT_REGISTRO_DI <> '' AND P.Status <> 4 AND P.Importador IN ('" + String.Join("','", importadores.ToArray()) + "') AND YEAR(P.DT_DESEMBARACO) = @Ano AND MONTH(P.DT_DESEMBARACO) = @Mes              ";

            if (Aereo)
            {
                sql = sql + " AND P.TIPO IN ('11') ";
            }
            else
            {
                sql = sql + " AND P.TIPO IN ('12') ";
            }

            if (ckbGraficoPorPlataforma.Checked)
            {
                sql = sql + " AND P.Local_Inventario = @plataforma AND P.Contrato = @contrato ";
            }

            sql = sql + " ORDER BY P.Codigo ";

            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                try
                {
                    cmd.Parameters.AddWithValue("@Ano", ano);
                    cmd.Parameters.AddWithValue("@Mes", mes);

                    if (ckbGraficoPorPlataforma.Checked)
                    {
                        cmd.Parameters.AddWithValue("@plataforma", plataforma);
                        cmd.Parameters.AddWithValue("@contrato", contrato);
                    }

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        List<KPIDesembaracoXPagamentoICMSXEntregaDocumental> lista = new List<KPIDesembaracoXPagamentoICMSXEntregaDocumental>();

                        var url = string.Empty;

                        url = MontarUrlCriptografada_periodo(ltvClientes.CheckedItems[0].SubItems[2].Text, ltvClientes.CheckedItems[0].SubItems[1].Text, dtpInicio.Value, dtpFinal.Value);

                        while (reader.Read())
                        {
                            lista.Add(new KPIDesembaracoXPagamentoICMSXEntregaDocumental
                            {
                                RefMS = reader["Codigo"].ToString(),
                                Dias_DesembaracoXPagamentoICMS = (int)reader["Dias_ate_PagamentoICMS"],
                                Dias_DesembaracoXEntregaDocumental = (int)reader["Dias_ate_EntregaDOC"],

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

        private List<KPIAberturaXRegistroDseRexPresencaCargaXDesembaraco> getDadosKPIAberturaXRegistroDseRexPresencaCargaXDesembaraco(List<string> importadores, string ano, string mes, string contrato = "", string plataforma = "")
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string sql = string.Empty;

            sql = "SELECT P.Codigo,                                                                                                                                                                                    " +
                  "       ISNULL(CAST(((SELECT MAX(Data) FROM Followup WHERE (((Codevento = '102') AND (Codobs = '0'))) AND Processo = P.Codigo) - CAST(P.Data AS INT)) AS INT),0) AS Dias_ate_RegistroDSERE,          " +
                  "       ISNULL(CAST(((CAST(P.DT_DESEMBARACO AS INT) - (SELECT MAX(Data) FROM Followup WHERE (((Codevento = '939') AND (Codobs = '0'))) AND Processo = P.Codigo))) AS INT),0) AS Dias_ate_Desembaraco " +
                  "  FROM Processos P                                                                                                                                                                                  " +
                  " WHERE (((SELECT COUNT(*) FROM Followup WHERE Codevento = '102' AND Codobs = '0' AND Processo = P.Codigo) > 0) OR                                                                                   " +
                  "        ((SELECT COUNT(*) FROM Followup WHERE Codevento = '939' AND Codobs = '0' AND Processo = P.Codigo) > 0))                                                                                     " +
                  "	  AND P.TIPO IN ('21','22','23','24','36') AND P.Status <> 4 AND P.Importador IN ('" + String.Join("','", importadores.ToArray()) + "') AND YEAR(P.DT_DESEMBARACO) = @Ano AND MONTH(P.DT_DESEMBARACO) = @Mes           ";

            if (ckbGraficoPorPlataforma.Checked)
            {
                sql = sql + " AND P.Local_Inventario = @plataforma AND P.Contrato = @contrato ";
            }

            sql = sql + " ORDER BY P.Codigo ";

            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                try
                {
                    cmd.Parameters.AddWithValue("@Ano", ano);
                    cmd.Parameters.AddWithValue("@Mes", mes);

                    if (ckbGraficoPorPlataforma.Checked)
                    {
                        cmd.Parameters.AddWithValue("@plataforma", plataforma);
                        cmd.Parameters.AddWithValue("@contrato", contrato);
                    }

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        List<KPIAberturaXRegistroDseRexPresencaCargaXDesembaraco> lista = new List<KPIAberturaXRegistroDseRexPresencaCargaXDesembaraco>();

                        var url = string.Empty;

                        url = MontarUrlCriptografada_periodo(ltvClientes.CheckedItems[0].SubItems[2].Text, ltvClientes.CheckedItems[0].SubItems[1].Text, dtpInicio.Value, dtpFinal.Value);

                        while (reader.Read())
                        {
                            lista.Add(new KPIAberturaXRegistroDseRexPresencaCargaXDesembaraco
                            {
                                RefMS = reader["Codigo"].ToString(),
                                Dias_AberturaXRegistroDseRe = (int)reader["Dias_ate_RegistroDSERE"],
                                Dias_PresencaCargaXDesembaraco = (int)reader["Dias_ate_Desembaraco"],

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

        private List<KPIImpostoConsolidado> getDadosImpostosConsolidados(List<string> importadores, string data_inicio, string data_final, bool Pagos)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string sql = string.Empty;

            if (Pagos)
            {
                sql = "SELECT MONTH(p.DT_DESEMBARACO) AS 'MONTH',    " +
                      "       YEAR(p.DT_DESEMBARACO) AS 'YEAR',      " +
                      "       ROUND(SUM(ps.VALOR_CIF),2) AS 'CIF',   " +
                      "       ROUND(SUM(ps.VALOR_II),2) AS 'I.I',    " +
                      "       ROUND(SUM(ps.VALOR_IPI),2) AS 'I.P.I', " +
                      "       ROUND(SUM(ps.VALOR_PIS),2) AS 'PIS',   " +
                      "       ROUND(SUM(ps.VALOR_COFINS),2) AS 'COFINS', " +
                      "       ROUND(SUM(NP.VALOR_REGISTRADO),2) AS ARMAZENAGEM, " +
                      "       ROUND(SUM(ps.VALOR_ICMS + ps.VALOR_FECP),2) AS 'ICMS', MIN(p.DT_DESEMBARACO) AS 'DT_INICIO', MAX(p.DT_DESEMBARACO) AS 'DT_FIM' " +
                      "  FROM Processos p " +
                      "       INNER JOIN Processos_Impostos ps on p.Codigo = ps.PROCESSO " + 
                      "        LEFT JOIN Numerarios_Processos NP on p.Codigo = NP.PROCESSO AND NP.Numerario IN ('AE','AA','ARMF','ARM','ARMB','ARMA','ect','ARNI','ASEP','ARMP','ARMS','ARSP','SEPB','TMC','AT','ARM.','ARMM','AAC','AEJU','ARMU') AND Valor_Registrado > 0	";   	      
            }
            else
            {
                sql = "SELECT MONTH(p.DT_DESEMBARACO) AS 'MONTH',                 " +
                      "       YEAR(p.DT_DESEMBARACO) AS 'YEAR',                   " +
                      "       ROUND(SUM(ps.VALOR_CIF),2) AS 'CIF',                " +
                      "       ROUND(SUM(ps.VALOR_SUSPENSO_II),2) AS 'I.I',        " +
                      "       ROUND(SUM(ps.VALOR_SUSPENSO_IPI),2) AS 'I.P.I',     " +
                      "       ROUND(SUM(ps.VALOR_SUSPENSO_PIS),2) AS 'PIS',       " +
                      "       ROUND(SUM(ps.VALOR_SUSPENSO_COFINS),2) AS 'COFINS', " +
                      "       ROUND(SUM(NP.VALOR_REGISTRADO),2) AS ARMAZENAGEM, " +
                      "ROUND(SUM(ps.VALOR_SUSPENSO_ICMS + ps.VALOR_SUSPENSO_FECP),2) AS 'ICMS', MIN(p.DT_DESEMBARACO) AS 'DT_INICIO', MAX(p.DT_DESEMBARACO) AS 'DT_FIM' " +
                      " FROM Processos p " +
                      "      INNER JOIN Processos_Impostos ps on p.Codigo = ps.PROCESSO " +
                      "      LEFT JOIN Numerarios_Processos NP on p.Codigo = NP.PROCESSO AND NP.Numerario IN ('AE','AA','ARMF','ARM','ARMB','ARMA','ect','ARNI','ASEP','ARMP','ARMS','ARSP','SEPB','TMC','AT','ARM.','ARMM','AAC','AEJU','ARMU') AND Valor_Registrado > 0	";   	  
            }

            sql += "WHERE P.DT_REGISTRO_DI <> '' AND p.TIPO IN ('11','12') AND p.Status <> '4' AND (p.NR_DECLARACAO_IMP <> '') AND (p.NR_DECLARACAO_IMP IS NOT NULL) AND p.DT_DESEMBARACO BETWEEN '" + data_inicio + "' AND '" + data_final + "' AND p.Importador IN  ('" + String.Join("','", importadores.ToArray()) + "')";

            sql += " GROUP BY YEAR(p.DT_DESEMBARACO), MONTH(p.DT_DESEMBARACO) " +
                   " ORDER BY YEAR(p.DT_DESEMBARACO), MONTH(p.DT_DESEMBARACO)";

            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                try
                {
                    DataTable table = new DataTable();   

                    using (SqlDataReader reader_aux = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader_aux);
                    }

                    int qtd_registros = table.Rows.Count;

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        //List<KPIImpostoConsolidado> lista = new List<KPIImpostoConsolidado>();

                        //int mes = Convert.ToDateTime(data_inicio).Month;

                        //while (reader.Read())
                        //{
                        //    int mes_reader = (int)reader["MONTH"];

                        //    if (mes == 13)
                        //    {
                        //        mes = 1;
                        //    }

                        //    if (mes == mes_reader)
                        //    {
                        //        lista.Add(
                        //            new KPIImpostoConsolidado
                        //            {
                        //                Mes = (int)reader["MONTH"],
                        //                Ano = (int)reader["YEAR"],
                        //                II = (reader["I.I"] == DBNull.Value ? (double?)null : (double?)reader["I.I"]),
                        //                IPI = (reader["I.P.I"] == DBNull.Value ? (double?)null : (double?)reader["I.P.I"]),
                        //                PIS = (reader["PIS"] == DBNull.Value ? (double?)null : (double?)reader["PIS"]),
                        //                COFINS = (reader["COFINS"] == DBNull.Value ? (double?)null : (double?)reader["COFINS"]),
                        //                ICMS = (reader["ICMS"] == DBNull.Value ? (double?)null : (double?)reader["ICMS"]),
                        //                CIF = (reader["CIF"] == DBNull.Value ? (double?)null : (double?)reader["CIF"]),
                        //                ARMAZENAGEM = (reader["ARMAZENAGEM"] == DBNull.Value ? (double?)null : (double?)reader["ARMAZENAGEM"]),
                        //            });

                        //        mes++;
                        //    }
                        //    else
                        //    {

                        //        lista.Add(new KPIImpostoConsolidado
                        //        {
                        //            Mes = mes,
                        //            Ano = (int)reader["YEAR"],
                        //            II = 0,
                        //            IPI = 0,
                        //            PIS = 0,
                        //            COFINS = 0,
                        //            ICMS = 0,
                        //            CIF = 0,
                        //            ARMAZENAGEM = 0

                        //        });

                        //        lista.Add(new KPIImpostoConsolidado
                        //        {
                        //            Mes = (int)reader["MONTH"],
                        //            Ano = (int)reader["YEAR"],

                        //            II = (reader["I.I"] == DBNull.Value ? (double?)null : (double?)reader["I.I"]),
                        //            IPI = (reader["I.P.I"] == DBNull.Value ? (double?)null : (double?)reader["I.P.I"]),
                        //            PIS = (reader["PIS"] == DBNull.Value ? (double?)null : (double?)reader["PIS"]),
                        //            COFINS = (reader["COFINS"] == DBNull.Value ? (double?)null : (double?)reader["COFINS"]),
                        //            ICMS = (reader["ICMS"] == DBNull.Value ? (double?)null : (double?)reader["ICMS"]),
                        //            CIF = (reader["CIF"] == DBNull.Value ? (double?)null : (double?)reader["CIF"]),
                        //            ARMAZENAGEM = (reader["ARMAZENAGEM"] == DBNull.Value ? (double?)null : (double?)reader["ARMAZENAGEM"]),
                        //        });

                        //        mes = mes + 2;
                        //    }

                        //    Application.DoEvents();
                        //}
                        //return lista;                        
                        
                        List<KPIImpostoConsolidado> lista = new List<KPIImpostoConsolidado>();

                        int mes = Convert.ToDateTime(data_inicio).Month;
                        int ano = Convert.ToDateTime(data_inicio).Year;                                         
                                                                            
                        while (reader.Read())
                        {
                            int mes_reader = (int)reader["MONTH"];

                            if (mes == 13)
                            {
                                mes = 1;
                            }

                            if (mes == mes_reader)
                            {
                                lista.Add(
                                    new KPIImpostoConsolidado
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
                                    });

                                mes++;
                            }
                            else
                            {                                                                
                                for (int i = 0;(mes != mes_reader); i++)
                                {                                    
                                    lista.Add(new KPIImpostoConsolidado
                                    {
                                        Mes = mes,
                                        Ano = ano,

                                        II = 0,
                                        IPI = 0,
                                        PIS = 0,
                                        COFINS = 0,
                                        ICMS = 0,
                                        CIF = 0,
                                        ARMAZENAGEM = 0
                                    });

                                    mes++;

                                    if (mes == 13)
                                    {
                                        mes = 1;
                                        ano++;
                                    }
                                }

                                if (mes == mes_reader)
                                {
                                    lista.Add(
                                        new KPIImpostoConsolidado
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
                                        });

                                    mes++;
                                }	                                                                                       	                                                                                               
                            }             
                        }

                        Application.DoEvents();                                                                   

                        return lista;
                    }
                }
                catch (SqlException e)
                {
                    return null;
                }
            }
        }
        private void cbbTpRelatorio_SelectedIndexChanged(object sender, EventArgs e)
        {
            gpbPeriodoDes.Enabled = ((cbbTpRelatorio.SelectedValue.ToString() == "1") || (cbbTpRelatorio.SelectedValue.ToString() == "2") || (cbbTpRelatorio.SelectedValue.ToString() == "6"));
            gpbMesDes.Enabled = ((cbbTpRelatorio.SelectedValue.ToString() == "0") || (cbbTpRelatorio.SelectedValue.ToString() == "3") || (cbbTpRelatorio.SelectedValue.ToString() == "4") || (cbbTpRelatorio.SelectedValue.ToString() == "5") || (cbbTpRelatorio.SelectedValue.ToString() == "7") || (cbbTpRelatorio.SelectedValue.ToString() == "8") || (cbbTpRelatorio.SelectedValue.ToString() == "9") || (cbbTpRelatorio.SelectedValue.ToString() == "10"));

            gbPorPlataforma.Enabled = ((cbbTpRelatorio.SelectedValue.ToString() == "3") || (cbbTpRelatorio.SelectedValue.ToString() == "4") || (cbbTpRelatorio.SelectedValue.ToString() == "5") || (cbbTpRelatorio.SelectedValue.ToString() == "6") || (cbbTpRelatorio.SelectedValue.ToString() == "7") || (cbbTpRelatorio.SelectedValue.ToString() == "8") || (cbbTpRelatorio.SelectedValue.ToString() == "9") || (cbbTpRelatorio.SelectedValue.ToString() == "10"));

            if (!gbPorPlataforma.Enabled)
            {
                ckbGraficoPorPlataforma.Checked = false;
            }
        }

        private int getPeriodoArmazenagem(int Dias_Armazenagem, string Urf, string Recinto_Alfandegario, DateTime Data)
        {
            int Periodo1 = 0, Periodo2 = 0, Periodo3 = 0, Periodo4 = 0, Periodo5 = 0, Periodo6 = 0, Periodo7 = 0, Periodo8 = 0;

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " SELECT Data_Vigencia_Inicial, Periodo, Dias                                  " +
                           "   FROM Armazenagens_Periodos_Dias                                            " +
                           "  WHERE FK_Cod_Tab_Urf = @FK_Cod_Tab_Urf AND FK_Cod_Rec_Alf = @FK_Cod_Rec_Alf " +
                           "ORDER BY Data_Vigencia_Inicial, Periodo ";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_Cod_Tab_Urf", Urf);
                    cmd.Parameters.AddWithValue("@FK_Cod_Rec_Alf", Recinto_Alfandegario);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            if ((int)reader["Periodo"] == 1)
                            {
                                Periodo1 = (int)reader["Dias"];
                            }

                            if ((int)reader["Periodo"] == 2)
                            {
                                Periodo2 = (Periodo1 + (int)reader["Dias"]);
                            }

                            if ((int)reader["Periodo"] == 3)
                            {
                                Periodo3 = (Periodo2 + (int)reader["Dias"]);
                            }

                            if ((int)reader["Periodo"] == 4)
                            {
                                Periodo4 = (Periodo3 + (int)reader["Dias"]);
                            }

                            if ((int)reader["Periodo"] == 5)
                            {
                                Periodo5 = (Periodo4 + (int)reader["Dias"]);
                            }

                            if ((int)reader["Periodo"] == 6)
                            {
                                Periodo6 = (Periodo5 + (int)reader["Dias"]);
                            }

                            if ((int)reader["Periodo"] == 7)
                            {
                                Periodo7 = (Periodo6 + (int)reader["Dias"]);
                            }

                            if ((int)reader["Periodo"] == 8)
                            {
                                Periodo8 = (Periodo7 + (int)reader["Dias"]);
                            }
                        }
                    }
                }

                if (Dias_Armazenagem <= Periodo1)
                {
                    return 1;
                }

                else if (Dias_Armazenagem <= Periodo2)
                {
                    return 2;
                }
                else if (Dias_Armazenagem <= Periodo3)
                {
                    return 3;
                }
                else if (Dias_Armazenagem <= Periodo4)
                {
                    return 4;
                }
                else if (Dias_Armazenagem <= Periodo5)
                {
                    return 5;
                }
                else if (Dias_Armazenagem <= Periodo6)
                {
                    return 6;
                }
                else if (Dias_Armazenagem <= Periodo7)
                {
                    return 7;
                }
                else if (Dias_Armazenagem <= Periodo8)
                {
                    return 8;
                }

                return 9;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return 0;
            }
        }

        private void GerarGraficoQtdPerPeriodo(List<string> importadores, string nomecliente)
        {
            rptView.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Consultas.GraficosKPI.rptKPIImportProcess.rdlc";

            ReportDataSource dataset = new ReportDataSource("dsKPITpProcessos", getDadosKPIPercentualTpProcessos(importadores, dtpInicio.Text, dtpFinal.Text));

            List<ReportParameter> param = new List<ReportParameter>();

            param.Add(new ReportParameter("txtTitulo", nomecliente));

            param.Add(new ReportParameter("txtTituloChartAir", "Percentage of Shipment Air - " + Convert.ToDateTime(dtpInicio.Text).ToString("dd/MM/yyyy") + " to " +
                                                                                                 Convert.ToDateTime(dtpFinal.Text).ToString("dd/MM/yyyy")));

            param.Add(new ReportParameter("txtTituloChartSea", "Percentage of Shipment Sea - " + Convert.ToDateTime(dtpInicio.Text).ToString("dd/MM/yyyy") + " to " +
                                                                                                 Convert.ToDateTime(dtpFinal.Text).ToString("dd/MM/yyyy")));

            param.Add(new ReportParameter("txtTituloChartQtdAir", "Total Number of Shipment Air - " + Convert.ToDateTime(dtpInicio.Text).ToString("dd/MM/yyyy") + " to " +
                                                                                                      Convert.ToDateTime(dtpFinal.Text).ToString("dd/MM/yyyy")));

            param.Add(new ReportParameter("txtTituloChartQtdSea", "Total Number of Shipment Sea - " + Convert.ToDateTime(dtpInicio.Text).ToString("dd/MM/yyyy") + " to " +
                                                                                                      Convert.ToDateTime(dtpFinal.Text).ToString("dd/MM/yyyy")));

            param.Add(new ReportParameter("txtTituloChartTotPer", "Percentage of Shipment - " + Convert.ToDateTime(dtpInicio.Text).ToString("dd/MM/yyyy") + " to " +
                                                                                                Convert.ToDateTime(dtpFinal.Text).ToString("dd/MM/yyyy")));

            param.Add(new ReportParameter("txtTituloChartTotQtd", "Total Number of Shipments - " + Convert.ToDateTime(dtpInicio.Text).ToString("dd/MM/yyyy") + " to " +
                                                                                                   Convert.ToDateTime(dtpFinal.Text).ToString("dd/MM/yyyy")));

            var url_total_geral = MontarUrlCriptografada_periodo(ltvClientes.CheckedItems[0].SubItems[2].Text, ltvClientes.CheckedItems[0].SubItems[1].Text, dtpInicio.Value, dtpFinal.Value);

            param.Add(new ReportParameter("txtUrlSiteTotal", url_total_geral));

            rptView.LocalReport.SetParameters(param);
            rptView.LocalReport.DataSources.Add(dataset);
            rptView.LocalReport.Refresh();
            rptView.RefreshReport();
        }

        private void GerarApresentacao(List<string> importadores, string nomecliente)
        {
            rptView.LocalReport.DataSources.Clear();
            rptView.LocalReport.EnableHyperlinks = true;
            rptView.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Consultas.GraficosKPI.rptApresentacaoKPI.rdlc";

            string primeiroDiaDoMes = "";
            string ultimoDiaDoMes = "";
            string SeisMesesAntesDoPrimeiroDiaDoMes = "";

            primeiroDiaDoMes = "01/" + dtpMes.Value.Month.ToString() + "/" + dtpAno.Value.Year.ToString();

            ultimoDiaDoMes = DateTime.DaysInMonth(dtpMes.Value.Year, dtpMes.Value.Month).ToString() + "/" + dtpMes.Value.Month.ToString() + "/" + dtpAno.Value.Year.ToString();                            

            if (dtpMes.Value.Month.ToString() != "12")
            {
                SeisMesesAntesDoPrimeiroDiaDoMes = "01/" + DateTime.Now.AddMonths(-7).Date.Month.ToString() + "/" + DateTime.Now.AddMonths(-7).Date.Year.ToString();
            }
            else
            {
                SeisMesesAntesDoPrimeiroDiaDoMes = "01/" + DateTime.Now.AddMonths(-6).Date.Month.ToString() + "/" + DateTime.Now.AddMonths(-6).Date.Year.ToString();
            }            

            List<ReportParameter> param = new List<ReportParameter>();

            ReportDataSource dataset1 = new ReportDataSource("dsKPIShipmentsNumbers", getDadosKPIQtdProcessos(importadores, primeiroDiaDoMes, ultimoDiaDoMes));
            ReportDataSource dataset2 = new ReportDataSource("dsKPITpProcessos", getDadosKPIPercentualTpProcessos(importadores, primeiroDiaDoMes, ultimoDiaDoMes));

            //IMPOSTOS
            ReportDataSource dataset3 = new ReportDataSource("dsImpostosConsolidados", getDadosImpostosConsolidados(importadores, SeisMesesAntesDoPrimeiroDiaDoMes, ultimoDiaDoMes, true));
            ReportDataSource dataset4 = new ReportDataSource("dsImpostosConsolidadosSuspensos", getDadosImpostosConsolidados(importadores, SeisMesesAntesDoPrimeiroDiaDoMes, ultimoDiaDoMes, false));

            //APROVAÇÃO DO REGISTRO AO REGISTRO - CARGA VISADA AO DESEMBARAÇO
            ReportDataSource dataset5 = new ReportDataSource("dsKPIAprovRegistroXRegistroDIxCargaVisadaXDesembaracoAir", getDadosKPIAprovRegistroXRegistroDIxCargaVisadaXDesembaraco(importadores, true, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString()));
            ReportDataSource dataset6 = new ReportDataSource("dsKPIAprovRegistroXRegistroDIxCargaVisadaXDesembaracoSea", getDadosKPIAprovRegistroXRegistroDIxCargaVisadaXDesembaraco(importadores, false, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString()));

            //REGISTRO DA DI AO DESEMBARAÇO
            ReportDataSource dataset7 = new ReportDataSource("dsKPIDIRegistroXDesembaracoAir", getDadosKPIDIRegistroXDesembaraco(importadores, true, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString()));
            ReportDataSource dataset8 = new ReportDataSource("dsKPIDIRegistroXDesembaracoSea", getDadosKPIDIRegistroXDesembaraco(importadores, false, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString()));

            //CHEGADA DA CARGA AO DESEMBARAÇO AO REGISTRO DI
            ReportDataSource dataset9 = new ReportDataSource("dsKPIChegadaCargaXDesembaracoXRegistroDIAir", getDadosKPIChegadaCargaXDesembaracoXRegistroDI(importadores, true, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString()));
            ReportDataSource dataset10 = new ReportDataSource("dsKPIChegadaCargaXDesembaracoXRegistroDISea", getDadosKPIChegadaCargaXDesembaracoXRegistroDI(importadores, false, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString()));

            //DESEMBARAÇO AO PAGAMENTO DO ICMS - DESEMBARAÇO A ENTREGA DO DOCUMENTO
            ReportDataSource dataset11 = new ReportDataSource("dsKPIDesembaracoXPagamentoICMSXEntregaDocumentalAir", getDadosKPIDesembaracoXPagamentoICMSXEntregaDocumental(importadores, true, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString()));
            ReportDataSource dataset12 = new ReportDataSource("dsKPIDesembaracoXPagamentoICMSXEntregaDocumentalSea", getDadosKPIDesembaracoXPagamentoICMSXEntregaDocumental(importadores, false, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString()));

            //ARMAZENAGEM
            ReportDataSource dataset13 = new ReportDataSource("dsKPIArmazenagemAir", getDadosKPIArmazenagem(importadores, true, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString()));
            ReportDataSource dataset14 = new ReportDataSource("dsKPIArmazenagemSea", getDadosKPIArmazenagem(importadores, false, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString()));

            //MULTAS
            ReportDataSource dataset15 = new ReportDataSource("dsKPIMultasAir", getDadosKPIMultas(importadores, true, primeiroDiaDoMes, ultimoDiaDoMes));
            ReportDataSource dataset16 = new ReportDataSource("dsKPIMultasSea", getDadosKPIMultas(importadores, false, primeiroDiaDoMes, ultimoDiaDoMes));

            param.Add(new ReportParameter("txtTitulo", nomecliente));
            param.Add(new ReportParameter("txtTituloChartAirPer", "Percentage of Shipment Air - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text));
            param.Add(new ReportParameter("txtTituloChartSeaPer", "Percentage of Shipment Sea - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text));
            param.Add(new ReportParameter("txtTituloChartAir", "AIR FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text));
            param.Add(new ReportParameter("txtTituloChartSea", "SEA FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text));
            param.Add(new ReportParameter("txtTituloChartQtdAir", "Total Number of Shipment Air - " + primeiroDiaDoMes + " to " + ultimoDiaDoMes));
            param.Add(new ReportParameter("txtTituloChartQtdSea", "Total Number of Shipment Sea - " + primeiroDiaDoMes + " to " + ultimoDiaDoMes));
            param.Add(new ReportParameter("txtTituloChartTotPer", "Percentage of Shipment - " + primeiroDiaDoMes + " to " + ultimoDiaDoMes));
            param.Add(new ReportParameter("txtTituloChartTotQtd", "Total Number of Shipments - " + primeiroDiaDoMes + " to " + ultimoDiaDoMes));
            param.Add(new ReportParameter("txtTituloChart", "Shipment - " + primeiroDiaDoMes + " to " + ultimoDiaDoMes));

            var url_total_geral = MontarUrlCriptografada_periodo(ltvClientes.CheckedItems[0].SubItems[2].Text, ltvClientes.CheckedItems[0].SubItems[1].Text, dtpInicio.Value, dtpFinal.Value);

            param.Add(new ReportParameter("txtUrlSiteTotal", url_total_geral));

            rptView.LocalReport.SetParameters(param);
            rptView.LocalReport.DataSources.Add(dataset1);
            rptView.LocalReport.DataSources.Add(dataset2);
            rptView.LocalReport.DataSources.Add(dataset3);
            rptView.LocalReport.DataSources.Add(dataset4);

            if (dataset5 != null)
            {
                rptView.LocalReport.DataSources.Add(dataset5);
            }

            if (dataset6 != null)
            {
                rptView.LocalReport.DataSources.Add(dataset6);
            }

            if (dataset7 != null)
            {
                rptView.LocalReport.DataSources.Add(dataset7);
            }

            if (dataset8 != null)
            {
                rptView.LocalReport.DataSources.Add(dataset8);
            }

            if (dataset9 != null)
            {
                rptView.LocalReport.DataSources.Add(dataset9);
            }

            if (dataset10 != null)
            {
                rptView.LocalReport.DataSources.Add(dataset10);
            }

            if (dataset11 != null)
            {
                rptView.LocalReport.DataSources.Add(dataset11);
            }

            if (dataset12 != null)
            {
                rptView.LocalReport.DataSources.Add(dataset12);
            }

            if (dataset13 != null)
            {
                rptView.LocalReport.DataSources.Add(dataset13);
            }

            if (dataset14 != null)
            {
                rptView.LocalReport.DataSources.Add(dataset14);
            }

            if (dataset15 != null)
            {
                rptView.LocalReport.DataSources.Add(dataset15);
            }

            if (dataset16 != null)
            {
                rptView.LocalReport.DataSources.Add(dataset16);
            }

            rptView.LocalReport.Refresh();
            rptView.RefreshReport();
        }

        private void GerarGraficoQtdPorMes(List<string> importadores, string nomecliente)
        {
            rptView.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Consultas.GraficosKPI.rptKPIShipmentsNumbers.rdlc";

            ReportDataSource dataset = new ReportDataSource("dsKPIShipmentsNumbers", getDadosKPIQtdProcessos(importadores, dtpInicio.Text, dtpFinal.Text));

            List<ReportParameter> param = new List<ReportParameter>();

            param.Add(new ReportParameter("txtTitulo", nomecliente));
            param.Add(new ReportParameter("txtTituloChart", "Shipment - " + Convert.ToDateTime(dtpInicio.Text).ToString("dd/MM/yyyy") + " - " +
                                                                            Convert.ToDateTime(dtpFinal.Text).ToString("dd/MM/yyyy")));

            var url_total_geral = MontarUrlCriptografada_periodo(ltvClientes.CheckedItems[0].SubItems[2].Text, ltvClientes.CheckedItems[0].SubItems[1].Text, dtpInicio.Value, dtpFinal.Value);

            param.Add(new ReportParameter("txtUrlSiteTotal", url_total_geral));

            rptView.LocalReport.SetParameters(param);
            rptView.LocalReport.DataSources.Add(dataset);
            rptView.LocalReport.Refresh();
            rptView.RefreshReport();
        }

        private void GerarGraficoRegistroDIxDesembaraco(List<string> importadores, string nomecliente)
        {
            rptView.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Consultas.GraficosKPI.rptKPIRegistroDIXDesembaraco.rdlc";

            List<KPIDIRegistroXDesembaraco> dsAir;
            List<KPIDIRegistroXDesembaraco> dsSea;

            if (ckbGraficoPorPlataforma.Checked)
            {
                dsAir = getDadosKPIDIRegistroXDesembaraco(importadores, true, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString(), ((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo.ToString(),
                ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo.ToString());

                dsSea = getDadosKPIDIRegistroXDesembaraco(importadores, false, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString(), ((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo.ToString(),
                ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo.ToString());
            }
            else
            {
                dsAir = getDadosKPIDIRegistroXDesembaraco(importadores, true, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString());

                dsSea = getDadosKPIDIRegistroXDesembaraco(importadores, false, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString());
            }

            ReportDataSource datasetAir = new ReportDataSource("dsKPIDIRegistroXDesembaracoAir", dsAir);

            ReportDataSource datasetSea = new ReportDataSource("dsKPIDIRegistroXDesembaracoSea", dsSea);

            List<ReportParameter> param = new List<ReportParameter>();

            param.Add(new ReportParameter("txtTitulo", nomecliente));

            if (ckbGraficoPorPlataforma.Checked)
            {
                if ((((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao) == "DEPÓSITO DA EMPRESA")
                {
                    param.Add(new ReportParameter("txtTituloChartAir", "AIR FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + "COMPANY WAREHOUSE"));
                    param.Add(new ReportParameter("txtTituloChartSea", "SEA FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + "COMPANY WAREHOUSE"));
                }
                else
                {
                    param.Add(new ReportParameter("txtTituloChartAir", "AIR FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao));
                    param.Add(new ReportParameter("txtTituloChartSea", "SEA FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao));
                }
            }
            else
            {
                param.Add(new ReportParameter("txtTituloChartAir", "AIR FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text));
                param.Add(new ReportParameter("txtTituloChartSea", "SEA FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text));
            }

            var url_total_geral = MontarUrlCriptografada_periodo(ltvClientes.CheckedItems[0].SubItems[2].Text, ltvClientes.CheckedItems[0].SubItems[1].Text, dtpAno.Value, dtpMes.Value);

            param.Add(new ReportParameter("txtUrlSiteTotal", url_total_geral));

            rptView.LocalReport.SetParameters(param);
            rptView.LocalReport.DataSources.Add(datasetAir);
            rptView.LocalReport.DataSources.Add(datasetSea);
            rptView.LocalReport.Refresh();
            rptView.RefreshReport();
        }

        private void GerarGraficoChegadaCargaxDesembaracoRegistroDI(List<string> importadores, string nomecliente)
        {
            rptView.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Consultas.GraficosKPI.rptKPIChegadaCargaXDesembaracoXRegistroDI.rdlc";

            List<KPIChegadaCargaXDesembaracoXRegistroDI> dsAir;
            List<KPIChegadaCargaXDesembaracoXRegistroDI> dsSea;

            if (ckbGraficoPorPlataforma.Checked)
            {
                dsAir = getDadosKPIChegadaCargaXDesembaracoXRegistroDI(importadores, true, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString(), ((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo,
                ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo);

                dsSea = getDadosKPIChegadaCargaXDesembaracoXRegistroDI(importadores, false, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString(), ((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo,
                ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo);
            }
            else
            {
                dsAir = getDadosKPIChegadaCargaXDesembaracoXRegistroDI(importadores, true, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString());

                dsSea = getDadosKPIChegadaCargaXDesembaracoXRegistroDI(importadores, false, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString());
            }

            ReportDataSource datasetAir = new ReportDataSource("dsKPIChegadaCargaXDesembaracoXRegistroDIAir", dsAir);

            ReportDataSource datasetSea = new ReportDataSource("dsKPIChegadaCargaXDesembaracoXRegistroDISea", dsSea);

            List<ReportParameter> param = new List<ReportParameter>();

            param.Add(new ReportParameter("txtTitulo", nomecliente));

            if (ckbGraficoPorPlataforma.Checked)
            {
                if ((((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao) == "DEPÓSITO DA EMPRESA")
                {
                    param.Add(new ReportParameter("txtTituloChartAir", "AIR FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + "COMPANY WAREHOUSE"));
                    param.Add(new ReportParameter("txtTituloChartSea", "SEA FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + "COMPANY WAREHOUSE"));
                }
                else
                {
                    param.Add(new ReportParameter("txtTituloChartAir", "AIR FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao));
                    param.Add(new ReportParameter("txtTituloChartSea", "SEA FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao));
                }
            }
            else
            {
                param.Add(new ReportParameter("txtTituloChartAir", "AIR FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text));
                param.Add(new ReportParameter("txtTituloChartSea", "SEA FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text));
            }

            var url_total_geral = MontarUrlCriptografada_periodo(ltvClientes.CheckedItems[0].SubItems[2].Text, ltvClientes.CheckedItems[0].SubItems[1].Text, dtpAno.Value, dtpMes.Value);

            param.Add(new ReportParameter("txtUrlSiteTotal", url_total_geral));

            rptView.LocalReport.SetParameters(param);
            rptView.LocalReport.DataSources.Add(datasetAir);
            rptView.LocalReport.DataSources.Add(datasetSea);
            rptView.LocalReport.Refresh();
            rptView.RefreshReport();
        }

        private void GerarGraficoArmazenagem(List<string> importadores, string nomecliente)
        {
            rptView.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Consultas.GraficosKPI.rptKPIArmazenagem.rdlc";

            List<KPIArmazenagem> dsAir;
            List<KPIArmazenagem> dsSea;

            if (ckbGraficoPorPlataforma.Checked)
            {
                dsAir = getDadosKPIArmazenagem(importadores, true, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString(), ((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo,
                ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo);

                dsSea = getDadosKPIArmazenagem(importadores, false, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString(), ((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo,
                ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo);
            }
            else
            {
                dsAir = getDadosKPIArmazenagem(importadores, true, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString());

                dsSea = getDadosKPIArmazenagem(importadores, false, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString());
            }

            ReportDataSource datasetAir = new ReportDataSource("dsKPIArmazenagemAir", dsAir);

            ReportDataSource datasetSea = new ReportDataSource("dsKPIArmazenagemSea", dsSea);

            List<ReportParameter> param = new List<ReportParameter>();

            param.Add(new ReportParameter("txtTitulo", nomecliente));

            if (ckbGraficoPorPlataforma.Checked)
            {
                if ((((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao) == "DEPÓSITO DA EMPRESA")
                {
                    param.Add(new ReportParameter("txtTituloChartAir", "AIR FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + "COMPANY WAREHOUSE"));
                    param.Add(new ReportParameter("txtTituloChartSea", "SEA FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + "COMPANY WAREHOUSE"));
                }
                else
                {
                    param.Add(new ReportParameter("txtTituloChartAir", "AIR FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao));
                    param.Add(new ReportParameter("txtTituloChartSea", "SEA FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao));
                }
            }
            else
            {
                param.Add(new ReportParameter("txtTituloChartAir", "AIR FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text));
                param.Add(new ReportParameter("txtTituloChartSea", "SEA FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text));
            }

            var url_total_geral = MontarUrlCriptografada_periodo(ltvClientes.CheckedItems[0].SubItems[2].Text, ltvClientes.CheckedItems[0].SubItems[1].Text, dtpAno.Value, dtpMes.Value);

            param.Add(new ReportParameter("txtUrlSiteTotal", url_total_geral));

            rptView.LocalReport.SetParameters(param);
            rptView.LocalReport.DataSources.Add(datasetAir);
            rptView.LocalReport.DataSources.Add(datasetSea);
            rptView.LocalReport.Refresh();
            rptView.RefreshReport();
        }

        private void GerarGraficoMultas(List<string> importadores, string nomecliente)
        {
            rptView.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Consultas.GraficosKPI.rptKPIMultas.rdlc";

            List<KPIMultas> dsAir;
            List<KPIMultas> dsSea;

            if (ckbGraficoPorPlataforma.Checked)
            {
                dsAir = getDadosKPIMultas(importadores, true, dtpInicio.Text, dtpFinal.Text, ((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo,
                ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo);

                dsSea = getDadosKPIMultas(importadores, false, dtpInicio.Text, dtpFinal.Text, ((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo,
                ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo);
            }
            else
            {
                dsAir = getDadosKPIMultas(importadores, true, dtpInicio.Text, dtpFinal.Text);

                dsSea = getDadosKPIMultas(importadores, false, dtpInicio.Text, dtpFinal.Text);
            }

            ReportDataSource datasetAir = new ReportDataSource("dsKPIMultasAir", dsAir);

            ReportDataSource datasetSea = new ReportDataSource("dsKPIMultasSea", dsSea);

            List<ReportParameter> param = new List<ReportParameter>();

            param.Add(new ReportParameter("txtTitulo", nomecliente));

            if (ckbGraficoPorPlataforma.Checked)
            {
                if ((((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao) == "DEPÓSITO DA EMPRESA")
                {
                    param.Add(new ReportParameter("txtTituloChartAir", "AIR FREIGHT - " + Convert.ToDateTime(dtpInicio.Text).ToString("dd/MM/yyyy") + " - " + Convert.ToDateTime(dtpFinal.Text).ToString("dd/MM/yyyy") + " - " + "COMPANY WAREHOUSE"));
                    param.Add(new ReportParameter("txtTituloChartSea", "SEA FREIGHT - " + Convert.ToDateTime(dtpInicio.Text).ToString("dd/MM/yyyy") + " - " + Convert.ToDateTime(dtpFinal.Text).ToString("dd/MM/yyyy") + " - " + "COMPANY WAREHOUSE"));
                }
                else
                {
                    param.Add(new ReportParameter("txtTituloChartAir", "AIR FREIGHT - " + Convert.ToDateTime(dtpInicio.Text).ToString("dd/MM/yyyy") + " - "
                                                                                        + Convert.ToDateTime(dtpFinal.Text).ToString("dd/MM/yyyy") + " - " + ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao));
                    param.Add(new ReportParameter("txtTituloChartSea", "SEA FREIGHT - " + Convert.ToDateTime(dtpInicio.Text).ToString("dd/MM/yyyy") + " - "
                                                                                        + Convert.ToDateTime(dtpFinal.Text).ToString("dd/MM/yyyy") + " - " + ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao));
                }
            }
            else
            {
                param.Add(new ReportParameter("txtTituloChartAir", "AIR FREIGHT - " + Convert.ToDateTime(dtpInicio.Text).ToString("dd/MM/yyyy") + " - " + Convert.ToDateTime(dtpFinal.Text).ToString("dd/MM/yyyy")));
                param.Add(new ReportParameter("txtTituloChartSea", "SEA FREIGHT - " + Convert.ToDateTime(dtpInicio.Text).ToString("dd/MM/yyyy") + " - " + Convert.ToDateTime(dtpFinal.Text).ToString("dd/MM/yyyy")));
            }

            var url_total_geral = MontarUrlCriptografada_periodo(ltvClientes.CheckedItems[0].SubItems[2].Text, ltvClientes.CheckedItems[0].SubItems[1].Text, dtpInicio.Value, dtpFinal.Value);

            param.Add(new ReportParameter("txtUrlSiteTotal", url_total_geral));

            rptView.LocalReport.SetParameters(param);
            rptView.LocalReport.DataSources.Add(datasetAir);
            rptView.LocalReport.DataSources.Add(datasetSea);
            rptView.LocalReport.Refresh();
            rptView.RefreshReport();
        }

        private void GerarGraficoChegadaCargaxRegistroAprovado(List<string> importadores, string nomecliente)
        {
            rptView.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Consultas.GraficosKPI.rptKPIChegadaCargaXAprovRegistro.rdlc";

            List<KPIChegadaCargaXRegAprova> dsAir;
            List<KPIChegadaCargaXRegAprova> dsSea;

            if (ckbGraficoPorPlataforma.Checked)
            {
                dsAir = getDadosKPIChegadaCargaXRegAprova(importadores, true, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString(), ((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo,
                ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo);

                dsSea = getDadosKPIChegadaCargaXRegAprova(importadores, false, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString(), ((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo,
                ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo);
            }
            else
            {
                dsAir = getDadosKPIChegadaCargaXRegAprova(importadores, true, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString());

                dsSea = getDadosKPIChegadaCargaXRegAprova(importadores, false, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString());
            }

            ReportDataSource datasetAir = new ReportDataSource("dsKPIChegadaCargaXRegAprovaAir", dsAir);

            ReportDataSource datasetSea = new ReportDataSource("dsKPIChegadaCargaXRegAprovaSea", dsSea);

            List<ReportParameter> param = new List<ReportParameter>();

            param.Add(new ReportParameter("txtTitulo", nomecliente));

            if (ckbGraficoPorPlataforma.Checked)
            {
                if ((((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao) == "DEPÓSITO DA EMPRESA")
                {
                    param.Add(new ReportParameter("txtTituloChartAir", "AIR FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + "COMPANY WAREHOUSE"));
                    param.Add(new ReportParameter("txtTituloChartSea", "SEA FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + "COMPANY WAREHOUSE"));
                }
                else
                {
                    param.Add(new ReportParameter("txtTituloChartAir", "AIR FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao));
                    param.Add(new ReportParameter("txtTituloChartSea", "SEA FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao));
                }
            }
            else
            {
                param.Add(new ReportParameter("txtTituloChartAir", "AIR FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text));
                param.Add(new ReportParameter("txtTituloChartSea", "SEA FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text));
            }

            var url_total_geral = MontarUrlCriptografada_periodo(ltvClientes.CheckedItems[0].SubItems[2].Text, ltvClientes.CheckedItems[0].SubItems[1].Text, dtpAno.Value, dtpMes.Value);

            param.Add(new ReportParameter("txtUrlSiteTotal", url_total_geral));

            rptView.LocalReport.SetParameters(param);
            rptView.LocalReport.DataSources.Add(datasetAir);
            rptView.LocalReport.DataSources.Add(datasetSea);
            rptView.LocalReport.Refresh();
            rptView.RefreshReport();
        }

        private void GerarGraficoRegAprovxRegistroDIxCargaVisadaOuBlAverxDesembaraco(List<string> importadores, string nomecliente)
        {
            rptView.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Consultas.GraficosKPI.rptKPIAprovRegistroXRegistroDIxCargaVisadaXDesembaraco.rdlc";

            List<KPIAprovRegistroXRegistroDIxCargaVisadaXDesembaraco> dsAir;
            List<KPIAprovRegistroXRegistroDIxCargaVisadaXDesembaraco> dsSea;

            if (ckbGraficoPorPlataforma.Checked)
            {
                dsAir = getDadosKPIAprovRegistroXRegistroDIxCargaVisadaXDesembaraco(importadores, true, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString(), ((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo,
                ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo);

                dsSea = getDadosKPIAprovRegistroXRegistroDIxCargaVisadaXDesembaraco(importadores, false, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString(), ((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo,
                ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo);
            }
            else
            {
                dsAir = getDadosKPIAprovRegistroXRegistroDIxCargaVisadaXDesembaraco(importadores, true, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString());

                dsSea = getDadosKPIAprovRegistroXRegistroDIxCargaVisadaXDesembaraco(importadores, false, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString());
            }

            ReportDataSource datasetAir = new ReportDataSource("dsKPIAprovRegistroXRegistroDIxCargaVisadaXDesembaracoAir", dsAir);

            ReportDataSource datasetSea = new ReportDataSource("dsKPIAprovRegistroXRegistroDIxCargaVisadaXDesembaracoSea", dsSea);

            List<ReportParameter> param = new List<ReportParameter>();

            param.Add(new ReportParameter("txtTitulo", nomecliente));

            if (ckbGraficoPorPlataforma.Checked)
            {
                if ((((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao) == "DEPÓSITO DA EMPRESA")
                {
                    param.Add(new ReportParameter("txtTituloChartAir", "AIR FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + "COMPANY WAREHOUSE"));
                    param.Add(new ReportParameter("txtTituloChartSea", "SEA FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + "COMPANY WAREHOUSE"));
                }
                else
                {
                    param.Add(new ReportParameter("txtTituloChartAir", "AIR FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao));
                    param.Add(new ReportParameter("txtTituloChartSea", "SEA FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao));
                }
            }
            else
            {
                param.Add(new ReportParameter("txtTituloChartAir", "AIR FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text));
                param.Add(new ReportParameter("txtTituloChartSea", "SEA FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text));
            }

            var url_total_geral = MontarUrlCriptografada_periodo(ltvClientes.CheckedItems[0].SubItems[2].Text, ltvClientes.CheckedItems[0].SubItems[1].Text, dtpAno.Value, dtpMes.Value);

            param.Add(new ReportParameter("txtUrlSiteTotal", url_total_geral));

            rptView.LocalReport.SetParameters(param);
            rptView.LocalReport.DataSources.Add(datasetAir);
            rptView.LocalReport.DataSources.Add(datasetSea);
            rptView.LocalReport.Refresh();
            rptView.RefreshReport();
        }

        private void GerarGraficoDesembaracoxPagamentoICMSxEntregaDoc(List<string> importadores, string nomecliente)
        {
            rptView.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Consultas.GraficosKPI.rptKPIDesembaracoXPagamentoICMSXEntregaDocumental.rdlc";

            List<KPIDesembaracoXPagamentoICMSXEntregaDocumental> dsAir;
            List<KPIDesembaracoXPagamentoICMSXEntregaDocumental> dsSea;

            if (ckbGraficoPorPlataforma.Checked)
            {
                dsAir = getDadosKPIDesembaracoXPagamentoICMSXEntregaDocumental(importadores, true, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString(), ((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo,
                ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo);

                dsSea = getDadosKPIDesembaracoXPagamentoICMSXEntregaDocumental(importadores, false, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString(), ((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo,
                ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo);
            }
            else
            {
                dsAir = getDadosKPIDesembaracoXPagamentoICMSXEntregaDocumental(importadores, true, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString());

                dsSea = getDadosKPIDesembaracoXPagamentoICMSXEntregaDocumental(importadores, false, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString());
            }

            ReportDataSource datasetAir = new ReportDataSource("dsKPIDesembaracoXPagamentoICMSXEntregaDocumentalAir", dsAir);

            ReportDataSource datasetSea = new ReportDataSource("dsKPIDesembaracoXPagamentoICMSXEntregaDocumentalSea", dsSea);

            List<ReportParameter> param = new List<ReportParameter>();

            param.Add(new ReportParameter("txtTitulo", nomecliente));

            if (ckbGraficoPorPlataforma.Checked)
            {
                if ((((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao) == "DEPÓSITO DA EMPRESA")
                {
                    param.Add(new ReportParameter("txtTituloChartAir", "AIR FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + "COMPANY WAREHOUSE"));
                    param.Add(new ReportParameter("txtTituloChartSea", "SEA FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + "COMPANY WAREHOUSE"));
                }
                else
                {
                    param.Add(new ReportParameter("txtTituloChartAir", "AIR FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao));
                    param.Add(new ReportParameter("txtTituloChartSea", "SEA FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao));
                }
            }
            else
            {
                param.Add(new ReportParameter("txtTituloChartAir", "AIR FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text));
                param.Add(new ReportParameter("txtTituloChartSea", "SEA FREIGHT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text));
            }

            var url_total_geral = MontarUrlCriptografada_periodo(ltvClientes.CheckedItems[0].SubItems[2].Text, ltvClientes.CheckedItems[0].SubItems[1].Text, dtpAno.Value, dtpMes.Value);

            param.Add(new ReportParameter("txtUrlSiteTotal", url_total_geral));

            rptView.LocalReport.SetParameters(param);
            rptView.LocalReport.DataSources.Add(datasetAir);
            rptView.LocalReport.DataSources.Add(datasetSea);
            rptView.LocalReport.Refresh();
            rptView.RefreshReport();
        }

        private void GerarGraficoExportacao(List<string> importadores, string nomecliente)
        {
            rptView.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Consultas.GraficosKPI.rptKPIAberturaXRegistroDseRexPresencaCargaXDesembaraco.rdlc";

            List<KPIAberturaXRegistroDseRexPresencaCargaXDesembaraco> dsExp;

            if (ckbGraficoPorPlataforma.Checked)
            {
                dsExp = getDadosKPIAberturaXRegistroDseRexPresencaCargaXDesembaraco(importadores, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString(), ((ContratoLocal)cbbListaPlataformas.SelectedItem).ContratoCodigo,
                ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalCodigo);
            }
            else
            {
                dsExp = getDadosKPIAberturaXRegistroDseRexPresencaCargaXDesembaraco(importadores, dtpAno.Value.Year.ToString(), dtpMes.Value.Month.ToString());
            }

            ReportDataSource datasetExp = new ReportDataSource("dsKPIAberturaXRegistroDseRexPresencaCargaXDesembaracoExp", dsExp);

            List<ReportParameter> param = new List<ReportParameter>();

            param.Add(new ReportParameter("txtTitulo", nomecliente));

            if (ckbGraficoPorPlataforma.Checked)
            {
                if ((((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao) == "DEPÓSITO DA EMPRESA")
                {
                    param.Add(new ReportParameter("txtTituloChartExp", "EXPORT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + "COMPANY WAREHOUSE"));
                }
                else
                {
                    param.Add(new ReportParameter("txtTituloChartExp", "EXPORT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text + " - " + ((ContratoLocal)cbbListaPlataformas.SelectedItem).LocalDescricao));
                }
            }
            else
            {
                param.Add(new ReportParameter("txtTituloChartExp", "EXPORT - " + dtpMes.Value.Month.ToString() + "/" + dtpAno.Text));
            }

            var url_total_geral = MontarUrlCriptografada_periodo(ltvClientes.CheckedItems[0].SubItems[2].Text, ltvClientes.CheckedItems[0].SubItems[1].Text, dtpAno.Value, dtpMes.Value);

            param.Add(new ReportParameter("txtUrlSiteTotal", url_total_geral));

            rptView.LocalReport.SetParameters(param);
            rptView.LocalReport.DataSources.Add(datasetExp);
            rptView.LocalReport.Refresh();
            rptView.RefreshReport();
        }
    }
}
