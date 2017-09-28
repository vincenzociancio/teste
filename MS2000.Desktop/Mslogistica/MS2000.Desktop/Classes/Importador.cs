using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace MS2000.Desktop.Classes
{
    public class Importador
    {
        public Importador()
        {
        }

        public Importador(SqlDataReader reader)
        {
            Codigo = reader["Codigo"].ToString();
            Razao_Social = reader["Razao_Social"].ToString();
            Pais = reader["Pais"].ToString();
            CNPJ_CPF_COMPLETO = reader["CNPJ_CPF_COMPLETO"].ToString();
            CGC_CPF = reader["CGC_CPF"].ToString();
            Tipo_Importador = reader["Tipo_Importador"].ToString();
            Endereco = reader["Endereco"].ToString();
            Numero = reader["Numero"].ToString();
            Complemento = reader["Complemento"].ToString();
            Bairro = reader["Bairro"].ToString();
            Cidade = reader["Cidade"].ToString();
            CEP = reader["CEP"].ToString();
            UF = reader["UF"].ToString();
            Estado = reader["Estado"].ToString();
            Inscricao_Estadual = reader["Inscricao_Estadual"].ToString();
            Inscricao_Municipal = reader["Inscricao_Municipal"].ToString();
            Ativo = (int?)reader["Ativo"];    
        }

        #region Properts
        public string Codigo { get; set; }
        public string Razao_Social { get; set; }
        public string Pais { get; set; }
        public string CNPJ_CPF_COMPLETO { get; set; }
        public string CGC_CPF { get; set; }
        public string Tipo_Importador { get; set; }
        public string Endereco { get; set; }
        public string Numero { get; set; }
        public string Complemento { get; set; }
        public string Bairro { get; set; }
        public string Cidade { get; set; }
        public string CEP { get; set; }
        public string UF { get; set; }
        public string Estado { get; set; }
        public string Inscricao_Estadual { get; set; }
        public string Banco { get; set; }
        public string Agencia { get; set; }
        public string Conta_Corrente { get; set; }
        public int? Conta_Corrente_Registro { get; set; }
        public int? Conta_Corrente_Deposito { get; set; }
        public string link { get; set; }
        public string CAE { get; set; }
        public string Telefone { get; set; }
        public int? Ativo { get; set; }
        public int? Acesso_WEB_MS { get; set; }
        public int? Acesso_WEB_CLI { get; set; }
        public int? Acesso_WEB_REC { get; set; }
        public int? BASE_ICMS { get; set; }
        public int? MOV_REPETRO { get; set; }
        public string Inscricao_Municipal { get; set; }
        public string EMAIL { get; set; }
        public int? FATURA_ISS { get; set; }
        public string EMAIL_MONITORACAO { get; set; }
        public bool Exporta_Para_Siscomex { get; set; }
        public bool? Apenc_Liberado { get; set; }
        public int? fk_contrato_financ { get; set; }
        public int lixo { get; set; }
        #endregion

        public List<Importador> BuscarLista()
        {
            string query = "SELECT " +
                "Codigo, Razao_Social, Pais, CNPJ_CPF_COMPLETO, CGC_CPF,Tipo_Importador, Endereco, Numero, Complemento" +
                ",Bairro, Cidade, CEP, UF, Estado, Inscricao_Estadual, CAE, Telefone, Ativo, Acesso_WEB_MS, Acesso_WEB_CLI, Acesso_WEB_REC " +
                ",Telefone, Inscricao_Municipal, Email, Exporta_Para_Siscomex, Conta_Corrente_Deposito " +
                "FROM Importadores ORDER BY Razao_social";
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var objCommand = new SqlCommand(query, conn))
                {
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<Importador> listaImportador = new List<Importador>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                listaImportador.Add(new Importador(objDr));
                            }
                        }
                        return listaImportador;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public List<Importador> BuscarListaAtivos()
        {
            string query = "SELECT " +
                "Codigo, Razao_Social, Pais, CNPJ_CPF_COMPLETO, CGC_CPF,Tipo_Importador, Endereco, Numero, Complemento" +
                ",Bairro, Cidade, CEP, UF, Estado, Inscricao_Estadual, CAE, Telefone, Ativo, Acesso_WEB_MS, Acesso_WEB_CLI, Acesso_WEB_REC " +
                ",Telefone, Inscricao_Municipal, Email, Exporta_Para_Siscomex, Conta_Corrente_Deposito " +
                "FROM Importadores WHERE Ativo = 1 ORDER BY Razao_social";
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var objCommand = new SqlCommand(query, conn))
                {
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<Importador> listaImportador = new List<Importador>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                listaImportador.Add(new Importador(objDr));
                            }
                        }
                        return listaImportador;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public Importador BuscarPorCodigo(string codigo)
        {
            string query = "SELECT " +
                "Codigo, Razao_Social, Pais, CNPJ_CPF_COMPLETO, CGC_CPF,Tipo_Importador, Endereco, Numero, Complemento" +
                ",Bairro, Cidade, CEP, UF, Estado, Inscricao_Estadual, CAE, Telefone, Ativo, Acesso_WEB_MS, Acesso_WEB_CLI, Acesso_WEB_REC " +
                ",Telefone, Inscricao_Municipal, Email, Exporta_Para_Siscomex, Conta_Corrente_Deposito " +
                "FROM Importadores WHERE Codigo = @codigo";
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@codigo", codigo);
                    
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        Importador importador = null;
                        
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                importador = new Importador(dr);
                            }
                        }

                        return importador;
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
