using MS2000.Desktop.Classes;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Consultas
{
    public partial class FrmMovimentacaoPasta : MS2000.Desktop.Componentes.MSForm01
    {
        public FrmMovimentacaoPasta()
        {
            InitializeComponent();
        }

        private DataTable getMovimentacao()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Movimento, De_usuario, Para_usuario,cast(Data as date) as Data, Hora,  " +
                           "(select Nome_Completo from Usuarios where Usuario = De_usuario ) as De,  " +
                           "(select Nome_Completo from Usuarios where Usuario = Para_usuario ) as Para  " +
                           "from Movimentacao_pastas  " +
                           "where Processo = @processo " +
                           "order by Movimento ";
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

        private void txtProcesso_TextChanged(object sender, System.EventArgs e)
        {
            if (txtProcesso.MaskCompleted)
            {
                var processo = (new Processo()).BuscarPorCodigo(txtProcesso.Text);
                if (processo != null)
                {
                    grvMovimentacao.AutoGenerateColumns = false;
                    grvMovimentacao.DataSource = getMovimentacao();
                }
                else
                {
                    MessageBox.Show("Processo não encontrado!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                }
            }
            else
            {
                grvMovimentacao.DataSource = null;
            }
        }
    }
}
