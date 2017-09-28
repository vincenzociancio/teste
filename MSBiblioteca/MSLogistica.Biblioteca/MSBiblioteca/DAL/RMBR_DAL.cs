using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MSBiblioteca.Interfaces;
using MSBiblioteca.BLL;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Data;

namespace MSBiblioteca.DAL
{
    internal class RMBR_DAL : BancoDados
    {
        internal int Incluir(RMBR obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO RMBR ");
            strSql.Append("(FK_Processo, Numero_RMBR, DT_Inicial, DT_Final, DT_Baixa, DT_Prorrogacao, Numero_DI, Status)");
            strSql.Append("VALUES(@Processo, @RMBR, @Inicial, @Final, @Baixa, @Prorrogacao, @Numero_DI, @Status); SELECT CAST(SCOPE_IDENTITY() AS int)");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Processo", obj.FK_Processo);
                    objCommand.Parameters.AddWithValue("@RMBR", obj.Numero_RMBR);
                    objCommand.Parameters.AddWithValue("@Inicial", obj.DT_Inicial);
                    objCommand.Parameters.AddWithValue("@Final", obj.DT_Final);
                    if (obj.DT_Baixa != null)
                        objCommand.Parameters.AddWithValue("@Baixa", obj.DT_Baixa);
                    else
                        objCommand.Parameters.AddWithValue("@Baixa", SqlDateTime.Null);
                    if (obj.DT_Prorrogacao != null)
                        objCommand.Parameters.AddWithValue("@Prorrogacao", obj.DT_Prorrogacao);
                    else
                        objCommand.Parameters.AddWithValue("@Prorrogacao", SqlDateTime.Null);
                    objCommand.Parameters.AddWithValue("@Numero_DI", obj.Numero_DI);
                    objCommand.Parameters.AddWithValue("@Status", obj.Status);
                    return (int)objCommand.ExecuteScalar();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        internal bool Alterar(RMBR obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE RMBR ");
            strSql.Append("SET FK_Processo = @Processo, Numero_RMBR = @RMBR,");
            strSql.Append("DT_Inicial = @Inicial, DT_Final =  @Final,");
            strSql.Append("DT_Baixa = @Baixa, DT_Prorrogacao = @Prorrogacao, Numero_DI = @Numero_DI, Status = @Status ");
            strSql.Append("WHERE PK_ID = @ID ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Processo", obj.FK_Processo);
                    objCommand.Parameters.AddWithValue("@RMBR", obj.Numero_RMBR);
                    objCommand.Parameters.AddWithValue("@Inicial", obj.DT_Inicial);
                    objCommand.Parameters.AddWithValue("@Final", obj.DT_Final);
                    if (obj.DT_Baixa != null)
                        objCommand.Parameters.AddWithValue("@Baixa", obj.DT_Baixa);
                    else
                        objCommand.Parameters.AddWithValue("@Baixa", SqlDateTime.Null);
                    if (obj.DT_Prorrogacao != null)
                        objCommand.Parameters.AddWithValue("@Prorrogacao", obj.DT_Prorrogacao);
                    else
                        objCommand.Parameters.AddWithValue("@Prorrogacao", SqlDateTime.Null);
                    objCommand.Parameters.AddWithValue("@Numero_DI", obj.Numero_DI);
                    objCommand.Parameters.AddWithValue("@Status", obj.Status);
                    objCommand.Parameters.AddWithValue("@ID", obj.PK_ID);
                    objCommand.ExecuteNonQuery();
                }
                return true;
            }
            catch (Exception ex)
            {
                return false;
                throw new Exception(ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        internal bool Excluir(int pk_id)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("Delete From RMBR ");
            strSql.Append("WHERE PK_ID = @ID ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.CommandText = strSql.ToString();
                    objCommand.Parameters.AddWithValue("@ID", pk_id);
                    objCommand.ExecuteNonQuery();
                    return true;
                }
            }
            catch (Exception ex)
            {
                return false;
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal DataTable BuscarTodos()
        {
            //List<RMBR> rmbr = new List<RMBR>();
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT * ");
            strSql.Append("FROM RMBR ");
            strSql.Append("ORDER BY Numero_RMBR");
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

                //using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                //{
                //    SqlDataReader objDr = objCommand.ExecuteReader();

                //    while (objDr.Read())
                //    {
                //        rmbr.Add(new RMBR
                //        {
                //            PK_ID = (int)objDr["PK_ID"],
                //            FK_Processo = objDr["FK_Processo"].ToString(),
                //            Numero_RMBR = objDr["Numero_RMBR"].ToString(),
                //            DT_Inicial = (DateTime)objDr["DT_Inicial"],
                //            DT_Final = (DateTime)objDr["DT_Final"],
                //            DT_Baixa = (objDr["DT_Baixa"] == DBNull.Value) ? (DateTime?)null : ((DateTime)objDr["DT_Baixa"]),
                //            DT_Prorrogacao = (objDr["DT_Prorrogacao"] == DBNull.Value) ? (DateTime?)null : ((DateTime)objDr["DT_Prorrogacao"]),
                //            Numero_DI = objDr["Numero_DI"].ToString(),
                //            Status = (int)objDr["Status"]
                //        });
                //    }
                //    return rmbr.ToArray();
                //}
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

        internal RMBR BuscarID(int pk_id)
        {
            RMBR rmbr = new RMBR();
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT * ");
            strSql.Append("FROM RMBR ");
            strSql.Append("WHERE PK_ID = @ID");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@ID", pk_id);
                    SqlDataReader objDr = objCommand.ExecuteReader();
                    if (objDr.HasRows)
                    {
                        while (objDr.Read())
                        {
                            rmbr.PK_ID = (int)objDr["PK_ID"];
                            rmbr.FK_Processo = objDr["FK_Processo"].ToString();
                            rmbr.Numero_RMBR = objDr["Numero_RMBR"].ToString();
                            rmbr.DT_Inicial = (DateTime)objDr["DT_Inicial"];
                            rmbr.DT_Final = (DateTime)objDr["DT_Final"];
                            rmbr.DT_Baixa = (objDr["DT_Baixa"] == DBNull.Value) ? (DateTime?)null : ((DateTime)objDr["DT_Baixa"]);
                            rmbr.DT_Prorrogacao = (objDr["DT_Prorrogacao"] == DBNull.Value) ? (DateTime?)null : ((DateTime)objDr["DT_Prorrogacao"]);
                            rmbr.Numero_DI = objDr["Numero_DI"].ToString();
                            rmbr.Status = (int)objDr["Status"];
                        }
                    }
                    return rmbr;
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

        internal List<RMBR> BuscarPorPeriodoData(DateTime data_ini, DateTime data_fin)
        {
            List<RMBR> rmbr = new List<RMBR>();
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT * ");
            strSql.Append("FROM RMBR ");
            strSql.Append("WHERE DT_Inicial >= @dt1 and DT_Final <= @dt2");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@dt1", data_ini);
                    objCommand.Parameters.AddWithValue("@dt2", data_fin);
                    SqlDataReader objDr = objCommand.ExecuteReader();
                    if (objDr.HasRows)
                    {
                        while (objDr.Read())
                        {
                            rmbr.Add(new RMBR
                            {
                                PK_ID = (int)objDr["PK_ID"],
                                FK_Processo = objDr["FK_Processo"].ToString(),
                                Numero_RMBR = objDr["Numero_RMBR"].ToString(),
                                DT_Inicial = (DateTime)objDr["DT_Inicial"],
                                DT_Final = (DateTime)objDr["DT_Final"],
                                DT_Baixa = (objDr["DT_Baixa"] == DBNull.Value) ? (DateTime?)null : ((DateTime)objDr["DT_Baixa"]),
                                DT_Prorrogacao = (objDr["DT_Prorrogacao"] == DBNull.Value) ? (DateTime?)null : ((DateTime)objDr["DT_Prorrogacao"]),
                                Numero_DI = objDr["Numero_DI"].ToString(),
                                Status = (int)objDr["Status"]
                            });
                        }
                    }
                    return rmbr;
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
