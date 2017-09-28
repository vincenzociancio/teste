using MSBiblioteca.BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace MSBiblioteca.DAL
{
    internal class SetorDAL : BancoDados
    {
        internal List<Setor> BuscarTodos(bool SomenteRegistrosAtivos = true)
        {
            List<Setor> listaSetores = null;
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT * ");
            strSql.Append("FROM Setores ");
            if (SomenteRegistrosAtivos)
            {
                strSql.Append("WHERE Excluido = 0 ");
            }
            strSql.Append("ORDER BY descricao");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    listaSetores = new List<Setor>();
                    SqlDataReader objDr = objCommand.ExecuteReader();
                    if (objDr.HasRows)
                    {
                        while (objDr.Read())
                        {
                            listaSetores.Add(new Setor(objDr["Codigo"].ToString(), objDr["Descricao"].ToString()));
                        }
                    }

                    objDr.Close();
                    objDr.Dispose();
                    return listaSetores;
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

        internal Setor BuscarID(string codigo)
        {
            Setor setor = null;
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Codigo, Descricao ");
            strSql.Append("FROM Setores ");
            strSql.Append("WHERE codigo = @codigo ");            
            
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@codigo", codigo);
                    SqlDataReader objDr = objCommand.ExecuteReader();
                    setor = new Setor();
                    if (objDr.HasRows)
                    {
                        while (objDr.Read())
                        {
                            setor.Codigo = objDr["Codigo"].ToString();
                            setor.Descricao = objDr["Descricao"].ToString();
                        }
                    }
                    objDr.Close();
                    objDr.Dispose();
                    return setor;
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
