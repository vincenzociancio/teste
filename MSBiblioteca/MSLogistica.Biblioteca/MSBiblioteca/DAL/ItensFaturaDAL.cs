using System.Data.SqlClient;
using System.Text;
using System;
using System.Data;
using MSBiblioteca.BLL;
using MSBiblioteca.Constante;
using MSBiblioteca.Interfaces;
using MSBiblioteca.DTO;
using System.Collections.Generic;
using System.Web.UI;
using MSBiblioteca.MSUtil;

namespace MSBiblioteca.DAL
{
    internal class ItensFaturaDAL : BancoDados
    {
        internal DataTable SomaItensFatura(string Processo, string Fatura)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Processo, Fatura, Sum(Valor_Total) AS SomaValorTotal, Sum(Peso_Total) AS SomaPesoTotal, ");
            strSql.Append("Sum(Peso_Total_Acertado) AS SomaPesoAcertado FROM ItensFaturas ");
            strSql.Append("GROUP BY Processo, Fatura HAVING Processo = @Processo AND Fatura = @Fatura ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Processo", Processo);
                    objCommand.Parameters.AddWithValue("@Fatura", Fatura);
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
