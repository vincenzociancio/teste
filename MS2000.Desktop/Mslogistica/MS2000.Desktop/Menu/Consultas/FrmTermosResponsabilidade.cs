using System;
using MS2000.Desktop.Classes;
using System.Data.SqlClient;
using System.Data;
using System.Text;

namespace MS2000.Desktop.Menu.Consultas
{
    public partial class FrmTermosResponsabilidade : MS2000.Desktop.Componentes.MSForm01
    {

        public FrmTermosResponsabilidade()
        {
            InitializeComponent();
        }

        private DataTable getTermosComData()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            StringBuilder sb = new StringBuilder();

            sb.Append("SELECT P.CODIGO,P.NUMERO_TR,P.DATA_VENCIMENTO_TR,I.RAZAO_SOCIAL, ");
            sb.Append("       Datediff(day, Getdate(), [data_vencimento_tr]) AS qdias   ");
            sb.Append("  FROM PROCESSOS P                                               ");
            sb.Append("       INNER JOIN IMPORTADORES I ON P.IMPORTADOR = I.CODIGO      ");
            sb.Append(" WHERE P.NUMERO_TR IS NOT NULL                                   ");
            sb.Append("   AND P.DATA_BAIXA_TR IS NULL                                   ");
            sb.Append("   AND Datediff(day, Getdate(), [data_vencimento_tr]) >= 0       ");
            sb.Append("ORDER BY P.DATA_VENCIMENTO_TR                                    ");

            using (SqlCommand cmd = new SqlCommand(sb.ToString(), conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private DataTable getTermosSemData()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            StringBuilder sb = new StringBuilder();

            sb.Append(" SELECT ");
            sb.Append(" processos.codigo,           ");
            sb.Append(" importadores.razao_social,  ");
            sb.Append(" processos.numero_tr,        ");
            sb.Append(" processos.data_vencimento_tr,   ");
            sb.Append(" Datediff(day, Getdate(), [data_vencimento_tr]) AS qdias, ");
            sb.Append(" processos.data_baixa_tr  ");
            sb.Append("  FROM   processos         ");
            sb.Append("  INNER JOIN importadores  ");
            sb.Append("           ON ( processos.importador = importadores.codigo )     ");        
            sb.Append("  WHERE  ( ( ( processos.numero_tr ) <> '' )                     ");
            sb.Append("    AND ( ( processos.data_vencimento_tr ) IS NULL )             ");
            sb.Append("    AND ( ( processos.data_baixa_tr ) IS NULL ) )                ");
            sb.Append("     ORDER  BY processos.numero_tr;                              ");

            using (SqlCommand cmd = new SqlCommand(sb.ToString(), conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void FrmTermosResponsabilidade_Load(object sender, EventArgs e)
        {
            String[] opcoesComboOpcao = new[] { "Processo", "Importador", "N° TR", "Vencimento", "Dias a Vencer" };
            cbbOpcao.DataSource = opcoesComboOpcao;

            bsVencimento.DataSource = getTermosComData();
            dtGridTermosData.AutoGenerateColumns = false;
            dtGridTermosData.DataSource = bsVencimento;

            bsSemData.DataSource = getTermosSemData();
            dtGridTermosSemData.AutoGenerateColumns = false;
            dtGridTermosSemData.DataSource = bsSemData;
        }

        private void txtPesquisar_TextChanged(object sender, EventArgs e)
        {
            String strOpcaoCombo = cbbOpcao.Text;


            if (rdDataVencimento.Checked)
            {
                if (strOpcaoCombo.Equals("Processo"))
                {
                    string processo;

                    processo = txtPesquisar.Text.Replace("/", "").Trim();

                    if (processo.Length >= 6)
                    {
                        processo = txtPesquisar.Text;
                    }
                    else
                    {
                        processo = txtPesquisar.Text.Replace("/", "").Trim();
                    }
                    bsVencimento.Filter = "CODIGO LIKE '" + processo + "%'";
                }

                if (strOpcaoCombo.Equals("Importador"))
                {
                    bsVencimento.Filter = "Razao_Social LIKE '" + txtPesquisar.Text + "%'";
                }

                if (strOpcaoCombo.Equals("N° TR"))
                {
                    bsVencimento.Filter = "NUMERO_TR LIKE '" + txtPesquisar.Text + "%'";
                }

                if (strOpcaoCombo.Equals("Vencimento"))
                {
                    bsVencimento.Filter = "DATA_VENCIMENTO_TR LIKE '" + txtPesquisar.Text + "%'";

                }
            }

            if (rdSemDataVencimento.Checked)
            {
                if (strOpcaoCombo.Equals("Processo"))
                {
                    string processo;

                    processo = txtPesquisar.Text.Replace("/", "").Trim();

                    if (processo.Length >= 6)
                    {
                        processo = txtPesquisar.Text;
                    }
                    else
                    {
                        processo = txtPesquisar.Text.Replace("/", "").Trim();
                    }
                    bsSemData.Filter = "CODIGO LIKE '" + processo + "%'";
                }

                if (strOpcaoCombo.Equals("Importador"))
                {
                    bsSemData.Filter = "Razao_Social LIKE '" + txtPesquisar.Text + "%'";
                }

                if (strOpcaoCombo.Equals("N° TR"))
                {
                    bsSemData.Filter = "NUMERO_TR LIKE '" + txtPesquisar.Text + "%'";
                }

            }
        }

        private void rdDataVencimento_Click_1(object sender, EventArgs e)
        {
            String[] opcoes = new[] { "Processo", "Importador", "N° TR", "Vencimento", "Dias a Vencer" };
            txtPesquisar.Clear();
            cbbOpcao.DataSource = opcoes;
        }

        private void rdSemDataVencimento_Click_1(object sender, EventArgs e)
        {

            String[] opcoes = new[] { "Processo", "Importador", "N° TR" };
            txtPesquisar.Clear();
            cbbOpcao.DataSource = opcoes;
        }
    }
}
