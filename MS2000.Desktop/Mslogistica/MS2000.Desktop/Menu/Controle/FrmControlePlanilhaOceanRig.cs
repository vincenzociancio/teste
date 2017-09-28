using Microsoft.Office.Interop.Excel;
using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Windows.Forms;
using System.Reflection;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmControlePlanilhaOceanRig : MS2000.Desktop.Componentes.MSForm01
    {
        public FrmControlePlanilhaOceanRig()
        {
            InitializeComponent();
        }

        List<PlanilhaNumerariosOceanRig> dados = new List<PlanilhaNumerariosOceanRig>();

        bool gera_infos_registro;

        class PlanilhaNumerariosOceanRig
        {
            public string rig_ref { get; set; }
            public string ms_ref { get; set; }
            public string manifest_ref { get; set; }
            public string rig { get; set; }
            public string regime { get; set; }            
            public double valor_cif { get; set; }
            public string awb_bl { get; set; }
            public double ii { get; set; }
            public double ipi { get; set; }
            public double pis { get; set; }
            public double cofins { get; set; }
            public double tx_sis { get; set; }
            public double soma_impostos { get; set; }
            public double icms { get; set; }
            public double fecp { get; set; }
            public double icms_fecp { get; set; }
            public double storage { get; set; }
            public double other_taxes { get; set; }
            public double registrado_ii { get; set; }
            public double registrado_ipi { get; set; }
            public double registrado_pis { get; set; }
            public double registrado_cofins { get; set; }
            public double registrado_tx_sis { get; set; }            
            public double registrado_icms_fecp { get; set; }
            public double registrado_storage { get; set; }
            public double registrado_other_taxes { get; set; }
            public string siscomex_protocol { get; set; }
            public string di_number { get; set; }
        }

        protected StatusCadastro statusCadastro;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);

            dataGridView1.Enabled = (statusCadastro == StatusCadastro.None);
            mccbImportadores.Enabled = (statusCadastro == StatusCadastro.Novo);
            gpbItens.Enabled = (statusCadastro == StatusCadastro.None);

            ckbPrevisaoEnviada.Enabled = false;
            ckbRegistroEnviado.Enabled = false;
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        private void btnIncluiProcesso_Click(object sender, EventArgs e)
        {            
            if (ProcessoJaIncluido(txtProcesso.Text))
            {
                AlteraStatusProcessosRegistrados(txtProcesso.Text);                  
            }            

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = "INSERT INTO Controle_Planilha_Numerarios_Itens " +
                                " (FK_Planilha                               " +
                                " ,FK_Processo                               " +
                                " ,II                                        " +
                                " ,IPI                                       " +
                                " ,PIS                                       " +
                                " ,COFINS                                    " +
                                " ,ICMS                                      " +
                                " ,Taxa_Siscomex                             " +
                                " ,Armazenagem                               " +
                                " ,Outras_Taxas)                             " +

                                " SELECT @FK_Planilha,                                                                  " +
                                "        REF_MS,                                                                        " +
                                "        CAST(REPLACE(II,',','.') AS FLOAT),                                            " +
                                "        CAST(REPLACE(IPI,',','.') AS FLOAT),                                           " +    
                                "        CAST(REPLACE(pis_pasep,',','.') AS FLOAT),                                     " +
                                "        CAST(REPLACE(COFINS,',','.') AS FLOAT),                                        " +
                                "        (CAST(REPLACE(ICMS,',','.') AS FLOAT)+CAST(REPLACE(ICMS_1,',','.') AS FLOAT)), " +
                                "        CAST(REPLACE(tx_siscomex,',','.') AS FLOAT),                                   " +
                                "        CAST(REPLACE(@Armazenagem,',','.') AS FLOAT),                                  " +
                                "        CAST(REPLACE(@Outras_Taxas,',','.') AS FLOAT)                                  " +
                                "   FROM Autorizacao_Registros                                                          " +
                                "  WHERE REF_MS = @REF_MS                                                               ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_Planilha", ((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());
                    cmd.Parameters.AddWithValue("@REF_MS", txtProcesso.Text);
                    cmd.Parameters.AddWithValue("@Armazenagem", string.IsNullOrEmpty(txtVlrArmazenagens.Text) ? "0" : txtVlrArmazenagens.Text);
                    cmd.Parameters.AddWithValue("@Outras_Taxas", string.IsNullOrEmpty(txtVlrOutros.Text) ? "0" : txtVlrOutros.Text);
                    cmd.ExecuteNonQuery();
                }

                txtProcesso.Clear();

                AtualizaGridItens(((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro na inclusão do processo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void FrmControlePlanilhaOceanRig_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;

            getImportadores();

            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            dataGridView1.AutoGenerateColumns = false;
            dataGridView2.AutoGenerateColumns = false;

            AtualizaGrid();

            bindingNavigator.BindingSource = bindingSource1;

            mccbImportadores.DataBindings.Add(new Binding("SelectedValue", bindingSource1, "FK_Importador", true));
            txtPlanilha.DataBindings.Add(new Binding("Text", bindingSource1, "Planilha", true));
            txtData.DataBindings.Add(new Binding("Text", bindingSource1, "Data", true));            
        }

        private System.Data.DataTable getPlanilha()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "  SELECT CPO.ID, CPO.FK_Importador, I.Razao_Social, CPO.Planilha, CPO.Data, CASE CPO.Status WHEN 0 THEN 'Em Andamento' ELSE CASE CPO.Status WHEN 1 THEN 'Pronto para Envio' ELSE CASE CPO.Status WHEN 2 THEN 'Enviada Previsão' ELSE 'Enviado Registro' END END END AS Status_Desc, CPO.Status " +
                           "    FROM Controle_Planilha_Numerarios CPO                          " +
                           "         INNER JOIN Importadores I on CPO.FK_Importador = I.Codigo " +
                           "ORDER BY CPO.ID DESC                                               ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    System.Data.DataTable table = new System.Data.DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private System.Data.DataTable getItensPlanilha(string fk_planilha)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " SELECT P.Codigo_Cliente, P.Codigo, pvg.Local_Inventario, pvg.Tipo_Declaracao, pvg.Pos, p.Valor_CIF, ISNULL(pvg.Doc_Carga,pvg.Numeromanifesto) AS DOC, P.DI_Protocolo, P.NR_DECLARACAO_IMP, " +
                           "        ROUND(CPOI.II,2) AS II,                               " +
                           "        ROUND(CPOI.IPI,2) AS IPI,                             " +  
                           "        ROUND(CPOI.PIS,2) AS PIS,                             " +               
                           "        ROUND(CPOI.COFINS,2) AS COFINS,                       " +      
                           "        ROUND(CPOI.Taxa_Siscomex,2) AS TAXA_SISCOMEX,         " +           
                           "        ROUND(CPOI.ICMS,2) AS ICMS,	   	   	                  " +
                           "        ROUND(CPOI.Armazenagem,2) AS ARMAZENAGEM,             " +
                           "        ROUND(CPOI.Outras_Taxas,2) AS Outras_Taxas            " +
                           "   FROM Processos P                                                                    " +
                           "        LEFT JOIN Processos_Visao_Geral PVG ON P.Codigo = PVG.Processo                 " +
                           "        LEFT JOIN Controle_Planilha_Numerarios_Itens CPOI ON P.Codigo = CPOI.FK_Processo " +
                           "  WHERE CPOI.FK_Planilha = @FK_Planilha                                                ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@FK_Planilha", fk_planilha);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    System.Data.DataTable table = new System.Data.DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void AtualizaGrid()
        {
            bindingSource1.DataSource = getPlanilha();

            dataGridView1.DataSource = bindingSource1;

            bindingSource1.MoveFirst();
        }

        private void AtualizaGridItens(string FK_Controle)
        {
            dataGridView2.AutoGenerateColumns = false;

            bindingSource2.DataSource = getItensPlanilha(FK_Controle);

            dataGridView2.DataSource = bindingSource2;
        }

        private Boolean ValidaCampos()
        {
            if (string.IsNullOrEmpty(mccbImportadores.Text.Trim()))
            {
                MessageBox.Show("Importador obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mccbImportadores.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtPlanilha.Text.Trim()))
            {
                MessageBox.Show("Planilha obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtPlanilha.Focus();
                return false;
            }

            if (!txtData.MaskCompleted)
            {
                MessageBox.Show("Data obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtData.Focus();
                return false;
            }

            return true;
        }

        private Boolean ValidaProcesso()
        {
            if (ProcessoJaIncluido(txtProcesso.Text))
            {
                MessageBox.Show("Processo já incluído em outra planilha, favor verificar!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtProcesso.Focus();
                return false;
            }

            return true;
        }

        public bool ProcessoJaIncluido(string processo)
        {
            string query = " SELECT FK_Processo FROM Controle_Planilha_Numerarios_Itens WHERE FK_Processo = @FK_Processo ";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_Processo", processo);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        return dr.HasRows;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        private void AlteraStatusProcessosRegistrados(string FK_Processo)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = " UPDATE Controle_Planilha_Numerarios_Itens SET Registro_Enviado = 2 WHERE FK_Processo = @FK_Processo ";                               

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_Processo", FK_Processo);
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception)
            {

                throw;
            }
        } 

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource1.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);

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
            if ((bindingSource1.Count > 0) && ((int)((DataRowView)this.bindingSource1.Current).Row["Status"] <= 1))
            {
                if (MessageBox.Show("Tem certeza que deseja excluir o registro ?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                {
                    try
                    {
                        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                        string query = " DELETE FROM Controle_Planilha_Numerarios WHERE ID = @ID; DELETE FROM Controle_Planilha_Numerarios_Itens WHERE FK_Planilha = @ID ";

                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());
                            cmd.ExecuteNonQuery();
                        }                        

                        LogSistemas.AddLogSistema("Planilha excluída", FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Planilha: {0}, Data: {1}", (((DataRowView)this.bindingSource1.Current).Row["Planilha"].ToString()), (((DataRowView)this.bindingSource1.Current).Row["Data"].ToString())));

                        bindingSource1.RemoveCurrent();

                        MessageBox.Show("Registro excluído com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);

                        statusCadastro = StatusCadastro.None;

                        AtualizaGrid();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
            else
            {
                MessageBox.Show("Planilha já enviada não pode ser excluída.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
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

                    string query = " UPDATE Controle_Planilha_Numerarios SET Planilha = @Planilha, Data = @Data, Status = @Status WHERE Id = @Id ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {                        
                        cmd.Parameters.AddWithValue("@Planilha", txtPlanilha.Text);
                        cmd.Parameters.AddWithValue("@Data", txtData.Text);

                        if (((int)((DataRowView)this.bindingSource1.Current).Row["Status"] == 2) || ((int)((DataRowView)this.bindingSource1.Current).Row["Status"] == 3))
                        {
                            cmd.Parameters.AddWithValue("@Status", (int)((DataRowView)this.bindingSource1.Current).Row["Status"]);
                        }
                        else
                        {
                            cmd.Parameters.AddWithValue("@Status", ckbProntapEnvio.Checked ? 1 : 0);                            
                        }                       

                        cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema("Planilha alterada", FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("ID: {0}, de Planilha: {1} para Planilha {2}, Data: {3} ", ((DataRowView)this.bindingSource1.Current).Row["ID"].ToString(), ((DataRowView)this.bindingSource1.Current).Row["Planilha"].ToString(), txtPlanilha.Text, txtData.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query = "INSERT INTO Controle_Planilha_Numerarios   " +
                                   " ( FK_Importador,  Planilha,  Data) VALUES " +
                                   " (@FK_Importador, @Planilha, @Data)        ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@FK_Importador", mccbImportadores.SelectedValue);
                        cmd.Parameters.AddWithValue("@Planilha", txtPlanilha.Text);
                        cmd.Parameters.AddWithValue("@Data", txtData.Text);
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema("Planilha incluída", FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Planilha:{0}, Data:{1} ", txtPlanilha.Text, txtData.Text));
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

        private void btnEditar_Click(object sender, EventArgs e)
        {
            if (!ckbPrevisaoEnviada.Checked) 
            {
                statusCadastro = StatusCadastro.Editar;

                HabilitarDesabilitaControles(true);
                
                ckbProntapEnvio.Enabled = (!ckbPrevisaoEnviada.Checked);                

                txtPlanilha.Focus();
            }
            else
            {
                if (FrmPrincipal.UsuarioLogado == "ODILMA")
                {
                    statusCadastro = StatusCadastro.Editar;

                    HabilitarDesabilitaControles(true);

                    ckbProntapEnvio.Enabled = (!ckbPrevisaoEnviada.Checked);

                    txtPlanilha.Focus();
                }
                else
                {
                    MessageBox.Show("Planilha já enviada não pode ser editada.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);                        
                }                
            }                       
        }

        private void btnGerar_Click(object sender, EventArgs e)
        {
            if (dataGridView2.RowCount > 0)
            {
                try
                {                    
                    if (MessageBox.Show("Gerar somente previsão ? (Sim para Previsão, Não para somente Registrados)", "Gerar Planilha", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                    {
                        gera_infos_registro = false;
                    }
                    else
                    {
                        gera_infos_registro = true;
                    }
         
                    ExportarDataGridViewExcel();

                    MessageBox.Show("Planilha gerada com sucesso em 'C:\\ms2000\\Planilhas_Ms2000\\'", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception)
                {
                    MessageBox.Show("Erro na geração da planilha.", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);                    
                }                
            }                                                        
        }

        private void getDadosPlanilha(string fk_planilha)
        {
            dados.Clear();

            string sql = string.Empty;

            sql = " SELECT P.Codigo_Cliente, P.Codigo, pvg.Local_Inventario, pvg.Tipo_Declaracao, pvg.Pos, p.Valor_CIF, ISNULL(pvg.Doc_Carga,pvg.Numeromanifesto) AS DOC, P.DI_Protocolo, P.NR_DECLARACAO_IMP, " +
                  "        ROUND(CPOI.II,2) AS II,                               " +
                  "        ROUND(CPOI.IPI,2) AS IPI,                             " +
                  "        ROUND(CPOI.PIS,2) AS PIS,                             " +
                  "        ROUND(CPOI.COFINS,2) AS COFINS,                       " +
                  "        ROUND(CPOI.Taxa_Siscomex,2) AS TAXA_SISCOMEX,         " +
                  "        ROUND(CPOI.ICMS,2) AS ICMS,	   	   	                 " +
                  "        ROUND(CPOI.Armazenagem,2) AS ARMAZENAGEM,             " +
                  "        ROUND(CPOI.Outras_Taxas,2) AS OUTRAS_TAXAS,           " +
                  "        (SELECT ISNULL(ROUND(SUM(Valor_Registrado),2),0) FROM Numerarios_Processos WHERE Numerario = 'II' AND Processo = P.CODIGO) AS REGISTRADO_II,                                                                                                                                          " + 
				  "        (SELECT ISNULL(ROUND(SUM(Valor_Registrado),2),0) FROM Numerarios_Processos WHERE Numerario = 'IPI' AND Processo = P.CODIGO) AS REGISTRADO_IPI,                                                                                                                                        " + 
				  "		   (SELECT ISNULL(ROUND(SUM(Valor_Registrado),2),0) FROM Numerarios_Processos WHERE Numerario = 'PP' AND Processo = P.CODIGO) AS REGISTRADO_PIS,                                                                                                                                         " + 
				  "		   (SELECT ISNULL(ROUND(SUM(Valor_Registrado),2),0) FROM Numerarios_Processos WHERE Numerario = 'CF' AND Processo = P.CODIGO) AS REGISTRADO_COFINS,                                                                                                                                      " +    
				  "		   (SELECT ISNULL(ROUND(SUM(Valor_Registrado),2),0) FROM Numerarios_Processos WHERE Numerario = 'TAXA' AND Processo = P.CODIGO) AS REGISTRADO_TAXA_SISCOMEX,						  						                                                                             " +        
				  "		   (SELECT ISNULL(ROUND(SUM(Valor_Registrado),2),0) FROM Numerarios_Processos WHERE Numerario = 'ICMF' AND Processo = P.CODIGO) AS REGISTRADO_ICMS,						  						                                                                                         " +    
				  "		   (SELECT ISNULL(ROUND(SUM(Valor_Registrado),2),0) FROM Numerarios_Processos WHERE Numerario IN ('AA','AAC','AE','AEJU','ARM','ARM.','ARMA','ARMB','ARMF','ARMM','ARMP','ARMS','ARMU','ARNI','ARSP','ASEP','AT','ect','SEPB','TMC') AND Processo = P.CODIGO) AS REGISTRADO_ARMAZENAGEM, " +
                  "		   (SELECT ISNULL(ROUND(SUM(Valor_Registrado),2),0) FROM Numerarios_Processos WHERE Numerario = 'DESC' AND Processo = P.CODIGO) AS REGISTRADO_OUTRAS_TAXAS						  						  						  						                                 " +    
                  "   FROM Processos P                                                                      " +
                  "        LEFT JOIN Processos_Visao_Geral PVG ON P.Codigo = PVG.Processo                   " +
                  "        LEFT JOIN Controle_Planilha_Numerarios_Itens CPOI ON P.Codigo = CPOI.FK_Processo   " +
                  "  WHERE CPOI.FK_Planilha = @FK_Planilha                                                  ";

            if (gera_infos_registro)
            {
                sql = sql + "  AND (P.DT_REGISTRO_DI <> '')";
            }

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                cmd.CommandTimeout = 9999;

                cmd.Parameters.AddWithValue("@FK_Planilha", fk_planilha);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {                    
                    while (reader.Read())
                    {
                        dados.Add(new PlanilhaNumerariosOceanRig
                        {
                            rig_ref = reader["Codigo_Cliente"].ToString(),
                            ms_ref = reader["Codigo"].ToString(),
                            manifest_ref = reader["Codigo_Cliente"].ToString(),
                            rig = reader["Local_Inventario"].ToString(),
                            regime = reader["Tipo_Declaracao"].ToString(),                            
                            valor_cif = Convert.ToDouble(reader["valor_cif"].ToString()),
                            awb_bl = reader["DOC"].ToString(),
                            ii = Convert.ToDouble(reader["ii"].ToString()),
                            ipi = Convert.ToDouble(reader["ipi"].ToString()),
                            pis = Convert.ToDouble(reader["pis"].ToString()),
                            cofins = Convert.ToDouble(reader["cofins"].ToString()),
                            tx_sis = Convert.ToDouble(reader["TAXA_SISCOMEX"].ToString()),
                            soma_impostos = Convert.ToDouble(reader["ii"].ToString()) + Convert.ToDouble(reader["ipi"].ToString()) + Convert.ToDouble(reader["pis"].ToString()) + Convert.ToDouble(reader["cofins"].ToString()) + Convert.ToDouble(reader["TAXA_SISCOMEX"].ToString()),
                            icms = Convert.ToDouble(reader["icms"].ToString()),
                            storage = Convert.ToDouble(reader["ARMAZENAGEM"].ToString()),
                            other_taxes = Convert.ToDouble(reader["OUTRAS_TAXAS"].ToString()),
                            registrado_ii = Convert.ToDouble(reader["REGISTRADO_II"].ToString()),
                            registrado_ipi = Convert.ToDouble(reader["REGISTRADO_IPI"].ToString()),
                            registrado_pis = Convert.ToDouble(reader["REGISTRADO_PIS"].ToString()),
                            registrado_cofins = Convert.ToDouble(reader["REGISTRADO_COFINS"].ToString()),
                            registrado_tx_sis = Convert.ToDouble(reader["REGISTRADO_TAXA_SISCOMEX"].ToString()),
                            registrado_icms_fecp = Convert.ToDouble(reader["REGISTRADO_ICMS"].ToString()),
                            registrado_storage = Convert.ToDouble(reader["REGISTRADO_ARMAZENAGEM"].ToString()),
                            registrado_other_taxes = Convert.ToDouble(reader["REGISTRADO_OUTRAS_TAXAS"].ToString()),

                            siscomex_protocol = reader["DI_Protocolo"].ToString(),
                            di_number = reader["NR_DECLARACAO_IMP"].ToString(),
                        });
                    }
                }
            }
        }

        private void ExportarDataGridViewExcel()
        {
            int u = 1;

            u++;

            string pathDestino = @"C:\MS2000\Planilhas_Ms2000\";            

            if (!Directory.Exists(pathDestino))
            {
                Directory.CreateDirectory(pathDestino);
            }            

            Microsoft.Office.Interop.Excel.Application app = null;
            Workbook workbook = null;
            Worksheet oSheet = null;
            Range workSheet_range = null;

            app = new Microsoft.Office.Interop.Excel.Application();
            workbook = app.Workbooks.Add();

            app.DisplayAlerts = false;                
            app.Visible = true;
            
            oSheet = null;
            oSheet = (Worksheet)workbook.Sheets[1];
            oSheet.Name = "SUMMARY";
            oSheet.Tab.Color = Color.FromArgb(255, 192, 0);

            const string PATH_IMG = @"c:\ms2000\logoms.jpg";
            oSheet.Shapes.AddPicture(PATH_IMG, Microsoft.Office.Core.MsoTriState.msoFalse, Microsoft.Office.Core.MsoTriState.msoCTrue, 5, 5, 140, 40);

            //Logotipo
            oSheet.get_Range("A1", "A4").Merge(Type.Missing);
            workSheet_range = oSheet.get_Range("A1", "A4");            
            workSheet_range.VerticalAlignment = 2;
            workSheet_range.Font.Size = 14;
            workSheet_range.Font.Bold = true;
            workSheet_range.Interior.Color = Color.White;

            //Importador
            oSheet.get_Range("B2", "O2").Merge(Type.Missing);
            workSheet_range = oSheet.get_Range("B2", "O2");
            workSheet_range.Value2 = mccbImportadores.Text;
            workSheet_range.VerticalAlignment = 2;
            workSheet_range.Font.Size = 11;
            workSheet_range.Font.Bold = true;
            workSheet_range.Interior.Color = Color.White;
            //---

            //Titulo
            oSheet.get_Range("B3", "W3").Merge(Type.Missing);
            workSheet_range = oSheet.get_Range("B3", "W3");
            workSheet_range.Value2 = txtPlanilha.Text;
            workSheet_range.VerticalAlignment = 2;
            workSheet_range.Font.Size = 10;            
            workSheet_range.Interior.Color = Color.White;
            //---            

            //
            oSheet.get_Range("B4", "B4").Merge(Type.Missing);
            workSheet_range = oSheet.get_Range("B4", "B4");
            workSheet_range.Value2 = txtData.Text;
            workSheet_range.VerticalAlignment = 2;
            workSheet_range.Font.Size = 11;
            workSheet_range.Font.Bold = true;
            workSheet_range.Interior.Color = Color.White;
            //---                        

            //Linha 5 - Título Campos            

            if (gera_infos_registro)
            {
                oSheet.get_Range("A5", "AC5").Borders.Color = Color.White.ToArgb();
                oSheet.get_Range("A5", "AC5").Font.Color = Color.White;
                oSheet.get_Range("A5", "AC5").Font.Size = 10;
                oSheet.get_Range("A5", "AC5").Font.Bold = true;
                oSheet.get_Range("A5", "AC5").ColumnWidth = 30;
                oSheet.get_Range("A5", "AC5").HorizontalAlignment = XlHAlign.xlHAlignCenter;
            }
            else
            {                
                oSheet.get_Range("A5", "U5").Borders.Color = Color.White.ToArgb();
                oSheet.get_Range("A5", "U5").Font.Color = Color.White;
                oSheet.get_Range("A5", "U5").Font.Size = 10;
                oSheet.get_Range("A5", "U5").Font.Bold = true;
                oSheet.get_Range("A5", "U5").ColumnWidth = 30;
                oSheet.get_Range("A5", "U5").HorizontalAlignment = XlHAlign.xlHAlignCenter;
            }            
            
            oSheet.get_Range("A5", "I5").Interior.Color = Color.FromArgb(22, 54, 92);                        
            oSheet.get_Range("A5", "I5").Merge(Type.Missing);                        
            workSheet_range = oSheet.get_Range("A5", "I5");
            workSheet_range.Value2 = "SHIPMENTS DETAILS";            
            
            oSheet.get_Range("J5", "O5").Interior.Color = Color.FromArgb(54, 96, 146);
            oSheet.get_Range("J5", "O5").Merge(Type.Missing);
            workSheet_range = oSheet.get_Range("J5", "P5");
            workSheet_range.Value2 = "FEDERAL DUTIES + SISCOMEX USAGE FEE";
            
            oSheet.get_Range("P5", "P5").Interior.Color = Color.FromArgb(83, 141, 213);
            workSheet_range = oSheet.get_Range("P5", "P5");
            workSheet_range.Value2 = "STATE DUTY";
            
            oSheet.get_Range("Q5", "R5").Interior.Color = Color.FromArgb(83, 141, 213);
            oSheet.get_Range("Q5", "R5").Merge(Type.Missing);
            workSheet_range = oSheet.get_Range("Q5", "R5");
            workSheet_range.Value2 = "OTHER TAXES";

            oSheet.get_Range("S5", "U5").Interior.Color = Color.FromArgb(83, 141, 213);
            oSheet.get_Range("S5", "U5").Merge(Type.Missing);
            workSheet_range = oSheet.get_Range("S5", "U5");
            workSheet_range.Value2 = "";

            if (gera_infos_registro)
            {
                oSheet.get_Range("V5", "AC5").Interior.Color = Color.FromArgb(54, 96, 146);
                oSheet.get_Range("V5", "AC5").Merge(Type.Missing);
                workSheet_range = oSheet.get_Range("V5", "AC5");
                workSheet_range.Value2 = "REGISTERED VALUES";

                oSheet.get_Range("A6", "AC6").Borders.Color = Color.White.ToArgb();
                oSheet.get_Range("A6", "AC6").Font.Color = Color.White;
                oSheet.get_Range("A6", "AC6").HorizontalAlignment = XlHAlign.xlHAlignCenter;
                oSheet.get_Range("A6", "AC6").Font.Size = 6;
                oSheet.get_Range("A6", "AC6").Font.Bold = true;
                oSheet.get_Range("A6", "AC6").Font.Color = Color.White;
            }
            else
            {                
                oSheet.get_Range("A6", "U6").Borders.Color = Color.White.ToArgb();
                oSheet.get_Range("A6", "U6").Font.Color = Color.White;
                oSheet.get_Range("A6", "U6").HorizontalAlignment = XlHAlign.xlHAlignCenter;
                oSheet.get_Range("A6", "U6").Font.Size = 6;
                oSheet.get_Range("A6", "U6").Font.Bold = true;
                oSheet.get_Range("A6", "U6").Font.Color = Color.White;
            }           

            //-------------------------------------------------------            

            // SHIPMENTS DETAILS
            oSheet.Cells[6, 1] = "RIG.:";
            oSheet.Cells[6, 2] = "MS REF.:";
            oSheet.Cells[6, 3] = "MANIFEST REF.:";
            oSheet.Cells[6, 4] = "RIG";
            oSheet.Cells[6, 5] = "REGIME DE IMPORTAÇÃO";
            oSheet.Cells[6, 6] = "POS";
            oSheet.Cells[6, 7] = "RATEIO";
            oSheet.Cells[6, 8] = "VALOR CIF";
            oSheet.Cells[6, 9] = "AWB/B/L";            
            oSheet.get_Range("A6", "I6").Interior.Color = Color.FromArgb(22, 54, 92);                        

            // FEDERAL DUTIES + SISCOMEX USAGE FEE
            oSheet.Cells[6, 10] = "II R$";
            oSheet.Cells[6, 11] = "IPI R$";
            oSheet.Cells[6, 12] = "PIS R$";
            oSheet.Cells[6, 13] = "COFINS R$";
            oSheet.Cells[6, 14] = "TX. SISC. R$";
            oSheet.Cells[6, 15] = "SOMA IMPOSTOS";            
            oSheet.get_Range("J6", "O6").Interior.Color = Color.FromArgb(54, 96, 146);            

            // STATE DUTY
            oSheet.Cells[6, 16] = "ICMS R$";                        
            oSheet.get_Range("P6", "P6").Interior.Color = Color.FromArgb(83, 141, 213);

            oSheet.Cells[6, 17] = "STORAGE R$";
            oSheet.Cells[6, 18] = "OTHER R$";                        
            oSheet.get_Range("Q6", "R6").Interior.Color = Color.FromArgb(83, 141, 213);

            //APPORTIONMENT
            oSheet.Cells[6, 19] = "SISCOMEX PROTOCOL";
            oSheet.Cells[6, 20] = "DI NUMBER";
            oSheet.Cells[6, 21] = "PERCENTAGE";            
            oSheet.get_Range("S6", "U6").Interior.Color = Color.FromArgb(83, 141, 213);

            if (gera_infos_registro)
            {
                //REGISTERED VALUES 
                oSheet.Cells[6, 22] = "II R$";
                oSheet.Cells[6, 23] = "IPI R$";
                oSheet.Cells[6, 24] = "PIS R$";
                oSheet.Cells[6, 25] = "COFINS R$";
                oSheet.Cells[6, 26] = "TX. SISC. R$";
                oSheet.Cells[6, 27] = "ICMS R$";
                oSheet.Cells[6, 28] = "STORAGE R$";
                oSheet.Cells[6, 29] = "OTHER R$";
                oSheet.get_Range("V6", "AC6").Interior.Color = Color.FromArgb(54, 96, 146);                            
            }
            

            //Preenchendo planilha
            getDadosPlanilha(((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());

            int i = 7;

            foreach (var item in dados)
            {
                oSheet.Cells[i, 1]  = item.rig_ref;
                oSheet.Cells[i, 2]  = item.ms_ref;
                oSheet.Cells[i, 3]  = "";
                oSheet.Cells[i, 4]  = item.rig;
                oSheet.Cells[i, 5]  = item.regime;
                oSheet.Cells[i, 6]  = RetornaPOS(item.ms_ref);
                oSheet.Cells[i, 7]  = RetornaRATEIO(item.ms_ref);
                oSheet.Cells[i, 8]  = item.valor_cif;
                oSheet.Cells[i, 9]  = item.awb_bl;
                oSheet.Cells[i, 10] = item.ii;
                oSheet.Cells[i, 11] = item.ipi;
                oSheet.Cells[i, 12] = item.pis;
                oSheet.Cells[i, 13] = item.cofins;
                oSheet.Cells[i, 14] = item.tx_sis;
                oSheet.Cells[i, 15] = item.soma_impostos;
                oSheet.Cells[i, 16] = item.icms;
                oSheet.Cells[i, 17] = item.storage;
                oSheet.Cells[i, 18] = item.other_taxes;
                oSheet.Cells[i, 19] = item.siscomex_protocol;                                
                oSheet.Cells[i, 20] = item.di_number;
                oSheet.Cells[i, 21] = "";

                if (gera_infos_registro)
                {
                    oSheet.Cells[i, 22] = item.registrado_ii;
                    oSheet.Cells[i, 23] = item.registrado_ipi;
                    oSheet.Cells[i, 24] = item.registrado_pis;
                    oSheet.Cells[i, 25] = item.registrado_cofins;
                    oSheet.Cells[i, 26] = item.registrado_other_taxes;
                    oSheet.Cells[i, 27] = item.registrado_icms_fecp;
                    oSheet.Cells[i, 28] = item.registrado_storage;
                    oSheet.Cells[i, 29] = item.other_taxes;

                    oSheet.get_Range("V6", "AC6").Interior.Color = Color.FromArgb(54, 96, 146);
                }                                                          

                i++;
            }

            for (int z = 7; z < i; z++)
            {
                if ( gera_infos_registro)
                {
                    oSheet.get_Range("A" + z.ToString(), "AC" + z.ToString()).Font.Color = Color.Black;
                    oSheet.get_Range("A" + z.ToString(), "AC" + z.ToString()).Borders.Color = Color.White.ToArgb();
                    oSheet.get_Range("A" + z.ToString(), "AC" + z.ToString()).Interior.Color = Color.FromArgb(220, 230, 241);
                    oSheet.get_Range("A" + z.ToString(), "AC" + z.ToString()).Font.Size = 8;

                    oSheet.get_Range("B" + z.ToString(), "AC" + z.ToString()).ColumnWidth = 20;

                    oSheet.get_Range("V" + z.ToString(), "AC" + z.ToString()).NumberFormatLocal = "#.##0,00;-#.##0,00";                
                }
                else
                {
                    oSheet.get_Range("A" + z.ToString(), "U" + z.ToString()).Font.Color = Color.Black;
                    oSheet.get_Range("A" + z.ToString(), "U" + z.ToString()).Borders.Color = Color.White.ToArgb();
                    oSheet.get_Range("A" + z.ToString(), "U" + z.ToString()).Interior.Color = Color.FromArgb(220, 230, 241);
                    oSheet.get_Range("A" + z.ToString(), "U" + z.ToString()).Font.Size = 8;

                    oSheet.get_Range("B" + z.ToString(), "U" + z.ToString()).ColumnWidth = 20;
                }
                
                oSheet.get_Range("A" + z.ToString(), "A" + z.ToString()).ColumnWidth  = 30;
                
                oSheet.get_Range("A" + z.ToString(), "I" + z.ToString()).HorizontalAlignment = XlHAlign.xlHAlignCenter;

                oSheet.get_Range("A" + z.ToString(), "F" + z.ToString()).NumberFormatLocal  = "@";                
                oSheet.get_Range("H" + z.ToString(), "H" + z.ToString()).NumberFormatLocal  = "#.##0,00;-#.##0,00";                
                oSheet.get_Range("I" + z.ToString(), "I" + z.ToString()).NumberFormatLocal  = "0";                
                oSheet.get_Range("J" + z.ToString(), "R" + z.ToString()).NumberFormatLocal  = "#.##0,00;-#.##0,00";                
            }                                
            
            oSheet.Cells[i, 15] = "=SUM(O7:O" + (i - 1).ToString() + ")";               
            oSheet.Cells[i, 16] = "=SUM(P7:P" + (i - 1).ToString() + ")";

            if (gera_infos_registro)
            {
                oSheet.Cells[i, 22] = "=SUM(V7:V" + (i - 1).ToString() + ")";
                oSheet.Cells[i, 23] = "=SUM(W7:W" + (i - 1).ToString() + ")";
                oSheet.Cells[i, 24] = "=SUM(X7:X" + (i - 1).ToString() + ")";
                oSheet.Cells[i, 25] = "=SUM(Y7:Y" + (i - 1).ToString() + ")";
                oSheet.Cells[i, 26] = "=SUM(Z7:Z" + (i - 1).ToString() + ")";
                oSheet.Cells[i, 27] = "=SUM(AA7:AA" + (i - 1).ToString() + ")";
                oSheet.Cells[i, 28] = "=SUM(AB7:AB" + (i - 1).ToString() + ")";
                oSheet.Cells[i, 29] = "=SUM(AC7:AC" + (i - 1).ToString() + ")";     
            }            
                
            //oSheet.Columns.AutoFit();
            oSheet.Cells[i, 10] = "TOTALS";                        
            oSheet.get_Range("J" + i.ToString(), "N" + i.ToString()).Interior.Color = Color.FromArgb(54, 96, 146);
            oSheet.get_Range("J" + i.ToString(), "N" + i.ToString()).Font.Color     = Color.White;
            oSheet.get_Range("J" + i.ToString(), "N" + i.ToString()).Font.Bold      = true;                
            oSheet.get_Range("J" + i.ToString(), "N" + i.ToString()).Merge(Type.Missing);

            oSheet.get_Range("O" + i.ToString(), "O" + i.ToString()).Interior.Color = Color.FromArgb(54, 96, 146);
            oSheet.get_Range("O" + i.ToString(), "O" + i.ToString()).Font.Color = Color.White;
            oSheet.get_Range("O" + i.ToString(), "O" + i.ToString()).Font.Bold = true;           
            oSheet.get_Range("O" + i.ToString(), "O" + i.ToString()).NumberFormatLocal = "#.##0,00;-#.##0,00";
            
            oSheet.get_Range("P" + i.ToString(), "P" + i.ToString()).Interior.Color = Color.FromArgb(83, 141, 213);
            oSheet.get_Range("P" + i.ToString(), "P" + i.ToString()).Font.Color     = Color.White;
            oSheet.get_Range("P" + i.ToString(), "P" + i.ToString()).Font.Bold      = true;            
            oSheet.get_Range("P" + i.ToString(), "P" + i.ToString()).NumberFormatLocal = "#.##0,00;-#.##0,00";

            if (gera_infos_registro)
            {
                oSheet.get_Range("V" + i.ToString(), "AC" + i.ToString()).Interior.Color = Color.FromArgb(54, 96, 146);
                oSheet.get_Range("V" + i.ToString(), "AC" + i.ToString()).Font.Color = Color.White;
                oSheet.get_Range("V" + i.ToString(), "AC" + i.ToString()).Font.Bold = true;
                oSheet.get_Range("V" + i.ToString(), "AC" + i.ToString()).NumberFormatLocal = "#.##0,00;-#.##0,00";               
            }

            string nome_plan;

            if (gera_infos_registro)
            {
                nome_plan = "Planilha_Numerarios_Reg_";
            }
            else
            {
                nome_plan = "Planilha_Numerarios_Prev_";
            }

            workbook.SaveAs(pathDestino + nome_plan + txtData.Text.Replace('/','_').ToString() + ".xls", Microsoft.Office.Interop.Excel.XlFileFormat.xlWorkbookNormal,
                                                       Missing.Value,
                                                       Missing.Value,
                                                       Missing.Value,
                                                       Missing.Value,
                                                       Microsoft.Office.Interop.Excel.XlSaveAsAccessMode.xlExclusive,
                                                       Missing.Value,
                                                       Missing.Value,
                                                       Missing.Value);
            
            workbook.Close(true, Missing.Value, Missing.Value);
            app.Quit();            
        }

        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            if (txtProcesso.MaskCompleted)
            {
                //if (Processo.ConfereImportadorProcesso(txtProcesso.Text) == "358")
                //{
                    txtVlrArmazenagens.Text = CalculaArmazenagem().ToString();

                    txtVlrOutros.Text = CalculaOutrasTaxas().ToString();

                    btnIncluiProcesso.Enabled = true;
                //}
                //else
                //{
                    //MessageBox.Show("Processo de outro importador, favor verificar.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    //btnIncluiProcesso.Enabled = false;
                //}
            }
            else
            {
                txtVlrArmazenagens.Clear();

                txtVlrOutros.Clear();

                btnIncluiProcesso.Enabled = false;
            }
        }

        private double CalculaArmazenagem()
        {
            string query = " SELECT ISNULL(ROUND((SUM(Porcentagem)/100*(SELECT Valor_CIF FROM Processos WHERE Codigo = @Processo)),2),0) AS ARMAZENAGEM              " +
                           "   FROM Armazenagens_Periodos_Dias APD                                                                                               " +
                           "        INNER JOIN Conhecimento_Processo CP ON APD.FK_Cod_Tab_Urf = CP.URF_Despacho AND APD.FK_Cod_Rec_Alf = CP.Recinto_Alfandegario " +
                           "  WHERE APD.Periodo <= 2 AND CP.Processo = @Processo                                                                                 ";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);                    

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            dr.Read();

                            return (double)dr["ARMAZENAGEM"];
                        }
                        else
                        {
                            return 0;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        private double CalculaOutrasTaxas()
        {
            string query = " SELECT ISNULL(ISNULL(ROUND(SUM(Valor_Previsao),2),ROUND(SUM(Valor_Registrado),2)),0) as Despesas FROM Numerarios_Processos WHERE Numerario = 'DESC' AND Processo = @Processo ";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            dr.Read();

                            return (double)dr["Despesas"];
                        }
                        else
                        {
                            return 0;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }

        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void dataGridView1_CellEnter(object sender, DataGridViewCellEventArgs e)
        {
            AtualizaGridItens(((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());

            try
            {
                ckbProntapEnvio.Checked    = ((int)((DataRowView)this.bindingSource1.Current).Row["Status"] >= 1);
                ckbPrevisaoEnviada.Checked = ((int)((DataRowView)this.bindingSource1.Current).Row["Status"] >= 2);
                ckbRegistroEnviado.Checked = ((int)((DataRowView)this.bindingSource1.Current).Row["Status"] == 3);                        
            }
            catch (Exception)
            {
                
                throw;
            }            
        }

        private void dataGridView2_KeyDown(object sender, KeyEventArgs e)
        {
            //46 = TECLA DEL
            if ((e.KeyValue == 46) && (bindingSource2.Count > 0))
            {
                if (MessageBox.Show("Confirma a exclusão do processo da planilha ?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                {
                    try
                    {
                        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                        string query = " DELETE FROM Controle_Planilha_Numerarios_Itens WHERE FK_Planilha = @FK_Planilha AND FK_Processo = @FK_Processo ";

                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@FK_Planilha", ((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());
                            cmd.Parameters.AddWithValue("@FK_Processo", ((DataRowView)this.bindingSource2.Current).Row["Codigo"].ToString());
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

        private string RetornaPOS(string processo)
        {
            string query = " SELECT Codigo FROM Faturas WHERE Processo = @Processo ORDER BY Codigo";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", processo);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            string retorno = "";

                            while (dr.Read())
                            {
                                if (string.IsNullOrEmpty(retorno))
                                {
                                    retorno = dr["Codigo"].ToString();
                                }
                                else
                                {
                                    retorno = retorno + System.Environment.NewLine + dr["Codigo"].ToString();
                                }
                            }

                            return retorno;
                        }
                        else
                        {
                            return "";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return "";

                throw;
            }
        }

        private string RetornaRATEIO(string processo)
        {
            string query = " SELECT F.Codigo, ROUND((((F.Valor_Total*PTC.Taxa_conversao)/P.Valor_CIF)*100),2) as RATEIO, PTC.Taxa_conversao " +
                           " FROM Faturas F                                                                                                 " +
                           "      INNER JOIN Processos P ON F.Processo = P.Codigo                                                           " +
                           "      INNER JOIN Processos_Taxas_Conversao PTC ON PTC.Processo = P.Codigo AND PTC.Moeda = F.Moeda               " +
                           "WHERE F.Processo = @Processo                                                                                    " +
                           "ORDER BY F.Codigo";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", processo);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            string retorno = "";

                            while (dr.Read())
                            {
                                if (string.IsNullOrEmpty(retorno))
                                {
                                    retorno = dr["RATEIO"].ToString() + " %";
                                }
                                else
                                {
                                    retorno = retorno + System.Environment.NewLine + dr["RATEIO"].ToString() + " %";
                                }
                            }

                            return retorno;
                        }
                        else
                        {
                            return "";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return "";

                throw;
            }
        }

        private void getImportadores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "   SELECT Codigo, Razao_Social, CNPJ_CPF_COMPLETO " +
                           "     FROM Importadores                            " +
                           "    WHERE Ativo = 1                               " +  
                           " ORDER BY Razao_Social                            ";

            System.Data.DataTable table;

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new System.Data.DataTable();
                        table.Load(reader);
                    }
                }

                mccbImportadores.DataSource = table;
                mccbImportadores.DisplayMember = "Razao_Social";
                mccbImportadores.ValueMember   = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
