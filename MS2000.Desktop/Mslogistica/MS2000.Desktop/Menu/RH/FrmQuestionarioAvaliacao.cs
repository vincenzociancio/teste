using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Resources;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmQuestionarioAvaliacao : MS2000.Desktop.Componentes.MSForm01
    {
        public int FK_Usuario { get; set; }

        public FrmQuestionarioAvaliacao()
        {
            InitializeComponent();
        }

        private DataTable getQuestionario()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT AA.Descricao AS Descricao_Avaliacao,Cast(AA.Data_de_Aplicacao as Date) as Data_de_Aplicacao,Cast(AA.Quantidade_Pergunta as int) as Quantidade_Pergunta,U.NOME_COMPLETO AS Participante,Cast(AC.Data_de_Realizacao as Date) as Data_de_Realizacao,AC.Realizado," +
                           "(Cast(((SELECT SUM(CAST(ARC.Correta AS Float)) AS ACERTOS FROM Avaliacao_Respostas_Colaboradores ARC " +
                           "INNER JOIN Avaliacao_Respostas AR ON AR.ID = ARC.FK_Resposta AND AR.FK_Pergunta = ARC.FK_Pergunta AND " +
                           "ARC.FK_Colaborador = AC.FK_Colaborador AND ARC.FK_Avaliacao = AA.ID) / Cast(AA.Quantidade_Pergunta as float))  *100 AS float)) As Porcentagem ," +
                           "Acertos = (SELECT SUM(CAST(ARC.Correta AS int)) AS ACERTOS " +
                           "FROM Avaliacao_Respostas_Colaboradores ARC " +
                           "INNER JOIN Avaliacao_Respostas AR ON AR.ID = ARC.FK_Resposta AND AR.FK_Pergunta = ARC.FK_Pergunta AND " +
                           "ARC.FK_Colaborador = AC.FK_Colaborador AND ARC.FK_Avaliacao = AA.ID) " +
                           "FROM Avaliacao_Avaliacao AA INNER JOIN Avaliacao_Colaboradores AC ON AA.ID = AC.FK_Avaliacao " +
                           "INNER JOIN Usuarios U ON U.Usuario = AC.FK_Colaborador " +
                           "WHERE U.PK_USUARIO = @FK_Usuario order by U.NOME_COMPLETO";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@FK_Usuario", FK_Usuario);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private double getMedia()
        {
            double total = 0;
            int Div=0;
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT (Cast(((SELECT SUM(CAST(ARC.Correta AS Float)) AS ACERTOS " +
                           "FROM Avaliacao_Respostas_Colaboradores ARC INNER JOIN " +
                           "Avaliacao_Respostas AR ON AR.ID = ARC.FK_Resposta AND AR.FK_Pergunta = ARC.FK_Pergunta AND " +
                           "ARC.FK_Colaborador = AC.FK_Colaborador AND ARC.FK_Avaliacao = AA.ID) / Cast(AA.Quantidade_Pergunta as float)) * 100 AS float)) As Total " +
                           "FROM Avaliacao_Avaliacao AA " +
                           "INNER JOIN Avaliacao_Colaboradores AC ON AA.ID = AC.FK_Avaliacao " +
                           "INNER JOIN Usuarios U ON U.Usuario = AC.FK_Colaborador  " +
                           "WHERE U.PK_USUARIO = @FK_Usuario and AC.Data_de_Realizacao is not null order by U.NOME_COMPLETO";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@FK_Usuario", FK_Usuario);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        total = total + Convert.ToDouble(reader[0].ToString());
                        Div++;
                    }
                    total = (total / Div);
                    return total;
                }              
            }          
        }

        private void FrmQuestionarioAvaliacao_Load(object sender, EventArgs e)
        {
            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getQuestionario();            
            dataGridView.DataSource = bindingSource;
            lblMediaPorcentagem.Text = getMedia().ToString("0.00");
            CarregaIdioma();
        }
        private void CarregaIdioma()
        {

            ResourceManager resourceManager = new ResourceManager("MS2000.Desktop.Idiomas.res", typeof(FrmQuestionarioAvaliacao).Assembly);
            this.Text = resourceManager.GetString("rh_relatorio_questionario");

            label14.Text = resourceManager.GetString("relatorio");
            label1.Text = resourceManager.GetString("media_acertos");


            Data_de_Aplicacao.HeaderText = resourceManager.GetString("data_avaliacao");
            Data_de_Realizacao.HeaderText = resourceManager.GetString("data_realizacao");
            Quantidade_Pergunta.HeaderText = resourceManager.GetString("quantidade_pergunta");
            Acertos.HeaderText = resourceManager.GetString("acertos");
            Porcentagem.HeaderText = resourceManager.GetString("porcentagem");
        }

    }
}
