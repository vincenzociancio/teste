using Microsoft.Reporting.WinForms;
using MS2000.Desktop.Classes;
using MS2000.Desktop.Componentes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Financeiro.Faturamento
{
    public partial class FrmRecibos : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        public FrmRecibos()
        {
            InitializeComponent();
        }

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled   = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled  = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled     = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled   = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnImprimir.Enabled = (statusCadastro == StatusCadastro.None);
            btnFechar.Enabled   = (statusCadastro == StatusCadastro.None);

            gpbDados.Enabled      = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            gpbPesquisar.Enabled  = (statusCadastro == StatusCadastro.None);
            gpbItens.Enabled      = (statusCadastro == StatusCadastro.None);
            dataGridView1.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in gpbDados.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource1.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);

            txtRecibo.Focus();
        }



        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);

            txtRecibo.Focus();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource1.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (ValidaCampos() == false) return;            

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query = " UPDATE  Faturamento_Recibos                      " +
                                   "    SET  Recibo             = @Recibo             " +  
                                   "        ,Processo           = @Processo           " +
                                   "        ,Fk_Numerario       = @Fk_Numerario       " +
                                   "        ,Valor_Total        = @Valor_Total        " +
                                   "        ,Percentual_11      = @Percentual_11      " +                                   
                                   "        ,Percentual_Extenso = @Percentual_Extenso " +
                                   " WHERE  ID = @ID                                  ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Recibo", txtRecibo.Text);
                        cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                        cmd.Parameters.AddWithValue("@Fk_Numerario", mccbTipoDebito.SelectedValue);                        
                        cmd.Parameters.AddWithValue("@Valor_Total", string.IsNullOrEmpty(txtValor.Text) ? 0 : Convert.ToDouble(txtValor.Text));
                        cmd.Parameters.AddWithValue("@Percentual_11", string.IsNullOrEmpty(txtPercentualValor.Text) ? 0 : Convert.ToDouble(txtPercentualValor.Text));
                        cmd.Parameters.AddWithValue("@Percentual_Extenso", txtPercentualPorExtenso.Text);
                        cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(((DataRowView)this.bindingSource1.Current).Row["Recibo"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Recibo: {0}, Processo: {1}", ((DataRowView)this.bindingSource1.Current).Row["Recibo"].ToString(), txtProcesso.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Faturamento_Recibos                                                                        " +
                                   " (  Recibo,  Processo,  Data,  Fk_Numerario,  Valor_Total,  Percentual_11,  Percentual_Extenso) VALUES " +
                                   " ( @Recibo, @Processo, @Data, @Fk_Numerario, @Valor_Total, @Percentual_11, @Percentual_Extenso)        ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {                       
                        cmd.Parameters.AddWithValue("@Recibo", txtRecibo.Text);
                        cmd.Parameters.AddWithValue("@Data", DateTime.Now.ToString());
                        cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                        cmd.Parameters.AddWithValue("@Fk_Numerario", mccbTipoDebito.SelectedValue);
                        cmd.Parameters.AddWithValue("@Valor_Total", string.IsNullOrEmpty(txtValor.Text) ? 0 : Convert.ToDouble(txtValor.Text));
                        cmd.Parameters.AddWithValue("@Percentual_11", string.IsNullOrEmpty(txtPercentualValor.Text) ? 0 : Convert.ToDouble(txtPercentualValor.Text));
                        cmd.Parameters.AddWithValue("@Percentual_Extenso", txtPercentualPorExtenso.Text);                        
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(((DataRowView)this.bindingSource1.Current).Row["Recibo"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Recibo: {0}, Processo: {1}", ((DataRowView)this.bindingSource1.Current).Row["Recibo"].ToString(), txtProcesso.Text));
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

                HabilitarDesabilitaControles(false);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro ?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query = " DELETE FROM Faturamento_Recibos WHERE ID = @ID ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(((DataRowView)this.bindingSource1.Current).Row["Recibo"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Recibo: {0}, Processo: {1}", ((DataRowView)this.bindingSource1.Current).Row["Recibo"].ToString(), txtProcesso.Text));
                    
                    bindingSource1.RemoveCurrent();                    

                    AtualizaGrid();

                    MessageBox.Show("Registro excluído com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);                    

                    statusCadastro = StatusCadastro.None;                    
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

        private Boolean ValidaCampos()
        {
            if (string.IsNullOrEmpty(txtRecibo.Text.Trim()))
            {
                MessageBox.Show("Recibo obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtRecibo.Focus();
                return false;
            }            
            
            if (!txtProcesso.MaskCompleted)
            {
                MessageBox.Show("Processo obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtProcesso.Focus();
                return false;
            }            

            if (string.IsNullOrEmpty(mccbTipoDebito.Text.Trim()))
            {
                MessageBox.Show("Débito obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mccbTipoDebito.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtValor.Text.Trim()))
            {
                MessageBox.Show("Valor obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtValor.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtPercentualValor.Text.Trim()))
            {
                MessageBox.Show("Percentual obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtPercentualValor.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtPercentualPorExtenso.Text.Trim()))
            {
                MessageBox.Show("Valor por extenso obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtPercentualPorExtenso.Focus();
                return false;
            }            

            return true;
        }    

        private void FrmRecibos_Load(object sender, EventArgs e)
        {
            getTiposDebitos();            
            
            bindingNavigator.DeleteItem = null;
            dataGridView1.AutoGenerateColumns = false;            

            statusCadastro = StatusCadastro.None;

            HabilitarDesabilitaControles(false);            

            AtualizaGrid();

            bindingNavigator.BindingSource = bindingSource1;

            txtRecibo.DataBindings.Add(new Binding("Text", bindingSource1, "Recibo", true));
            txtProcesso.DataBindings.Add(new Binding("Text", bindingSource1, "Processo", true));
            mccbTipoDebito.DataBindings.Add(new Binding("SelectedValue", bindingSource1, "FK_Numerario", true));
            txtValor.DataBindings.Add(new Binding("Text", bindingSource1, "Valor_Total", true));
            txtPercentualValor.DataBindings.Add(new Binding("Text", bindingSource1, "Percentual_11", true));
            txtPercentualPorExtenso.DataBindings.Add(new Binding("Text", bindingSource1, "Percentual_Extenso", true));            
        }

        private void AtualizaGrid()
        {
            bindingSource1.DataSource = getRecibos();

            dataGridView1.DataSource = bindingSource1;

            bindingSource1.MoveFirst();
        }

        private void txtPesquisar_TextChanged(object sender, EventArgs e)
        {
            if (txtPesquisar.MaskCompleted)
            {
                var processo = new Processo();

                bindingSource1.Filter = "Processo = '" + txtPesquisar.Text + "'";
            }
            else
            {
                bindingSource1.RemoveFilter();
            }
        }

        private DataTable getRecibos()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "  SELECT FR.ID ,FR.Recibo, FR.Data, FR.Processo, FR.FK_Numerario, TN.Descricao, FR.Valor_Total, FR.Percentual_11, FR.Percentual_Extenso, I.Razao_Social " +
                           "   FROM Faturamento_Recibos FR                                    " +
                           "        INNER JOIN Processos P ON FR.Processo = P.Codigo          " +
                           " 	    INNER JOIN Importadores I ON P.Importador = I.Codigo      " +
                           " 	    INNER JOIN Tipos_Numerario TN ON FR.FK_Numerario = TN.ID  " +
                           "ORDER BY FR.ID                                                    ";                   

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

        private void getTiposDebitos()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " SELECT ID, Codigo, Descricao FROM Tipos_Numerario WHERE Plano_contas = 'NUM' ORDER BY Descricao ";

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

                mccbTipoDebito.DataSource    = table;
                mccbTipoDebito.DisplayMember = "Descricao";
                mccbTipoDebito.ValueMember   = "ID";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnImprimir_Click(object sender, EventArgs e)
        {
            if (bindingSource1.Count > 0)
            {
                FrmReportPreview frmReportPreview = new FrmReportPreview();

                frmReportPreview.rptView.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Financeiro.Faturamento.rptRecibo.rdlc";

                List<ReportParameter> parametros = new List<ReportParameter>();          
      
                string Corpo_Recibo = "Recebemos da empresa " + ((DataRowView)this.bindingSource1.Current).Row["Razao_Social"].ToString() + ", o valor de R$ " +
                                      Convert.ToDecimal(txtPercentualValor.Text).CasasDecimais(2) + " (" + txtPercentualPorExtenso.Text + ") referente a 0,11% " + mccbTipoDebito.Text + " no " + 
                                      "valor de R$ " + Convert.ToDecimal(txtValor.Text).CasasDecimais(2) + " processo MS n° " + txtProcesso.Text;                

                parametros.Add(new ReportParameter("Recibo", txtRecibo.Text));
                parametros.Add(new ReportParameter("CorpoRecibo", Corpo_Recibo));
                parametros.Add(new ReportParameter("Data", "Rio de Janeiro, " + DateTime.Now.ToString("dd") + " de " + DateTime.Now.ToString("MMMM") + " de " + DateTime.Now.ToString("yyyy")));                               

                frmReportPreview.rptView.LocalReport.SetParameters(parametros);

                frmReportPreview.rptView.SetDisplayMode(DisplayMode.PrintLayout);
                frmReportPreview.rptView.ZoomMode = ZoomMode.Percent;
                frmReportPreview.rptView.ZoomPercent = 75;
                frmReportPreview.MdiParent = (FrmPrincipal)this.ParentForm;
                frmReportPreview.Show();
            }                               
        }

        private void txtPercentualValor_Enter(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtValor.Text.Trim()))
            {
                txtPercentualValor.Text = (Convert.ToDouble(txtValor.Text)*(0.11/100)).ToString();
            }                
        }             
    }
}
