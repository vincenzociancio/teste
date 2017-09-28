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
    internal class AcrescimosFaturaDAL : BancoDados
    {
        internal List<AcrescimosFatura> BuscarPorProcesso(string Processo)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Empresa, Filial, Processo, Fatura, CD_MET_ACRES_VALOR, Descricao, VL_ACRESCIMO_MOEDA, CD_MD_NEGOC_ACRES ");
            strSql.Append(",VL_ACRESCIMO_MN FROM Acrescimos_Faturas WHERE Processo = @Processo");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Processo", Processo);
                    List<AcrescimosFatura> listaAcrescimo = new List<AcrescimosFatura>();
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                listaAcrescimo.Add(new AcrescimosFatura
                                {
                                    Empresa = objDr["Empresa"].ToString(),
                                    Filial = objDr["Filial"].ToString(),
                                    FK_Processo = objDr["Processo"].ToString(),
                                    FK_Fatura = objDr["Fatura"].ToString(),
                                    Cd_Met_Acres_Valor = objDr["CD_MET_ACRES_VALOR"].ToString(),
                                    Descricao = objDr["Descricao"].ToString(),
                                    Vl_Acrescimo_Moeda = Convert.ToDecimal(objDr["VL_ACRESCIMO_MOEDA"]),
                                    Cd_Md_Negoc_Acres = objDr["CD_MD_NEGOC_ACRES"].ToString(),
                                    Vl_Acrescimo_Mn = Convert.ToDecimal(objDr["VL_ACRESCIMO_MN"])
                                });
                            }
                        }
                        return listaAcrescimo;
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
        internal DataTable BuscarPorProcessoEFatura(string Processo, string Fatura)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Processo,Fatura,CD_MET_ACRES_VALOR,Descricao,VL_ACRESCIMO_MOEDA,CD_MD_NEGOC_ACRES ");
            strSql.Append(",VL_ACRESCIMO_MN FROM Acrescimos_Faturas where Processo = @Processo and Fatura = @Fatura");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Processo", Processo);
                    objCommand.Parameters.AddWithValue("@Fatura", Processo);
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
        internal bool Incluir(AcrescimosFaturaDTO obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO Acrescimos_Faturas (Empresa,Filial,Processo,Fatura,CD_MET_ACRES_VALOR ");
            strSql.Append(",Descricao,VL_ACRESCIMO_MOEDA,CD_MD_NEGOC_ACRES,VL_ACRESCIMO_MN) ");
            strSql.Append("VALUES(@Empresa,@Filial,@Processo,@Fatura,@CD_MET_ACRES_VALOR,@Descricao ");
            strSql.Append(",@VL_ACRESCIMO_MOEDA,@CD_MD_NEGOC_ACRES,@VL_ACRESCIMO_MN) ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Empresa", Parametro.Empresa);
                    objCommand.Parameters.AddWithValue("@Filial", Parametro.Filial.ToUpper());
                    objCommand.Parameters.AddWithValue("@Processo", obj.FK_Processo.ToUpper());
                    objCommand.Parameters.AddWithValue("@Fatura", obj.FK_Fatura.ToUpper());
                    objCommand.Parameters.AddWithValue("@CD_MET_ACRES_VALOR", obj.Cd_Met_Acres_Valor.ToUpper());
                    objCommand.Parameters.AddWithValue("@Descricao", obj.Descricao.ToUpper());
                    objCommand.Parameters.AddWithValue("@VL_ACRESCIMO_MOEDA", obj.Vl_Acrescimo_Moeda);
                    objCommand.Parameters.AddWithValue("@CD_MD_NEGOC_ACRES", obj.Cd_Md_Negoc_Acres.ToUpper());
                    objCommand.Parameters.AddWithValue("@VL_ACRESCIMO_MN", obj.Vl_Acrescimo_Mn);
                    objCommand.ExecuteNonQuery();
                    return true;
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
        internal bool Alterar(AcrescimosFaturaDTO obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Acrescimos_Faturas SET ");
            strSql.Append("CD_MET_ACRES_VALOR = @CD_MET_ACRES_VALOR ");
            strSql.Append(",Descricao = @Descricao ");
            strSql.Append(",VL_ACRESCIMO_MOEDA = @VL_ACRESCIMO_MOEDA ");
            strSql.Append(",CD_MD_NEGOC_ACRES = @CD_MD_NEGOC_ACRES ");
            strSql.Append("WHERE Processo = @Processo and Fatura = @Fatura ");

            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@CD_MET_ACRES_VALOR", obj.Cd_Met_Acres_Valor.ToUpper());
                    objCommand.Parameters.AddWithValue("@Descricao", obj.Descricao.ToUpper());
                    objCommand.Parameters.AddWithValue("@VL_ACRESCIMO_MOEDA", obj.Vl_Acrescimo_Moeda);
                    objCommand.Parameters.AddWithValue("@CD_MD_NEGOC_ACRES", obj.Cd_Md_Negoc_Acres.ToUpper());
                    objCommand.Parameters.AddWithValue("@Processo", obj.FK_Processo.ToUpper());
                    objCommand.Parameters.AddWithValue("@Fatura", obj.FK_Fatura.ToUpper());
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
        internal bool Excluir(AcrescimosFaturaDTO obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("DELETE FROM Acrescimos_Faturas WHERE Processo = @Processo and Fatura = @Fatura");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.CommandText = strSql.ToString();
                    objCommand.Parameters.AddWithValue("@Processo", obj.FK_Processo);
                    objCommand.Parameters.AddWithValue("@Fatura", obj.FK_Fatura);
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

    }

}
