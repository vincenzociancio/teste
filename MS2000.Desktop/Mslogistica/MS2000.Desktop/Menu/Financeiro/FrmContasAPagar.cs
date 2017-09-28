using Microsoft.Reporting.WinForms;
using MS2000.Desktop.Classes;
using MS2000.Desktop.Componentes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Financeiro
{
    public partial class FrmContasAPagar : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        public virtual void VerificaBotoes()
        {
            btnIncluirConta.Enabled   = (statusCadastro == StatusCadastro.None);
            btnEditarConta.Enabled    = (statusCadastro == StatusCadastro.None);
            btnSolicitarConta.Enabled = (statusCadastro == StatusCadastro.None) && (rbNaoSolicitado.Checked) && (bindingSource1.Count > 0);
            btnAutorizarConta.Enabled = (statusCadastro == StatusCadastro.None) && (rbSolicitado.Checked) && (bindingSource1.Count > 0) && (FrmPrincipal.UsuarioLogado == "DUDA");
            btnPagarConta.Enabled     = (statusCadastro == StatusCadastro.None) && (rbAutorizado.Checked) && (bindingSource1.Count > 0);
            btnCancelarConta.Enabled  = (statusCadastro == StatusCadastro.None) && (rbSolicitado.Checked) && (bindingSource1.Count > 0);            

            btnFechar.Enabled = (statusCadastro == StatusCadastro.None);

            gpbFiltrar.Enabled   = (statusCadastro == StatusCadastro.None);
            gpbPesquisar.Enabled = (statusCadastro == StatusCadastro.None);            
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);                       
        }

        public FrmContasAPagar()
        {
            InitializeComponent();
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            //foreach (Control controle in tabControl.Controls)
            //{
            //    controle.Enabled = bValue;
            //}

            VerificaBotoes();
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource1.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);

            pnlConta.Visible = true;                    
            lblPanel.Text = "INSERIR CONTA";                       
            mccbFornecedor.Focus();
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            if (bindingSource1.Count > 0)
            {
                statusCadastro = StatusCadastro.Editar;

                HabilitarDesabilitaControles(true);

                pnlConta.Visible = true;                    
                lblPanel.Text = "EDITAR CONTA";
                mccbFornecedor.Focus();
            }                       
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (ValidaCampos() == false) return;            

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query = " UPDATE  Contas_a_Pagar                       " +
                                   "    SET  Fk_Fornecedor    = @Fk_Fornecedor    " +
                                   "        ,NF               = @NF               " +
                                   "        ,Fk_Despesa       = @Fk_Despesa        " +
                                   "        ,Descricao        = @Descricao        " +
                                   "        ,Data_Vencimento  = @Data_Vencimento  " +
                                   "        ,Data_Prorrogacao = @Data_Prorrogacao " +
                                   "        ,Valor            = @Valor            " +
                                   "        ,Valor_Multa      = @Valor_Multa      " +
                                   "        ,Valor_Juros      = @Valor_Juros      " +
                                   "        ,Valor_Pago       = @Valor_Pago       " +
                                   "        ,Obs              = @Obs              " +
                                   "        ,FK_Solicitante   = @FK_Solicitante   " +
                                   " WHERE  ID = @ID                              ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {                        
                        cmd.Parameters.AddWithValue("@Fk_Fornecedor", mccbFornecedor.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@NF", txtNF.Text);
                        cmd.Parameters.AddWithValue("@Fk_Despesa", mccbDespesas.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@Data_Vencimento", !txtDataVencimento.MaskCompleted ? DBNull.Value : (object)txtDataVencimento.Text);                        
                        cmd.Parameters.AddWithValue("@Data_Prorrogacao", !txtDataProrrogacao.MaskCompleted ? DBNull.Value : (object)txtDataProrrogacao.Text);                        
                        cmd.Parameters.AddWithValue("@Valor", string.IsNullOrEmpty(txtValor.Text) ? 0 : Convert.ToDouble(txtValor.Text));
                        cmd.Parameters.AddWithValue("@Valor_Multa", string.IsNullOrEmpty(txtMulta.Text) ? 0 : Convert.ToDouble(txtMulta.Text));
                        cmd.Parameters.AddWithValue("@Valor_Juros", string.IsNullOrEmpty(txtJuros.Text) ? 0 : Convert.ToDouble(txtJuros.Text));
                        cmd.Parameters.AddWithValue("@Valor_Pago", string.IsNullOrEmpty(txtValorPago.Text) ? 0 : Convert.ToDouble(txtValorPago.Text));
                        cmd.Parameters.AddWithValue("@Obs", txtObs.Text);
                        cmd.Parameters.AddWithValue("@FK_Solicitante", FrmPrincipal.PK_UsuarioLogado);                        
                        
                        cmd.Parameters.AddWithValue("@ID", txtCodigo.Text);
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("ID: {0}, Nota: {1}", txtCodigo.Text, txtNF.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Contas_a_Pagar                                                                                                                           " +
                                   " (  Fk_Fornecedor,  Nf,  FK_Despesa,  Descricao,  Data_Vencimento,  Data_Prorrogacao,  Valor,  Valor_Multa,  Valor_Juros,  Valor_Pago,  Obs,  FK_Solicitante ) VALUES " +
                                   " ( @Fk_Fornecedor, @Nf, @FK_Despesa, @Descricao, @Data_Vencimento, @Data_Prorrogacao, @Valor, @Valor_Multa, @Valor_Juros, @Valor_Pago, @Obs, @FK_Solicitante )        ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Fk_Fornecedor", mccbFornecedor.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@NF", txtNF.Text);
                        cmd.Parameters.AddWithValue("@Fk_Despesa", mccbDespesas.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@Data_Vencimento", !txtDataVencimento.MaskCompleted ? DBNull.Value : (object)txtDataVencimento.Text);
                        cmd.Parameters.AddWithValue("@Data_Prorrogacao", !txtDataProrrogacao.MaskCompleted ? DBNull.Value : (object)txtDataProrrogacao.Text);
                        cmd.Parameters.AddWithValue("@Valor", string.IsNullOrEmpty(txtValor.Text) ? 0 : Convert.ToDouble(txtValor.Text));
                        cmd.Parameters.AddWithValue("@Valor_Multa", string.IsNullOrEmpty(txtMulta.Text) ? 0 : Convert.ToDouble(txtMulta.Text));
                        cmd.Parameters.AddWithValue("@Valor_Juros", string.IsNullOrEmpty(txtJuros.Text) ? 0 : Convert.ToDouble(txtJuros.Text));
                        cmd.Parameters.AddWithValue("@Valor_Pago", string.IsNullOrEmpty(txtValorPago.Text) ? 0 : Convert.ToDouble(txtValorPago.Text));
                        cmd.Parameters.AddWithValue("@Obs", txtObs.Text);
                        cmd.Parameters.AddWithValue("@FK_Solicitante", FrmPrincipal.PK_UsuarioLogado);                        
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(txtNF.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Nota: {0}, Fornecedor: {1}", txtNF.Text, mccbFornecedor.SelectedValue.ToString()));
                }                

                AtualizaGrid();

                if (statusCadastro == StatusCadastro.Editar)
                {
                    MessageBox.Show("Registro alterado com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }

                statusCadastro = StatusCadastro.None;

                pnlConta.Visible = false;

                HabilitarDesabilitaControles(false);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }            
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource1.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
            pnlConta.Visible = false;
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void AtualizaGrid()
        {
            bindingSource1.DataSource = getContasAPagar();

            dataGridView.DataSource = bindingSource1;

            bindingSource1.MoveFirst();
        }

        private Boolean ValidaCampos()
        {
            if (string.IsNullOrEmpty(mccbFornecedor.Text))
            {
                MessageBox.Show("Fornecedor obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mccbFornecedor.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(mccbDespesas.Text))
            {
                MessageBox.Show("Despesa obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mccbDespesas.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtNF.Text.Trim()))
            {
                MessageBox.Show("NF obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtNF.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtDescricao.Text.Trim()))
            {
                MessageBox.Show("Descrição obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricao.Focus();
                return false;
            }            

            if (string.IsNullOrEmpty(txtValor.Text.Trim()))
            {
                MessageBox.Show("Valor obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtValor.Focus();
                return false;
            }
            else
            {
                try
                {
                    Convert.ToDouble(txtValor.Text);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Valor inválido!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtValor.Focus();
                    return false;
                }
            }

            if (!string.IsNullOrEmpty(txtMulta.Text.Trim()))
            {
                try
                {
                    Convert.ToDouble(txtMulta.Text);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Valor de Multa inválido!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtMulta.Focus();
                    return false;
                }   
            }            

            if (!string.IsNullOrEmpty(txtJuros.Text.Trim()))
            {
                try
                {
                    Convert.ToDouble(txtJuros.Text);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Valor de Juros inválido!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtJuros.Focus();
                    return false;
                }   
            }            

            if (string.IsNullOrEmpty(txtValorPago.Text.Trim()))
            {
                MessageBox.Show("Valor obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtValorPago.Focus();
                return false;
            }
            else
            {
                try
                {
                    Convert.ToDouble(txtValorPago.Text);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Valor inválido!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtValorPago.Focus();
                    return false;
                }
            }            

            if (string.IsNullOrEmpty(txtObs.Text.Trim()))
            {
                MessageBox.Show("Observação obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtObs.Focus();
                return false;
            }                        

            return true;
        }

        private void FrmContasAPagar_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;

            getItensPesquisar();
            getFornecedores();
            getContasAPagar();
            getDespesas();
            getBancos();

            statusCadastro = StatusCadastro.None;

            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;

            AtualizaGrid();

            txtCodigo.DataBindings.Add(new Binding("Text", bindingSource1, "ID", true));            
            mccbFornecedor.DataBindings.Add(new Binding("SelectedValue", bindingSource1, "Fk_Fornecedor", true));
            txtNF.DataBindings.Add(new Binding("Text", bindingSource1, "NF", true));
            mccbDespesas.DataBindings.Add(new Binding("SelectedValue", bindingSource1, "Fk_Despesa", true));            
            txtDescricao.DataBindings.Add(new Binding("Text", bindingSource1, "Descricao", true));
            txtDataVencimento.DataBindings.Add(new Binding("Text", bindingSource1, "Data_Vencimento", true));
            txtDataProrrogacao.DataBindings.Add(new Binding("Text", bindingSource1, "Data_Prorrogacao", true));
            txtValor.DataBindings.Add(new Binding("Text", bindingSource1, "Valor", true));
            txtMulta.DataBindings.Add(new Binding("Text", bindingSource1, "Valor_Multa", true));
            txtJuros.DataBindings.Add(new Binding("Text", bindingSource1, "Valor_Juros", true));
            txtValorPago.DataBindings.Add(new Binding("Text", bindingSource1, "Valor_Pago", true));
            txtObs.DataBindings.Add(new Binding("Text", bindingSource1, "Obs", true));

            rbNaoSolicitado.Checked = true;

            bindingSource1.Filter = "Status = 0";
        }

        private DataTable getContasAPagar()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "     SELECT CASE WHEN (CP.STATUS = 0)                                                                                                                                                                                           " +
                           "            THEN 'NÃO SOLICITADO'                                                                                                                                                                                               " +
                           "	         ELSE CASE WHEN (CP.STATUS = 1) THEN 'SOLICITADO' ELSE CASE WHEN (CP.STATUS = 2) THEN 'AUTORIZADO' ELSE CASE WHEN (CP.STATUS = 3) THEN 'PAGO' ELSE 'CANCELADO' END END END END AS STATUS_CONTA,                     " +
                           "		     CP.ID, CP.Fk_Despesa, CP.Fk_Fornecedor, CP.Status, CP.Nf, CP.Descricao, CONVERT(VARCHAR(10), CP.Data_Vencimento, 103) AS Data_Vencimento, CONVERT(VARCHAR(10), CP.Data_Prorrogacao, 103) AS Data_Prorrogacao,      " +
                           "             CP.Valor, CP.Valor_Multa, CP.Valor_Juros, CP.Valor_Pago, CP.Obs, CP.FK_Solicitante, Sol.Nome_Completo AS Solicitante, CP.FK_Autorizador, Aut.Nome_Completo AS Autorizador, F.Razao_Social, TN.Codigo AS Numerario, TN.Descricao AS Despesa " +
                           "       FROM Contas_a_Pagar CP                                                                                                                                                                                                   " +
                           "            INNER JOIN Fornecedores F ON CP.Fk_Fornecedor = F.ID                                                                                                                                                                " +
                           "            INNER JOIN Tipos_Numerario TN ON CP.Fk_Despesa = TN.ID                                                                                                                                                              " +
                           "             LEFT JOIN Usuarios Sol ON CP.FK_Solicitante = Sol.PK_USUARIO                                                                                                                                                       " +
                           "	 		 LEFT JOIN Usuarios Aut ON CP.FK_Autorizador = Aut.PK_USUARIO                                                                                                                                                       " + 
                           "   ORDER BY CP.ID                                                                                                                                                                                                               ";                             

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

        private void getFornecedores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "SELECT Id, Razao_Social FROM Fornecedores WHERE Ativo = 1 ORDER BY Razao_Social ";

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

                mccbFornecedor.DataSource    = null;
                mccbFornecedor.DataSource    = table;
                mccbFornecedor.DisplayMember = "Razao_Social";
                mccbFornecedor.ValueMember   = "Id";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getDespesas()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " SELECT ID, Codigo, Descricao FROM Tipos_Numerario ORDER BY Descricao ";

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

                mccbDespesas.DataSource = null;
                mccbDespesas.DataSource = table;
                mccbDespesas.DisplayMember = "Descricao";
                mccbDespesas.ValueMember = "ID";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getBancos()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " SELECT Codigo, Descricao, Banco, Agencia, Conta_Corrente FROM Contas_Correntes WHERE Nivel = 2 ";

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

                mccbBanco.DataSource    = null;
                mccbBanco.DataSource    = table;
                mccbBanco.DisplayMember = "Descricao";
                mccbBanco.ValueMember   = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getItensPesquisar()
        {
            Dictionary<int, string> itensPesquisar = new Dictionary<int, string>();

            itensPesquisar.Add(0, "Fornecedor");
            itensPesquisar.Add(1, "NF");
            itensPesquisar.Add(2, "Valor");
            itensPesquisar.Add(3, "Valor Pago");            

            cbbPesquisarPor.DisplayMember = "Value";
            cbbPesquisarPor.ValueMember = "Key";
            cbbPesquisarPor.DataSource = new BindingSource(itensPesquisar, null);
            
            txtPesquisar.Visible = true;
        }

        private void rbNaoSolicitado_Click(object sender, EventArgs e)
        {
            //Não Solicitado
            bindingSource1.RemoveFilter();
            bindingSource1.Filter = "Status = 0";

            VerificaBotoes();
        }

        private void rbSolicitado_Click(object sender, EventArgs e)
        {
            //Solicitado
            bindingSource1.RemoveFilter();
            bindingSource1.Filter = "Status = 1";

            VerificaBotoes();
        }

        private void rbAutorizado_Click(object sender, EventArgs e)
        {
            //Autorizado
            bindingSource1.RemoveFilter();
            bindingSource1.Filter = "Status = 2";

            VerificaBotoes();
        }

        private void rbPago_Click(object sender, EventArgs e)
        {
            //Pago
            bindingSource1.RemoveFilter();
            bindingSource1.Filter = "Status = 3";

            VerificaBotoes();
        }

        private void rbCancelado_Click(object sender, EventArgs e)
        {
            //Cancelado
            bindingSource1.RemoveFilter();
            bindingSource1.Filter = "Status = 4";

            VerificaBotoes();
        }

        private void btnSolicitarConta_Click(object sender, EventArgs e)
        {
            if (((DataRowView)this.bindingSource1.Current).Row["Status"].ToString() == "0")
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query = " UPDATE  Contas_a_Pagar                   " +
                                   "    SET  FK_Solicitante = @FK_Solicitante " +
                                   "  WHERE  ID = @ID                         ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@FK_Solicitante", FrmPrincipal.PK_UsuarioLogado);

                        cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());
                        cmd.ExecuteNonQuery();
                    }

                    EnviaEmail("S");

                    SetStatus(1);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }                
            }
            else
            {
                MessageBox.Show("Só é possível solicitar contas no status 'Não solicitado'", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void btnAutorizarConta_Click(object sender, EventArgs e)
        {
            if (((DataRowView)this.bindingSource1.Current).Row["Status"].ToString() == "1")
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query = " UPDATE  Contas_a_Pagar                   " +
                                   "    SET  FK_Autorizador = @FK_Autorizador " +
                                   "  WHERE  ID = @ID                         ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@FK_Autorizador", FrmPrincipal.PK_UsuarioLogado);

                        cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());
                        cmd.ExecuteNonQuery();
                    }

                    EnviaEmail("A");

                    SetStatus(2);                    
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                MessageBox.Show("Só é possível autorizar contas no status 'Solicitado'", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }  

        private void btnPagarConta_Click(object sender, EventArgs e)
        {
            if (((DataRowView)this.bindingSource1.Current).Row["Status"].ToString() == "2")
            {
                pnlPagamento.Visible = true;
            }
            else
            {
                MessageBox.Show("Só é possível pagar contas no status 'Autorizado'", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void btnSalvarPagamento_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = " UPDATE  Contas_a_Pagar                       " +
                               "    SET  FK_ContaCorrente = @FK_ContaCorrente " +
                               "  WHERE  ID = @ID                             ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_ContaCorrente", mccbBanco.SelectedValue);

                    cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());
                    cmd.ExecuteNonQuery();
                }

                EnviaEmail("P");

                Contabilizacao();

                SetStatus(3);

                pnlPagamento.Visible = false;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }                       
        }      

        private void btnCancelarConta_Click(object sender, EventArgs e)
        {
            if ((((DataRowView)this.bindingSource1.Current).Row["Status"].ToString() == "0") || (((DataRowView)this.bindingSource1.Current).Row["Status"].ToString() == "1")) 
            {
                SetStatus(4);
            }
        }                              
  
        private void SetStatus(int status)
        {
            string id = ((DataRowView)this.bindingSource1.Current).Row["ID"].ToString();
            string nf = ((DataRowView)this.bindingSource1.Current).Row["NF"].ToString();

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = " UPDATE  Contas_a_Pagar   " +
                               "    SET  Status = @Status " +
                               "  WHERE  ID = @ID         ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Status", status);

                    cmd.Parameters.AddWithValue("@ID", id);
                    cmd.ExecuteNonQuery();
                }                

                AtualizaGrid();

                string msg = "";

                if (status == 1)
                {
                    msg = "solicitada com sucesso!";
                }

                if (status == 2)
                {
                    msg = "autorizada com sucesso!";
                }

                if (status == 3)
                {
                    msg = "paga com sucesso!";
                }

                if (status == 4)
                {
                    msg = "cancelada com sucesso!";
                }

                if (status <= 3)
                {
                    MessageBox.Show("Conta " + msg + " E-mail enviado.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);   
                }                               

                LogSistemas.AddLogSistema(id, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("ID: {0}, Nota: {1} " + msg, id, nf));

                statusCadastro = StatusCadastro.None;

                HabilitarDesabilitaControles(false);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }  
        }

        private void EnviaEmail(string caracter_identificador)
        {
            try
            {
                string corpoDoEmail = "";
                string assunto = "";
                string para = "";

                StringBuilder sb = new StringBuilder();

                //SOLICITADO
                if (caracter_identificador == "S")
                {
                    assunto = "Contas a Pagar - Conta SOLICITADA";

                    corpoDoEmail = "  O colaborador <B>" + FrmPrincipal.UsuarioNomeCompleto + "</B> solicitou a autorização para pagamento da Conta <B>" + ((DataRowView)this.bindingSource1.Current).Row["ID"].ToString() + "</B>, referente ao fornecedor <B>" + ((DataRowView)this.bindingSource1.Current).Row["Razao_Social"].ToString() + "</B>, <P> " +
                                    "de descrição <B>" + ((DataRowView)this.bindingSource1.Current).Row["Descricao"].ToString() + "</B>, no valor de <B> R$ " + ((DataRowView)this.bindingSource1.Current).Row["Valor"].ToString() + "</B> com vencimento no dia <B>" + ((DataRowView)this.bindingSource1.Current).Row["Data_Vencimento"].ToString() + "</B>.";                    
                }

                //AUTORIZADO
                if (caracter_identificador == "A")
                {
                    assunto = "Contas a Pagar - Conta AUTORIZADA";

                    corpoDoEmail = " O colaborador <B>" + FrmPrincipal.UsuarioNomeCompleto + "</B> autorizou o pagamento da Conta <B>" + ((DataRowView)this.bindingSource1.Current).Row["ID"].ToString() + "</B>, referente ao fornecedor <B>" + ((DataRowView)this.bindingSource1.Current).Row["Razao_Social"].ToString() + "</B>, <P> " +
                                    "de descrição <B>" + ((DataRowView)this.bindingSource1.Current).Row["Descricao"].ToString() + "</B>, no valor de <B> R$ " + ((DataRowView)this.bindingSource1.Current).Row["Valor"].ToString() + "</B> com vencimento no dia <B>" + ((DataRowView)this.bindingSource1.Current).Row["Data_Vencimento"].ToString() + "</B>.";                    
                }

                //PAGO
                if (caracter_identificador == "P")
                {
                    assunto = "Contas a Pagar - Conta PAGA";

                    corpoDoEmail = " O colaborador <B>" + FrmPrincipal.UsuarioNomeCompleto + "</B> fez o pagamento da Conta <B>" + ((DataRowView)this.bindingSource1.Current).Row["ID"].ToString() + "</B>, referente ao fornecedor <B>" + ((DataRowView)this.bindingSource1.Current).Row["Razao_Social"].ToString() + "</B>, <P> " +
                                   "de descrição <B>" + ((DataRowView)this.bindingSource1.Current).Row["Descricao"].ToString() + "</B>, no valor de <B> R$ " + ((DataRowView)this.bindingSource1.Current).Row["Valor"].ToString() + "</B> com vencimento no dia <B>" + ((DataRowView)this.bindingSource1.Current).Row["Data_Vencimento"].ToString() + "</B>.";                    
                }                

                sb.Append("<BR> Prezado, <BR>");
                sb.Append("<BR>");
                sb.Append(corpoDoEmail);
                sb.Append("<BR><BR>");
                sb.Append("Este e-mail é automático e não necessita de resposta. <BR>");
                sb.Append("<BR><BR>");
                sb.Append("Atenciosamente,<BR><BR>");
                sb.Append("MS2000 - SISTEMA GERENCIAL ADUANEIRO<BR><BR>");

                EmailAuto.incluir("MS2000", assunto, assunto, "MS2000 <auditoria@logistic-ms.com.br>", "financeiro@mslogistica.com.br", FrmPrincipal.Email, "wellington.medeiros@mslogistica.com.br", sb.ToString(), "", 1);                
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnCancelarPagamento_Click(object sender, EventArgs e)
        {
            pnlPagamento.Visible = false;
        }

        private void cbbPesquisarPor_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtPesquisar.Clear();

            //Fornecedor
            if ((int)cbbPesquisarPor.SelectedValue == 0)
            {
                txtPesquisar.MaxLength = 60;
            }

            //NF
            if ((int)cbbPesquisarPor.SelectedValue == 1)
            {
                txtPesquisar.MaxLength = 8;
            }

            //Valor
            if ((int)cbbPesquisarPor.SelectedValue == 2)
            {
                txtPesquisar.MaxLength = 8;
            }

            //Valor Pago
            if ((int)cbbPesquisarPor.SelectedValue == 3)
            {
                txtPesquisar.MaxLength = 8;
            }

            txtPesquisar.Focus();                            
        }

        private void txtPesquisar_TextChanged(object sender, EventArgs e)
        {
            //Fornecedor
            if ((int)cbbPesquisarPor.SelectedValue == 0)
            {
                if (!string.IsNullOrWhiteSpace(txtPesquisar.Text))
                {                    
                    bindingSource1.Filter = "Razao_Social LIKE '" + txtPesquisar.Text + "%'";                    
                }
                else
                {
                    bindingSource1.RemoveFilter();
                }
            }

            //NF
            if ((int)cbbPesquisarPor.SelectedValue == 1)
            {
                if (!string.IsNullOrWhiteSpace(txtPesquisar.Text))
                {
                    bindingSource1.Filter = "Nf = " + txtPesquisar.Text;
                }
                else
                {
                    bindingSource1.RemoveFilter();
                }
            }

            //Valor
            if ((int)cbbPesquisarPor.SelectedValue == 2)
            {
                if (!string.IsNullOrWhiteSpace(txtPesquisar.Text))
                {
                    try
                    {
                        Convert.ToDouble(txtPesquisar.Text);

                        bindingSource1.Filter = "Valor = " + txtPesquisar.Text.Replace(',', '.');
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "Valor inválido", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                else
                {
                    bindingSource1.RemoveFilter();
                }
            }

            //Valor Pago
            if ((int)cbbPesquisarPor.SelectedValue == 3)
            {
                if (!string.IsNullOrWhiteSpace(txtPesquisar.Text))
                {
                    try
                    {
                        Convert.ToDouble(txtPesquisar.Text);

                        bindingSource1.Filter = "Valor_Pago = " + txtPesquisar.Text.Replace(',', '.');
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "Valor inválido", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                else
                {
                    bindingSource1.RemoveFilter();
                }
            }
        }        

        private void Contabilizacao()
        {
            string chave;

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = " INSERT INTO MOVIMENTACAO_CONTAS_CORRENTES   " +
                               "         (Codigo                             " +
                               "         ,Data                               " +
                               "         ,Tipo                               " +                               
                               "         ,Historico                          " +
                               "         ,Valor                              " +
                               "         ,Cliente                            " +
                               "         ,Usuario                            " +
                               "         ,Codigo_ContasAPagar)               " +
                               "       VALUES (                              " +
                               "          @Codigo                            " +
                               "         ,@Data                              " +
                               "         ,@Tipo                              " +                               
                               "         ,@Historico                         " +
                               "         ,@Valor                             " +
                               "         ,@Cliente                           " +
                               "         ,@Usuario                           " +
                               "         ,@Codigo_ContasAPagar)              ";                               

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Codigo"   , mccbBanco.SelectedValue);
                    cmd.Parameters.AddWithValue("@Data"     , DateTime.Now.ToString("dd/MM/yyyy"));
                    cmd.Parameters.AddWithValue("@Tipo"     , "2");
                    cmd.Parameters.AddWithValue("@Historico", ((DataRowView)this.bindingSource1.Current).Row["Descricao"].ToString());
                    cmd.Parameters.AddWithValue("@Valor"    , ((DataRowView)this.bindingSource1.Current).Row["Valor_Pago"].ToString());
                    cmd.Parameters.AddWithValue("@Cliente"  , "0000");
                    cmd.Parameters.AddWithValue("@Usuario"  , FrmPrincipal.UsuarioLogado);
                    cmd.Parameters.AddWithValue("@Codigo_ContasAPagar", ((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());                                        
                    cmd.ExecuteNonQuery();
                }

                chave = RetornaCodigo_Mov(((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());

                Desmembramento(chave);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }   
        }

        private void Desmembramento(string id_contas_a_pagar)
        {           
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = " INSERT INTO NUMERARIOS_PROCESSOS   " +
                               "         (Empresa                   " +   
                               "         ,Filial                    " +   
                               "         ,Processo                  " +   
                               "         ,Numerario                 " +   
                               "         ,Usuario_Financeiro        " +   
                               "         ,Data_Registro             " +   
                               "         ,Valor_Registrado          " +   
                               "         ,Valor_Contabilizado       " +   
                               "         ,Contabilizado             " +   
                               "         ,Usuario_Contablizado      " +   
                               "         ,Conta_Corrente            " +   
                               "         ,Codigo_MOV                " +
                               "         ,Detalhe)                  " +   
                               "       VALUES                       " +
                               "         ('1'                       " +   
                               "         ,'RJO'                     " +   
                               "         ,'FINANC'                  " +   
                               "         ,@Numerario                " +   
                               "         ,@Usuario_Financeiro       " +   
                               "         ,@Data_Registro            " +   
                               "         ,@Valor_Registrado         " +   
                               "         ,@Valor_Contabilizado      " +   
                               "         ,'SIM'                     " +   
                               "         ,@Usuario_Contablizado     " +   
                               "         ,@Conta_Corrente           " +   
                               "         ,@Codigo_MOV               " +
                               "         ,@Detalhe)                 ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Numerario", ((DataRowView)this.bindingSource1.Current).Row["Numerario"].ToString());
                    cmd.Parameters.AddWithValue("@Usuario_Financeiro", FrmPrincipal.UsuarioLogado);
                    cmd.Parameters.AddWithValue("@Data_Registro", DateTime.Now.ToString("dd/MM/yyyy"));
                    cmd.Parameters.AddWithValue("@Valor_Registrado", ((DataRowView)this.bindingSource1.Current).Row["Valor_Pago"].ToString());
                    cmd.Parameters.AddWithValue("@Valor_Contabilizado", ((DataRowView)this.bindingSource1.Current).Row["Valor_Pago"].ToString());                    
                    cmd.Parameters.AddWithValue("@Usuario_Contablizado", FrmPrincipal.UsuarioLogado);
                    cmd.Parameters.AddWithValue("@Conta_Corrente", mccbBanco.SelectedValue);
                    cmd.Parameters.AddWithValue("@Codigo_MOV", id_contas_a_pagar);
                    cmd.Parameters.AddWithValue("@Detalhe", ((DataRowView)this.bindingSource1.Current).Row["Obs"].ToString());                    
                    cmd.ExecuteNonQuery();
                }                
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private string RetornaCodigo_Mov(string ID_ContasAPagar)
        {
            string ID = "";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = " SELECT Codigo_Mov FROM Movimentacao_Contas_Correntes WHERE Codigo_ContasAPagar = @Codigo_ContasAPagar ";
                
                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Codigo_ContasAPagar", ID_ContasAPagar);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                ID = dr["Codigo_Mov"].ToString();
                            }
                        }

                        return ID;
                    }
                }                
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }        
    }
}
