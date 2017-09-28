using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using MSBiblioteca.DTO;

namespace MSBiblioteca.DAL
{
    internal class ProdutoDAL : BancoDados
    {
        internal DataTable Buscar()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT top 10 REG, Importador, Fabricante, CODIGO, PART_NUMBER, Descricao, Descricao_ing, NCM,");
            strSql.Append("Destaque_NCM, NALADI, Unidade, Unidade_Medida_Estat, DATA_INCLUSAO, Usuario_INCLUSAO,");
            strSql.Append("DATA_ULTIMA_ALTERACAO, Usuario_ALTERACAO, Revisado, Revisao_Data, Revisao_Usuario, Revisao_OBS ");
            strSql.Append("FROM Produtosnew ");
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
            strSql.Append("SELECT Importador, Fabricante, CODIGO, PART_NUMBER, Descricao, Descricao_ing, NCM,");
            strSql.Append("Destaque_NCM, NALADI, Unidade, Unidade_Medida_Estat, DATA_INCLUSAO, Usuario_INCLUSAO,");
            strSql.Append("DATA_ULTIMA_ALTERACAO, Usuario_ALTERACAO, Revisado, Revisao_Data, Revisao_Usuario, Revisao_OBS ");
            strSql.Append("FROM Produtosnew ");
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
        internal DataTable BuscarCodigo(string Codigo)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Importador,Fabricante,Part_Number,Descricao,Descricao_ing,NCM,Destaque_NCM, ");
            strSql.Append("NALADI,Unidade,Unidade_Medida_Estat,Data_Inclusao,Usuario_Inclusao,Data_Ultima_Alteracao, "); 
            strSql.Append("Usuario_Alteracao,Revisado,Revisao_Data,Revisao_Usuario,Revisao_OBS ");
            strSql.Append("FROM Produtosnew where CODIGO =@Codigo ");
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
            strSql.Append("SELECT Codigo, Importador, Fabricante,Part_Number,Descricao,Descricao_ing,NCM,Destaque_NCM, ");
            strSql.Append("NALADI,Unidade,Unidade_Medida_Estat,Data_Inclusao,Usuario_Inclusao,Data_Ultima_Alteracao, ");
            strSql.Append("Usuario_Alteracao,Revisado,Revisao_Data,Revisao_Usuario,Revisao_OBS ");
            strSql.Append("FROM Produtosnew ");
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
        internal DataTable BuscarDescricaoIng(string Descricao_Ing)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Codigo, Importador, Fabricante,Part_Number,Descricao,Descricao_ing,NCM,Destaque_NCM, ");
            strSql.Append("NALADI,Unidade,Unidade_Medida_Estat,Data_Inclusao,Usuario_Inclusao,Data_Ultima_Alteracao, ");
            strSql.Append("Usuario_Alteracao,Revisado,Revisao_Data,Revisao_Usuario,Revisao_OBS ");
            strSql.Append("FROM Produtosnew ");
            strSql.Append("where Descricao_ing like @Descricao_Ing");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Descricao_Ing", "%" + Descricao_Ing + "%");
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
        internal Boolean Alterar(ProdutoDTO ParametroProduto)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Produtosnew ");
            strSql.Append("SET Importador = @Importador ");
            strSql.Append(",Fabricante = @Fabricante ");
            strSql.Append(",CODIGO = @CODIGO ");
            strSql.Append(",PART_NUMBER = @PART_NUMBER ");
            strSql.Append(",Descricao = @Descricao ");
            strSql.Append("Descricao_ing = @Descricao_ing ");
            strSql.Append(",NCM = @NCM ");
            strSql.Append(",Destaque_NCM = @Destaque_NCM ");
            strSql.Append(",NALADI = @NALADI ");
            strSql.Append(",Unidade = @Unidade ");
            strSql.Append(",Unidade_Medida_Estat = @Unidade_Medida_Estat ");
            strSql.Append(",DATA_INCLUSAO = @DATA_INCLUSAO ");
            strSql.Append(",Usuario_INCLUSAO = @Usuario_INCLUSAO ");
            strSql.Append(",DATA_ULTIMA_ALTERACAO = @DATA_ULTIMA_ALTERACAO ");
            strSql.Append(",Usuario_ALTERACAO = @Usuario_ALTERACAO ");
            strSql.Append(",Revisado = @Revisado ");
            strSql.Append(",Revisao_Data = @Revisao_Data ");
            strSql.Append(",Revisao_Usuario = @Revisao_Usuario ");
            strSql.Append(",Revisao_OBS = @Revisao_OBS ");
            strSql.Append("WHERE REG = @REG "); 

            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Importador", ParametroProduto.Importador.ToUpper());
                    objCommand.Parameters.AddWithValue("@Fabricante", ParametroProduto.Fabricante.ToUpper());
                    objCommand.Parameters.AddWithValue("@CODIGO", ParametroProduto.Codigo.ToUpper());
                    objCommand.Parameters.AddWithValue("@PART_NUMBER", ParametroProduto.PartNumber.ToUpper());
                    objCommand.Parameters.AddWithValue("@Descricao", ParametroProduto.Descricao.ToUpper());
                    objCommand.Parameters.AddWithValue("@Descricao_ing", ParametroProduto.Descricao_Ing.ToUpper());
                    objCommand.Parameters.AddWithValue("@NCM", ParametroProduto.NCM.ToUpper());
                    objCommand.Parameters.AddWithValue("@Destaque_NCM", ParametroProduto.Destaque_NCM.ToUpper());
                    objCommand.Parameters.AddWithValue("@NALADI", ParametroProduto.Naladi.ToUpper());
                    objCommand.Parameters.AddWithValue("@Unidade", ParametroProduto.Unidade.ToUpper());
                    objCommand.Parameters.AddWithValue("@Unidade_Medida_Estat", ParametroProduto.Unidade_Medida_Estatica.ToUpper());
                    objCommand.Parameters.AddWithValue("@DATA_INCLUSAO", ParametroProduto.Data_Inclusao.ToUpper());
                    objCommand.Parameters.AddWithValue("@Usuario_INCLUSAO", ParametroProduto.Usuario_Inclusao.ToUpper());
                    objCommand.Parameters.AddWithValue("@DATA_ULTIMA_ALTERACAO", ParametroProduto.Data_Ultima_Alteracao.ToUpper());
                    objCommand.Parameters.AddWithValue("@Usuario_ALTERACAO", ParametroProduto.Usuario_Alteracao.ToUpper());
                    objCommand.Parameters.AddWithValue("@Revisado", ParametroProduto.Revisado.ToUpper());
                    objCommand.Parameters.AddWithValue("@Revisao_Data", ParametroProduto.Revisao_Data.ToUpper());
                    objCommand.Parameters.AddWithValue("@Revisao_Usuario", ParametroProduto.Revisao_Usuario.ToUpper());
                    objCommand.Parameters.AddWithValue("@Revisao_OBS", ParametroProduto.Revisao_Obs.ToUpper());
                    objCommand.Parameters.AddWithValue("@REG", ParametroProduto.REG.ToUpper());  
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
        internal Boolean Incluir(ProdutoDTO ParametroProduto)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO Produtosnew (Importador,Fabricante,CODIGO,PART_NUMBER,Descricao,Descricao_ing,NCM");
            strSql.Append(",Destaque_NCM,NALADI,Unidade,Unidade_Medida_Estat,DATA_INCLUSAO,Usuario_INCLUSAO");
            strSql.Append(",DATA_ULTIMA_ALTERACAO,Usuario_ALTERACAO,Revisado,Revisao_Data,Revisao_Usuario,Revisao_OBS");
            strSql.Append("VALUES (@Importador,@Fabricante,@CODIGO,@PART_NUMBER,@Descricao,@Descricao_ing,@NCM,@Destaque_NCM,");
            strSql.Append(",@NALADI,@Unidade,@Unidade_Medida_Estat,@DATA_INCLUSAO,@Usuario_INCLUSAO,@DATA_ULTIMA_ALTERACAO");
            strSql.Append(",@Usuario_ALTERACAO,@Revisado,@Revisao_Data,@Revisao_Usuario,@Revisao_OBS");

            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Importador", ParametroProduto.Importador);
                    objCommand.Parameters.AddWithValue("@Fabricante", ParametroProduto.Fabricante);
                    objCommand.Parameters.AddWithValue("@CODIGO", ParametroProduto.Codigo.ToUpper());
                    objCommand.Parameters.AddWithValue("@PART_NUMBER", ParametroProduto.PartNumber.ToUpper());
                    objCommand.Parameters.AddWithValue("@Descricao", ParametroProduto.Descricao.ToUpper());
                    objCommand.Parameters.AddWithValue("@Descricao_ing", ParametroProduto.Descricao_Ing.ToUpper());
                    objCommand.Parameters.AddWithValue("@NCM", ParametroProduto.NCM);
                    objCommand.Parameters.AddWithValue("@Destaque_NCM", ParametroProduto.Destaque_NCM);
                    objCommand.Parameters.AddWithValue("@NALADI", ParametroProduto.Naladi);
                    objCommand.Parameters.AddWithValue("@Unidade", ParametroProduto.Unidade);
                    objCommand.Parameters.AddWithValue("@Unidade_Medida_Estat", ParametroProduto.Unidade_Medida_Estatica);
                    objCommand.Parameters.AddWithValue("@DATA_INCLUSAO", ParametroProduto.Data_Inclusao);
                    objCommand.Parameters.AddWithValue("@Usuario_INCLUSAO", ParametroProduto.Usuario_Inclusao);
                    objCommand.Parameters.AddWithValue("@DATA_ULTIMA_ALTERACAO", ParametroProduto.Data_Ultima_Alteracao);
                    objCommand.Parameters.AddWithValue("@Usuario_ALTERACAO", ParametroProduto.Usuario_Alteracao.ToUpper());
                    objCommand.Parameters.AddWithValue("@Revisado", ParametroProduto.Revisado);
                    objCommand.Parameters.AddWithValue("@Revisao_Data", ParametroProduto.Revisao_Data);
                    objCommand.Parameters.AddWithValue("@Revisao_Usuario", ParametroProduto.Revisao_Usuario);
                    objCommand.Parameters.AddWithValue("@Revisao_OBS", ParametroProduto.Revisao_Obs);
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
        internal Boolean Excluir(string REG)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("DELETE FROM ProdutosNew WHERE REG = @REG");

            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.CommandText = strSql.ToString();
                    objCommand.Parameters.AddWithValue("@REG", REG);
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
