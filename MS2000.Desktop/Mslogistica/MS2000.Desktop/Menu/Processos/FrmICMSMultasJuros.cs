using MS2000.Desktop.Classes;
using System;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Linq;

namespace MS2000.Desktop.Menu.Processos
{
    public partial class FrmICMSMultasJuros : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        bool Jacadastrado;                      

        public virtual void VerificaBotoes()
        {
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None) && (txtProcesso.MaskCompleted) && (!Jacadastrado);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None) && (txtProcesso.MaskCompleted) && (Jacadastrado);                        
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);

            pnlLocalizarProcesso.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmICMSMultasJuros()
        {
            InitializeComponent();
        }

        private void FrmICMSMultasEJuros_Load(object sender, EventArgs e)
        {
            Jacadastrado = false;
            bindingNavigator.DeleteItem = null;
            statusCadastro = StatusCadastro.None;            
            HabilitarDesabilitaControles(false);
            VerificaBotoes();

            this.ActiveControl = txtProcesso;
        }        

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }             

        private void LimpaCampos()
        {
            txtValorJurosMultas.Clear();            
        }

        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            LimpaCampos();

            if (txtProcesso.MaskCompleted)
            {                                
                    if (Usuario.AcessaPasta(txtProcesso.Text, this))
                    {
                        if (JaExisteValorCadastrado(txtProcesso.Text))
                        {
                            txtValorJurosMultas.Text = getValorJurosEMultas(txtProcesso.Text).ToString();

                            Jacadastrado = true;
                        }
                        else
                        {
                            txtValorJurosMultas.Clear();

                            Jacadastrado = false;
                        }                        
                    }
                    else
                    {
                        MessageBox.Show(@"Este Processo não está no seu controle!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        txtProcesso.Clear();
                        return;
                    }                                
            }

            VerificaBotoes();
        }        

        public double getValorJurosEMultas(string processo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "select Processo, Valor from Processos_ICMS_Multas_Juros where Processo = @Processo";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@processo", processo);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                return (double)reader["Valor"];
                            }
                        }
                        else
                        {
                            return 0;
                        }
                    }
                }

                return 0;
            }
            catch (Exception)
            {
                return 0;

                throw;
            }                        
        }

        public bool JaExisteValorCadastrado(string processo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "select processo from Processos_ICMS_Multas_Juros where Processo = @Processo";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@processo", processo);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                }

                return false;
            }
            catch (Exception)
            {
                return false;

                throw;
            }
        }

        private Boolean ValidaCampos()
        {
            if (!txtProcesso.MaskCompleted)
            {
                MessageBox.Show("O Nº do processo é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtProcesso.Focus();
                return false;
            }

            try
            {
                Convert.ToDouble(txtValorJurosMultas.Text);
            }
            catch (Exception)
            {
                MessageBox.Show("O valor é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtValorJurosMultas.Focus();
                return false;
            }

            return true;
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (ValidaCampos() == false) return;      

            try
            {
                if (statusCadastro == StatusCadastro.Novo)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query = "insert into Processos_ICMS_Multas_Juros (Processo, Valor) values (@Processo, @Valor) ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                        cmd.Parameters.AddWithValue("@Valor", Convert.ToDouble(txtValorJurosMultas.Text));                        
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Valor:{0}", txtValorJurosMultas.Text));
                }

                txtProcesso_TextChanged(null, null);

                MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);

                statusCadastro = StatusCadastro.None;

                HabilitarDesabilitaControles(false);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (Jacadastrado)
            {
                if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                {
                    try
                    {
                        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                        string query = "delete from Processos_ICMS_Multas_Juros where processo = @processo";

                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@processo", txtProcesso.Text);
                            cmd.ExecuteNonQuery();
                        }

                        LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Valor: {0}", txtValorJurosMultas.Text));
                        
                        statusCadastro = StatusCadastro.None;
                        
                        txtProcesso_TextChanged(null, null);

                        MessageBox.Show("Registro excluído com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }   
            }                       
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;

            txtValorJurosMultas.Focus();
        }                      
    }
}
