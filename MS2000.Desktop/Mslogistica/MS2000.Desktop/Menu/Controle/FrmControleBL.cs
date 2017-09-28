using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmControleBL : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
            groupBox1.Enabled = (statusCadastro == StatusCadastro.None);
            txtNumeroMS.Enabled = false;
            txtCliente.Enabled = false;
            txtDDE.Enabled = false;
            txtProcesso.Enabled = (statusCadastro == StatusCadastro.Novo);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmControleBL()
        {
            InitializeComponent();
        }

        private DataTable getControleBL()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select " +
                            "C.PK_Controle_BL " +
                            ",P.Codigo " +
                            ",P.Importador " +
                            ",P.DDE " +
                            ",C.RE  " +
                            ",I.Razao_Social " +
                            ",C.Nome_Navio " +
                            ",C.Num_BL " +
                            ",Cast( C.DT_Vecto as DateTime ) as 'DT_Vecto' " +
                            ",C.Status " +
                            ",C.Unidade_Receita " +
                            "from " +
                            "Controle_BL C " +
                            "inner join Processos P on P.Codigo = C.FK_Processo  " +
                            "inner join Importadores I on I.Codigo = P.Importador " +
                            "where " +
                            "C.Excluido = 0 " +
                            "order by " +
                            "P.Importador " +
                            ",P.Codigo";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void FrmControleBL_Load(object sender, EventArgs e)
        {
            this.ActiveControl = txtProcesso;
            bindingNavigator.DeleteItem = null;

            Dictionary<int, string> itensStatus = new Dictionary<int, string>();

            itensStatus.Add(0, "Andamento"); itensStatus.Add(1, "Finalizado");

            cbbStatus.DisplayMember = "Value";
            cbbStatus.ValueMember = "Key";
            cbbStatus.DataSource = new BindingSource(itensStatus, null);

            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getControleBL();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtNumeroMS.DataBindings.Add(new Binding("Text", bindingSource, "Codigo", true));
            txtCliente.DataBindings.Add(new Binding("Text", bindingSource, "Razao_Social", true));
            txtDDE.DataBindings.Add(new Binding("Text", bindingSource, "DDE", true));
            txtRE.DataBindings.Add(new Binding("Text", bindingSource, "RE", true));
            txtNumeroBL.DataBindings.Add(new Binding("Text", bindingSource, "Num_BL", true));
            txtNomeNavio.DataBindings.Add(new Binding("Text", bindingSource, "Nome_Navio", true));
            txtUnidadeReceita.DataBindings.Add(new Binding("Text", bindingSource, "Unidade_Receita", true));
            txtVencimento.DataBindings.Add(new Binding("Text", bindingSource, "DT_Vecto", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            cbbStatus.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Status"));
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            this.ActiveControl = txtProcesso;
        }        

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtNumeroBL.Text.Trim()))
            {
                MessageBox.Show("O Número BL é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtNumeroBL.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtNomeNavio.Text.Trim()))
            {
                MessageBox.Show("O Nome do Navio é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtNomeNavio.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtUnidadeReceita.Text.Trim()))
            {
                MessageBox.Show("A Unidade Receita é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtUnidadeReceita.Focus();
                return;
            }

            if (string.IsNullOrEmpty(cbbStatus.Text.Trim()))
            {
                MessageBox.Show("O Status é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbStatus.Focus();
                return ;
            }

            if (!txtVencimento.MaskCompleted)
            {
                MessageBox.Show("A Data do Vencimento é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtVencimento.Focus();
                return;
            }
            

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    string query = "update Controle_BL set " +
                                   "FK_Processo =@FK_Processo, " +
                                   "Nome_Navio =@Nome_Navio, " +
                                   "Unidade_Receita =@Unidade_Receita, " +
                                   "DT_Vecto =Cast( @DT_Vecto as Date ), " +
                                   "Num_BL =@Num_BL, " +
                                   "Status =@Status, " +
                                   "RE =@RE " +
                                   "where " +
                                   "PK_Controle_BL =@PK_Controle_BL ";
                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@FK_Processo", txtNumeroMS.Text);
                            cmd.Parameters.AddWithValue("@Nome_Navio", txtNomeNavio.Text);
                            cmd.Parameters.AddWithValue("@Unidade_Receita", txtUnidadeReceita.Text);
                            cmd.Parameters.AddWithValue("@DT_Vecto", !txtVencimento.MaskCompleted ? DBNull.Value : (object)txtVencimento.Text);
                            cmd.Parameters.AddWithValue("@Num_BL", txtNumeroBL.Text);
                            cmd.Parameters.AddWithValue("@Status", (cbbStatus.SelectedValue == null) ? DBNull.Value : (object)cbbStatus.SelectedValue);
                            cmd.Parameters.AddWithValue("@RE", txtRE.Text);
                            cmd.Parameters.AddWithValue("@PK_Controle_BL", bindingSource.GetRelatedCurrencyManager("PK_Controle_BL").Current.ToString());
                            cmd.ExecuteNonQuery();
                        }
                    }
                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("PK_Controle_BL").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Processo:{0} ", ((DataRowView)this.bindingSource.Current).Row["Codigo"].ToString()));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "Insert into Controle_BL " +
                                   "(FK_Processo,Nome_Navio,Unidade_Receita,DT_Vecto,Num_BL, Status,RE)  " +
                                   "values  " +
                                   "(@FK_Processo, @Nome_Navio,@Unidade_Receita,Cast( @DT_Vecto as Date ), @Num_BL, @Status,@RE)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@FK_Processo", txtNumeroMS.Text);
                        cmd.Parameters.AddWithValue("@Nome_Navio", txtNomeNavio.Text);
                        cmd.Parameters.AddWithValue("@Unidade_Receita", txtUnidadeReceita.Text);
                        cmd.Parameters.AddWithValue("@DT_Vecto", !txtVencimento.MaskCompleted ? DBNull.Value : (object)txtVencimento.Text);
                        cmd.Parameters.AddWithValue("@Num_BL", txtNumeroBL.Text);
                        cmd.Parameters.AddWithValue("@Status", (cbbStatus.SelectedValue == null) ? DBNull.Value : (object)cbbStatus.SelectedValue);
                        cmd.Parameters.AddWithValue("@RE", txtRE.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Processo:{0}", txtNumeroMS.Text));
                }

                if (statusCadastro == StatusCadastro.Editar)
                {
                    MessageBox.Show("Registro alterado com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                statusCadastro = StatusCadastro.None;
                HabilitarDesabilitaControles(false);
                var ID_busca = bindingSource.GetRelatedCurrencyManager("PK_Controle_BL").Current.ToString();
                bindingSource.DataSource = getControleBL();
                bindingSource.Position = bindingSource.Find("PK_Controle_BL", ID_busca);

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            txtRE.Focus();
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Controle_BL set Excluido = 1 where PK_Controle_BL = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("PK_Controle_BL").Current.ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("PK_Controle_BL").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Numero MS: {0}", txtNumeroMS.Text));
                    bindingSource.RemoveCurrent();
                    statusCadastro = StatusCadastro.None;
                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            if (txtProcesso.MaskCompleted)
            {

                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "select TOP 10 " +
                               "P.Codigo " +
                               ",P.Importador " +
                               ",P.DDE " +
                               ",I.Razao_Social " +
                               "from " +
                               "Processos P " +
                               "inner join Importadores I on I.Codigo = P.Importador " +
                               "where " +
                               "P.Codigo = @Processo";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        try
                        {
                            if (reader.HasRows)
                            {
                                reader.Read();
                                txtNumeroMS.Text = reader["Codigo"].ToString();
                                txtCliente.Text = reader["Razao_Social"].ToString();
                                txtDDE.Text = reader["DDE"].ToString();

                            }
                            else
                            {
                                MessageBox.Show("Não foi possível localizar o registro!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            }
                        }
                        catch (Exception ex)
                        {
                            MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            LimparCampos();
                        }
                    }
                }
            }
            else
            {
                LimparCampos();
            }
        }

        private void LimparCampos()
        {
            txtNumeroMS.Clear();
            txtCliente.Clear();
            txtDDE.Clear();
            txtRE.Clear();
            txtNumeroBL.Clear();
            txtNomeNavio.Clear();
            txtUnidadeReceita.Clear();
            txtVencimento.Clear();
            cbbStatus.SelectedIndex = -1;
        }

        private void txtLocalizaProcesso_TextChanged(object sender, EventArgs e)
        {
            string processo;

            processo = txtLocalizaProcesso.Text.Replace("/", "").Trim();

            if (processo.Length >= 6)
            {
                processo = txtLocalizaProcesso.Text;
            }
            else
            {
                processo = txtLocalizaProcesso.Text.Replace("/", "").Trim();
            }

            bindingSource.Filter = "Codigo LIKE '" + processo + "%'";
        }
    }
}
