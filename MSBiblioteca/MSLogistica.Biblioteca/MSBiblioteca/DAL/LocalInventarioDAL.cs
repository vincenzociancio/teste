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
    internal class LocalInventarioDAL : BancoDados
    {
        internal DataTable PreencherCombo(string Importador)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Empresa,Filial,Importador,Contrato,Local,Descricao ");
            strSql.Append(",Tipo_local,Processo_Adm,CNPJ,Unidade_Jur,Fiel_nome,Fiel_cpf");
            strSql.Append(",SIGLA,Ativo,Centro_Custo,Codigo_Contabil,ACESSO_RF_ANGRA,Setor");
            strSql.Append("FROM Locais_Inventario where Importador = @Importador ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Importador",Importador);
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
