using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Reflection;
using System.Resources;
using System.Threading;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmCargo : MS2000.Desktop.Componentes.MSForm01
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

        private DataTable getCargo()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select RHC.ID,FK_Empregado,Data,FK_Funcao,Motivo,RF.CBO,RF.Descricao FROM RH_Historico_Cargo RHC " +
                           "inner join RH_Funcao RF on RHC.FK_Funcao = RF.ID  Where FK_Empregado = @FK_Empregado order by Data";
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

        public FrmCargo()
        {
            InitializeComponent();
        }

        private void getFuncao()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT ID, Codigo, Descricao,CBO FROM RH_Funcao order by Descricao";
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
                cbbCargo.DataSource = table;
                cbbCargo.DisplayMember = "Descricao";
                cbbCargo.ValueMember = "ID";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        public static void setEnumValues(ComboBox cxbx, Type typ)
        {
            if (!typ.IsEnum)
            {
                throw new ArgumentException("Somente os tipos Enum pode ser definido");
            }

            List<KeyValuePair<string, int>> list = new List<KeyValuePair<string, int>>();

            foreach (int i in Enum.GetValues(typ))
            {
                string name = Enum.GetName(typ, i);
                string desc = name;
                FieldInfo fi = typ.GetField(name);

                // Get description for enum element
                DescriptionAttribute[] attributes = (DescriptionAttribute[])fi.GetCustomAttributes(typeof(DescriptionAttribute), false);
                if (attributes.Length > 0)
                {
                    string s = attributes[0].Description;
                    if (!string.IsNullOrEmpty(s))
                    {
                        desc = s;
                    }
                }

                list.Add(new KeyValuePair<string, int>(desc, i));
            }

            cxbx.DisplayMember = "Key";
            cxbx.ValueMember = "Value";
            cxbx.DataSource = list;
        }

        private void FrmCargo_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;
            getFuncao();
            CarregaIdioma();

            Dictionary<string, int> CustomerTypeList = new Dictionary<string, int>();

            foreach (int enumValue in Enum.GetValues(typeof(MotivoAlteracaoCargo)))
            {
                CustomerTypeList.Add(Enum.GetName(typeof(MotivoAlteracaoCargo), enumValue), enumValue);
            }

            setEnumValues(cbbMotivo, typeof(MotivoAlteracaoCargo));

            statusCadastro = StatusCadastro.None;

            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getCargo();
            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtData.DataBindings.Add(new Binding("Text", bindingSource, "Data", true, DataSourceUpdateMode.Never));
            cbbCargo.DataBindings.Add(new Binding("SelectedValue", bindingSource, "FK_Funcao"));
            cbbMotivo.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Motivo"));
            txtCBO.DataBindings.Add(new Binding("Text", bindingSource, "CBO", true));
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
                    string query = "delete FROM RH_Historico_Cargo Where ID = @ID";

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

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    //DataGridViewRow row = dataGridView.CurrentCell.OwningRow;
                    int ID = (int)bindingSource.GetRelatedCurrencyManager("ID").Current;
                        //row.Cells["ID"].Value.ToString();

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update RH_Historico_Cargo set Data=@Data, FK_Funcao=@FK_Funcao, Motivo=@Motivo where ID=@ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Data", !txtData.MaskCompleted ? DBNull.Value : (object)txtData.Text);
                        cmd.Parameters.AddWithValue("@FK_Funcao", (cbbCargo.SelectedValue == null) ? DBNull.Value : (object)cbbCargo.SelectedValue);
                        cmd.Parameters.AddWithValue("@Motivo", (cbbMotivo.SelectedValue == null) ? DBNull.Value : (object)cbbMotivo.SelectedValue);
                        cmd.Parameters.AddWithValue("@ID", ID);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FK_Empregado.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De: {0} - Para: {1}", ((DataRowView)this.bindingSource.Current).Row["Descricao"].ToString(), cbbCargo.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into RH_Historico_Cargo (FK_Empregado,Data,FK_Funcao,Motivo) values(@FK_Empregado,@Data,@FK_Funcao,@Motivo)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@FK_Empregado", FK_Empregado);
                        cmd.Parameters.AddWithValue("@Data", !txtData.MaskCompleted ? DBNull.Value : (object)txtData.Text);
                        cmd.Parameters.AddWithValue("@FK_Funcao", (cbbCargo.SelectedValue == null) ? DBNull.Value : (object)cbbCargo.SelectedValue);
                        cmd.Parameters.AddWithValue("@Motivo", (cbbMotivo.SelectedValue == null) ? DBNull.Value : (object)cbbMotivo.SelectedValue);
                        cmd.ExecuteNonQuery();
                    }
                    bindingSource.DataSource = getCargo();
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("FK_Empregado: {0} - Data: {1} - Descricao Cargo:{2} ", FK_Empregado, txtData.Text, cbbCargo.Text));
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

        private void cbbCargo_SelectedIndexChanged(object sender, EventArgs e)
        {
            ComboBox cb = (ComboBox)sender;
            if (cb.Focused)
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "SELECT CBO FROM RH_Funcao where ID = @ID ";
                try
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", cbbCargo.SelectedValue);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                reader.Read();
                                txtCBO.Text = reader[0].ToString();
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                return;
            }
        }

       private void CarregaIdioma() 
        {

           ResourceManager resourceManager = new ResourceManager("MS2000.Desktop.Idiomas.res", typeof(FrmCargo).Assembly);
           this.Text = resourceManager.GetString("rh_alteracoes_cargo");

           //Tradução dos Botões
           btnNovo.Text = resourceManager.GetString("novo");
           btnFechar.Text = resourceManager.GetString("fechar");
           btnSalvar.Text = resourceManager.GetString("salvar");
           btnExcluir.Text = resourceManager.GetString("deletar");
           btnCancelar.Text = resourceManager.GetString("cancelar");
           btnEditar.Text = resourceManager.GetString("editar");
           printToolStripButton.Text = resourceManager.GetString("relatorios");
           //Tradução dos Botões
            tabFormulario.Text = resourceManager.GetString("alteracao_cargo");
            label1.Text = resourceManager.GetString("data");
            label2.Text = resourceManager.GetString("cargo");
            label11.Text = resourceManager.GetString("motivo");
            label12.Text = resourceManager.GetString("cbo");

            Data.HeaderText = resourceManager.GetString("data");
            Descricao.HeaderText = resourceManager.GetString("cargo");
            CBO.HeaderText = resourceManager.GetString("cbo");
             
        }
    }
}
