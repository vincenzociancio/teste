using MS2000.Desktop.Classes;
using MS2000.Desktop.Componentes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using Microsoft.Reporting.WinForms;

namespace MS2000.Desktop.Menu.Financeiro.Faturamento
{
    public partial class FrmVoucher : MS2000.Desktop.Componentes.MSForm01
    {                 
        double SomatorioSaldo;

        public class Voucher
        {
            public string Processo { get; set; }
            public string TipoProcesso { get; set; }
            public string CodigoCliente { get; set; } 
            public string LocalInventario { get; set; } 
            public double? saldo { get; set; }                        
        }


        public FrmVoucher()
        {
            InitializeComponent();
        }

        protected StatusCadastro statusCadastro;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled   = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled  = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled     = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled   = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);            
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in (panelControl.Controls))
            {
                controle.Enabled = bValue;                
            }            

            VerificaBotoes();
        }        

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
            txtPesquisar.Enabled = false;

            txtVoucher.Focus();
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
            txtPesquisar.Enabled = false;

            txtVoucher.Focus();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
            txtPesquisar.Enabled = true;
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (ValidaCampos() == false) return;

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = " UPDATE Voucher SET Descricao = @Descricao, Data = @Data, Recebimento = @Recebimento, Receptor = @Receptor WHERE Id = @Id ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Descricao", txtVoucher.Text);
                        cmd.Parameters.AddWithValue("@Data", (txtData.Text == "  /  /") ? DBNull.Value : (object)txtData.Text);                        
                        cmd.Parameters.AddWithValue("@Recebimento", (txtRecebimentoData.Text == "  /  /") ? DBNull.Value : (object)txtRecebimentoData.Text);
                        cmd.Parameters.AddWithValue("@Receptor", txtRecebimentoReceptor.Text);
                        cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource.Current).Row["ID"].ToString());
                        cmd.ExecuteNonQuery();
                    }
                    
                    LogSistemas.AddLogSistema(((DataRowView)this.bindingSource.Current).Row["ID"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("ID: {0}, de Descrição: {1} para Descrição: {2} ", ((DataRowView)this.bindingSource.Current).Row["ID"].ToString(), ((DataRowView)this.bindingSource.Current).Row["Descricao"].ToString(), txtVoucher.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Voucher                               " +
                                   " ( Descricao, Data, Recebimento, Receptor) VALUES " +
                                   " (@Descricao,@Data,@Recebimento,@Receptor)        ";                                                                                   

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Descricao", txtVoucher.Text);
                        cmd.Parameters.AddWithValue("@Data", (txtData.Text == "  /  /") ? DBNull.Value : (object)txtData.Text);
                        cmd.Parameters.AddWithValue("@Recebimento", (txtRecebimentoData.Text == "  /  /") ? DBNull.Value : (object)txtRecebimentoData.Text);
                        cmd.Parameters.AddWithValue("@Receptor", txtRecebimentoReceptor.Text);
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(txtVoucher.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Descrição: {0}, Data: {1}: ", txtVoucher.Text, txtData.Text));
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

                    string query = " DELETE FROM Voucher_Itens WHERE FK_Voucher = @FK_Voucher ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@FK_Voucher", ((DataRowView)this.bindingSource.Current).Row["ID"].ToString());
                        cmd.ExecuteNonQuery();                        
                    }

                    query = " DELETE FROM Voucher WHERE ID = @ID ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource.Current).Row["ID"].ToString());
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(((DataRowView)this.bindingSource.Current).Row["ID"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("ID: {0}, Descrição: {1}: ", ((DataRowView)this.bindingSource.Current).Row["ID"].ToString(), ((DataRowView)this.bindingSource.Current).Row["Descricao"].ToString()));
                    bindingSource.RemoveCurrent();
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

        private void FrmParametrosContabilizacao_Load(object sender, EventArgs e)
        {
            getVouchers();            

            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;

            AtualizaGrid();

            bindingNavigator.BindingSource = bindingSource;

            txtVoucher.DataBindings.Add(new Binding("Text", bindingSource, "Descricao", true));
            txtData.DataBindings.Add(new Binding("Text", bindingSource, "Data", true));

            txtRecebimentoData.DataBindings.Add(new Binding("Text", bindingSource, "Recebimento", true));
            txtRecebimentoReceptor.DataBindings.Add(new Binding("Text", bindingSource, "Receptor", true));
        }

        private DataTable getVouchers()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "  SELECT ID, Descricao, Data, Recebimento, Receptor " +
                           "    FROM Voucher                                    " +
                           "ORDER BY ID DESC                                    ";   

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

        private DataTable getItensVouchers(string ID_Voucher)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "  SELECT VTI.FK_Voucher, VTI.ID, P.Codigo as Processo, TP.DESCRICAO AS Tipo_processo, P.Codigo_Cliente, LI.Descricao as Local, VTI.Saldo  "
                         + "    FROM Voucher_Itens VTI                                                                                                                "
                         + "         INNER JOIN Processos           P ON VTI.FK_processo = P.ID                                                                       "
                         + "         INNER JOIN Tipos_de_Processos TP ON P.Tipo = TP.CODIGO                                                                           "
                         + "          LEFT JOIN Locais_Inventario  LI ON P.Importador = LI.Importador and P.Contrato = LI.Contrato and P.Local_Inventario = LI.Local  "
                         + "   WHERE VTI.FK_Voucher = @FK_Voucher                                                                                                     "
                         + "ORDER BY VTI.ID DESC                                                                                                                      "; 

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@FK_Voucher", ID_Voucher);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private Boolean ValidaItem()
        {
            if (bindingSource.Count == 0)
            {                
                return false;
            }
        
            if (!txtProcesso.MaskCompleted)
            {
                MessageBox.Show("Processo obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtProcesso.Focus();
                return false;
            }                        

            return true;
        }

        private Boolean ValidaCampos()
        {
            if (string.IsNullOrEmpty(txtVoucher.Text.Trim()))
            {
                MessageBox.Show("Descrição obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtVoucher.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtData.Text.Trim()))
            {
                MessageBox.Show("Data obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtData.Focus();
                return false;
            }

            return true;
        }

        private void AtualizaGrid()
        {
            bindingSource.DataSource = getVouchers();

            dataGridView.DataSource = bindingSource;

            bindingSource.MoveFirst();
        }

        private void AtualizaGridItens(string Voucher)
        {
            dataGridView1.AutoGenerateColumns = false;
            
            bindingSource1.DataSource = getItensVouchers(Voucher);

            dataGridView1.DataSource = bindingSource1; 
        }

        private void dataGridView_CellEnter(object sender, DataGridViewCellEventArgs e)
        {
            AtualizaGridItens(((DataRowView)this.bindingSource.Current).Row["ID"].ToString());                       
        }

        private void txtPesquisar_TextChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtPesquisar.Text))
            {
                bindingSource.RemoveFilter();
            }
            else
            {
                bindingSource.Filter = "Descricao like '%" + txtPesquisar.Text + "%' ";
            }
        }

        private void btnIncluir_Click(object sender, EventArgs e)
        {
            if (ValidaItem() == false) return;            
            
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = " INSERT INTO Voucher_Itens ( FK_Voucher, FK_processo, Saldo )                          " +
                               "                           (SELECT @FK_Voucher,                                        " +
                               "                                   P.ID,                                               ";


                if (chkComplementar.Checked)
                {
                    query = query + " ((SELECT ISNULL(SUM(VALOR_REGISTRADO),0) FROM NUMERARIOS_PROCESSOS WHERE Despesa_Cobrada = 0 AND PROCESSO = P.Codigo AND REG > (SELECT REG FROM Numerarios_Processos WHERE Numerario = 'ISS' AND Processo = P.Codigo))*-1) AS SALDO ";
                }
                else
                {
                    query = query + " (((SELECT ISNULL(SUM(VALOR_REGISTRADO),0) FROM NUMERARIOS_PROCESSOS WHERE PROCESSO = P.CODIGO) - (SELECT ISNULL(SUM(Valor),0) FROM CREDITOS_PROCESSOS WHERE PROCESSO = P.CODIGO))*-1) AS SALDO ";                    
                }

                query = query + " FROM Processos P WHERE P.Codigo = @Processo) ";                                                       
                                                                                                                            
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_Voucher", ((DataRowView)this.bindingSource.Current).Row["ID"].ToString());                                                                                            
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                    cmd.ExecuteNonQuery();
                }

                if (chkComplementar.Checked)
                {
                    LogSistemas.AddLogSistema((((DataRowView)this.bindingSource.Current).Row["Descricao"].ToString()), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Complementar do Processo {0} incluído no voucher {1} ", txtProcesso.Text, ((DataRowView)this.bindingSource.Current).Row["Descricao"].ToString()));                    
                }
                else
                {
                    LogSistemas.AddLogSistema((((DataRowView)this.bindingSource.Current).Row["Descricao"].ToString()), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Processo {0} incluído no voucher {1} ", txtProcesso.Text, ((DataRowView)this.bindingSource.Current).Row["Descricao"].ToString()));                    
                }
                                
                MessageBox.Show("Processo incluído com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);

                AtualizaGrid();

                lblImportador.Text = "";
                txtProcesso.Clear();
                txtProcesso.Focus();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }                                                  
        }

        private void dataGridView_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dataGridView.Columns[e.ColumnIndex].Name == "PDF")
            {
                txtDestinatario.Clear();

                pnlDestinatario.Visible = true;

                txtDestinatario.Focus();
            }                       
        }        

        private List<Voucher> getDadosVoucher(string FK_Voucher)
        {            

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string sql = string.Empty;

            sql = "SELECT P.Codigo as Processo, TP.DESCRICAO AS Tipo_processo, P.Codigo_Cliente, LI.Descricao as local, VTI.Saldo " +
                  "  FROM Voucher_Itens VTI  " +
                  "       INNER JOIN Processos P on VTI.FK_processo = P.ID  " +
                  "       INNER JOIN Tipos_de_Processos TP on P.Tipo = TP.CODIGO  " +
                  "       LEFT JOIN Locais_Inventario LI on P.Importador = LI.Importador and P.Contrato = LI.Contrato and P.Local_Inventario = LI.Local " +
                  " WHERE VTI.FK_Voucher = @FK_Voucher ";                             


            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                cmd.Parameters.AddWithValue("@FK_Voucher", FK_Voucher);

                try
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        List<Voucher> lista = new List<Voucher>();

                        SomatorioSaldo = 0;
                        
                        while (reader.Read())
                        {
                            lista.Add(
                                new Voucher
                                {
                                    Processo = (string)reader["Processo"],
                                    TipoProcesso = (string)reader["Tipo_processo"],
                                    CodigoCliente = (string)reader["Codigo_Cliente"],
                                    LocalInventario = (string)reader["local"],
                                    saldo = (reader["Saldo"] == DBNull.Value ? (double?)null : (double?)reader["Saldo"]),                                    
                                });

                            SomatorioSaldo = SomatorioSaldo + (reader["Saldo"] == DBNull.Value ? 0 : (double)reader["Saldo"]);

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

        private void dataGridView1_KeyDown(object sender, KeyEventArgs e)
        {
            //46 = TECLA DEL
            if ((e.KeyValue == 46) && (bindingSource1.Count > 0))
            {
                if (MessageBox.Show("Confirma a exclusão do item do voucher ?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                {
                    try
                    {
                        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                        string query = " DELETE FROM Voucher_Itens WHERE ID = @ID ";

                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());
                            cmd.ExecuteNonQuery();
                        }

                        LogSistemas.AddLogSistema(((DataRowView)this.bindingSource.Current).Row["ID"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Processo: {0}, Saldo: {1}: ", ((DataRowView)this.bindingSource1.Current).Row["Processo"].ToString(), ((DataRowView)this.bindingSource1.Current).Row["Saldo"].ToString()));
                        
                        bindingSource1.RemoveCurrent();                                                

                        AtualizaGrid();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }                
            }
        }

        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            if (txtProcesso.MaskCompleted)
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = "  SELECT I.Razao_Social                                                   " +
                               "    FROM Processos P INNER JOIN Importadores I ON P.Importador = I.Codigo " +
                               "   WHERE P.Codigo = @Codigo                                               ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Codigo", txtProcesso.Text);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                lblImportador.Text = reader["Razao_Social"].ToString();

                                chkComplementar.Focus();
                            }                                                        
                        }                                                     
                    }                    
                }
            }
            else
            {
                lblImportador.Text = "";
            }
        }

        private void btnDestinatarioSair_Click(object sender, EventArgs e)
        {
            pnlDestinatario.Visible = false;
        }

        private void btnDestinatarioOK_Click(object sender, EventArgs e)
        {
            pnlDestinatario.Visible = false;

            FrmReportPreview frmReportPreview = new FrmReportPreview();                 
            
            frmReportPreview.rptView.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Financeiro.Faturamento.rptVoucher.rdlc";            

            ReportDataSource dataset = new ReportDataSource("dsVoucher", getDadosVoucher((((DataRowView)this.bindingSource.Current).Row["ID"].ToString())));

            frmReportPreview.rptView.LocalReport.DataSources.Clear();
            frmReportPreview.rptView.LocalReport.DataSources.Add(dataset);

            string nome_voucher = (((DataRowView)this.bindingSource.Current).Row["Descricao"].ToString());

            List<ReportParameter> parametros = new List<ReportParameter>();

            parametros.Add(new ReportParameter("Destinatario", txtDestinatario.Text));
            parametros.Add(new ReportParameter("DescricaoVoucher", nome_voucher));
            parametros.Add(new ReportParameter("Data", DateTime.Now.ToString("dd/MM/yyyy")));
            parametros.Add(new ReportParameter("NomeEmissor", FrmPrincipal.UsuarioNomeCompleto));
            parametros.Add(new ReportParameter("SomaSaldo", SomatorioSaldo.ToString()));
            
            frmReportPreview.rptView.LocalReport.SetParameters(parametros);

            frmReportPreview.rptView.SetDisplayMode(DisplayMode.PrintLayout);
            frmReportPreview.rptView.ZoomMode = ZoomMode.Percent;
            frmReportPreview.rptView.ZoomPercent = 75;
            frmReportPreview.MdiParent = (FrmPrincipal)this.ParentForm;                     
            frmReportPreview.Show();
        }
    }
}
