using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Cadastros
{
    public partial class FrmHabilitacaoRepetro : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        const string CODIGO_IN = "1415";

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
            mcbbImportadores.Enabled = (statusCadastro == StatusCadastro.None);
            dataGridViewLocais.Enabled = (statusCadastro == StatusCadastro.None);
            bindingNavigatorLocais.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }
            VerificaBotoes();
            txtCodigo.Enabled = false;
        }

        public FrmHabilitacaoRepetro()
        {
            InitializeComponent();
        }

        private void FrmContratoHabilitacaoRepetro_Load(object sender, EventArgs e)
        {
            getImportadores();
            getRegime();
            bindingNavigator.DeleteItem = null;
            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);
            dataGridView.AutoGenerateColumns = false;
            mcbbImportadores_SelectedIndexChanged(null, null);
        }

        private void getImportadores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Codigo, Razao_Social +'  (CNPJ: '+ cnpj_cpf_completo +')' as Razao_Social from Importadores order by Razao_Social";
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
                mcbbImportadores.DataSource = table;
                mcbbImportadores.DisplayMember = "Razao_Social";
                mcbbImportadores.ValueMember = "Codigo";
                mcbbImportadores.SelectedIndex = 0;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getRegime()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Codigo, Descricao from TAB_REGIME_FUNDAMENTO where Regime = 5 order by Descricao";
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
                cbbRegime.DataSource = table;
                cbbRegime.DisplayMember = "Descricao";
                cbbRegime.ValueMember = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private DataTable getContratos(string importador)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Importador, Contrato, Descricao, Vigencia_inicial, Vigencia_final,Tipo, Data_Baixa," +
                "Data_prorrogacao, Repetro, Ativo, Cod_Regime_Fundamento, INs, Setor, Identificacao, Valor_Icms FROM Contratos Where Importador = @Importador and Setor = 'JUR' ";

            DataTable table;
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Importador", importador);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private DataTable getLocaisInventario(string importador, string contrato)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Contrato, Descricao, ativo, local " +
                "FROM Locais_Inventario Where Importador = @Importador and contrato = @contrato and Setor = 'JUR'";

            DataTable table;
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Importador", importador);
                cmd.Parameters.AddWithValue("@contrato", contrato);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void PreencheContrato()
        {
            bindingSource.DataSource = getContratos(mcbbImportadores.SelectedValue.ToString());

            if (bindingSource.Count > 0)
            {
                dataGridView.DataSource = bindingSource;
                bindingNavigator.BindingSource = bindingSource;
                txtCodigo.DataBindings.Clear();
                txtDescricao.DataBindings.Clear();
                txtVigenciaInicial.DataBindings.Clear();
                txtVigenciaFinal.DataBindings.Clear();
                txtIN.DataBindings.Clear();
                ckbAtivo.DataBindings.Clear();
                cbbRegime.DataBindings.Clear();

                txtCodigo.DataBindings.Add(new Binding("Text", bindingSource, "Contrato", true));
                txtDescricao.DataBindings.Add(new Binding("Text", bindingSource, "Descricao", true));
                txtVigenciaInicial.DataBindings.Add(new Binding("Text", bindingSource, "Vigencia_inicial", true, DataSourceUpdateMode.OnValidation, "  /  /"));
                txtVigenciaFinal.DataBindings.Add(new Binding("Text", bindingSource, "Vigencia_final", true, DataSourceUpdateMode.OnValidation, "  /  /"));
                txtIN.DataBindings.Add(new Binding("Text", bindingSource, "INs", true));
                ckbAtivo.DataBindings.Add(new Binding("Checked", bindingSource, "Ativo", true));
                cbbRegime.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Cod_Regime_Fundamento"));
            }
        }

        private void mcbbImportadores_SelectedIndexChanged(object sender, EventArgs e)
        {
            PreencheContrato();
            bindingSource_BindingComplete(null, null);
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            txtCodigo.Enabled = false;
            txtIN.Text = CODIGO_IN;
            ckbAtivo.Checked = true;
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            txtCodigo.Enabled = false;
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtDescricao.Text))
            {
                MessageBox.Show("A Descrição é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricao.Focus();
                return;
            }
            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "UPDATE Contratos " +
                        " SET Descricao = @Descricao , Vigencia_inicial = @VigenciaInicial , Vigencia_final = @VigenciaFinal , Ativo = @Ativo ,Cod_Regime_Fundamento =@Cod_Regime_Fundamento  ,INs =@IN " +
                        "where Contrato = @codigo and Importador = @Importador";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Codigo", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@Importador", (mcbbImportadores.SelectedValue == null) ? (object)DBNull.Value : mcbbImportadores.SelectedValue);
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@VigenciaInicial", txtVigenciaInicial.MaskCompleted ? (object)txtVigenciaInicial.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@VigenciaFinal", txtVigenciaFinal.MaskCompleted ? (object)txtVigenciaFinal.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Ativo", ckbAtivo.Checked);
                        cmd.Parameters.AddWithValue("@Cod_Regime_Fundamento", (cbbRegime.SelectedValue == null) ? (object)DBNull.Value : cbbRegime.SelectedValue);
                        cmd.Parameters.AddWithValue("@IN", txtIN.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtCodigo.Text,FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),
                                              string.Format("De: {0} Para: {1}  Vigencia Inicial: {2} Para: {3}  Vigencia Final: {4} Para: {5}",
                                              ((DataRowView)this.bindingSource.Current).Row["descricao"].ToString(), txtDescricao.Text,
                                              ((DataRowView)this.bindingSource.Current).Row["Vigencia_inicial"].ToString(), txtVigenciaInicial.Text,
                                              ((DataRowView)this.bindingSource.Current).Row["Vigencia_final"].ToString(), txtVigenciaFinal.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into contratos " +
                        "(Importador, Contrato, Descricao, Vigencia_inicial, Vigencia_final," +
                        " Ativo, Cod_Regime_Fundamento, INs, Setor)" +
                        "values" +
                        "(@Importador, @Contrato, @Descricao, @Vigencia_inicial, @Vigencia_final," +
                        "@Ativo, @Cod_Regime_Fundamento, @INs, @Setor); SELECT SCOPE_IDENTITY()";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Importador", (mcbbImportadores.SelectedValue == null ? (object)DBNull.Value : mcbbImportadores.SelectedValue));
                        cmd.Parameters.AddWithValue("@Contrato", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@Vigencia_inicial", txtVigenciaInicial.MaskCompleted ? (object)txtVigenciaInicial.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Vigencia_final", txtVigenciaFinal.MaskCompleted ? (object)txtVigenciaFinal.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Ativo", Convert.ToBoolean(ckbAtivo.Checked));
                        cmd.Parameters.AddWithValue("@Cod_Regime_Fundamento", (cbbRegime.SelectedValue == null ? (object)DBNull.Value : cbbRegime.SelectedValue));
                        cmd.Parameters.AddWithValue("@INs", txtIN.Text);
                        cmd.Parameters.AddWithValue("@Setor", "JUR");
                        var returnValue = cmd.ExecuteScalar();
                        txtCodigo.Text = returnValue.ToString();
                    }
                    PreencheContrato();
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Descricao:{0}", txtDescricao.Text));
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

        private void rdbAtivos_CheckedChanged(object sender, EventArgs e)
        {
            bindingSource.Filter = "Ativo = '1'";
        }

        private void rdbInativos_CheckedChanged(object sender, EventArgs e)
        {
            bindingSource.Filter = "Ativo = '0'";
        }

        private void rdbTodos_CheckedChanged(object sender, EventArgs e)
        {
            bindingSource.RemoveFilter();
        }

        private void btnNovoLocal_Click(object sender, EventArgs e)
        {
            using (var form = new FrmLocalHabilitacaoRepetro())
            {
                form.Contrato = txtCodigo.Text;
                form.Importador = mcbbImportadores.SelectedValue.ToString();
                form.statusCadastro = StatusCadastro.Novo;
                if (FrmPrincipal.ShowModalMdiChildren(form) == DialogResult.OK)
                {
                    bindingSource_BindingComplete(null, null);
                }
            }
        }

        private void btnEditarLocal_Click(object sender, EventArgs e)
        {
            using (var form = new FrmLocalHabilitacaoRepetro())
            {
                form.Contrato = txtCodigo.Text;
                form.Importador = mcbbImportadores.SelectedValue.ToString();
                form.Local = ((DataRowView)bindingSourceLocal.Current).Row["Local"].ToString();
                form.statusCadastro = StatusCadastro.Editar;

                if (FrmPrincipal.ShowModalMdiChildren(form) == DialogResult.OK)
                {
                    bindingSource_BindingComplete(null, null);
                }
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void bindingSource_BindingComplete(object sender, BindingCompleteEventArgs e)
        {
            bindingNavigatorLocais.DeleteItem = null;
            dataGridViewLocais.AutoGenerateColumns = false;
            bindingNavigatorLocais.BindingSource = bindingSourceLocal;
            bindingSourceLocal.DataSource = getLocaisInventario(mcbbImportadores.SelectedValue.ToString(), txtCodigo.Text);

            if (bindingSourceLocal.Count > 0)
            {
                dataGridViewLocais.DataSource = null;
                dataGridViewLocais.DataSource = bindingSourceLocal;
                bindingNavigatorLocais.BindingSource = bindingSourceLocal;
                btnEditarLocal.Enabled = true;
            }
            else
            {
                dataGridViewLocais.DataSource = null;
                btnEditarLocal.Enabled = false;
            }
        }
    }
}
