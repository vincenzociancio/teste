using Avaliacao.Gerenciador.ViewModel;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace Avaliacao.Gerenciador.Model
{
    public class AvaliacaoFacade : IDisposable
    {
        private MS2000Context _ctx;
        // private Avaliacao_Avaliacao _avaliacao;

        public AvaliacaoFacade()
        {
            this._ctx = new MS2000Context();            
        }

        public List<Avaliacao_Avaliacao> GetAvaliacoes()
        {
            //var avaliacoes = _ctx.Avaliacao_Avaliacao.ToList();
            //return avaliacoes;

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT * from Avaliacao_Avaliacao ";
            List<Avaliacao_Avaliacao> avaliacoes = new List<Avaliacao_Avaliacao>();
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        avaliacoes.Add(
                            new Avaliacao_Avaliacao
                            {
                                ID = (int)reader["ID"],
                                Quantidade_Pergunta = (int)reader["Quantidade_Pergunta"],
                                Tipo = reader["Tipo"].ToString(),
                                Data_Criacao = (DateTime)reader["Data_Criacao"],
                                Data_de_Aplicacao = (DateTime)reader["Data_de_Aplicacao"],
                                Descricao = reader["Descricao"].ToString()
                            });
                    }
                }
            }
            return avaliacoes;
        }

        public List<Usuarios> GetColaboradores()
        {
            //var colaboradores = _ctx.Usuarios.Where(c => c.Ativo == true).ToList();
            //return colaboradores;
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Ativo, Email, Nome_Completo, Senha, Setor, Usuario from Usuarios " +        
                "where Ativo = 1 ";
            List<Usuarios> colaboradores = new List<Usuarios>();
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {                
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        colaboradores.Add(
                            new Usuarios
                            {
                                Ativo = (bool)reader["Ativo"],
                                Email = reader["Email"].ToString(),
                                Nome_Completo = reader["Nome_Completo"].ToString(),
                                Senha = reader["Senha"].ToString(),
                                Setor = reader["Setor"].ToString(),
                                Usuario = reader["Usuario"].ToString()
                            });
                    }
                }
            }
            return colaboradores;

        }

        public List<string> GetIdUsuariosUltimaAv()
        {
            int _ultima_av = _ctx.Avaliacao_Avaliacao.Select(c => c.ID).Max();
            List<string> colaboradores_ultima_av = new List<string>();

            if (_ultima_av > 0)
            {
                colaboradores_ultima_av = _ctx.Avaliacao_Colaboradores.Where(c => c.FK_Avaliacao == _ultima_av).Select(x => x.FK_Colaborador).ToList();
            }
            return colaboradores_ultima_av;
        }

  
        public List<ViewRelatorioAvaliacao> GetDadosRelatorioAvaliacao(int avaliacao)
        {
            //using (MS2000Context ctx = new MS2000Context())
            //{
            //    var sql = "SELECT AA.Descricao AS Descricao_Avaliacao,AA.Data_de_Aplicacao,AA.Quantidade_Pergunta,U.NOME_COMPLETO AS Participante,AC.Data_de_Realizacao,AC.Realizado," +
            //        "Acertos = (SELECT SUM(CAST(ARC.Correta AS int)) AS ACERTOS FROM Avaliacao_Respostas_Colaboradores ARC " +
            //        "INNER JOIN Avaliacao_Respostas AR ON AR.ID = ARC.FK_Resposta AND AR.FK_Pergunta = ARC.FK_Pergunta AND " +
            //        "ARC.FK_Colaborador = AC.FK_Colaborador AND ARC.FK_Avaliacao = AA.ID) " +
            //        "FROM Avaliacao_Avaliacao AA INNER JOIN Avaliacao_Colaboradores AC ON AA.ID = AC.FK_Avaliacao " +
            //        "INNER JOIN Usuarios U ON U.Usuario = AC.FK_Colaborador " +
            //        "WHERE AA.ID = @avaliacao order by U.NOME_COMPLETO";
            //    return ctx.Database.SqlQuery<ViewRelatorioAvaliacao>(sql, new SqlParameter("@avaliacao", avaliacao)).ToList();
            //}

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT AA.Descricao AS Descricao_Avaliacao,AA.Data_de_Aplicacao,AA.Quantidade_Pergunta,U.NOME_COMPLETO AS Participante,AC.Data_de_Realizacao,AC.Realizado," +
                        "Acertos = (SELECT SUM(CAST(ARC.Correta AS int)) AS ACERTOS FROM Avaliacao_Respostas_Colaboradores ARC " +
                        "INNER JOIN Avaliacao_Respostas AR ON AR.ID = ARC.FK_Resposta AND AR.FK_Pergunta = ARC.FK_Pergunta AND " +
                        "ARC.FK_Colaborador = AC.FK_Colaborador AND ARC.FK_Avaliacao = AA.ID) " +
                        "FROM Avaliacao_Avaliacao AA INNER JOIN Avaliacao_Colaboradores AC ON AA.ID = AC.FK_Avaliacao " +
                        "INNER JOIN Usuarios U ON U.Usuario = AC.FK_Colaborador " +
                        "WHERE AA.ID = @avaliacao order by U.NOME_COMPLETO";
            List<ViewRelatorioAvaliacao> RelatorioAvaliacao = new List<ViewRelatorioAvaliacao>();
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@avaliacao", avaliacao);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {   
                        RelatorioAvaliacao.Add(
                            new ViewRelatorioAvaliacao
                            {
                                Acertos = reader["Acertos"] == DBNull.Value ? default(int?) : Convert.ToInt16(reader["Acertos"]),                                
                                Data_de_Aplicacao = (DateTime)reader["Data_de_Aplicacao"],
                                Data_de_Realizacao = reader["Data_de_Realizacao"] == DBNull.Value ? default(DateTime?): Convert.ToDateTime(reader["Data_de_Realizacao"]),
                                Descricao_Avaliacao = reader["Descricao_Avaliacao"].ToString(),
                                Participante = reader["Participante"].ToString(),
                                Quantidade_Pergunta = (int)reader["Quantidade_Pergunta"],
                                Realizado = (bool)reader["Realizado"]
                            });
                    }
                }
            }
            return RelatorioAvaliacao;

        }

        public List<ViewRelatorioAnaliticoAvaliacao> GetDadosRelatorioAnaliticoAvaliacao(int avaliacao)
        {
            //using (MS2000Context ctx = new MS2000Context())
            //{
            //    var sql = "SELECT AA.Descricao AS Descricao_Avaliacao,AA.Data_de_Aplicacao,AA.Quantidade_Pergunta,U.NOME_COMPLETO AS Participante, " +
            //        "AC.Data_de_Realizacao,AC.Realizado,SUM(CAST(RC.Correta AS int))AS Acertos,C.Descricao AS Descricao_Categoria, COUNT(C.Descricao) AS Qtd_Perguntas_Categoria " +
            //        "FROM Avaliacao_Avaliacao AA " +
            //        "INNER JOIN Avaliacao_Colaboradores AC ON AA.ID = AC.FK_Avaliacao " +
            //        "INNER JOIN Usuarios U ON U.Usuario = AC.FK_Colaborador " +
            //        "INNER JOIN Avaliacao_Respostas_Colaboradores RC ON (RC.FK_Avaliacao = AA.ID) AND (RC.FK_Colaborador = AC.FK_Colaborador) " +
            //        "INNER JOIN Avaliacao_Perguntas P ON P.ID = RC.FK_Pergunta " +
            //        "INNER JOIN Avaliacao_Categoria C ON C.ID = P.FK_Categoria " +
            //        "WHERE AA.ID = @avaliacao " +
            //        "GROUP BY AA.Descricao,AA.Data_de_Aplicacao,AA.Quantidade_Pergunta,U.NOME_COMPLETO,AC.Data_de_Realizacao,AC.Realizado,C.Descricao " +
            //        "ORDER BY U.NOME_COMPLETO";
            //    return ctx.Database.SqlQuery<ViewRelatorioAnaliticoAvaliacao>(sql, new SqlParameter("@avaliacao", avaliacao)).ToList();
            //}




            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT AA.Descricao AS Descricao_Avaliacao,AA.Data_de_Aplicacao,AA.Quantidade_Pergunta,U.NOME_COMPLETO AS Participante, " +
                        "AC.Data_de_Realizacao,AC.Realizado,SUM(CAST(RC.Correta AS int))AS Acertos,C.Descricao AS Descricao_Categoria, COUNT(C.Descricao) AS Qtd_Perguntas_Categoria " +
                        "FROM Avaliacao_Avaliacao AA " +
                        "INNER JOIN Avaliacao_Colaboradores AC ON AA.ID = AC.FK_Avaliacao " +
                        "INNER JOIN Usuarios U ON U.Usuario = AC.FK_Colaborador " +
                        "INNER JOIN Avaliacao_Respostas_Colaboradores RC ON (RC.FK_Avaliacao = AA.ID) AND (RC.FK_Colaborador = AC.FK_Colaborador) " +
                        "INNER JOIN Avaliacao_Perguntas P ON P.ID = RC.FK_Pergunta " +
                        "INNER JOIN Avaliacao_Categoria C ON C.ID = P.FK_Categoria " +
                        "WHERE AA.ID = @avaliacao " +
                        "GROUP BY AA.Descricao,AA.Data_de_Aplicacao,AA.Quantidade_Pergunta,U.NOME_COMPLETO,AC.Data_de_Realizacao,AC.Realizado,C.Descricao " +
                        "ORDER BY U.NOME_COMPLETO";
            List<ViewRelatorioAnaliticoAvaliacao> RelatorioAvaliacao = new List<ViewRelatorioAnaliticoAvaliacao>();
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@avaliacao", avaliacao);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        RelatorioAvaliacao.Add(
                            new ViewRelatorioAnaliticoAvaliacao
                            {
                                Descricao_Categoria = reader["Descricao_Categoria"].ToString(),
                                Qtd_Perguntas_Categoria = (int)reader["Qtd_Perguntas_Categoria"],
                                Acertos = reader["Acertos"] == DBNull.Value ? default(int?) : Convert.ToInt16(reader["Acertos"]),
                                Data_de_Aplicacao = (DateTime)reader["Data_de_Aplicacao"],                                
                                Data_de_Realizacao = reader["Data_de_Realizacao"] == DBNull.Value ? default(DateTime?) : Convert.ToDateTime(reader["Data_de_Realizacao"]),
                                Descricao_Avaliacao = reader["Descricao_Avaliacao"].ToString(),
                                Participante = reader["Participante"].ToString(),
                                Quantidade_Pergunta = (int)reader["Quantidade_Pergunta"],
                                Realizado = (bool)reader["Realizado"],                                
                                
                            });
                    }
                }
            }
            return RelatorioAvaliacao;

        }

        public List<ViewChartPorAvaliacao> GetDadosChartPorAvaliacao(int avaliacao)
        {
            //using (MS2000Context ctx = new MS2000Context())
            //{
            //    var sql = "select av.Data_de_Aplicacao, c.Descricao, COUNT(rc.Correta)as Total, cast(rc.Correta as int) as Tipo from "+
            //                "Avaliacao_Avaliacao av " +
            //                "inner join Avaliacao_Respostas_Colaboradores rc on av.ID = rc.FK_Avaliacao " +
            //                "inner join Avaliacao_Perguntas p on rc.FK_Pergunta = p.ID " +
            //                "inner join Avaliacao_Categoria c on c.ID = p.FK_Categoria " +
            //                "where FK_Avaliacao = @avaliacao and rc.FK_Resposta > 0 " +
            //                "group by av.Data_de_Aplicacao, c.Descricao, rc.Correta";
            //    return ctx.Database.SqlQuery<ViewChartPorAvaliacao>(sql, new SqlParameter("@avaliacao", avaliacao)).ToList();
            //}


            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select av.Data_de_Aplicacao, c.Descricao, COUNT(rc.Correta)as Total, cast(rc.Correta as int) as Tipo from " +
                                "Avaliacao_Avaliacao av " +
                                "inner join Avaliacao_Respostas_Colaboradores rc on av.ID = rc.FK_Avaliacao " +
                                "inner join Avaliacao_Perguntas p on rc.FK_Pergunta = p.ID " +
                                "inner join Avaliacao_Categoria c on c.ID = p.FK_Categoria " +
                                "where FK_Avaliacao = @avaliacao and rc.FK_Resposta > 0 " +
                                "group by av.Data_de_Aplicacao, c.Descricao, rc.Correta";
            List<ViewChartPorAvaliacao> RelatorioAvaliacao = new List<ViewChartPorAvaliacao>();
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@avaliacao", avaliacao);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        RelatorioAvaliacao.Add(
                            new ViewChartPorAvaliacao
                            {
                                Data_de_Aplicacao  = (DateTime)reader["Data_de_Aplicacao"],
                                Descricao = reader["Descricao"].ToString(),
                                Tipo = (int)reader["Tipo"],
                                Total = (int)reader["Total"]
                            });
                    }
                }
            }
            return RelatorioAvaliacao;
        }

        public int SalvarTudos()
        {
            return _ctx.SaveChanges();
        }

        public void Dispose()
        {
            if (_ctx != null)
            {
                this._ctx = null;
            }

            //if (this._avaliacao != null)
            // {
            //     this._avaliacao = null;
            // }
        }
    }
}
