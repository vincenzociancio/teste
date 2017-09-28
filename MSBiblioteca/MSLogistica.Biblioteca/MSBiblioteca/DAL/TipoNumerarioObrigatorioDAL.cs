using MSBiblioteca.BLL;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace MSBiblioteca.DAL
{
    internal class TipoNumerarioObrigatorioDAL : BancoDados
    {
        internal List<TipoNumerarioObrigatorio> BuscarTipoNumerarioObrigatorio(string processo, string tipo, string declaracao)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT FK_Tipo_Processo, FK_Tipo_Declaracao, FK_Tipo_Numerario ");
            strSql.Append("FROM Tipos_Numerario_Obrigatorio ");
            strSql.Append("WHERE NOT EXISTS(");
            strSql.Append("SELECT Numerarios_Processos.Numerario ");
            strSql.Append("FROM Numerarios_Processos ");
            strSql.Append("WHERE Numerarios_Processos.Numerario = Tipos_Numerario_Obrigatorio.FK_Tipo_Numerario AND ");
            strSql.Append("Numerarios_Processos.Processo = @Processo) AND Rtrim(FK_Tipo_Processo) = @Tipo AND ");
            strSql.Append("RTRIM(FK_Tipo_Declaracao) = @Declaracao");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Processo", processo);
                    objCommand.Parameters.AddWithValue("@Tipo", processo);
                    objCommand.Parameters.AddWithValue("@Declaracao", processo);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<TipoNumerarioObrigatorio> lista = new List<TipoNumerarioObrigatorio>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                lista.Add(new TipoNumerarioObrigatorio
                                {
                                   

                                });
                            }
                        }
                        return lista;
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
