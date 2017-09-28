using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Cadastros
{
    public partial class FrmParametrosArmazenagens : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        string percentual;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled    = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);            
            btnNovo.Enabled      = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled    = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled  = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
            gpbPesquisar.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public FrmParametrosArmazenagens()
        {
            InitializeComponent();
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        private void FrmArmazenagens_Load(object sender, EventArgs e)
        {
            getURFs();            
            getArmazenagens();                                    
            
            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;            
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;

            AtualizaGrid();

            bindingNavigator.BindingSource = bindingSource;

            mccbURF.DataBindings.Add(new Binding("Text", bindingSource, "DESCRICAO_URF", true));
            mccbRecAlfandegado.DataBindings.Add(new Binding("Text", bindingSource, "DESCRICAO_REC", true));            
            txtPeriodo.DataBindings.Add(new Binding("Text", bindingSource, "Periodo", true));
            txtDias.DataBindings.Add(new Binding("Text", bindingSource, "Dias", true));
            txtPercentual.DataBindings.Add(new Binding("Text", bindingSource, "Porcentagem", true));
            txtVigenciaInicial.DataBindings.Add(new Binding("Text", bindingSource, "Data_Vigencia_Inicial", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtVigenciaFinal.DataBindings.Add(new Binding("Text", bindingSource, "Data_Vigencia_Final", true, DataSourceUpdateMode.OnValidation, "  /  /"));                        
        }  

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;

            mccbURF.Enabled = false;
            mccbRecAlfandegado.Enabled = false;

            txtVigenciaInicial.Focus();
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;

            mccbURF.Focus();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
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
                    
                    string query = "UPDATE Armazenagens_Periodos_Dias SET Periodo = @Periodo, Dias = @Dias, Porcentagem = @Porcentagem, Data_Vigencia_Inicial = @Data_Vigencia_Inicial, Data_Vigencia_Final = @Data_Vigencia_Final WHERE ID = @ID ";                    

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {                       
                        cmd.Parameters.AddWithValue("@Periodo", Convert.ToInt16(txtPeriodo.Text));
                        cmd.Parameters.AddWithValue("@Dias", Convert.ToInt16(txtDias.Text));
                        cmd.Parameters.AddWithValue("@Porcentagem", string.IsNullOrEmpty(txtPercentual.Text) ? 0 : Convert.ToDouble(txtPercentual.Text));
                        cmd.Parameters.AddWithValue("@Data_Vigencia_Inicial", (object)txtVigenciaInicial.Text);
                        cmd.Parameters.AddWithValue("@Data_Vigencia_Final", (object)txtVigenciaFinal.Text); 
                        cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource.Current).Row["ID"].ToString());
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Do Período:{0} para Período {1}, De Dias: {2} para Dias: {3}, De Data: {4} para Data:{5}, de %: {6} para %: {7}", ((DataRowView)this.bindingSource.Current).Row["Periodo"].ToString(), txtPeriodo.Text, ((DataRowView)this.bindingSource.Current).Row["Dias"].ToString(), txtDias.Text, ((DataRowView)this.bindingSource.Current).Row["Data_Vigencia_Inicial"].ToString(), txtVigenciaInicial.Text, ((DataRowView)this.bindingSource.Current).Row["Porcentagem"].ToString(), txtPercentual.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Armazenagens_Periodos_Dias     " +
                                   " ( FK_Cod_Tab_Urf,  FK_Cod_Rec_Alf,  Periodo,  Dias,  Porcentagem,  Data_Vigencia_Inicial,  Data_Vigencia_Final) VALUES " +
                                   " (@FK_Cod_Tab_Urf, @FK_Cod_Rec_Alf, @Periodo, @Dias, @Porcentagem, @Data_Vigencia_Inicial, @Data_Vigencia_Final)        ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@FK_Cod_Tab_Urf", mccbURF.SelectedValue);
                        cmd.Parameters.AddWithValue("@FK_Cod_Rec_Alf", mccbRecAlfandegado.SelectedValue);
                        cmd.Parameters.AddWithValue("@Periodo", Convert.ToInt16(txtPeriodo.Text));
                        cmd.Parameters.AddWithValue("@Dias", Convert.ToInt16(txtDias.Text));
                        cmd.Parameters.AddWithValue("@Porcentagem", string.IsNullOrEmpty(txtPercentual.Text) ? 0 : Convert.ToDouble(txtPercentual.Text));
                        cmd.Parameters.AddWithValue("@Data_Vigencia_Inicial", (object)txtVigenciaInicial.Text);
                        cmd.Parameters.AddWithValue("@Data_Vigencia_Final", (object)txtVigenciaFinal.Text);
                        
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("URF de Despacho:{0}, Rec Alfandegado: {1}, Periodo: {2}, Dias: {3}, Data: {4}, % {5}", mccbURF.Text, mccbRecAlfandegado.Text, txtPeriodo.Text, txtDias.Text, txtVigenciaInicial.Text, txtPercentual.Text));
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

        private void getURFs()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " SELECT CODIGO, DESCRICAO FROM TAB_URF ORDER BY DESCRICAO";

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

                mccbURF.DataSource    = null;
                mccbURF.DataSource    = table;
                mccbURF.DisplayMember = "Descricao";
                mccbURF.ValueMember   = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getRecintoAlfandegado(string URF)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " SELECT CODIGO, DESCRICAO FROM TAB_REC_ALFANDEGADO WHERE COD_ORGAO_REC = @COD_ORGAO_REC ORDER BY DESCRICAO ";                        
            DataTable table;

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@COD_ORGAO_REC", URF);                                                               

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }

                mccbRecAlfandegado.DataSource = null;
                mccbRecAlfandegado.DataSource = table;
                mccbRecAlfandegado.DisplayMember = "Descricao";
                mccbRecAlfandegado.ValueMember   = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }        
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private Boolean ValidaCampos()
        {
            if (string.IsNullOrEmpty(mccbURF.Text.Trim()))
            {
                MessageBox.Show("URF de Despacho obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mccbURF.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(mccbRecAlfandegado.Text.Trim()))
            {
                MessageBox.Show("Recinto Alfandegado obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mccbRecAlfandegado.Focus();
                return false;
            }                                                                      

            if (string.IsNullOrEmpty(txtPeriodo.Text.Trim()))
            {
                MessageBox.Show("Período obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtPeriodo.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtDias.Text.Trim()))
            {
                MessageBox.Show("Dias obrigatórios!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDias.Focus();
                return false;
            }

            if (!(txtVigenciaInicial.MaskCompleted))
            {
                MessageBox.Show("Vigência inicial obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtVigenciaInicial.Focus();
                return false;
            }

            if (!(txtVigenciaFinal.MaskCompleted))
            {
                MessageBox.Show("Vigência final obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtVigenciaFinal.Focus();
                return false;
            }

            try
            {
                if ( string.IsNullOrEmpty(txtPercentual.Text))
                {
                    txtPercentual.Text = "0";
                }
     
                double teste = Convert.ToDouble(txtPercentual.Text);                
            }
            catch (Exception)
            {
                MessageBox.Show("Percentual inválido!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtPercentual.Focus();
                return false;
            }            

            return true;
        }

        private DataTable getArmazenagens()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " SELECT APD.ID, APD.FK_Cod_Tab_Urf, TU.DESCRICAO AS DESCRICAO_URF, APD.FK_Cod_Rec_Alf, TR.DESCRICAO AS DESCRICAO_REC, APD.Periodo, APD.Dias, APD.Porcentagem, APD.Data_Vigencia_Inicial, APD.Data_Vigencia_Final " +
                           "   FROM Armazenagens_Periodos_Dias APD                                                                                 " +
                           "        INNER JOIN TAB_URF TU ON APD.FK_COD_TAB_URF = TU.CODIGO                                                        " +      
                           "        INNER JOIN TAB_REC_ALFANDEGADO TR ON APD.FK_COD_TAB_URF = TR.COD_ORGAO_REC AND APD.FK_Cod_Rec_Alf = TR.CODIGO  " +
                           " ORDER BY TU.DESCRICAO, TR.DESCRICAO, APD.Data_Vigencia_Inicial, APD.Periodo                                           ";                           

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
            bindingSource.DataSource = getArmazenagens();

            dataGridView.DataSource = bindingSource;
        }

        private void mccbRecAlfandegado_Enter(object sender, EventArgs e)
        {
            getRecintoAlfandegado(mccbURF.SelectedValue.ToString());
        }

        private void txtPesquisar_TextChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtPesquisar.Text))
            {
                bindingSource.RemoveFilter();
            }
            else
            {
                bindingSource.Filter = "DESCRICAO_URF like '" + txtPesquisar.Text + "%'";                
            }
        }        
    }
}
