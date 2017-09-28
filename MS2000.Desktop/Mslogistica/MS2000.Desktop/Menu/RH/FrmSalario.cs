using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Reflection;
using System.Resources;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmSalario : MS2000.Desktop.Componentes.MSForm01
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

        public FrmSalario()
        {
            InitializeComponent();
        }

        private DataTable getSalario()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select ID,FK_Empregado,Data,Salario,Motivo,Jornada FROM RH_Salario Where FK_Empregado = @FK_Empregado order by Data";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@FK_Empregado", FK_Empregado);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                   // table.Columns.Add("Motivo", setEnumValues(cbbMotivo, typeof(MotivoAlteracaoSalario)));
                    table.Load(reader);
                    return table;
                }
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
            // NOTE: It is very important that DisplayMember and ValueMember are set before DataSource.
            //       If you do, this works fine, and the SelectedValue of the ComboBox will be an int
            //       version of the Enum.
            //       If you don't, it will be a KeyValuePair.
            cxbx.DisplayMember = "Key";
            cxbx.ValueMember = "Value";
            cxbx.DataSource = list;
        }


        private void FrmSalario_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;

            Dictionary<string, int> CustomerTypeList = new Dictionary<string, int>();           

            foreach (int enumValue in Enum.GetValues(typeof(MotivoAlteracaoSalario)))
            {
                CustomerTypeList.Add(Enum.GetName(typeof(MotivoAlteracaoSalario), enumValue), enumValue);
            }

            setEnumValues(cbbMotivo, typeof(MotivoAlteracaoSalario));           

            statusCadastro = StatusCadastro.None;

            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getSalario();
            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtData.DataBindings.Add(new Binding("Text", bindingSource, "Data", true, DataSourceUpdateMode.Never));
            cbbMotivo.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Motivo"));
            txtSalario.DataBindings.Add(new Binding("Text", bindingSource, "Salario", true, DataSourceUpdateMode.OnValidation, "0.00", "N"));
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
                    int ID = (int)bindingSource.GetRelatedCurrencyManager("ID").Current;   
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "delete FROM RH_Salario Where ID = @ID";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", ID);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("FK_Empregado{0} - Salário: {1}",FK_Empregado, txtSalario.Text));
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
                    int ID = (int)bindingSource.GetRelatedCurrencyManager("ID").Current;

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update RH_Salario set Data=@Data, Salario=@Salario, Motivo=@Motivo where ID=@ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Data", !txtData.MaskCompleted ? DBNull.Value : (object)txtData.Text);
                        cmd.Parameters.AddWithValue("@Salario", Convert.ToDouble(txtSalario.Text));
                        cmd.Parameters.AddWithValue("@Motivo", (cbbMotivo.SelectedValue == null) ? DBNull.Value : (object)cbbMotivo.SelectedValue);
                        cmd.Parameters.AddWithValue("@ID", ID);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FK_Empregado.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De: {0} - Para: {1}", ((DataRowView)this.bindingSource.Current).Row["Salario"].ToString(), txtSalario.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into RH_Salario (FK_Empregado,Data,Salario,Motivo) values(@FK_Empregado,@Data,@Salario,@Motivo)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@FK_Empregado", FK_Empregado);
                        cmd.Parameters.AddWithValue("@Data", !txtData.MaskCompleted ? DBNull.Value : (object)txtData.Text);
                        cmd.Parameters.AddWithValue("@Salario", Convert.ToDouble(txtSalario.Text));
                        cmd.Parameters.AddWithValue("@Motivo", (cbbMotivo.SelectedValue == null) ? DBNull.Value : (object)cbbMotivo.SelectedValue);
                        cmd.ExecuteNonQuery();
                    }
                    bindingSource.DataSource = getSalario();
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("FK_Empregado: {0} - Data: {1} - Salario:{2} ", FK_Empregado, txtData.Text, txtSalario.Text));
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
                bindingSource.DataSource = getSalario();
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

        private void dataGridView_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            //if (e.ColumnIndex == 3) // column of the enum
            //{
            //    try
            //    {
            //        e.Value = cbbMotivo.Text;
            //    }
            //    catch (Exception ex)
            //    {
            //        e.Value = ex.Message;
            //    }
            //}
        }

        private void CarregaIdioma()
        {

            ResourceManager resourceManager = new ResourceManager("MS2000.Desktop.Idiomas.res", typeof(FrmCargo).Assembly);
            this.Text = resourceManager.GetString("rh_alteracoes_salariais");
            //Tradução dos Botões
            btnNovo.Text = resourceManager.GetString("novo");
            btnFechar.Text = resourceManager.GetString("fechar");
            btnSalvar.Text = resourceManager.GetString("salvar");
            btnExcluir.Text = resourceManager.GetString("deletar");
            btnCancelar.Text = resourceManager.GetString("cancelar");
            btnEditar.Text = resourceManager.GetString("editar");
            printToolStripButton.Text = resourceManager.GetString("relatorios");
            //Tradução dos Botões
            tabFormulario.Text = resourceManager.GetString("alteracoes_salariais");
            label1.Text = resourceManager.GetString("data");
            label12.Text = resourceManager.GetString("salario");
            label11.Text = resourceManager.GetString("motivo");

            Data.HeaderText = resourceManager.GetString("data");
            Salario.HeaderText = resourceManager.GetString("salario");

        }
    }
}
