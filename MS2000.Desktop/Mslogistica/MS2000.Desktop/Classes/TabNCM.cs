using System;
using System.Data.SqlClient;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Classes
{
    public class TabNCM
    {
        public string Codigo { get; set; }
        public string Descricao { get; set; }
        public string UnidadeMedida { get; set; }
        public string AliquotaII { get; set; }
        public string AliquotaIPI { get; set; }
        public string AliquotaPisADVAL { get; set; }
        public string AliquotaCofinsADVAL { get; set; }
        

        public bool Incluir(TabNCM obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO Tab_NCM (Codigo, Descricao, Unidade_Medida, Aliquota_II, Aliquota_IPI, Aliquota_Pis_ADVAL,Aliquota_Cofins_ADVAL) ");
            strSql.Append("VALUES (@Codigo, @Descricao, @Unidade_Medida, @Aliquota_II, @Aliquota_IPI, @Aliquota_Pis_ADVAL, @Aliquota_Cofins_ADVAL) ");
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(strSql.ToString(), conn))
                {
                    cmd.Parameters.AddWithValue("@Codigo", obj.Codigo);
                    cmd.Parameters.AddWithValue("@Descricao", obj.Descricao);
                    cmd.Parameters.AddWithValue("@Unidade_Medida", obj.UnidadeMedida);
                    cmd.Parameters.AddWithValue("@Aliquota_II", obj.AliquotaII);
                    cmd.Parameters.AddWithValue("@Aliquota_IPI", obj.AliquotaIPI);
                    cmd.Parameters.AddWithValue("@Aliquota_Pis_ADVAL", obj.AliquotaPisADVAL);
                    cmd.Parameters.AddWithValue("@Aliquota_Cofins_ADVAL", obj.AliquotaCofinsADVAL);
                    cmd.ExecuteNonQuery();
                    return true;
                }
            }
            catch (Exception ex)
            {                
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
        }

        public bool DeleteAll()
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "delete from Tab_NCM";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {                    
                    cmd.ExecuteNonQuery();
                    return true;
                }                
                
            }
            catch (Exception ex)
            {                
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
        }
    }
}
