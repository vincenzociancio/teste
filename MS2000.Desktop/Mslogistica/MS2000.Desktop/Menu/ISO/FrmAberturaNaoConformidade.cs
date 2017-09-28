using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmAberturaNaoConformidade : MS2000.Desktop.Componentes.MSForm01
    {
        public FrmAberturaNaoConformidade()
        {
            InitializeComponent();
        }

        private void getTipo()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT  Codigo, Descricao FROM Tipos_NC order by Descricao";
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
                mcbbTipo.DataSource = table;
                mcbbTipo.DisplayMember = "Descricao";
                mcbbTipo.ValueMember = "Codigo";
                mcbbTipo.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getNaoConformidade()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select MAX(Sequencial) + 1 as Sequencial from nao_conformidade";
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        reader.Read();
                        txtNumero.Text = reader[0].ToString();
                    }
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void LimparCampos()
        {
            txtRequisito.Clear();
            txtConformidade.Clear();
            txtDisposicao.Clear();
            txtResponsavel.Clear();
            mcbbTipo.SelectedIndex = -1;
            mcbbLocal.SelectedIndex = -1;
            txtData.Text = "";
        }

        private void FrmAberturaNaoConformidade_Load(object sender, EventArgs e)
        {
            getTipo();
            getNaoConformidade();
            txtRespIdentif.Text = FrmPrincipal.UsuarioNomeCompleto;
            txtDataAtual.Text = DateTime.Now.Date.ToString();
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (mcbbLocal.Text == "")
            {
                MessageBox.Show("Favor Informar o Local. ", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (mcbbTipo.Text == "")
            {
                MessageBox.Show("Favor Informar o Tipo. ", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (txtConformidade.Text == "")
            {
                MessageBox.Show("Favor Informar a Descrição da não-conformidade. ", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            } 

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = " INSERT INTO Nao_Conformidade "+
                               "(Responsavel_identif,data,Requisito_norma,Local,Real_Potencial,Descricao_conformidade,Descricao_disposicao "+
                               ",Resp_disposicao,Data_diposicao,tipo_NC) "+
                               "VALUES "+
                               "(@Responsavel,@data,@norma,@local,@Real_potencial,@conformidade,@disposicao,@Resp_disposicao " +
                               ",@Data_diposicao,@tipo_NC)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Responsavel", txtRespIdentif.Text);
                    cmd.Parameters.AddWithValue("@data",txtDataAtual.MaskCompleted ? (object)txtDataAtual.Text : DBNull.Value);
                    cmd.Parameters.AddWithValue("@norma", txtRequisito.Text);
                    cmd.Parameters.AddWithValue("@local", mcbbLocal.Text);
                    cmd.Parameters.AddWithValue("@Real_potencial", (rdbReal.Checked == true) ? false : true);
                    cmd.Parameters.AddWithValue("@conformidade", txtConformidade.Text);
                    cmd.Parameters.AddWithValue("@disposicao", txtDisposicao.Text);
                    cmd.Parameters.AddWithValue("@Resp_disposicao", txtResponsavel.Text);
                    cmd.Parameters.AddWithValue("@Data_diposicao", txtData.MaskCompleted ? (object)txtData.Text : DBNull.Value);
                    cmd.Parameters.AddWithValue("@tipo_NC", (mcbbTipo.SelectedValue == null) ? "" : mcbbTipo.SelectedValue);
                    cmd.ExecuteNonQuery();
                }
                LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.None, Convert.ToInt32(this.Tag), string.Format("Número: {0} - Norma: {1} - Tipo:{2} ", txtNumero.Text, txtRequisito.Text, mcbbTipo.Text));
                MessageBox.Show("Registro alterado com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                LimparCampos();
                getNaoConformidade();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
