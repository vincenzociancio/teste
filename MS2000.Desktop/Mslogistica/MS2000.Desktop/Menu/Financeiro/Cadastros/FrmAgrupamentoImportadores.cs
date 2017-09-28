using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Financeiro.Cadastros
{
    public partial class FrmAgrupamentoImportadores : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled   = (statusCadastro == StatusCadastro.Editar);
            btnEditar.Enabled   = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar);
            btnFechar.Enabled   = (statusCadastro == StatusCadastro.None);
            btnAgrupar.Enabled  = (statusCadastro == StatusCadastro.Editar);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmAgrupamentoImportadores()
        {
            InitializeComponent();
        }

        private void FrmAgrupamentoImportadores_Load(object sender, EventArgs e)
        {           
            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;

            AtualizaGrid();

            bindingNavigator.BindingSource = bindingSource;         
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;

            getNomesGrupos();

            AtivaEditar(true);
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            LimpaCampos();

            AtivaEditar(false);
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (ValidaCampos() == false) return;

            try
            {
                for (int contador = 0; contador < (lstboxImpAgrupados.Items.Count); contador++)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query = " UPDATE IMPORTADORES_AGRUPADOS                " +
                                   "    SET CODIGO_AGRUPADO  = @CODIGO_AGRUPADO,  " +
                                   "        CODIGO_AGRUPADO1 = @CODIGO_AGRUPADO1, " +
                                   "        NOME_GRUPO       = @NOME_GRUPO,       " +
                                   "        NOME_GRUPO1      = @NOME_GRUPO1       " +
                                   "  WHERE REG = @REG                            ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        if (rbGrupoExistente.Checked)
                        {
                            cmd.Parameters.AddWithValue("@CODIGO_AGRUPADO",  cbbNomesGruposExistentes.SelectedValue.ToString());
                            cmd.Parameters.AddWithValue("@CODIGO_AGRUPADO1", cbbNomesGruposExistentes.SelectedValue.ToString());
                            cmd.Parameters.AddWithValue("@NOME_GRUPO",  cbbNomesGruposExistentes.Text);
                            cmd.Parameters.AddWithValue("@NOME_GRUPO1", cbbNomesGruposExistentes.Text);
                        }
                        else
                        {
                            int NovoCodigoImportadorAgrupado = getNovoCodigoImportadorAgrupado();

                            cmd.Parameters.AddWithValue("@CODIGO_AGRUPADO",  NovoCodigoImportadorAgrupado);
                            cmd.Parameters.AddWithValue("@CODIGO_AGRUPADO1", NovoCodigoImportadorAgrupado);
                            cmd.Parameters.AddWithValue("@NOME_GRUPO",  txtNomeGrupoNovo.Text);
                            cmd.Parameters.AddWithValue("@NOME_GRUPO1", txtNomeGrupoNovo.Text);
                        }

                        cmd.Parameters.AddWithValue("@REG", lstboxImpAgrupados.Items[contador].ToString().Substring(0,3));

                        cmd.ExecuteNonQuery();

                        LogSistemas.AddLogSistema(((DataRowView)this.bindingSource.Current).Row["Reg"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De:{0} Para:{1}", ((DataRowView)this.bindingSource.Current).Row["Reg"].ToString(), ((DataRowView)this.bindingSource.Current).Row["Reg"].ToString()));
                    }
                }

                AtivaEditar(false);

                LimpaCampos();

                AtualizaGrid();

                if (statusCadastro == StatusCadastro.Editar)
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

        private void getNomesGrupos()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT DISTINCT Codigo_AGRUPADO1, Nome_Grupo1 FROM Importadores_Agrupados WHERE Codigo_AGRUPADO NOT LIKE 'X%' AND Codigo_AGRUPADO NOT LIKE 'A%' AND Codigo_AGRUPADO1 <> '0000' ORDER BY Nome_Grupo1";

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

                cbbNomesGruposExistentes.DataSource = table;
                cbbNomesGruposExistentes.DisplayMember = "Nome_Grupo1";
                cbbNomesGruposExistentes.ValueMember   = "Codigo_AGRUPADO1";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private DataTable getImportadores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query;

            if (ckbSomenteDesagrupados.Checked)
            {
                query = "(SELECT 'DESAGRUPADO' AS STATUS, I.Codigo, I.Razao_Social, '*** DESAGRUPADOS ***' AS Nome_Grupo, IA.Nome_Grupo1 ,'0000' AS Codigo_AGRUPADO, IA.Codigo_AGRUPADO1, IA.reg "
                       + "   FROM Importadores_Agrupados IA INNER JOIN Importadores I                                                                                                            "
                       + "     ON I.Codigo = IA.Codigo                                                                                                                                           "
                       + "  WHERE I.Codigo NOT LIKE 'X%' AND IA.Nome_Grupo = '*** DESAGRUPADOS ***' AND IA.Codigo_AGRUPADO = '0000')                                                             "
                       + " ORDER BY STATUS, Nome_Grupo, I.Razao_Social                                                                                                                           ";
            }
            else
            {
                query = "(SELECT 'DESAGRUPADO' AS STATUS, I.Codigo, I.Razao_Social, '*** DESAGRUPADOS ***' AS Nome_Grupo, IA.Nome_Grupo1 ,'0000' AS Codigo_AGRUPADO, IA.Codigo_AGRUPADO1, IA.reg "
                       + "   FROM Importadores_Agrupados IA INNER JOIN Importadores I                                                                                                             "
                       + "     ON I.Codigo = IA.Codigo                                                                                                                                            "
                       + "  WHERE I.Codigo NOT LIKE 'X%' AND IA.Nome_Grupo = '*** DESAGRUPADOS ***' AND IA.Codigo_AGRUPADO = '0000')                                                              "
                       + "  UNION                                                                                                                                                                 "
                       + "(SELECT 'AGRUPADO' AS STATUS, I.Codigo, I.Razao_Social, IA.Nome_Grupo, IA.Nome_Grupo1 ,IA.Codigo_AGRUPADO, IA.Codigo_AGRUPADO1, IA.reg                                  "
                       + "   FROM Importadores_Agrupados IA INNER JOIN Importadores I                                                                                                             "
                       + "     ON I.Codigo = IA.Codigo                                                                                                                                            "
                       + "  WHERE I.Codigo NOT LIKE 'X%' AND IA.Nome_Grupo <> '*** DESAGRUPADOS ***' AND IA.Codigo_AGRUPADO <> '0000')                                                            "
                       + " ORDER BY STATUS, Nome_Grupo, I.Razao_Social                                                                                                                            ";
            }

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

        private void ckbSomenteDesagrupados_Click(object sender, EventArgs e)
        {
            AtualizaGrid();
        }

        private void btnAgrupar_Click(object sender, EventArgs e)
        {
            if (dataGridView.SelectedRows.Count > 0)
            {
                string Importador;                

                Importador = string.Format("{0} - {1}", ((DataRowView)this.bindingSource.Current).Row["Reg"].ToString().PadLeft(3,'0'),                                                                        
                                                        ((DataRowView)this.bindingSource.Current).Row["Razao_Social"].ToString());

                lstboxImpAgrupados.Items.Add(Importador);
            }
        }

        private void rbGrupoExistente_Click(object sender, EventArgs e)
        {
            cbbNomesGruposExistentes.Visible = true;
            txtNomeGrupoNovo.Visible = false;
        }

        private void rbGrupoNovo_Click(object sender, EventArgs e)
        {
            cbbNomesGruposExistentes.Visible = false;
            txtNomeGrupoNovo.Visible = true;
        }

        private void dataGridView_SelectionChanged(object sender, EventArgs e)
        {
            if (bindingSource.Count > 0)
            {
                btnDesagrupar.Enabled = ((((DataRowView)this.bindingSource.Current).Row["Status"].ToString() == "AGRUPADO") && (statusCadastro == StatusCadastro.None));
            }
            else
            {
                btnDesagrupar.Enabled = false;
            }                       
        }

        private void AtivaEditar(Boolean Ativa)
        {
            ckbSomenteDesagrupados.Checked = (Ativa);
            ckbSomenteDesagrupados.Enabled = !(Ativa);
            btnDesagrupar.Enabled = !(Ativa);

            ckbSomenteDesagrupados_Click(ckbSomenteDesagrupados, null);
        }

        private void btnDesagrupar_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Deseja realmente desagrupar esse importador?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                DesagrupaImportador(((DataRowView)this.bindingSource.Current).Row["Reg"].ToString());

                AtualizaGrid();
            }
        }

        private void DesagrupaImportador(string regImportador)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                var query = "   UPDATE IMPORTADORES_AGRUPADOS                    " +
                            "      SET CODIGO_AGRUPADO  = '0000'                 " +
                            "         ,NOME_GRUPO       = '*** DESAGRUPADOS ***' " +
                            "         ,CODIGO_AGRUPADO1 = '0000'                 " +
                            "         ,NOME_GRUPO1      = '*** DESAGRUPADOS ***' " +
                            "   WHERE REG = @REG                                 ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Reg", regImportador);
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private int getNovoCodigoImportadorAgrupado()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " SELECT MAX(CODIGO_AGRUPADO) FROM IMPORTADORES_AGRUPADOS WHERE CODIGO_AGRUPADO NOT LIKE 'X%' AND Codigo_AGRUPADO NOT LIKE 'A%' ";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        reader.Read();

                        int ProximaPosicao = (Convert.ToInt32(reader[0].ToString()) + 1);

                        return ProximaPosicao;                        
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return 0;
            }
        }

        private void AtualizaGrid()
        {
            bindingSource.DataSource = getImportadores();

            dataGridView.DataSource = bindingSource;            
        }

        private Boolean ValidaCampos()
        {
            if (lstboxImpAgrupados.Items.Count < 1)
            {
                MessageBox.Show("Não existe nenhum importador adicionado ao agrupamento.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                return false;
            }

            if (rbGrupoExistente.Checked)
            {
                if (string.IsNullOrEmpty(cbbNomesGruposExistentes.Text.Trim()))
                {
                    MessageBox.Show("Informe o grupo.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    cbbNomesGruposExistentes.Focus();
                    return false;
                }
            }
            else
            {
                if (string.IsNullOrEmpty(txtNomeGrupoNovo.Text.Trim()))
                {
                    MessageBox.Show("Informe o grupo.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    txtNomeGrupoNovo.Focus();
                    return false;
                }
                else
                {
                    if (VerificaSeGrupoJaExiste(txtNomeGrupoNovo.Text))
                    {
                        MessageBox.Show("Já existe um grupo com esse nome.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                        txtNomeGrupoNovo.Focus();
                        return false;                    
                    }
                }                    
            }

            return true;
        }

        private void txtPesquisar_TextChanged(object sender, EventArgs e)
        {
            AtualizaGrid();
            
            if (string.IsNullOrEmpty(txtPesquisar.Text))
            {
                bindingSource.RemoveFilter();
            }
            else
            {
                bindingSource.Filter = "Razao_Social LIKE '" + txtPesquisar.Text + "%'";
            }
        }

        private void LimpaCampos()
        {
            lstboxImpAgrupados.Items.Clear();

            txtNomeGrupoNovo.Clear();
        }

        private Boolean VerificaSeGrupoJaExiste(String NomeGrupo)
        {       
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " SELECT TOP 1 NOME_GRUPO FROM IMPORTADORES_AGRUPADOS WHERE NOME_GRUPO = @NOME_GRUPO ";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@NOME_GRUPO", NomeGrupo);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {                                                                        
                        DataTable table = new DataTable();
                        
                        table.Load(reader);

                        if (table.Rows.Count == 0)
                        {
                            return false;
                        }
                        else
                        {
                            return true;
                        }                                              
                    }                                        
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                
                return false;
            }                                           
        }        
    }
}
