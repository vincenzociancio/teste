using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MSBiblioteca.BLL;
using System.Data.SqlClient;
using System.Data;

namespace MSBiblioteca.DAL
{
    internal class SupervisorDAL : UsuarioDAL
    {
        internal Supervisor BuscarID(string usuario)
        {
            Supervisor super = null;
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Usuario, Nome_Completo ");
            strSql.Append("FROM Usuarios ");
            strSql.Append("WHERE Usuario = @Usuario ");

            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Usuario", usuario);
                    SqlDataReader objDr = objCommand.ExecuteReader();
                    super = new Supervisor();
                    if (objDr.HasRows)
                    {
                        while (objDr.Read())
                        {
                            super.Usuario = objDr["Usuario"].ToString();
                            super.NomeCompleto = objDr["Nome_Completo"].ToString();
                        }
                    }
                    objDr.Close();
                    objDr.Dispose();
                    return super;
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

        internal List<Supervisor> BuscarTodos(bool SomenteRegistrosAtivos = true)
        {
            DataTable dt = new DataTable();
            dt = base.BuscarTodos(SomenteRegistrosAtivos);
            List<Supervisor> listaSuper = new List<Supervisor>();

            foreach (DataRow dr in dt.Rows)
            {
                listaSuper.Add(new Supervisor(dr["usuario"].ToString(), dr["nome_completo"].ToString()));
            }
            return listaSuper;
        }
    }
}

