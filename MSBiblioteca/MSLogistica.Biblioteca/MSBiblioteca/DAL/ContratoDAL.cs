using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using MSBiblioteca.DTO;
using MSBiblioteca.BLL;
using System.Collections.Generic;

namespace MSBiblioteca.DAL
{
    internal class ContratoDAL : BancoDados
    {
        internal DataTable Buscar()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Top 10 Empresa,Filial,Importador,Contrato,Descricao, ");
            strSql.Append("Vigencia_inicial,Vigencia_final,Tipo,Data_Baixa,Data_prorrogacao, ");
            strSql.Append("Repetro,Ativo,Cod_Regime_Fundamento,INs,Setor  ");
            strSql.Append("FROM Contratos ");
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
        internal DataTable BuscarTodos()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Empresa,Filial,Importador,Contrato,Descricao, ");
            strSql.Append("Vigencia_inicial,Vigencia_final,Tipo,Data_Baixa,Data_prorrogacao, ");
            strSql.Append("Repetro,Ativo,Cod_Regime_Fundamento,INs,Setor ");
            strSql.Append("FROM Contratos ");
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
        internal DataTable BuscarCodigo(string Codigo, bool SomenteRegistrosAtivos = true)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Empresa,Filial,Importador,Contrato,Descricao, ");
            strSql.Append("Vigencia_inicial,Vigencia_final,Tipo,Data_Baixa,Data_prorrogacao, ");
            strSql.Append("Repetro,Ativo,Cod_Regime_Fundamento,INs,Setor ");
            strSql.Append("FROM Contratos where Contrato = @Codigo");
            if (SomenteRegistrosAtivos)
            {
                strSql.Append("AND Ativo = 1 ");
            }
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", Codigo);
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
        internal DataTable BuscarDescricao(string Descricao)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Empresa,Filial,Importador,Contrato,Descricao, ");
            strSql.Append("Vigencia_inicial,Vigencia_final,Tipo,Data_Baixa,Data_prorrogacao, ");
            strSql.Append("Repetro,Ativo,Cod_Regime_Fundamento,INs,Setor ");
            strSql.Append("FROM Contratos ");
            strSql.Append("where Descricao like @Descricao");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Descricao", "%" + Descricao + "%");
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
        internal Boolean Alterar(ContratoDTO ParametroContrato)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Contratos ");
            strSql.Append("SET Descricao = @Descricao ");
            strSql.Append(",Vigencia_inicial = @Vigencia_inicial ");
            strSql.Append(",Vigencia_final = @Vigencia_final ");
            strSql.Append(",Tipo = @Tipo ");
            strSql.Append(",Data_Baixa = @Data_Baixa ");
            strSql.Append(",Data_prorrogacao = @Data_prorrogacao ");
            strSql.Append(",Repetro = @Repetro ");
            strSql.Append(",Ativo = @Ativo ");
            strSql.Append(",Cod_Regime_Fundamento = @Cod_Regime_Fundamento ");
            strSql.Append(",INs = @INs ");
            strSql.Append(",Setor = @Setor ");
            strSql.Append("WHERE Contrato = @Contrato and Importador = @Importador");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Descricao", ParametroContrato.Descricao.ToUpper());
                    objCommand.Parameters.AddWithValue("@Vigencia_inicial", ParametroContrato.Vigencia_Inicial);
                    objCommand.Parameters.AddWithValue("@Vigencia_final", ParametroContrato.Vigencia_Final);
                    objCommand.Parameters.AddWithValue("@Tipo", ParametroContrato.Tipo.ToUpper());
                    objCommand.Parameters.AddWithValue("@Data_Baixa", ParametroContrato.Data_Baixa);
                    objCommand.Parameters.AddWithValue("@Data_prorrogacao", ParametroContrato.Data_Prorrogacao);
                    objCommand.Parameters.AddWithValue("@Repetro", ParametroContrato.Repetro);
                    objCommand.Parameters.AddWithValue("@Ativo", ParametroContrato.Ativo);
                    objCommand.Parameters.AddWithValue("@Cod_Regime_Fundamento", ParametroContrato.Cod_Regime_Fundamento.ToUpper());
                    objCommand.Parameters.AddWithValue("@INs", ParametroContrato.INs.ToUpper());
                    objCommand.Parameters.AddWithValue("@Setor", ParametroContrato.Setor.ToUpper());
                    objCommand.Parameters.AddWithValue("@Contrato", ParametroContrato.Contrato.ToUpper());
                    objCommand.Parameters.AddWithValue("@Importador", ParametroContrato.Importador);
                    objCommand.ExecuteNonQuery();
                }
                return true;
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
        internal Boolean Incluir(ContratoDTO ParametroContrato)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO Contratos (Empresa,Filial,Importador,Contrato,Descricao,Vigencia_inicial,Vigencia_final");
            strSql.Append(",Tipo,Data_Baixa,Data_prorrogacao,Repetro,Ativo,Cod_Regime_Fundamento,INs,Setor) ");
            strSql.Append("VALUES (@Empresa,@Filial,@Importador,@Contrato,@Descricao,@Vigencia_inicial");
            strSql.Append(",@Vigencia_final,@Tipo,@Data_Baixa,@Data_prorrogacao,@Repetro,@Ativo,@Cod_Regime_Fundamento,@INs,@Setor)");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Empresa", ParametroContrato.Empresa);
                    objCommand.Parameters.AddWithValue("@Filial", ParametroContrato.Filial.ToUpper());
                    objCommand.Parameters.AddWithValue("@Importador", ParametroContrato.Importador);
                    objCommand.Parameters.AddWithValue("@Contrato", ParametroContrato.Contrato.ToUpper());
                    objCommand.Parameters.AddWithValue("@Descricao", ParametroContrato.Descricao.ToUpper());
                    objCommand.Parameters.AddWithValue("@Vigencia_inicial", ParametroContrato.Vigencia_Inicial);
                    objCommand.Parameters.AddWithValue("@Vigencia_final", ParametroContrato.Vigencia_Final);
                    objCommand.Parameters.AddWithValue("@Tipo", ParametroContrato.Tipo);
                    objCommand.Parameters.AddWithValue("@Data_Baixa", ParametroContrato.Data_Baixa);
                    objCommand.Parameters.AddWithValue("@Data_prorrogacao", ParametroContrato.Data_Prorrogacao);
                    objCommand.Parameters.AddWithValue("@Repetro", ParametroContrato.Repetro);
                    objCommand.Parameters.AddWithValue("@Ativo", ParametroContrato.Ativo);
                    objCommand.Parameters.AddWithValue("@Cod_Regime_Fundamento", ParametroContrato.Cod_Regime_Fundamento);
                    objCommand.Parameters.AddWithValue("@INs", ParametroContrato.INs);
                    objCommand.Parameters.AddWithValue("@Setor", ParametroContrato.Setor);
                    objCommand.ExecuteNonQuery();
                }
                return true;
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
        internal Boolean Excluir(string Contrato, string Importador)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("DELETE FROM Contratos WHERE Contrato =@Contrato and Importador =@Importador");

            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.CommandText = strSql.ToString();
                    objCommand.Parameters.AddWithValue("@Contrato", Contrato);
                    objCommand.Parameters.AddWithValue("@Importador", Importador);
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

        internal List<LocalInventario> BuscarLocaisDeInventario(string pk_importador, string pk_contrato, string pk_local)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append(" SELECT Local, Descricao, Ativo FROM Locais_Inventario ");
            strSql.Append("WHERE Importador = @Importador AND Contrato = @Contrato AND ((Ativo = 1 ) or (Local =@Local)) ");
            strSql.Append("ORDER BY Descricao");

            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Importador", pk_importador);
                    objCommand.Parameters.AddWithValue("@Contrato", pk_contrato);
                    objCommand.Parameters.AddWithValue("@Local", pk_local);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<LocalInventario> local = new List<LocalInventario>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                local.Add(new LocalInventario
                                {
                                    Local = objDr["Local"].ToString(),
                                    Descricao = objDr["Descricao"].ToString()
                                });
                            }
                        }
                        return local;
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
