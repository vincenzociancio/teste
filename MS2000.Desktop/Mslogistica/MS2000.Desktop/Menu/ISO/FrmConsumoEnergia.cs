using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmConsumoEnergia : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
            groupBox1.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }
      
        public FrmConsumoEnergia()
        {
            InitializeComponent();
        }

        private void FrmConsumoEnergia_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);

            Dictionary<string, int> CustomerTypeList = new Dictionary<string, int>();

            foreach (int enumValue in Enum.GetValues(typeof(Meses)))
            {
                CustomerTypeList.Add(Enum.GetName(typeof(Meses), enumValue), enumValue);
            }
            cbbMes.DisplayMember = "Key";
            cbbMes.ValueMember = "Value";
            cbbMes.DataSource = new BindingSource(CustomerTypeList, null);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getConsumoEnergia();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            nudAno.DataBindings.Add(new Binding("Text", bindingSource, "Ano", true, DataSourceUpdateMode.OnValidation, DateTime.Now.Year));
            cbbMes.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Mes", true, DataSourceUpdateMode.Never));
            txtLuzConselheiro.DataBindings.Add(new Binding("Text", bindingSource, "Conta_Luz_CS", true));
            txtLuzGerardo.DataBindings.Add(new Binding("Text", bindingSource, "Conta_Lus_DG", true));
            txtEfetivo.DataBindings.Add(new Binding("Text", bindingSource, "Efetivo_Mensal", true));
            dataGridView.Columns["Relacao_Energia_Efetivo"].DefaultCellStyle.Format = "N2";
        }
        
        private DataTable getConsumoEnergia()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select PK_ID, Ano,Mes,Conta_Luz_CS,Conta_Lus_DG,(Conta_Luz_CS + Conta_Lus_DG) as Total_Ms, "+
                           "Efetivo_Mensal,( Case when (Efetivo_Mensal) = 0 then 0  " +
                           "else ((Conta_Luz_CS + Conta_Lus_DG)/Efetivo_Mensal) end) as Relacao_Energia_Efetivo from Consumo_Energia ORDER BY Ano,Mes";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Columns.Add("Mes", typeof(Meses));
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
            nudAno.Value = Convert.ToInt32(DateTime.Now.Year);
            cbbMes.SelectedValue = Convert.ToInt32(DateTime.Now.Month);
            txtLuzConselheiro.Text = "0";
            txtLuzGerardo.Text = "0";
            txtEfetivo.Text = "0";
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    DataGridViewRow row = dataGridView.CurrentCell.OwningRow;
                    string ID = row.Cells["pk_id"].Value.ToString();

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "delete from Consumo_Energia where PK_ID=@ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", ID);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(ID, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Ano: {0} - Mês: {1} - Total: {2} ", nudAno.Text, cbbMes.Text, txtEfetivo.Text));
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
                    DataGridViewRow row = dataGridView.CurrentCell.OwningRow;
                    string ID = row.Cells["pk_id"].Value.ToString();

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Consumo_Energia set Ano=@Ano, Mes=@Mes,Conta_Luz_CS =@Conta_Luz_CS ,Conta_Lus_DG =@Conta_Lus_DG ,Efetivo_Mensal =@Efetivo_Mensal where pk_id=@id";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Ano", nudAno.Text);
                        cmd.Parameters.AddWithValue("@Mes", (cbbMes.SelectedValue == null) ? "" : cbbMes.SelectedValue);
                        cmd.Parameters.AddWithValue("@Conta_Luz_CS", txtLuzConselheiro.Text);
                        cmd.Parameters.AddWithValue("@Conta_Lus_DG", txtLuzGerardo.Text);
                        cmd.Parameters.AddWithValue("@Efetivo_Mensal", txtEfetivo.Text);
                        cmd.Parameters.AddWithValue("@id", ID);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(ID, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De: {0} - Para: {1}", ((DataRowView)this.bindingSource.Current).Row["Efetivo_Mensal"].ToString(), txtEfetivo.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into Consumo_Energia  (Ano, Mes,conta_luz_cs,conta_lus_dg,efetivo_mensal) values(@Ano, @Mes, @conta_luz_cs,@conta_lus_dg,@efetivo_mensal)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Ano", nudAno.Text);
                        cmd.Parameters.AddWithValue("@Mes", (cbbMes.SelectedValue == null) ? "" : cbbMes.SelectedValue);
                        cmd.Parameters.AddWithValue("@conta_luz_cs", txtLuzConselheiro.Text);
                        cmd.Parameters.AddWithValue("@conta_lus_dg", txtLuzGerardo.Text);
                        cmd.Parameters.AddWithValue("@efetivo_mensal", txtEfetivo.Text); 
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Ano: {0} - Mês: {1} - Total:{2} ", nudAno.Text, cbbMes.Text, txtEfetivo.Text));
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
                bindingSource.DataSource = getConsumoEnergia();
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

        private void txtLocalizar_TextChanged(object sender, EventArgs e)
        {
            bindingSource.Filter = "Convert(Ano, 'System.String') like '" + txtLocalizar.Text + "%'";
        }

        public static void SomenteNumero(KeyPressEventArgs e)
        {
            if (char.IsLetter(e.KeyChar) || //Letras
                char.IsSymbol(e.KeyChar) || //Símbolos
                char.IsWhiteSpace(e.KeyChar) || //Espaço
                char.IsPunctuation(e.KeyChar)) //Pontuação
                e.Handled = true; //Não permitir           
        }

        private void txtLuzConselheiro_KeyPress(object sender, KeyPressEventArgs e)
        {
            SomenteNumero(e);
        }

        private void txtLuzGerardo_KeyPress(object sender, KeyPressEventArgs e)
        {
            SomenteNumero(e);
        }

        private void txtEfetivo_KeyPress(object sender, KeyPressEventArgs e)
        {
            SomenteNumero(e);
        }

        
    }
}
