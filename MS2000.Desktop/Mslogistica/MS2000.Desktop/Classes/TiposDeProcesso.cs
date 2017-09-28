using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace MS2000.Desktop.Classes
{
    public class TiposDeProcesso
    {
        public TiposDeProcesso()
        {
        }

        public TiposDeProcesso(SqlDataReader reader)
        {
            Codigo = reader["Codigo"].ToString();
            Descricao = reader["Descricao"].ToString();
            Ativo = (int?)reader["Ativo"];
        }

        public string Codigo { get; set; }
        public string Descricao { get; set; }
        public int? Ativo { get; set; }
        public string Responsavel_EmpresaC { get; set; }
        public string Responsavel_EmpresaO { get; set; }
        public string Responsavel_EmpresaF { get; set; }

        public List<TiposDeProcesso> BuscarLista()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Codigo, UPPER(Descricao)AS Descricao, Ativo, Responsavel_EmpresaC, Responsavel_EmpresaO,");
            strSql.Append("Responsavel_EmpresaF FROM Tipos_de_Processos ORDER BY descricao");
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var objCommand = new SqlCommand(strSql.ToString(), conn))
                {
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<TiposDeProcesso> listaTipo = new List<TiposDeProcesso>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                listaTipo.Add(new TiposDeProcesso(objDr));
                            }
                        }
                        return listaTipo;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public bool ContratoLocalObrigatorio(string codigo)
        {
            StringBuilder strSql = new StringBuilder();

            strSql.Append("SELECT TOP 1 ContratoLocalObrigatorio FROM Tipos_de_Processos WHERE Codigo = @Codigo");
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(strSql.ToString(), conn))
                {
                    cmd.Parameters.AddWithValue("@Codigo", codigo);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        bool obrigatorio = true;
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                obrigatorio = (bool)dr["ContratoLocalObrigatorio"];
                            }
                        }
                        return obrigatorio;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public bool Exportacao(string codigo)
        {                                    
            try
            {                
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = " SELECT CODIGO FROM Tipos_de_Processos WHERE (Descricao LIKE '%exporta%' or Codigo = 'DV') AND Codigo = @Codigo ";            

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Codigo", codigo);

                    using (SqlDataReader dr = cmd.ExecuteReader())                    
                    {
                        return dr.HasRows;                                                            
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public bool VerificaItemPassivelAdmissao(string codigo)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = " SELECT CODIGO FROM Tipos_de_Processos WHERE verifica_item_admissao = 1 AND Codigo = @Codigo ";

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Codigo", codigo);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        return dr.HasRows;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public static bool ResponsabilidadeSetorDocumental(string codigo)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = " SELECT CODIGO FROM Tipos_de_Processos WHERE resp_setor_documental = 1 AND Codigo = @Codigo ";

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Codigo", codigo);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        return dr.HasRows;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public static bool VerificaDespachoDecisorio(string codigo)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = " SELECT CODIGO FROM Tipos_de_Processos WHERE verifica_despacho_decisorio = 1 AND Codigo = @Codigo ";

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Codigo", codigo);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        return dr.HasRows;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
