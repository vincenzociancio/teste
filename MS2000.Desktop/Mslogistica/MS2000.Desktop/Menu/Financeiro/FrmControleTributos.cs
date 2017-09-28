using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Financeiro
{
    public partial class FrmControleTributos : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled    = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled   = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled      = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled    = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled  = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmControleTributos()
        {
            InitializeComponent();
        }

        private void FrmControleTributos_Load(object sender, EventArgs e)
        {                        
            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;            
            HabilitarDesabilitaControles(false);

            getItensPesquisar();

            getItensLocais();
            getItensNaturezaTributo();
            getItensPeriodicidade();
            getItensCompetencia();            

            dataGridView.AutoGenerateColumns = false;

            AtualizaGrid();

            bindingNavigator.BindingSource = bindingSource;

            cbbLocal.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Local", true));            
            cbbNaturezaTributo.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Natureza", true));            
            cbbPeriodicidade.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Periodicidade", true));
            txtCodigoTributo.DataBindings.Add(new Binding("Text", bindingSource, "Codigo_Tributo", true));            
            txtDataPagamento.DataBindings.Add(new Binding("Text", bindingSource, "Data_Pgto", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            cbbCompetencia.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Competencia", true));            
            txtValor.DataBindings.Add(new Binding("Text", bindingSource, "Valor", true, DataSourceUpdateMode.OnValidation, "0.00", "N"));            
            txtAno.DataBindings.Add(new Binding("Text", bindingSource, "Ano", true));
            rtxtReferencia.DataBindings.Add(new Binding("Text", bindingSource, "Referencia", true));
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;            
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;

            cbbLocal.Focus();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
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
                    string query = " DELETE FROM Controle_de_Tributos WHERE ID = @ID ";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("ID").Current);                        
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("ID: {0}", bindingSource.GetRelatedCurrencyManager("ID").Current));

                    bindingSource.RemoveCurrent();                    

                    statusCadastro = StatusCadastro.None;

                    AtualizaGrid();                                        

                    MessageBox.Show("Registro excluído com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);                                       
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

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (ValidaCampos() == false) return;

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "UPDATE Controle_de_Tributos SET Local = @Local, Natureza = @Natureza, Codigo_Tributo = @Codigo_Tributo, Competencia = @Competencia, Periodicidade = @Periodicidade, Data_Pgto = @Data_Pgto, Valor = @Valor, Referencia = @Referencia, Ano = @Ano WHERE ID = @ID";
                         
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Local", (cbbLocal.SelectedValue == null ? 0 : (object)cbbLocal.SelectedValue));
                        cmd.Parameters.AddWithValue("@Natureza", (cbbNaturezaTributo.SelectedValue == null ? DBNull.Value : (object)cbbNaturezaTributo.SelectedValue));
                        cmd.Parameters.AddWithValue("@Codigo_Tributo", txtCodigoTributo.Text);
                        cmd.Parameters.AddWithValue("@Competencia", (cbbCompetencia.SelectedValue == null ? DBNull.Value : (object)cbbCompetencia.SelectedValue));
                        cmd.Parameters.AddWithValue("@Periodicidade", (cbbPeriodicidade.SelectedValue == null ? DBNull.Value : (object)cbbPeriodicidade.SelectedValue));
                        cmd.Parameters.AddWithValue("@Data_Pgto", !txtDataPagamento.MaskCompleted ? DBNull.Value : (object)txtDataPagamento.Text);                        
                        cmd.Parameters.AddWithValue("@Valor", Convert.ToDouble(txtValor.Text));
                        cmd.Parameters.AddWithValue("@Referencia", rtxtReferencia.Text);
                        cmd.Parameters.AddWithValue("@Ano", txtAno.Text);
                        cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("ID").Current);
                                                
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De:{0} Para:{1}", ((DataRowView)this.bindingSource.Current).Row["ID"].ToString(), bindingSource.GetRelatedCurrencyManager("ID").Current));                    
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Controle_de_Tributos                                                                                    " +
                                   "           ( Local, Natureza,  Codigo_Tributo,  Competencia,  Periodicidade,  Data_Pgto,  Valor,  Referencia,  Ano) VALUES " +
                                   "           (@Local, @Natureza, @Codigo_Tributo, @Competencia, @Periodicidade, @Data_Pgto, @Valor, @Referencia, @Ano)        ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Local", (cbbLocal.SelectedValue == null ? 0 : (object)cbbLocal.SelectedValue));
                        cmd.Parameters.AddWithValue("@Natureza", (cbbNaturezaTributo.SelectedValue == null ? DBNull.Value : (object)cbbNaturezaTributo.SelectedValue));
                        cmd.Parameters.AddWithValue("@Codigo_Tributo", txtCodigoTributo.Text);
                        cmd.Parameters.AddWithValue("@Competencia", (cbbCompetencia.SelectedValue == null ? DBNull.Value : (object)cbbCompetencia.SelectedValue));
                        cmd.Parameters.AddWithValue("@Periodicidade", (cbbPeriodicidade.SelectedValue == null ? DBNull.Value : (object)cbbPeriodicidade.SelectedValue));
                        cmd.Parameters.AddWithValue("@Data_Pgto", !txtDataPagamento.MaskCompleted ? DBNull.Value : (object)txtDataPagamento.Text);                        
                        cmd.Parameters.AddWithValue("@Valor", Convert.ToDouble(txtValor.Text));
                        cmd.Parameters.AddWithValue("@Referencia", rtxtReferencia.Text);
                        cmd.Parameters.AddWithValue("@Ano", txtAno.Text);

                        cmd.ExecuteNonQuery();
                    }
                    
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Codigo:{0}", bindingSource.GetRelatedCurrencyManager("ID").Current));                    
                }              

                if (statusCadastro == StatusCadastro.Editar)
                {
                    MessageBox.Show("Registro alterado com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }

                AtualizaGrid();

                statusCadastro = StatusCadastro.None;

                HabilitarDesabilitaControles(false);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private Boolean ValidaCampos()
        {
            if (string.IsNullOrEmpty(cbbLocal.Text.Trim()))
            {
                MessageBox.Show("Local obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbLocal.Focus();
                return false;
            }                                                
            
            if (string.IsNullOrEmpty(cbbNaturezaTributo.Text.Trim()))
            {
                MessageBox.Show("Natureza do Tributo obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbNaturezaTributo.Focus();
                return false;
            }                                                

            if (string.IsNullOrEmpty(cbbPeriodicidade.Text.Trim()))
            {
                MessageBox.Show("Periodicidade obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbPeriodicidade.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtCodigoTributo.Text.Trim()))
            {
                MessageBox.Show("Código do Tributo obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCodigoTributo.Focus();
                return false;
            }

            if (!txtDataPagamento.MaskCompleted)
            {
                MessageBox.Show("Data de Pagamento obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDataPagamento.Focus();
                return false;
            }           

            if (string.IsNullOrEmpty(cbbCompetencia.Text.Trim()))
            {
                MessageBox.Show("Competência obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbCompetencia.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtValor.Text.Trim()))
            {
                MessageBox.Show("Valor obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtValor.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtAno.Text.Trim()))
            {
                MessageBox.Show("Ano obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtAno.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(rtxtReferencia.Text.Trim()))
            {
                MessageBox.Show("Referência obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                rtxtReferencia.Focus();
                return false;
            }            

            return true;
        }       

        private DataTable getControleTributos()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " SELECT ID, Local, CASE Local WHEN 0 THEN 'MS Logística' ELSE 'Candelária' END AS Local_Desc, Natureza, Codigo_Tributo, Competencia, Periodicidade, Data_Pgto, Valor, Referencia, Ano FROM Controle_de_Tributos order by Data_Pgto ";                           

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

        private void getItensLocais()
        {
            Dictionary<int, string> itensLocais = new Dictionary<int, string>();

            itensLocais.Add(0, "Ms Logística");
            itensLocais.Add(1, "Candelária");            

            cbbLocal.DisplayMember = "Value";
            cbbLocal.ValueMember   = "Key";
            cbbLocal.DataSource    = new BindingSource(itensLocais, null);
        }
        
        private void getItensNaturezaTributo()
        {
            Dictionary<int, string> itensNaturezaTributo = new Dictionary<int, string>();

            itensNaturezaTributo.Add(1, "Darf");
            itensNaturezaTributo.Add(2, "Darj");
            itensNaturezaTributo.Add(3, "Darm");
            itensNaturezaTributo.Add(4, "Gcsu");
            itensNaturezaTributo.Add(5, "Gfip");
            itensNaturezaTributo.Add(6, "Gps");
            itensNaturezaTributo.Add(7, "Grde");
            itensNaturezaTributo.Add(8, "Grf");
            itensNaturezaTributo.Add(9, "Grrf");
            itensNaturezaTributo.Add(10, "Icms");                         

            cbbNaturezaTributo.DisplayMember = "Value";
            cbbNaturezaTributo.ValueMember   = "Key";
            cbbNaturezaTributo.DataSource    = new BindingSource(itensNaturezaTributo, null);
        }

        private void getItensCompetencia()
        {
            Dictionary<int, string> itensCompetencia = new Dictionary<int, string>();

            itensCompetencia.Add(1 , "Janeiro");
            itensCompetencia.Add(2 , "Fevereiro");
            itensCompetencia.Add(3 , "Março");
            itensCompetencia.Add(4 , "Abril");
            itensCompetencia.Add(5 , "Maio");
            itensCompetencia.Add(6 , "Junho");
            itensCompetencia.Add(7 , "Julho");
            itensCompetencia.Add(8 , "Agosto");
            itensCompetencia.Add(9 , "Setembro");
            itensCompetencia.Add(10, "Outubro");
            itensCompetencia.Add(11, "Novembro");
            itensCompetencia.Add(12, "Dezembro");
            itensCompetencia.Add(13, "Décimo Terceiro");            

            cbbCompetencia.DisplayMember = "Value";
            cbbCompetencia.ValueMember   = "Key";
            cbbCompetencia.DataSource    = new BindingSource(itensCompetencia, null);
        }

        private void getItensPeriodicidade()
        {
            Dictionary<int, string> itensPeriodicidade = new Dictionary<int, string>();

            itensPeriodicidade.Add(1, "Diário");
            itensPeriodicidade.Add(2, "Semanal");
            itensPeriodicidade.Add(3, "Quinzenal");
            itensPeriodicidade.Add(4, "Mensal");
            itensPeriodicidade.Add(5, "Bimestral");
            itensPeriodicidade.Add(6, "Trimestral");
            itensPeriodicidade.Add(7, "Semestral");
            itensPeriodicidade.Add(8, "Anual");                        

            cbbPeriodicidade.DisplayMember = "Value";
            cbbPeriodicidade.ValueMember   = "Key";
            cbbPeriodicidade.DataSource    = new BindingSource(itensPeriodicidade, null);
        }

        private void getItensPesquisar()
        {
            Dictionary<int, string> itensPesquisar = new Dictionary<int, string>();

            itensPesquisar.Add(0, "ID");
            itensPesquisar.Add(1, "Local");            
            itensPesquisar.Add(2, "Natureza");
            itensPesquisar.Add(3, "Data de Pagamento");
            itensPesquisar.Add(4, "Ano");
            itensPesquisar.Add(5, "Competência");
            itensPesquisar.Add(6, "Períodicidade");
            itensPesquisar.Add(7, "Valor");            

            cbbPesquisarPor.DisplayMember = "Value";
            cbbPesquisarPor.ValueMember   = "Key";
            cbbPesquisarPor.DataSource    = new BindingSource(itensPesquisar, null);

            cbbPesquisar.Visible = false;
            txtPesquisar.Visible = true;
        }

        private void getComboPesquisar(int valor)
        {
            cbbPesquisar.DisplayMember = "Value";
            cbbPesquisar.ValueMember   = "Key";

            if (valor == 1)
            {
                Dictionary<int, string> itensLocais = new Dictionary<int, string>();

                itensLocais.Add(0, "MS Logística");
                itensLocais.Add(1, "Candelária");

                cbbPesquisar.DataSource = new BindingSource(itensLocais, null);
            }

            if (valor == 2)
            {
                Dictionary<int, string> itensNaturezaTributo = new Dictionary<int, string>();

                itensNaturezaTributo.Add(1, "Darf");
                itensNaturezaTributo.Add(2, "Darj");
                itensNaturezaTributo.Add(3, "Darm");
                itensNaturezaTributo.Add(4, "Gcsu");
                itensNaturezaTributo.Add(5, "Gfip");
                itensNaturezaTributo.Add(6, "Gps");
                itensNaturezaTributo.Add(7, "Grde");
                itensNaturezaTributo.Add(8, "Grf");
                itensNaturezaTributo.Add(9, "Grrf");
                itensNaturezaTributo.Add(10, "Icms");

                cbbPesquisar.DataSource = new BindingSource(itensNaturezaTributo, null);
            }

            if (valor == 5)
            {
                Dictionary<int, string> itensCompetencia = new Dictionary<int, string>();

                itensCompetencia.Add(1, "Janeiro");
                itensCompetencia.Add(2, "Fevereiro");
                itensCompetencia.Add(3, "Março");
                itensCompetencia.Add(4, "Abril");
                itensCompetencia.Add(5, "Maio");
                itensCompetencia.Add(6, "Junho");
                itensCompetencia.Add(7, "Julho");
                itensCompetencia.Add(8, "Agosto");
                itensCompetencia.Add(9, "Setembro");
                itensCompetencia.Add(10, "Outubro");
                itensCompetencia.Add(11, "Novembro");
                itensCompetencia.Add(12, "Dezembro");
                itensCompetencia.Add(13, "Décimo Terceiro");
                
                cbbPesquisar.DataSource    = new BindingSource(itensCompetencia, null);
            }

            if (valor == 6)
            {
                Dictionary<int, string> itensPeriodicidade = new Dictionary<int, string>();

                itensPeriodicidade.Add(1, "Diário");
                itensPeriodicidade.Add(2, "Semanal");
                itensPeriodicidade.Add(3, "Quinzenal");
                itensPeriodicidade.Add(4, "Mensal");
                itensPeriodicidade.Add(5, "Bimestral");
                itensPeriodicidade.Add(6, "Trimestral");
                itensPeriodicidade.Add(7, "Semestral");
                itensPeriodicidade.Add(8, "Anual");
                
                cbbPesquisar.DataSource = new BindingSource(itensPeriodicidade, null);
            }
        }        

        private void cbbPesquisarPor_SelectedIndexChanged(object sender, EventArgs e)
        {
            cbbPesquisar.Visible = (((int)cbbPesquisarPor.SelectedValue == 1) || ((int)cbbPesquisarPor.SelectedValue == 2) || ((int)cbbPesquisarPor.SelectedValue == 5) || ((int)cbbPesquisarPor.SelectedValue == 6));
            txtPesquisar.Visible = (((int)cbbPesquisarPor.SelectedValue != 1) && ((int)cbbPesquisarPor.SelectedValue != 2) && ((int)cbbPesquisarPor.SelectedValue != 5) && ((int)cbbPesquisarPor.SelectedValue != 6));

            if (cbbPesquisar.Visible == true)
            {
                getComboPesquisar((int)cbbPesquisarPor.SelectedValue);

                cbbPesquisar.Focus();
            }
            else
            {
                txtPesquisar.Clear();

                //ID / Data de Pagamento
                if (((int)cbbPesquisarPor.SelectedValue == 0) || ((int)cbbPesquisarPor.SelectedValue == 3)) 
                {                                         
                    txtPesquisar.MaxLength = 10;                                                            
                }                

                //Ano
                if ((int)cbbPesquisarPor.SelectedValue == 4)
                {
                    txtPesquisar.MaxLength = 4;
                }

                //Valor
                if ((int)cbbPesquisarPor.SelectedValue == 7)
                {
                    txtPesquisar.MaxLength = 21;
                }

                txtPesquisar.Focus();
            }
        }

        private void cbbPesquisar_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Local
            if ((int)cbbPesquisarPor.SelectedValue == 1)
            {
                bindingSource.Filter = "Local = " + cbbPesquisar.SelectedValue.ToString();
            }
            
            //Natureza
            if ((int)cbbPesquisarPor.SelectedValue == 2)
            {                
                bindingSource.Filter = "Natureza = " + cbbPesquisar.SelectedValue.ToString();                  
            }

            //Competência
            if ((int)cbbPesquisarPor.SelectedValue == 5)
            {
                bindingSource.Filter = "Competencia = " + cbbPesquisar.SelectedValue.ToString();
            }

            //Periodicidade
            if ((int)cbbPesquisarPor.SelectedValue == 6)
            {
                bindingSource.Filter = "Periodicidade = " + cbbPesquisar.SelectedValue.ToString();
            }            
        }

        private void txtPesquisar_TextChanged(object sender, EventArgs e)
        {
            //ID
            if ((int)cbbPesquisarPor.SelectedValue == 0)
            {
                if (txtPesquisar.Text.Trim() != "")
                {
                    bindingSource.Filter = "ID = " + txtPesquisar.Text;                  
                }
                else
                {
                    bindingSource.RemoveFilter();
                }           
            }

            //Data de Pagamento
            if ((int)cbbPesquisarPor.SelectedValue == 3)
            {
                if ((!string.IsNullOrWhiteSpace(txtPesquisar.Text)) && (txtPesquisar.Text.Length == 10))
                {
                    bindingSource.Filter = "Data_Pgto = '" + txtPesquisar.Text + "'";
                }
                else
                {
                    bindingSource.RemoveFilter();
                }
            }

            //Ano
            if ((int)cbbPesquisarPor.SelectedValue == 4)
            {
                if ((!string.IsNullOrWhiteSpace(txtPesquisar.Text)) && (txtPesquisar.Text.Length == 4))
                {
                    bindingSource.Filter = "Ano = " + txtPesquisar.Text;
                }
                else
                {
                    bindingSource.RemoveFilter();
                }
            }

            //Valor
            if ((int)cbbPesquisarPor.SelectedValue == 7)
            {
                if (!string.IsNullOrWhiteSpace(txtPesquisar.Text))
                {
                    try
                    {
                        Convert.ToDouble(txtPesquisar.Text);
                                                
                        bindingSource.Filter = "Valor = " + txtPesquisar.Text.Replace(',', '.');                        
                    }
                    catch (Exception ex)
                    {                        
                        MessageBox.Show(ex.Message, "Valor inválido", MessageBoxButtons.OK, MessageBoxIcon.Error);                
                    }                                                            
                }
                else
                {
                    bindingSource.RemoveFilter();
                }
            }
        }

        private void cbbPesquisarPor_TextChanged(object sender, EventArgs e)
        {
            bindingSource.RemoveFilter();
        }

        private static void SomenteNumero(KeyPressEventArgs e)
        {             
            if (char.IsLetter(e.KeyChar) || //Letras
                char.IsSymbol(e.KeyChar) || //Símbolos
                char.IsWhiteSpace(e.KeyChar) || //Espaço
                char.IsPunctuation(e.KeyChar)) //Pontuação
                e.Handled = true; //Não permitir          
        }

        private static void SomenteNumeroEPontuacao(KeyPressEventArgs e)
        {
            if (char.IsLetter(e.KeyChar) || //Letras
                char.IsSymbol(e.KeyChar) || //Símbolos
                char.IsWhiteSpace(e.KeyChar)) //Espaço                
                e.Handled = true; //Não permitir                                            
        }
        
        private void txtPesquisar_KeyPress(object sender, KeyPressEventArgs e)
        {
            if ((int)cbbPesquisarPor.SelectedValue == 0) //ID
            {
                SomenteNumero(e);                                                              
            }

            if ((int)cbbPesquisarPor.SelectedValue == 3) //Data de Pagamento
            {
                SomenteNumeroEPontuacao(e);
            }

            if ((int)cbbPesquisarPor.SelectedValue == 4) //Ano
            {
                SomenteNumero(e);
            }

            if ((int)cbbPesquisarPor.SelectedValue == 7) //Valor
            {
                SomenteNumeroEPontuacao(e);
            }                           
        }

        private void AtualizaGrid()
        {
            bindingSource.DataSource = getControleTributos();

            dataGridView.DataSource = bindingSource;
        }
    }
}
