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
    internal class TipoDeProcessoDAL : BancoDados
    {
        internal DataTable BuscarTodos()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Codigo, UPPER(Descricao)AS Descricao, Ativo, Responsavel_EmpresaC, Responsavel_EmpresaO,");
            strSql.Append("Responsavel_EmpresaF FROM Tipos_de_Processos WHERE Ativo = 1 ORDER BY descricao");
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
