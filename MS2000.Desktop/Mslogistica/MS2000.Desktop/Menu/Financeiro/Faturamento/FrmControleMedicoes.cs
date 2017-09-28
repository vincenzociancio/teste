using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Financeiro.Faturamento
{
    public partial class FrmControleMedicoes : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled    = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled   = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled      = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled    = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled  = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            
            dataGridView1.Enabled = (statusCadastro == StatusCadastro.None);            
            gpbItens.Enabled      = (statusCadastro == StatusCadastro.None); 
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }                              

            VerificaBotoes();
        }

        public FrmControleMedicoes()
        {
            InitializeComponent();
        }

        private void FrmControleMedicoes_Load(object sender, EventArgs e)
        {
            getImportadores();
            getStatus();

            this.dataGridView2.RowsDefaultCellStyle.BackColor = Color.LightCyan;
            this.dataGridView2.AlternatingRowsDefaultCellStyle.BackColor = Color.White;

            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;            
            HabilitarDesabilitaControles(false);

            dataGridView1.AutoGenerateColumns = false;
            dataGridView2.AutoGenerateColumns = false;

            AtualizaGrid();

            bindingNavigator.BindingSource = bindingSource1;

            mccbImportadores.DataBindings.Add(new Binding("SelectedValue", bindingSource1, "Importador_Agrupado", true));
            txtEmbarcacao.DataBindings.Add(new Binding("Text", bindingSource1, "Embarcacao", true));
            txtDataMedicao.DataBindings.Add(new Binding("Text", bindingSource1, "Data_Medicao", true));
            mccbStatus.DataBindings.Add("SelectedValue", bindingSource1, "Cod_Status", true);
        }       

        private DataTable getMedicoes()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "  SELECT CM.ID, CM.Importador_Agrupado, CM.Data_Medicao, CM.Embarcacao, CM.Status AS Cod_Status,                                        " +
                           "         CASE CM.Status WHEN 0 THEN 'Em Andamento' ELSE CASE CM.Status WHEN 1 THEN 'Em Aguardo' ELSE 'Finalizado' END END AS Status,    " +		            
                           "         CM.NFiscal, (SELECT TOP 1 NOME_GRUPO FROM Importadores_Agrupados WHERE Codigo_AGRUPADO = CM.Importador_Agrupado) AS Nome_Grupo " +
                           "    FROM Controle_Medicao CM                                                                                                            " +
                           "   WHERE CM.Status = @Status                                                                                                            " +
                           "ORDER BY CM.ID DESC                                                                                                                     ";


            string status = "";

            if (rbAndamento.Checked)
            {
                status = "0";
            }

            if (rbAguardo.Checked)
            {
                status = "1";
            }

            if (rbFinalizado.Checked)
            {
                status = "2";
            }

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {               
                cmd.Parameters.AddWithValue("@Status", status);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);                    
                    return table;
                }
            }
        }

        private DataTable getItensMedicoes(string fk_medicao)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " SELECT CMI.ID, CMI.FK_Controle, CMI.Processo, I.Razao_Social,                                                                              " +
                           "        ((SELECT ISNULL(SUM(Valor_Registrado),0) FROM Numerarios_Processos WHERE Numerario IN ('HONO','ISS') AND Processo = CMI.Processo) - " +
                           "        (SELECT ISNULL(SUM(Valor),0) FROM Creditos_Processos WHERE Credito IN ('IRRF','CCP') AND Processo = CMI.Processo)) AS Val_Nota      " +
                           "   FROM Controle_Medicao_Itens CMI                                                                                                          " +    
                           "        INNER JOIN Processos P ON CMI.Processo = P.Codigo                                                                                   " +
                           "        INNER JOIN Importadores I ON P.Importador = I.Codigo                                                                                " +
                           "  WHERE CMI.FK_Controle = @FK_Controle                                                                                                      " +
                           " ORDER BY CMI.Processo                                                                                                                      ";  

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@FK_Controle", fk_medicao);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private string getSomaTotalMedicao(string fk_medicao)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " SELECT ((SELECT ISNULL(SUM(Valor_Registrado),0) FROM Numerarios_Processos WHERE Numerario IN ('HONO','ISS') AND Processo = CMI.Processo) - " +
                           "        (SELECT ISNULL(SUM(Valor),0) FROM Creditos_Processos WHERE Credito IN ('IRRF','CCP') AND Processo = CMI.Processo)) AS Val_Nota      " +
                           "   FROM Controle_Medicao_Itens CMI                                                                                                          " +
                           "  WHERE CMI.FK_Controle = @FK_Controle                                                                                                      ";                           

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@FK_Controle", fk_medicao);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    double SomaMedicao = 0;

                    while (reader.Read())
                    {
                        SomaMedicao= SomaMedicao + (double)reader["Val_Nota"];
                    }

                    return SomaMedicao.ToString();                 
                }
            }
        }

        private void getImportadores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "  SELECT I.Codigo, IA.Nome_Grupo, IA.Codigo_AGRUPADO, I.Razao_Social          " +
                           "    FROM Importadores I                                                       " +
                           "         INNER JOIN Importadores_Agrupados IA ON I.Codigo = IA.Codigo         " +
                           "	     INNER JOIN Importadores_Parametros IP ON I.Codigo = IP.fk_importador " +
                           "   WHERE IP.medicao_para_faturamento = 1                                      " +
                           "ORDER BY IA.Nome_Grupo                                                        ";

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
                
                mccbImportadores.DataSource = table;
                mccbImportadores.DisplayMember = "Razao_Social";
                mccbImportadores.ValueMember   = "Codigo_Agrupado";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void AtualizaGrid()
        {
            bindingSource1.DataSource = getMedicoes();

            dataGridView1.DataSource = bindingSource1;

            bindingSource1.MoveFirst();

            if (bindingSource1.Count == 0)
            {
                AtualizaGridItens("0");
            }            
        }

        private void AtualizaGridItens(string FK_Controle)
        {
            dataGridView2.AutoGenerateColumns = false;

            bindingSource2.DataSource = getItensMedicoes(FK_Controle);

            dataGridView2.DataSource = bindingSource2;

            if (bindingSource2.Count > 0)
            {
                lblTotalMedicao.Text = "Total Previsto R$ " + getSomaTotalMedicao(((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());
            }
            else
            {
                lblTotalMedicao.Text = "-------------------";
            }
            
        }

        private void dataGridView1_CellEnter(object sender, DataGridViewCellEventArgs e)
        {
            AtualizaGridItens(((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());
        }

        private Boolean ValidaCampos()
        {
            if (string.IsNullOrEmpty(mccbImportadores.Text.Trim()))
            {
                MessageBox.Show("Importador obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mccbImportadores.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtEmbarcacao.Text.Trim()))
            {
                MessageBox.Show("Embarcação obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtEmbarcacao.Focus();
                return false;
            }
            
            if (!txtDataMedicao.MaskCompleted)
            {
                MessageBox.Show("Data de Medição obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDataMedicao.Focus();
                return false;
            }

            return true;
        }

        private void getStatus()
        {
            Dictionary<int, string> itensStatus = new Dictionary<int, string>();

            itensStatus.Add(0, "em Andamento");
            itensStatus.Add(1, "em Aguardo");
            itensStatus.Add(2, "Finalizado");

            mccbStatus.DisplayMember = "Value";
            mccbStatus.ValueMember = "Key";
            mccbStatus.DataSource = null;
            mccbStatus.DataSource = new BindingSource(itensStatus, null);
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void rbAguardo_CheckedChanged(object sender, EventArgs e)
        {
            AtualizaGrid();
        }

        private void rbAndamento_CheckedChanged(object sender, EventArgs e)
        {
            AtualizaGrid();
        }

        private void rbFinalizado_CheckedChanged(object sender, EventArgs e)
        {
            AtualizaGrid();
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            // Somente medições com status "em Andamento" ou "em Aguardo"
            if ((((DataRowView)this.bindingSource1.Current).Row["Cod_Status"].ToString() != "2"))
            {
                statusCadastro = StatusCadastro.Editar;
                HabilitarDesabilitaControles(true);                

                mccbImportadores.Focus();   
            }                       
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource1.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);                        
            mccbStatus.Enabled = false;
            mccbStatus.SelectedValue = 0;

            mccbImportadores.Focus();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource1.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);            
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            // Somente medições com status "em Andamento" ou "em Aguardo"
            if ((bindingSource1.Count > 0) && (((DataRowView)this.bindingSource1.Current).Row["Cod_Status"].ToString() != "2"))
            {
                if (MessageBox.Show("Tem certeza que deseja excluir o registro ?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                {
                    try
                    {
                        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                        string query = " DELETE FROM Controle_Medicao WHERE ID = @ID ";

                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());
                            cmd.ExecuteNonQuery();
                        }

                        LogSistemas.AddLogSistema(((DataRowView)this.bindingSource1.Current).Row["ID"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Embarcação: {0}", (((DataRowView)this.bindingSource1.Current).Row["Embarcacao"].ToString())));
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
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (ValidaCampos() == false) return;

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query = " UPDATE Controle_Medicao SET Importador_Agrupado = @Importador_Agrupado, Data_Medicao = @Data_Medicao, Embarcacao = @Embarcacao, Status = @Status WHERE Id = @Id ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {                         
                        cmd.Parameters.AddWithValue("@Importador_Agrupado", mccbImportadores.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@Data_Medicao", txtDataMedicao.Text);
                        cmd.Parameters.AddWithValue("@Embarcacao", txtEmbarcacao.Text);
                        cmd.Parameters.AddWithValue("@Status", mccbStatus.SelectedValue.ToString());                        
                        cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(txtDataMedicao.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("ID: {0}, de Embarcação: {1} para Embarcação {2}, Data Medição: {3} ", ((DataRowView)this.bindingSource1.Current).Row["ID"].ToString(), ((DataRowView)this.bindingSource1.Current).Row["Embarcacao"].ToString(), txtEmbarcacao.Text, txtDataMedicao.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Controle_Medicao                                        " +
                                   " ( Importador_Agrupado,  Data_Medicao,  Embarcacao,  Status) VALUES " +
                                   " (@Importador_Agrupado, @Data_Medicao, @Embarcacao, @Status)        ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Importador_Agrupado", mccbImportadores.SelectedValue);
                        cmd.Parameters.AddWithValue("@Data_Medicao", txtDataMedicao.Text);
                        cmd.Parameters.AddWithValue("@Embarcacao", txtEmbarcacao.Text);
                        cmd.Parameters.AddWithValue("@Status", mccbStatus.SelectedValue);
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(txtDataMedicao.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Embarcação: {0}, Data de Medição: {1}: ", txtEmbarcacao.Text, txtDataMedicao.Text));
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

        private void btnIncluiProcesso_Click(object sender, EventArgs e)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " INSERT INTO Controle_Medicao_Itens " +
                           "  ( FK_Controle,  Processo) VALUES  " +
                           "  (@FK_Controle, @Processo)         ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@FK_Controle", ((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());
                cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);                
                cmd.ExecuteNonQuery();
            }

            txtProcesso.Clear();

            AtualizaGridItens(((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());                       
        }

        private bool ProcessoIncluidoNaMedicao()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " SELECT Processo FROM Controle_Medicao_Itens WHERE Processo = @Processo ";                        

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    return reader.HasRows;
                }
            }
        }

        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            if (txtProcesso.MaskCompleted)
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = " SELECT NFS.NFiscal                                                                       " +
                               "   FROM Notas_Fiscais_Servicos NFS LEFT JOIN Notas_Fiscais_Servicos_Processos NFSP        " +
                               "     ON NFS.NFiscal = NFSP.NFISCAL                                                        " +
                               "  WHERE NFS.Cancelada = 0 AND ((NFS.Processo = @Processo) OR (NFSP.Processo = @Processo)) ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            reader.Read();

                            MessageBox.Show("Processo já faturado na RPS: " + reader["NFiscal"].ToString() + ", não será possível adicioná-lo.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            return;
                        }
                    }
                }

                query = " SELECT P.IMPORTADOR, I.RAZAO_SOCIAL, IA.Codigo_AGRUPADO             " +
                        "   FROM PROCESSOS P INNER JOIN IMPORTADORES I                        " +
                        "     ON P.IMPORTADOR = I.CODIGO INNER JOIN Importadores_Agrupados IA " +
                        "     ON I.Codigo = IA.Codigo                                         " +
                        "  WHERE P.CODIGO = @Processo                                         ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            reader.Read();

                            btnIncluiProcesso.Enabled = false;

                            if (reader["Codigo_AGRUPADO"].ToString() == ((DataRowView)this.bindingSource1.Current).Row["Importador_Agrupado"].ToString())
                            {
                                btnIncluiProcesso.Enabled = true;

                                if (ProcessoIncluidoNaMedicao())
                                {
                                    MessageBox.Show("Processo já incluído em Medição, favor verificar.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                                }
                            }
                            else
                            {
                                MessageBox.Show("Processo não existe ou não pertence ao importador informado na medição, favor verificar.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                                btnIncluiProcesso.Enabled = false;
                            }
                        }
                    }
                }
            }
        }

        private void dataGridView2_KeyDown(object sender, KeyEventArgs e)
        {
            //46 = TECLA DEL
            if ((e.KeyValue == 46) && (bindingSource2.Count > 0))
            {
                if (MessageBox.Show("Confirma a exclusão do processo da medição ?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                {
                    try
                    {
                        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                        string query = " DELETE FROM Controle_Medicao_Itens WHERE Processo = @Processo ";

                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Processo", ((DataRowView)this.bindingSource2.Current).Row["Processo"].ToString());
                            cmd.ExecuteNonQuery();
                        }                        

                        bindingSource2.RemoveCurrent();

                        AtualizaGridItens(((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());                       
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
        }        
    }
}
