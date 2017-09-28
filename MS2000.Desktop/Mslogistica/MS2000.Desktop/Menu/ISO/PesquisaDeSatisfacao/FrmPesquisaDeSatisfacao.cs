using Microsoft.Reporting.WinForms;
using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO.PesquisaDeSatisfacao
{
    public partial class FrmPesquisaDeSatisfacao : MS2000.Desktop.Componentes.MSForm01
    {
        public class ClienteNota
        {
            public string Sugestao { get; set; }
            public string RazaoSocial { get; set; }
            public string Grupo { get; set; }
            public string Pergunta { get; set; }
            public int Nota { get; set; }
            public string Email { get; set; }
            public string Contato { get; set; }
        }

        public FrmPesquisaDeSatisfacao()
        {
            InitializeComponent();
        }

        private void FrmPesquisaDeSatisfacao_Load(object sender, EventArgs e)
        {
            getPesquisa();
        }

        private void getPesquisa()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select id, Pesquisa from [PesquisaSatisfacao.Pesquisas] ";
            DataTable table;
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                cbbAvaliacao.DataSource = table;
                cbbAvaliacao.DisplayMember = "Pesquisa";
                cbbAvaliacao.ValueMember = "id";
                cbbAvaliacao.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private List<ClienteNota> getClienteNota(int avaliacao)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string sql = "SELECT C.Razao_Social, G.Grupo_PORT AS 'Grupo', P.Descricao_PORT AS 'Pergunta', R.Nota, CP.SugestaoComentario, C.Contato, C.Email " +
                        "FROM [PesquisaSatisfacao.Clientes] C " +
                        "INNER JOIN [PesquisaSatisfacao.ClientesPesquisas] CP ON C.ID = CP.FK_Cliente " +
                        "INNER JOIN [PesquisaSatisfacao.Respostas] R ON R.FK_Cliente = CP.FK_Cliente AND R.FK_Pesquisa = CP.FK_Pesquisa " +
                        "INNER JOIN [PesquisaSatisfacao.Perguntas] P ON P.FK_Pesquisa = R.FK_Pesquisa AND P.ID = R.FK_Pergunta " +
                        "INNER JOIN [PesquisaSatisfacao.Grupos] G ON G.ID = P.FK_Grupo " +
                        "WHERE CP.Realizado = 1 and CP.FK_Pesquisa =@Pesquisa ORDER BY C.Razao_Social, P.ID";

            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                try
                {
                    cmd.Parameters.AddWithValue("@Pesquisa", avaliacao);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        List<ClienteNota> lista = new List<ClienteNota>();
                        while (reader.Read())
                        {
                            lista.Add(
                                new ClienteNota
                                {
                                    RazaoSocial = reader["Razao_Social"].ToString(),
                                    Grupo = reader["Grupo"].ToString().ToUpper(),
                                    Pergunta = reader["Pergunta"].ToString(),
                                    Nota = (int)reader["Nota"],
                                    Sugestao = reader["SugestaoComentario"].ToString(),
                                    Contato = reader["Contato"].ToString(),
                                    Email = reader["Email"].ToString()
                                });
                            Application.DoEvents();
                        }
                        return lista;
                    }
                }
                catch (SqlException e)
                {
                    return null;
                }
            }
        }

        private void btnVisualizar_Click(object sender, EventArgs e)
        {
            if (cbbAvaliacao.SelectedIndex < 0)
            {
                MessageBox.Show("Selecione um pesquisa!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                cbbAvaliacao.Focus();
                return;
            }

            rptView.LocalReport.DataSources.Clear();
            ReportDataSource dataset = new ReportDataSource("ds01", getClienteNota((int)cbbAvaliacao.SelectedValue));
            List<ReportParameter> param = new List<ReportParameter>();
            param.Add(new ReportParameter("pSubTitulo", cbbAvaliacao.Text));
            rptView.LocalReport.SetParameters(param);
            rptView.LocalReport.DataSources.Add(dataset);
            rptView.LocalReport.Refresh();
            rptView.RefreshReport();
        }
    }
}
