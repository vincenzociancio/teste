using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Resources;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmBeneficiario : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        public int FK_Empregado { get; set; }

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        private void getParentesco()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT ID,Descricao FROM RH_Parentesco order by Descricao";
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
                cbbParentesco.DataSource = table;
                cbbParentesco.DisplayMember = "Descricao";
                cbbParentesco.ValueMember = "ID";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        public FrmBeneficiario()
        {
            InitializeComponent();
        }

        private DataTable getBeneficiario()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select RB.ID,FK_Empregado,Dependente,Data_Nascimento,Estado_Civil,FK_Parentesco,IRRF,Salario_Familia, RP.Descricao FROM RH_Beneficiario RB " +
                           "inner join RH_Parentesco RP on RB.FK_Parentesco = RP.ID  Where FK_Empregado = @FK_Empregado order by Data_Nascimento";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@FK_Empregado", FK_Empregado);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void FrmBeneficiario_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;

           getParentesco();

            Dictionary<string, string> itensEstadoCivil = new Dictionary<string, string>();

            itensEstadoCivil.Add("S", "SOLTEIRO(a)"); itensEstadoCivil.Add("C", "CASADO(a)"); itensEstadoCivil.Add("D", "DIVORCIADO(a)"); itensEstadoCivil.Add("V", "VIÚVO(a)");

            cbbEstadoCivil.DisplayMember = "Value";
            cbbEstadoCivil.ValueMember = "Key";
            cbbEstadoCivil.DataSource = new BindingSource(itensEstadoCivil, null);          

            statusCadastro = StatusCadastro.None;

            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getBeneficiario();
            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtDependente.DataBindings.Add(new Binding("Text", bindingSource, "Dependente", true));
            txtData.DataBindings.Add(new Binding("Text", bindingSource, "Data_Nascimento", true, DataSourceUpdateMode.Never));
            cbbEstadoCivil.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Estado_Civil"));
            cbbParentesco.DataBindings.Add(new Binding("SelectedValue", bindingSource, "FK_Parentesco"));
            txtIRRF.DataBindings.Add(new Binding("Text", bindingSource, "IRRF", true));
            txtSalFamilia.DataBindings.Add(new Binding("Text", bindingSource, "Salario_Familia", true));
            CarregaIdioma();
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Exclusão", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    DataGridViewRow row = dataGridView.CurrentCell.OwningRow;
                    string ID = row.Cells["ID"].Value.ToString();

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "delete FROM RH_Beneficiario Where ID = @ID";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", ID);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("ID{0} - FK_Empregado: {1}", ID, FK_Empregado));
                    bindingSource.RemoveCurrent();
                    statusCadastro = StatusCadastro.None;
                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {                    
                    int ID = (int)bindingSource.GetRelatedCurrencyManager("ID").Current;

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update RH_Beneficiario set Dependente = @Dependente, Data_Nascimento=@Data_Nascimento, " +
                                   "Estado_Civil=@Estado_Civil, FK_Parentesco=@FK_Parentesco, IRRF=@IRRF, " +
                                   "Salario_Familia=@Salario_Familia where ID=@ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Dependente", txtDependente.Text);
                        cmd.Parameters.AddWithValue("@Data_Nascimento", !txtData.MaskCompleted ? DBNull.Value : (object)txtData.Text);
                        cmd.Parameters.AddWithValue("@Estado_Civil", (cbbEstadoCivil.SelectedValue == null) ? DBNull.Value : (object)cbbEstadoCivil.SelectedValue);
                        cmd.Parameters.AddWithValue("@FK_Parentesco", (cbbParentesco.SelectedValue == null) ? DBNull.Value : (object)cbbParentesco.SelectedValue);
                        cmd.Parameters.AddWithValue("@IRRF", txtIRRF.Text);
                        cmd.Parameters.AddWithValue("@Salario_Familia", txtSalFamilia.Text);
                        cmd.Parameters.AddWithValue("@ID", ID);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FK_Empregado.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De: {0} - Para: {1}", ((DataRowView)this.bindingSource.Current).Row["Dependente"].ToString(), txtDependente.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into RH_Beneficiario (FK_Empregado,Dependente,Data_Nascimento,Estado_Civil,FK_Parentesco,IRRF,Salario_Familia) values(@FK_Empregado,@Dependente,@Data_Nascimento,@Estado_Civil,@FK_Parentesco,@IRRF,@Salario_Familia)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@FK_Empregado", FK_Empregado);
                        cmd.Parameters.AddWithValue("@Dependente", txtDependente.Text);
                        cmd.Parameters.AddWithValue("@Data_Nascimento", !txtData.MaskCompleted ? DBNull.Value : (object)txtData.Text);
                        cmd.Parameters.AddWithValue("@Estado_Civil", (cbbEstadoCivil.SelectedValue == null) ? DBNull.Value : (object)cbbEstadoCivil.SelectedValue);
                        cmd.Parameters.AddWithValue("@FK_Parentesco", (cbbParentesco.SelectedValue == null) ? DBNull.Value : (object)cbbParentesco.SelectedValue);
                        cmd.Parameters.AddWithValue("@IRRF", txtIRRF.Text);
                        cmd.Parameters.AddWithValue("@Salario_Familia", txtSalFamilia.Text);
                        cmd.ExecuteNonQuery();
                    }
                    bindingSource.DataSource = getBeneficiario();
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("FK_Empregado: {0} - Data: {1} - Dependente:{2} ", FK_Empregado, txtData.Text, txtDependente.Text));
                }

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
                bindingSource.DataSource = getBeneficiario();
                dataGridView.DataSource = bindingSource;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
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

        private void CarregaIdioma()
        {

            ResourceManager resourceManager = new ResourceManager("MS2000.Desktop.Idiomas.res", typeof(FrmBeneficiario).Assembly);
            this.Text = resourceManager.GetString("rh_beneficiario");
            
            //Tradução dos Botões
            btnNovo.Text = resourceManager.GetString("novo");
            btnFechar.Text = resourceManager.GetString("fechar");
            btnSalvar.Text = resourceManager.GetString("salvar");
            btnExcluir.Text = resourceManager.GetString("deletar");
            btnCancelar.Text = resourceManager.GetString("cancelar");
            btnEditar.Text = resourceManager.GetString("editar");
            printToolStripButton.Text = resourceManager.GetString("relatorios");
            //Tradução dos Botões
            tabFormulario.Text = resourceManager.GetString("beneficiarios");
            label1.Text = resourceManager.GetString("data_nascimento");
            label3.Text = resourceManager.GetString("dependente");
            label4.Text = resourceManager.GetString("estado_civil");

            label2.Text = resourceManager.GetString("irrf");
            label11.Text = resourceManager.GetString("parentesco");
            label12.Text = resourceManager.GetString("salario_familia");


            Dependente.HeaderText = resourceManager.GetString("dependente");
            Descricao.HeaderText = resourceManager.GetString("parentesco");
            Data_Nascimento.HeaderText = resourceManager.GetString("data_nascimento");

        }
    }
}
