using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Ferramenta
{
    public partial class FrmControleRepetroRTC : MS2000.Desktop.Componentes.MSForm01
    {
        public FrmControleRepetroRTC()
        {
            InitializeComponent();
        }

        private DataTable getControleRTC()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT REG,NUMERO_RTC,DATA_RTC FROM REPETRO_RTC_D " +
                           "WHERE numero_rtc =@numero";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@numero", txtNumeroRTC.Text);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    if (table.Rows.Count > 0)
                    {
                        dgvItens.AutoGenerateColumns = false;
                        dgvItens.DataSource = getControleItensRTC(table.Rows[0]["REG"].ToString());
                    }
                    else
                    {
                        MessageBox.Show("Não foi encontrado registro para RTC informada.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                        LimparCampos();
                        txtNumeroRTC.Focus();
                    }
                    return table;
                }
            }
        }

        private DataTable getControleItensRTC(string reg)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT REG_RTC,REG,Movimento,ITEM,QUANTIDADE,Numero_serie,DI,Adicao,Seq_Adicaostr,DESCRICAO FROM REPETRO_RTC_ITENS_D " +
                           "WHERE REG_RTC =@RegRTC ";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@RegRTC", reg);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private DataTable getControleMovimentacao(string movimento)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Movimento, DI, Adicao, Seq_adicaoStr, Data_Movimentacao, Quantidade, Saldo, Processo_ADM, Novo_Benef " +
                           "FROM Movimentacao_Repetro " +
                           "WHERE  movimento =@Mov";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Mov", movimento);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void btnConsultaRTC_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtNumeroRTC.Text.Trim()))
            {
                MessageBox.Show("Informe o Nº da RTC, por favor.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtNumeroRTC.Focus();
                return;
            }

            dgvRTC.AutoGenerateColumns = false;
            dgvRTC.DataSource = getControleRTC();
        }

        private void dgvItens_SelectionChanged(object sender, EventArgs e)
        {
            if (dgvItens.Rows.Count.ToString() != "0")
            {
                txtItensRTC.Text = dgvItens.Rows[dgvItens.CurrentCell.RowIndex].Cells["DESCRICAO"].FormattedValue.ToString();
                dgvMovimentacao.AutoGenerateColumns = false;
                dgvMovimentacao.DataSource = getControleMovimentacao(dgvItens.Rows[dgvItens.CurrentCell.RowIndex].Cells["Movimento"].FormattedValue.ToString());
            }
        }

        private void txtItensRTC_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar != 8)
            {
                e.Handled = true;
            }
        }

        private void btnExcluirTodos_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtNumeroRTC.Text.Trim()))
            {
                MessageBox.Show("Informe o Nº da RTC, por favor.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtNumeroRTC.Focus();
                return;
            }

            if (dgvRTC.Rows.Count.ToString() == "0")
            {
                MessageBox.Show("Por favor, abra a consulta RTC para esta operação.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtNumeroRTC.Focus();
                return;
            }
            if (MessageBox.Show("Tem certeza que deseja excluir todos os itens e a movimentações do RTC?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    foreach (DataGridViewRow item in dgvItens.Rows)
                    {
                        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                        string query = "DELETE FROM Movimentacao_Repetro where movimento =@Mov";
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Mov", item.Cells["Movimento"].Value.ToString());
                            cmd.ExecuteNonQuery();
                        }
                        LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Movimento: {0}  Numero RTC {1}", item.Cells["Movimento"].Value.ToString(), txtNumeroRTC.Text));
                    }
                    ExcluirItensRTC();
                    ExcluirRTC();
                    LimparCampos();
                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }

            }
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtNumeroRTC.Text.Trim()))
            {
                MessageBox.Show("Informe o Nº da RTC, por favor.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtNumeroRTC.Focus();
                return;
            }

            if (dgvRTC.Rows.Count.ToString() == "0")
            {
                MessageBox.Show("Por favor, abra a consulta RTC para esta operação.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtNumeroRTC.Focus();
                return;
            }
            if (MessageBox.Show("Tem certeza que deseja excluir o item e a movimentação do RTC?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {             
                try
                {
                    ExcluirItem();

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "DELETE FROM Movimentacao_Repetro where movimento =@Mov";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Mov", dgvItens.Rows[dgvItens.CurrentCell.RowIndex].Cells["Movimento"].FormattedValue.ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Movimento: {0} , Numero RTC: {1}", dgvItens.Rows[dgvItens.CurrentCell.RowIndex].Cells["Movimento"].FormattedValue.ToString(), txtNumeroRTC.Text));

                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    LimparCampos();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void ExcluirItem()
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "DELETE FROM REPETRO_RTC_ITENS_D WHERE REG =@REG";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@REG", dgvItens.Rows[dgvItens.CurrentCell.RowIndex].Cells["REG"].FormattedValue.ToString());
                    cmd.ExecuteNonQuery();
                }
                LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("REG ITEM {0}", dgvItens.Rows[dgvItens.CurrentCell.RowIndex].Cells["REG"].FormattedValue.ToString()));
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void ExcluirItensRTC()
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "DELETE FROM REPETRO_RTC_ITENS_D WHERE REG_RTC =@REG";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@REG", dgvRTC.Rows[dgvItens.CurrentCell.RowIndex].Cells["REG1"].FormattedValue.ToString());
                    cmd.ExecuteNonQuery();
                }
                LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("REG RTC: {0}", dgvRTC.Rows[dgvItens.CurrentCell.RowIndex].Cells["REG1"].FormattedValue.ToString()));
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void ExcluirRTC()
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "DELETE FROM REPETRO_RTC_D WHERE numero_rtc =@RTC";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@RTC", txtNumeroRTC.Text);
                    cmd.ExecuteNonQuery();
                }
                LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Numero RTC: {0}", txtNumeroRTC.Text));
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void LimparCampos()
        {
            dgvRTC.DataSource = null;
            dgvItens.DataSource = null;
            dgvMovimentacao.DataSource = null;
            txtNumeroRTC.Clear();
            txtItensRTC.Clear();
            txtNumeroRTC.Focus();
        }

        private void txtNumeroRTC_TextChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtNumeroRTC.Text.Trim()))
            {
                LimparCampos();
            }
        }

        private void FrmControleRepetroRTC_Load(object sender, EventArgs e)
        {
            txtNumeroRTC.Focus();
        }

        private void AtualizaDataRTC()
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "update REPETRO_RTC_D set data_rtc =@Data where numero_rtc =@NumRTC";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@NumRTC", txtNumeroRTC.Text);
                    cmd.Parameters.AddWithValue("@Data", txtDataMovimentacao.Text);
                    cmd.ExecuteNonQuery();
                }                
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnDataMovimentacao_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtDataMovimentacao.Text.Trim()))
            {
                MessageBox.Show("Informe a Data, por favor.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtNumeroRTC.Focus();
                return;
            }

            if (dgvMovimentacao.Rows.Count.ToString() == "0")
            {
                MessageBox.Show("Não existe movimentação.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtNumeroRTC.Focus();
                return;
            }

            AtualizaDataRTC();
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "update Movimentacao_Repetro set Data_Movimentacao =@DataMov WHERE movimento =@Mov";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Mov", dgvMovimentacao.Rows[dgvMovimentacao.CurrentCell.RowIndex].Cells["Mov"].FormattedValue.ToString());
                    cmd.Parameters.AddWithValue("@DataMov", txtDataMovimentacao.Text);
                    cmd.ExecuteNonQuery();
                }
                LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Movimento: {0} Data Movimentação: {1}", dgvMovimentacao.Rows[dgvMovimentacao.CurrentCell.RowIndex].Cells["Mov"].FormattedValue.ToString(), txtDataMovimentacao.Text));
                MessageBox.Show("A data da movimentação foi atualizada com sucesso.", "Atualizado", MessageBoxButtons.OK, MessageBoxIcon.Information);
                btnConsultaRTC_Click(null, null);
                txtDataMovimentacao.Clear();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
