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
    internal class CanalDAL : BancoDados
    {
        internal DataTable PreencherCombo()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT CODIGO,DESCRICAO FROM Canais ");
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
