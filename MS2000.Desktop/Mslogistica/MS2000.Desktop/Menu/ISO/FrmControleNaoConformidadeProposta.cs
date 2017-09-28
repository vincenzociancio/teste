using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmControleNaoConformidadeProposta : MS2000.Desktop.Componentes.MSForm01
    {
        public StatusCadastro statusCadastro;
        public string Fk_Sequencial { get; set; }
        public string ID { get; set; }


        public FrmControleNaoConformidadeProposta()
        {
            InitializeComponent();
        }

        private DataTable getProposta(string seq)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Sequencial, Desc_Acoes_Corretiva,Resp_Acoes_Corretiva,Prazo_Acoes_Corretiva " +
                           "FROM proposta_de_acao " +
                           "WHERE Sequencial =@seq ";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@seq", seq);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void FrmControleNaoConformidadeProposta_Load(object sender, EventArgs e)
        {
            txtAcaoCorretivaPreventiva.Focus();
            if (statusCadastro == StatusCadastro.Editar)
            {
                DataTable table = getProposta(ID);
                txtAcaoCorretivaPreventiva.Text = table.Rows[0]["Desc_Acoes_Corretiva"].ToString();
                txtResponsavelAcao.Text = table.Rows[0]["Resp_Acoes_Corretiva"].ToString();
                txtPrazo.Text = table.Rows[0]["Prazo_Acoes_Corretiva"].ToString();
            }
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtAcaoCorretivaPreventiva.Text))
            {
                MessageBox.Show("A Descrição é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtAcaoCorretivaPreventiva.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtResponsavelAcao.Text))
            {
                MessageBox.Show("O Responsável é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtResponsavelAcao.Focus();
                return;
            }

            if (!txtPrazo.MaskCompleted)
            {
                if (MessageBox.Show("A Data é obrigatória! ", "Aviso", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                {
                    txtPrazo.Focus();
                    return;
                }
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "UPDATE Proposta_de_acao " +
                                   "SET Desc_Acoes_Corretiva = @descricao " +
                                   ",Resp_Acoes_Corretiva = @responsavel " +
                                   ",Prazo_Acoes_Corretiva = @prazo " +
                                   "WHERE sequencial = @seq ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Descricao", txtAcaoCorretivaPreventiva.Text);
                        cmd.Parameters.AddWithValue("@responsavel", txtResponsavelAcao.Text);
                        cmd.Parameters.AddWithValue("@prazo", !txtPrazo.MaskCompleted ? DBNull.Value : (object)txtPrazo.Text);
                        cmd.Parameters.AddWithValue("@seq", ID);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(ID, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),
                        string.Format("Descricão da Ação Corretiva /Preventiva:{0} - Responsável:{1} - Prazo:{2}", txtAcaoCorretivaPreventiva.Text, txtResponsavelAcao.Text, txtPrazo.Text));

                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Proposta_de_acao " +
                                   "(Pk_ID,Desc_Acoes_Corretiva,Resp_Acoes_Corretiva,Prazo_Acoes_Corretiva,Usuario) " +
                                   "VALUES " +
                                   "(@sequencial,@Descricao,@Responsavel,@Prazo,@usuario)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@sequencial", Fk_Sequencial);
                        cmd.Parameters.AddWithValue("@Descricao", txtAcaoCorretivaPreventiva.Text);
                        cmd.Parameters.AddWithValue("@responsavel", txtResponsavelAcao.Text);
                        cmd.Parameters.AddWithValue("@prazo", !txtPrazo.MaskCompleted ? DBNull.Value : (object)txtPrazo.Text);
                        cmd.Parameters.AddWithValue("@usuario", FrmPrincipal.UsuarioLogado);
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(ID, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag),
                     string.Format("Descricão da Ação Corretiva /Preventiva:{0} - Responsável:{1} - Prazo:{2}", txtAcaoCorretivaPreventiva.Text, txtResponsavelAcao.Text, txtPrazo.Text));
                }

                if (statusCadastro == StatusCadastro.Editar)
                {
                    MessageBox.Show("Registro alterado com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }

                this.DialogResult = DialogResult.OK;
                Close();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.Close();
            this.DialogResult = DialogResult.Cancel;
        }
    }
}
