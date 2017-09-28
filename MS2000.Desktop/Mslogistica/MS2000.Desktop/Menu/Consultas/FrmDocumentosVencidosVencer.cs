using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using MS2000.Desktop.Classes;

namespace MS2000.Desktop.Menu.Consultas
{
    public partial class FrmDocumentosVencidosVencer : MS2000.Desktop.Componentes.MSForm01
    {
        DataTable dt = new DataTable();

        public FrmDocumentosVencidosVencer()
        {
            InitializeComponent();
        }

        private DataTable getDocumentosVencidosVencer()
        {
            StringBuilder sb = new StringBuilder();
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            sb.Append("SELECT IMP.razao_social,TD.descricao AS qdescon,DOC.vigencia_inicial AS qvigini,DOC.vigencia_final AS qvigfin,DOC.numero_doc AS qdoc,                               ");
            sb.Append("CASE WHEN [DOC].[vigencia_final] IS NULL THEN 3650                                                                                                                  ");
            sb.Append("     WHEN [DOC].[vigencia_final] IS NOT NULL THEN                                                                                                                   ");
            sb.Append("     Datediff(day, [DOC].[vigencia_final], Getdate()) END  AS qdias,                                                                                                ");
            sb.Append("  CASE WHEN [DOC].[vigencia_final] IS NULL THEN 'sem previsão'                                                                                                      ");
            sb.Append("       WHEN Datediff(day, Getdate(), [DOC].[vigencia_final]) < 0 THEN                                                                                               ");
            sb.Append("       'vencido à ' + Cast((Datediff(day, Getdate(), [DOC].[vigencia_final]))*(-1) AS VARCHAR) + ' dia(s)'                                                            ");
            sb.Append("       WHEN Datediff(day, Getdate(), [DOC].[vigencia_final]) >= 0 THEN  'vai vencer em '                                                                             ");
            sb.Append("      +Cast(Datediff(day, Getdate(), [DOC].[vigencia_final]) AS VARCHAR) + ' dia(s)' END  AS qdiastexto,                                                             ");
            sb.Append("CON.descricao AS qdescont,LI.descricao AS qdescloc, ST.descricao AS qsubtipo,ST.orgao,DOC.observacoes,TS.codigo AS qstatus,TS.descricao AS qdescstatus,DOC.processo ");
            sb.Append("FROM documentos DOC                                                                                                          ");
            sb.Append("INNER JOIN importadores AS IMP ON DOC.importador = IMP.codigo                                                                ");
            sb.Append("INNER JOIN tipo_documentos TD ON DOC.tipo_doc = TD.codigo                                                                    ");
            sb.Append("INNER JOIN sub_tipo_documentos ST ON DOC.sub_tipo_doc = ST.codigo AND DOC.tipo_doc = ST.tipo_doc                             ");
            sb.Append("INNER JOIN tipos_status_documentos TS ON DOC.status = TS.codigo                                                              ");
            sb.Append("LEFT JOIN contratos CON ON DOC.contrato = CON.contrato AND DOC.importador = CON.importador                                   ");
            sb.Append("LEFT JOIN locais_inventario LI ON DOC.[local] = LI.[local] AND DOC.contrato = LI.contrato AND DOC.importador = LI.importador ");
            sb.Append("WHERE  IMP.razao_social IS NOT NULL                                                                              ");
            sb.Append("GROUP BY IMP.razao_social, TD.descricao, DOC.vigencia_inicial, DOC.vigencia_final, DOC.numero_doc,               ");
            sb.Append("CASE WHEN [DOC].[vigencia_final] IS NULL THEN 3650                                                               ");
            sb.Append("WHEN [DOC].[vigencia_final] IS NOT NULL THEN                                                                     ");
            sb.Append("Datediff(day, Getdate(), [DOC].[vigencia_final])                                                                 ");
            sb.Append("END,                                                                                                             ");
            sb.Append("CASE WHEN [DOC].[vigencia_final] IS NULL THEN 'sem previsão'                                                     ");
            sb.Append("WHEN Datediff(day, Getdate(), [DOC].[vigencia_final]) < 0 THEN                                                   ");
            sb.Append("'vencido à'+ Cast((Datediff(day, Getdate(), [DOC].[vigencia_final]))*(-1) AS VARCHAR)  +'dia(s)'                 ");
            sb.Append("WHEN Datediff(day, Getdate(), [DOC].[vigencia_final]) >= 0 THEN 'vai vencer em'                                  ");
            sb.Append("+Cast(Datediff(day, Getdate(), [DOC].[vigencia_final]) AS VARCHAR)  +'dia(s)'                                    ");
            sb.Append("END,                                                                                                             ");
            sb.Append("CON.descricao,LI.descricao,ST.descricao,ST.orgao,DOC.observacoes,TS.codigo,TS.descricao,DOC.processo             ");
            sb.Append("HAVING ( TS.codigo = '1' ) OR ( TS.codigo = '2' )                                                                ");
            sb.Append("ORDER  BY CASE WHEN [DOC].[vigencia_final] IS NULL THEN 3650                                                     ");
            sb.Append("               WHEN [DOC].[vigencia_final] IS NOT NULL THEN  Datediff(day, Getdate(), [DOC].[vigencia_final]) END");

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

        private void FrmDocumentosVencidosVencer_Load(object sender, EventArgs e)
        {
            cmbOpcoes.SelectedIndex = 0;
            bindingSource.DataSource = getDocumentosVencidosVencer();
            dgDocumentoVencidosVencer.AutoGenerateColumns = false;
            dgDocumentoVencidosVencer.DataSource = bindingSource;
            rdbVencidos_CheckedChanged(null, null);
        }

        private void txtPesquisar_TextChanged(object sender, EventArgs e)
        {
            if (cmbOpcoes.SelectedIndex == 0)
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
                bindingSource.Filter = "processo LIKE '" + processo + "%'";              
            }
            else
            {
                bindingSource.Filter = "razao_social LIKE '" + txtPesquisar.Text + "%'";
            }
        }
        private void rdbTodos_CheckedChanged(object sender, EventArgs e)
        {
            bindingSource.RemoveFilter();
        }

        private void rdbVencer_CheckedChanged(object sender, EventArgs e)
        {
            bindingSource.Filter = "qdias < 1 ";
        }

        private void rdbVencidos_CheckedChanged(object sender, EventArgs e)
        {
            bindingSource.Filter = "qdias > 0 ";
        }
    }
}
