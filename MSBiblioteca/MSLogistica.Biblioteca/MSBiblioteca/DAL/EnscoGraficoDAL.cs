using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace MSBiblioteca.DAL
{
    internal class EnscoGraficoDAL : BancoDados
    {
        internal DataTable BuscarDados(string mes, string ano, string tipo, string declaracao, string canal)
        {
            var strSql = new StringBuilder();
            strSql.Append("SELECT P.CODIGO, P.DT_DESEMBARACO, C.Data_Chegada_URF_Cheg, U.DESCRICAO, C.URF_Despacho ");
            strSql.Append("FROM Processos P ");
            strSql.Append("INNER JOIN Conhecimento_Processo C on P.Codigo = C.Processo  ");
            strSql.Append("INNER JOIN TAB_URF U ON U.CODIGO = C.URF_Despacho ");
            strSql.Append("WHERE P.importador in('344','348') AND MONTH(DT_DESEMBARACO)=@Mes AND YEAR(DT_DESEMBARACO)=@Ano AND ");
            strSql.Append("TIPO=@Tipo AND CANAL=@Canal AND Tipo_Declaracao=@TipoDeclaracao ");

            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Mes", mes);
                    objCommand.Parameters.AddWithValue("@Ano", ano);
                    objCommand.Parameters.AddWithValue("@Tipo", tipo);
                    objCommand.Parameters.AddWithValue("@Canal", canal);
                    objCommand.Parameters.AddWithValue("@TipoDeclaracao", declaracao);
                    var dt = new DataTable();
                    using (var objDr = objCommand.ExecuteReader())
                    {
                        dt.Load(objDr);
                    }
                    return dt;
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal DataTable BuscarDados(string mes, string ano, string tipo, string declaracao, string canal, string local)
        {
            var strSql = new StringBuilder();
            strSql.Append("SELECT P.CODIGO, P.DT_DESEMBARACO, C.Data_Chegada_URF_Cheg, U.DESCRICAO, C.URF_Despacho ");
            strSql.Append("FROM Processos P ");
            strSql.Append("INNER JOIN Conhecimento_Processo C on P.Codigo = C.Processo  ");
            strSql.Append("INNER JOIN TAB_URF U ON U.CODIGO = C.URF_Despacho ");
            strSql.Append("WHERE P.importador in('344','348') AND MONTH(DT_DESEMBARACO)=@Mes AND YEAR(DT_DESEMBARACO)=@Ano AND ");
            strSql.Append("TIPO=@Tipo AND CANAL=@Canal AND Tipo_Declaracao=@TipoDeclaracao AND C.URF_Despacho = @local ");

            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Mes", mes);
                    objCommand.Parameters.AddWithValue("@Ano", ano);
                    objCommand.Parameters.AddWithValue("@Tipo", tipo);
                    objCommand.Parameters.AddWithValue("@Canal", canal);
                    objCommand.Parameters.AddWithValue("@TipoDeclaracao", declaracao);
                    objCommand.Parameters.AddWithValue("@local", local);
                    var dt = new DataTable();
                    using (var objDr = objCommand.ExecuteReader())
                    {
                        dt.Load(objDr);
                    }
                    return dt;
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal DataTable BuscarDados(string mes, string ano)
        {
            var strSql = new StringBuilder();
            strSql.Append("SELECT P.CODIGO, P.DT_DESEMBARACO, C.Data_Chegada_URF_Cheg, P.DT_REGISTRO_DI, C.Data_Chegada_URF_Desp, C.TipoManifesto ");
            strSql.Append(", U.DESCRICAO, C.URF_Despacho FROM Processos P ");
            strSql.Append("INNER JOIN Conhecimento_Processo C on P.Codigo = C.Processo  ");
            strSql.Append("INNER JOIN TAB_URF U ON U.CODIGO = C.URF_Despacho ");
            strSql.Append("WHERE P.importador in('344','348') AND MONTH(DT_DESEMBARACO)=@Mes AND YEAR(DT_DESEMBARACO)=@Ano ");
            strSql.Append("AND CANAL in ('D','V','L') AND Tipo_Declaracao in ('01','05','12') ");
            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Mes", mes);
                    objCommand.Parameters.AddWithValue("@Ano", ano);
                    //objCommand.Parameters.AddWithValue("@local", local);
                    var dt = new DataTable();
                    using (var objDr = objCommand.ExecuteReader())
                    {
                        dt.Load(objDr);
                    }
                    return dt;
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal DataTable BuscarMediaDias(string ano, string tipo)
        {
            var strSql = new StringBuilder();
            strSql.Append("SELECT MONTH(DT_DESEMBARACO) as 'Mes', convert(decimal(10,2),(sum(convert(float, DATEDIFF(DD, c.Data_Chegada_URF_Cheg ,DT_DESEMBARACO)))/ count(p.Codigo))) as days  ");
            strSql.Append("FROM Processos P ");
            strSql.Append("INNER JOIN Conhecimento_Processo C on P.Codigo = C.Processo  ");
            strSql.Append("INNER JOIN TAB_URF U ON U.CODIGO = C.URF_Despacho ");
            strSql.Append("WHERE P.importador in('344','348') AND YEAR(DT_DESEMBARACO)=@Ano AND ");
            strSql.Append("TIPO=@Tipo AND CANAL in ('D','V','L') AND Tipo_Declaracao in ('01','05','12') ");
            strSql.Append("group by MONTH(DT_DESEMBARACO) ");

            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Ano", ano);
                    objCommand.Parameters.AddWithValue("@Tipo", tipo);
                    //objCommand.Parameters.AddWithValue("@local", local);
                    var dt = new DataTable();
                    using (var objDr = objCommand.ExecuteReader())
                    {
                        dt.Load(objDr);
                    }
                    return dt;
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal DateTime? BuscarFollow(string processo)
        {
            var strSql = new StringBuilder();
            strSql.Append("SELECT TOP 1 Processo, Data ");
            strSql.Append("FROM FollowUp WHERE Codevento in ('290','490') and Processo = @Processo ");
            strSql.Append("Order by data desc ");
            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Processo", processo);
                    DateTime? data = null;
                    using (var dr = objCommand.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                data = Convert.ToDateTime(dr["Data"]);
                            }
                        }
                    }
                    return data;
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal DateTime? BuscarFollowDta(string processo)
        {
            var strSql = new StringBuilder();
            strSql.Append("SELECT TOP 1 Processo, Data ");
            strSql.Append("FROM FollowUp WHERE Codevento in ('2270') and Processo = @Processo ");
            strSql.Append("Order by data desc ");
            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Processo", processo);
                    DateTime? data = null;
                    using (var dr = objCommand.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                data = Convert.ToDateTime(dr["Data"]);
                            }
                        }
                    }
                    return data;
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
