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
    public partial class FrmNotasCreditos : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        public FrmNotasCreditos()
        {
            InitializeComponent();
        }        

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled    = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled   = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled      = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled    = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled  = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnImprimir.Enabled  = (statusCadastro == StatusCadastro.None);
            btnFechar.Enabled    = (statusCadastro == StatusCadastro.None);            

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

            txtNota.Focus();
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);

            txtNota.Focus();
        }
        

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (ValidaCampos() == false) return;

            var processo = new Processo();

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query = " UPDATE  Faturamento_Notas_Credito          " +
                                   "    SET  Nota            = @Nota            " +
                                   "        ,FK_Processo     = @FK_Processo     " +                                   
                                   "        ,Vencimento      = @Vencimento      " +
                                   "        ,Descricao       = @Descricao       " +
                                   "        ,Valor           = @Valor           " +
                                   "        ,Valor_Extenso   = @Valor_Extenso   " +
                                   " WHERE  ID = @ID                            ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Nota", txtNota.Text);
                        cmd.Parameters.AddWithValue("@FK_Processo", processo.RetornaID(txtProcesso.Text).ToString());
                        cmd.Parameters.AddWithValue("@Vencimento", txtVencimento.Text);                        
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@Valor", string.IsNullOrEmpty(txtValor.Text) ? 0 : Convert.ToDouble(txtValor.Text));
                        cmd.Parameters.AddWithValue("@Valor_Extenso", txtValorPorExtenso.Text);
                        cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(((DataRowView)this.bindingSource1.Current).Row["Nota"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Nota: {0}, Processo: {1}", txtNota.Text, txtProcesso.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Faturamento_Notas_Credito                                                   " +
                                   " (  Nota,  FK_Processo,  Vencimento,  Descricao,  Valor,  Valor_Extenso,  Data ) VALUES " +
                                   " ( @Nota, @FK_Processo, @Vencimento, @Descricao, @Valor, @Valor_Extenso, @Data )        ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Nota", txtNota.Text);
                        cmd.Parameters.AddWithValue("@FK_Processo", processo.RetornaID(txtProcesso.Text).ToString());
                        cmd.Parameters.AddWithValue("@Vencimento", txtVencimento.Text);                        
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@Valor", string.IsNullOrEmpty(txtValor.Text) ? 0 : Convert.ToDouble(txtValor.Text));
                        cmd.Parameters.AddWithValue("@Valor_Extenso", txtValorPorExtenso.Text);
                        cmd.Parameters.AddWithValue("@Data", DateTime.Now.ToString());
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(((DataRowView)this.bindingSource1.Current).Row["Nota"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Nota: {0}, Processo: {1}", txtNota.Text, txtProcesso.Text));
                }

                processo = null;

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

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource1.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro ?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query = " DELETE FROM Faturamento_Notas_Credito WHERE ID = @ID ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(((DataRowView)this.bindingSource1.Current).Row["Nota"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Nota: {0}, Processo: {1}", txtNota.Text, txtProcesso.Text));
                    bindingSource1.RemoveCurrent();
                    statusCadastro = StatusCadastro.None;
                    MessageBox.Show("Registro excluído com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    AtualizaGrid();
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

        private DataTable getNotasCreditos()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "  SELECT FNC.ID, FNC.Nota, P.Codigo, FNC.FK_Processo, I.Razao_Social, FNC.Data, FNC.Vencimento, FNC.Descricao, FNC.Valor, FNC.Valor_Extenso, P.importador " +
                           "    FROM Faturamento_Notas_Credito FNC                                                                                                                    " +
                           "         INNER JOIN Processos P ON FNC.FK_Processo = P.ID                                                                                                 " +
                           "         INNER JOIN Importadores I ON P.Importador = I.Codigo                                                                                             " +
                           "ORDER BY FNC.ID DESC                                                                                                                                      ";

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

        private void AtualizaGrid()
        {
            bindingSource1.DataSource = getNotasCreditos();

            dataGridView1.DataSource = bindingSource1;

            bindingSource1.MoveFirst();
        }

        private Boolean ValidaCampos()
        {
            if (string.IsNullOrEmpty(txtNota.Text.Trim()))
            {
                MessageBox.Show("Nota obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtNota.Focus();
                return false;
            }

            if (!txtProcesso.MaskCompleted)
            {
                MessageBox.Show("Processo obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtProcesso.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtVencimento.Text.Trim()))
            {
                MessageBox.Show("Vencimento obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtVencimento.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtValor.Text.Trim()))
            {
                MessageBox.Show("Valor obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtValor.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtValorPorExtenso.Text.Trim()))
            {
                MessageBox.Show("Valor por extenso obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtValorPorExtenso.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtDescricao.Text.Trim()))
            {
                MessageBox.Show("Descrição obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricao.Focus();
                return false;
            }

            return true;
        }

        private void txtPesquisar_TextChanged(object sender, EventArgs e)
        {
            if (txtPesquisar.MaskCompleted)
            {
                var processo = new Processo();

                bindingSource1.Filter = "FK_Processo = '" + processo.RetornaID(txtPesquisar.Text).ToString() + "'";
            }
            else
            {
                bindingSource1.RemoveFilter();
            }

        }

        private void FrmNotasCreditos_Load(object sender, EventArgs e)
        {
            getNotasCreditos();

            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;

            HabilitarDesabilitaControles(false);

            dataGridView1.AutoGenerateColumns = false;

            AtualizaGrid();

            bindingNavigator.BindingSource = bindingSource1;

            txtNota.DataBindings.Add(new Binding("Text", bindingSource1, "Nota", true));
            txtProcesso.DataBindings.Add(new Binding("Text", bindingSource1, "Codigo", true));            
            txtVencimento.DataBindings.Add(new Binding("Text", bindingSource1, "Vencimento", true));
            txtValor.DataBindings.Add(new Binding("Text", bindingSource1, "Valor", true));
            txtValorPorExtenso.DataBindings.Add(new Binding("Text", bindingSource1, "Valor_Extenso", true));
            txtDescricao.DataBindings.Add(new Binding("Text", bindingSource1, "Descricao", true));            
        }

        private void btnImprimir_Click(object sender, EventArgs e)
        {
            if (bindingSource1.Count > 0)
            {
                FrmReportPreview frmReportPreview = new FrmReportPreview();

                frmReportPreview.rptView.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Financeiro.Faturamento.rptNotasCreditos.rdlc";

                List<ReportParameter> parametros = new List<ReportParameter>();

                Importador importador = new Importador().BuscarPorCodigo(((DataRowView)this.bindingSource1.Current).Row["importador"].ToString());

                parametros.Add(new ReportParameter("Nota", txtNota.Text));
                parametros.Add(new ReportParameter("Importador", importador.Razao_Social));
                parametros.Add(new ReportParameter("DataEmissao", DateTime.Now.ToString()));
                parametros.Add(new ReportParameter("Vencimento", txtVencimento.Text));
                parametros.Add(new ReportParameter("Valor", txtValor.Text));
                parametros.Add(new ReportParameter("NomeSacado", importador.Razao_Social));
                parametros.Add(new ReportParameter("Endereco", importador.Endereco + ", " + importador.Numero + ", " + importador.Complemento + " - " + importador.Bairro + " - " + importador.Cidade + " - " + importador.UF));
                parametros.Add(new ReportParameter("CNPJ", (importador.CNPJ_CPF_COMPLETO.MascaraCNPJ())));

                if (importador.Inscricao_Estadual != "")
                {
                    parametros.Add(new ReportParameter("InscricaoEstadual", importador.Inscricao_Estadual));
                }
                else
                {
                    parametros.Add(new ReportParameter("InscricaoEstadual", importador.Inscricao_Municipal));
                }

                parametros.Add(new ReportParameter("Descricao", txtDescricao.Text));
                parametros.Add(new ReportParameter("ValorExtenso", txtValorPorExtenso.Text));

                frmReportPreview.rptView.LocalReport.SetParameters(parametros);

                frmReportPreview.rptView.SetDisplayMode(DisplayMode.PrintLayout);
                frmReportPreview.rptView.ZoomMode = ZoomMode.Percent;
                frmReportPreview.rptView.ZoomPercent = 75;
                frmReportPreview.MdiParent = (FrmPrincipal)this.ParentForm;
                frmReportPreview.Show();
            }                       
        }        
    }
}
