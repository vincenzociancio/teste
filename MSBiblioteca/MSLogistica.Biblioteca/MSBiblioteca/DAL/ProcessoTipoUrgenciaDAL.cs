using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace MSBiblioteca.DAL
{
    internal class ProcessoTipoUrgenciaDAL : BancoDados
    {
        internal DataTable BuscarTodos()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT PK_Tipo_Urgencia, UPPER(Sigla)AS Sigla, UPPER(Descricao)AS Descricao ");
            strSql.Append("FROM Processos_Tipo_Urgencia WHERE Excluido = 0 ");
            strSql.Append("ORDER BY Sigla");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        using (DataTable objTable = new DataTable())
                        {
                            objTable.Load(objDr);
                            return objTable;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }
    }

}
