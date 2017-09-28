using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Sistema
{
    public partial class FrmCadastroEquipamento : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        protected StatusCadastro statusSerie;
        int Id;
        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);

            if (statusCadastro != StatusCadastro.None)
            {
                txtLocalizarEquipamento.Enabled = false;
                gvEquipamento.Enabled = false;
            }
            else
            {
                txtLocalizarEquipamento.Enabled = true;
                gvEquipamento.Enabled = true;
            }
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in gbCadastroEquipamento.Controls)
            {
                controle.Enabled = bValue;
                if (chkGarantia.Checked == true)
                {
                    txtDataGarantia.Enabled = true;
                }
                else
                {
                    txtDataGarantia.Enabled = false;
                }
            }

            foreach (Control controle in gbCadastroSerie.Controls)
            {
                controle.Enabled = bValue;
                dataGridView1.Enabled = true;
            }

            VerificaBotoes();
            ntxtQuantidade.Enabled = false;
        }

        public FrmCadastroEquipamento()
        {

            InitializeComponent();
        }

        private void FrmCadastroEquipamento_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            getTipo();
            getFornecedor();
            PreencheGridECampos();
            if (gvEquipamento.RowCount == 0)
            {
                btnEditar.Enabled = false;
            }


        }
        private void btnExcluir_Click(object sender, EventArgs e)
        {

            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "DELETE FROM [dbo].[Sistemas.CadastroEquipamento] where ID = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", Convert.ToInt32(bsLocalizar.GetRelatedCurrencyManager("ID").Current));
                        cmd.ExecuteNonQuery();
                        string query2 = "DELETE FROM [dbo].[Sistemas.CadastroEquipamentoSerie] where FK_Equipamento = @FK_Equipamento";
                        using (SqlCommand cmd2 = new SqlCommand(query2, conn))
                        {
                            cmd2.Parameters.AddWithValue("@FK_Equipamento", Convert.ToInt32(bsLocalizar.GetRelatedCurrencyManager("ID").Current));
                            cmd2.ExecuteNonQuery();
                        }

                    }
                    LogSistemas.AddLogSistema(bsLocalizar.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Equipamento: {0}", txtEquipamento.Text));
                    statusCadastro = StatusCadastro.None;
                    bsLocalizar.RemoveCurrent();
                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bsLocalizar.AddNew();
            LimpaCampos();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            txtFabricante.Focus();

        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(mcbTipo.Text))
            {
                MessageBox.Show("O Tipo é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mcbTipo.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtEquipamento.Text))
            {
                MessageBox.Show("O Fabricante é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtEquipamento.Focus();
                return;
            }

            if (string.IsNullOrEmpty(mcbFornecedor.Text))
            {
                MessageBox.Show("O Fornecedor é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mcbFornecedor.Focus();
                return;
            }

            if (string.IsNullOrEmpty(ntxtQuantidade.Text))
            {
                MessageBox.Show("A Quantidade é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                ntxtQuantidade.Focus();
                return;
            }


            if (txtDataGarantia.Text != "  /  /" && txtDataGarantia.Text != "  /  /")
            {
                if (DateTime.ParseExact(txtDataCompra.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture) > DateTime.ParseExact(txtDataGarantia.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture))
                {
                    MessageBox.Show("A Data de Compra não pode ser maior que a Data de Garantia!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    txtDataGarantia.Focus();
                    return;
                }
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "UPDATE [dbo].[Sistemas.CadastroEquipamento] " +
                                   "SET [Equipamento] = @Equipamento,[Fabricante] = @Fabricante " +
                                   ",[FK_Fornecedor] = @Fornecedor,[DataCompra] = @DataCompra " +
                                   ",[Quantidade] = @Quantidade,[Garantia] = @Garantia " +
                                   ",[DataGarantia] = @DataGarantia " +
                                   ",[FK_Tipo] = @Tipo " +
                                   "WHERE Id= @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Equipamento", txtEquipamento.Text);
                        cmd.Parameters.AddWithValue("@Fabricante", txtFabricante.Text);
                        cmd.Parameters.AddWithValue("@Tipo", (mcbTipo.SelectedValue == null ? "" : mcbTipo.SelectedValue));
                        cmd.Parameters.AddWithValue("@Fornecedor", (mcbFornecedor.SelectedValue == null ? "" : mcbFornecedor.SelectedValue));
                        cmd.Parameters.AddWithValue("@DataCompra", txtDataCompra.MaskCompleted ? (object)txtDataCompra.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Quantidade", Convert.ToDouble(ntxtQuantidade.Text));
                        cmd.Parameters.AddWithValue("@Garantia", Convert.ToInt16(chkGarantia.Checked));
                        // cmd.Parameters.AddWithValue("@Defeito", Convert.ToInt16(chkDefeito.Checked));
                        cmd.Parameters.AddWithValue("@DataGarantia", txtDataGarantia.MaskCompleted ? (object)txtDataGarantia.Text : DBNull.Value);
                        //  cmd.Parameters.AddWithValue("@Observacao", rtxtObservacao.Text);
                        cmd.Parameters.AddWithValue("@ID", bsLocalizar.GetRelatedCurrencyManager("ID").Current.ToString());
                        cmd.ExecuteNonQuery();
                    }
                    if (dataGridView1.Rows.Count > 0)
                    {
                        SqlConnection conn2 = DatabaseSqlConnection.Instance.Conexao;
                        string query2 = "UPDATE [dbo].[Sistemas.CadastroEquipamentoSerie] " +
                                       "SET [Observacao] = @Observacao " +
                                       ",[Defeito] = @Defeito " +
                                       "WHERE Id = @ID";

                        using (SqlCommand cmd2 = new SqlCommand(query2, conn2))
                        {
                            cmd2.Parameters.AddWithValue("@Observacao", rtxtObservacao.Text);
                            cmd2.Parameters.AddWithValue("@Defeito", chkDefeito.Checked == true ? 1 : 0);
                            cmd2.Parameters.AddWithValue("@ID", bsSerie.GetRelatedCurrencyManager("ID").Current.ToString());
                            cmd2.ExecuteNonQuery();
                        }
                    }

                    if (statusSerie == StatusCadastro.Novo || statusSerie == StatusCadastro.Editar)
                    {
                        if (Convert.ToInt32(bsLocalizar.GetRelatedCurrencyManager("ID").Current.ToString()) == 0)
                        {
                            string query3 = " Select MAX(ID) as Identidade from [MS2000].[dbo].[Sistemas.CadastroEquipamento]";
                            using (SqlConnection conn3 = DatabaseSqlConnection.Instance.Conexao)
                            {
                                using (SqlCommand cmd3 = new SqlCommand(query3, conn3))
                                {
                                    using (SqlDataReader reader = cmd3.ExecuteReader())
                                    {
                                        while (reader.Read())
                                            Id = Convert.ToInt32(reader["Identidade"].ToString());
                                    }
                                }
                            }
                        }
                        else
                        {
                            Id = Convert.ToInt32(bsLocalizar.GetRelatedCurrencyManager("ID").Current.ToString());
                        }
                        SalvaSerieBanco();
                        bsSerie.DataSource = getSerie();
                    }
                    LogSistemas.AddLogSistema(bsLocalizar.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado,
                    StatusCadastro.Novo, Convert.ToInt32(this.Tag),
                    string.Format("Equipamento:{0} Fornecedor:{1} Tipo:{2} Fabricante:{3}", txtEquipamento.Text, mcbFornecedor.SelectedValue, mcbTipo.SelectedValue, txtFabricante.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO [dbo].[Sistemas.CadastroEquipamento] " +
                                   "([Equipamento],[Fabricante],[FK_Fornecedor],[DataCompra],[Quantidade] " +
                                   ",[Garantia],[DataGarantia],[FK_Tipo]) " +
                                   " VALUES " +
                                   "(@Equipamento,@Fabricante,@Fornecedor,@DataCompra,@Quantidade " +
                                   ",@Garantia,@DataGarantia,@Tipo)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Equipamento", txtEquipamento.Text);
                        cmd.Parameters.AddWithValue("@Fabricante", txtFabricante.Text);
                        cmd.Parameters.AddWithValue("@Tipo", (mcbTipo.SelectedValue == null ? "" : mcbTipo.SelectedValue));
                        cmd.Parameters.AddWithValue("@Fornecedor", (mcbFornecedor.SelectedValue == null ? "" : mcbFornecedor.SelectedValue));
                        cmd.Parameters.AddWithValue("@DataCompra", txtDataCompra.MaskCompleted ? (object)txtDataCompra.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Quantidade", Convert.ToDouble(ntxtQuantidade.Text));
                        cmd.Parameters.AddWithValue("@Garantia", Convert.ToInt16(chkGarantia.Checked));
                        // cmd.Parameters.AddWithValue("@Defeito", Convert.ToInt16(chkDefeito.Checked));
                        cmd.Parameters.AddWithValue("@DataGarantia", txtDataGarantia.MaskCompleted ? (object)txtDataGarantia.Text : DBNull.Value);
                        // cmd.Parameters.AddWithValue("@Observacao", rtxtObservacao.Text);
                        cmd.ExecuteNonQuery();
                    }

                    if (Convert.ToInt32(bsLocalizar.GetRelatedCurrencyManager("ID").Current.ToString()) == 0)
                    {
                        string query3 = " Select MAX(ID) as Identidade from [MS2000].[dbo].[Sistemas.CadastroEquipamento]";
                        using (SqlConnection conn3 = DatabaseSqlConnection.Instance.Conexao)
                        {
                            using (SqlCommand cmd3 = new SqlCommand(query3, conn3))
                            {
                                using (SqlDataReader reader = cmd3.ExecuteReader())
                                {
                                    while (reader.Read())
                                        Id = Convert.ToInt32(reader["Identidade"].ToString());
                                }
                            }
                        }
                    }
                    else
                    {
                        Id = Convert.ToInt32(bsLocalizar.GetRelatedCurrencyManager("ID").Current.ToString());
                    }

                    SalvaSerieBanco();
                    bsLocalizar.DataSource = getEquipamento();
                    LogSistemas.AddLogSistema(bsLocalizar.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado,
                    StatusCadastro.Novo, Convert.ToInt32(this.Tag),
                    string.Format("Equipamento:{0} Fornecedor:{1} Tipo:{2} Fabricante:{3}", txtEquipamento.Text, mcbFornecedor.SelectedValue, mcbTipo.SelectedValue, txtFabricante.Text));
                }

                if (statusCadastro == StatusCadastro.Editar)
                {
                    MessageBox.Show("Registro alterado com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    bsLocalizar.DataSource = getEquipamento();
                }
                else
                {
                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    bsLocalizar.DataSource = getEquipamento();
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
            if (statusCadastro == StatusCadastro.Editar && statusSerie == StatusCadastro.Novo)
            {
                if (MessageBox.Show("Você esta editando uma Série, caso cancele sem salvar a Série será excluida, deseja prosseguir?", "Cancelar", MessageBoxButtons.OKCancel, MessageBoxIcon.Error) == DialogResult.OK)
                {
                    bsLocalizar.CancelEdit();
                    bsLocalizar.DataSource = getEquipamento();
                    statusCadastro = StatusCadastro.None;
                    HabilitarDesabilitaControles(false);
                    lvSerie.Items.Clear();
                }
            }
            else
            {
                bsLocalizar.CancelEdit();
                bsLocalizar.DataSource = getEquipamento();
                statusCadastro = StatusCadastro.None;
                HabilitarDesabilitaControles(false);
                lvSerie.Items.Clear();
            }

            if (statusCadastro == StatusCadastro.Novo)
            {
                LimpaCampos();
                bsLocalizar.CancelEdit();
                bsLocalizar.DataSource = getEquipamento();
                statusCadastro = StatusCadastro.None;
                HabilitarDesabilitaControles(false);
                lvSerie.Items.Clear();
            }


        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
        }

        private void btnEditaSerie_Click(object sender, EventArgs e)
        {
            if (lvSerie.SelectedItems.Count != 0 || dataGridView1.SelectedCells.Count != 0)
            {
                statusSerie = StatusCadastro.Editar;
                if (lvSerie.SelectedItems.Count > 0)
                {
                    MessageBox.Show("Você esta editando a Série ' " + lvSerie.Items[lvSerie.SelectedIndices[0]].Text + " ' da lista da esquerda.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    txtSerie.Text = lvSerie.Items[lvSerie.SelectedIndices[0]].Text;
                }
                else
                {
                    statusSerie = StatusCadastro.Novo;
                    txtSerie.Text = bsSerie.GetRelatedCurrencyManager("Serie").Current.ToString();
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query = "DELETE FROM [dbo].[Sistemas.CadastroEquipamentoSerie] where ID = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", Convert.ToInt32(bsSerie.GetRelatedCurrencyManager("ID").Current));
                        cmd.ExecuteNonQuery();
                        dataGridView1.SelectionChanged -= dataGridView1_SelectionChanged;
                        bsSerie.RemoveCurrent();
                    }

                }
            }
            else
            {
                MessageBox.Show("Por favor Selecione um item para editar!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtSerie.Focus();
                return;
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private DataTable getEquipamento()
        {

            string query = " Select * from [MS2000].[dbo].[Sistemas.CadastroEquipamento] as CAD inner join " +
                           "[MS2000].[dbo].[Sistemas.CadastroEquipamentoTipo] as T on T.ID = CAD.FK_Tipo inner join " +
                           "[MS2000].[dbo].[Fornecedores] as F on F.ID = CAD.FK_Fornecedor order by CAD.ID";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
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
        }
        private void getFornecedor()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Id, Razao_Social from Fornecedores order by Razao_Social ";
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
                mcbFornecedor.DataSource = null;
                mcbFornecedor.DataSource = table;
                mcbFornecedor.DisplayMember = "Razao_Social";
                mcbFornecedor.ValueMember = "Id";
                mcbFornecedor.SelectedIndex = -1;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void getTipo()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select ID, Descricao from [dbo].[Sistemas.CadastroEquipamentoTipo] order by ID ASC ";
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
                mcbTipo.DataSource = null;
                mcbTipo.DataSource = table;
                mcbTipo.DisplayMember = "Descricao";
                mcbTipo.ValueMember = "ID";
                mcbTipo.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void LimpaCampos()
        {
            lvSerie.Items.Clear();
            txtSerie.Clear();
            txtFabricante.Clear();
            txtEquipamento.Clear();
            mcbFornecedor.SelectedIndex = -1;
            txtDataCompra.Clear();
            ntxtQuantidade.Clear();
            txtTelefone.Clear();
            mcbTipo.SelectedIndex = -1;
            chkGarantia.Checked = false;
            txtDataGarantia.Clear();
            rtxtObservacao.Clear();
            chkDefeito.Checked = false;
        }

        private void PreencheGridECampos()
        {
            bsLocalizar.DataSource = getEquipamento();
            bindingNavigator.BindingSource = bsLocalizar;
            txtFabricante.DataBindings.Add(new Binding("Text", bsLocalizar, "Fabricante"));
            txtEquipamento.DataBindings.Add(new Binding("Text", bsLocalizar, "Equipamento", true));
            mcbFornecedor.DataBindings.Add(new Binding("SelectedValue", bsLocalizar, "FK_Fornecedor"));
            txtDataCompra.DataBindings.Add(new Binding("Text", bsLocalizar, "DataCompra", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            ntxtQuantidade.DataBindings.Add(new Binding("Text", bsLocalizar, "Quantidade", true));
            mcbTipo.DataBindings.Add(new Binding("SelectedValue", bsLocalizar, "FK_Tipo", true));
            chkGarantia.DataBindings.Add(new Binding("Checked", bsLocalizar, "Garantia", true));
            txtDataGarantia.DataBindings.Add(new Binding("Text", bsLocalizar, "DataGarantia", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            // rtxtObservacao.DataBindings.Add(new Binding("Text", bsLocalizar, "Observacao", true));
            //  chkDefeito.DataBindings.Add(new Binding("Checked", bsLocalizar, "Defeito", true));

            bsSerie.DataSource = getSerie();

        }

        private DataTable getSerie()
        {
            if (gvEquipamento.RowCount != 0)
            {
                string query = "Select *, CASE WHEN Defeito=1 THEN 'Sim' " +
           "WHEN Defeito=0 THEN 'Não' " +
           "END AS  [DefeitoString] from [dbo].[Sistemas.CadastroEquipamentoSerie] " +
           "where FK_Equipamento = @FK_Equipamento";
                //txtTelefone.Text = bsLocalizar.GetRelatedCurrencyManager("Telefone").Current.ToString();
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {

                        cmd.Parameters.AddWithValue("@FK_Equipamento", bsLocalizar.GetRelatedCurrencyManager("ID").Current.ToString());

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            DataTable table = new DataTable();
                            if (dataGridView1.Rows.Count > 0)
                            {
                                ntxtQuantidade.Text = ContaSerie().ToString();
                                rtxtObservacao.Text = bsSerie.GetRelatedCurrencyManager("Observacao").Current.ToString();
                                chkDefeito.Checked = Convert.ToInt16(chkDefeito.Checked) == 1 ? true : false;
                            }
                            table.Load(reader);
                            return table;
                        }
                    }
                }

            }
            else
            {
                DataTable table = new DataTable();
                return table;
            }
        }

        private void txtLocalizarEquipamento_TextChanged(object sender, EventArgs e)
        {
            bsLocalizar.Filter = "Equipamento LIKE '" + txtLocalizarEquipamento.Text + "%'";
        }

        private void gvEquipamento_CellContentDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (gvEquipamento.Columns[e.ColumnIndex].Name == "Upload")
            {
                var form = new FrmCadastroEquipamentoUpload();
                form.ID = gvEquipamento.Rows[e.RowIndex].Cells["IDEquipamento"].Value.ToString();
                form.Equipamento = gvEquipamento.Rows[e.RowIndex].Cells["Equipamento"].Value.ToString();
                FrmPrincipal.ShowModalMdiChildren(form);
            }
        }

        private void btnIncluiSerie_Click(object sender, EventArgs e)
        {
            foreach (ListViewItem item in lvSerie.Items)
            {
                if (txtSerie.Text == item.Text)
                {
                    MessageBox.Show("O Nº de Série / Service Tag não pode ser repetido!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    txtSerie.Focus();
                    return;
                }
            }
            bsSerie.Filter = "Serie = '" + txtSerie.Text + "'";
            if (bsSerie.Count > 0)
            {
                MessageBox.Show("O Nº de Série / Service Tag não pode ser repetido!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtSerie.Focus();
                bsSerie.RemoveFilter();
                return;
            }
            else
            {
                dataGridView1.SelectionChanged -= dataGridView1_SelectionChanged;
                bsSerie.RemoveFilter();
            }
            if (statusSerie == StatusCadastro.Editar)
            {

                lvSerie.Items[lvSerie.SelectedIndices[0]].Text = txtSerie.Text;
                txtSerie.Clear();
                statusSerie = StatusCadastro.None;
            }
            else
            {
                if (!string.IsNullOrEmpty(txtSerie.Text) && !string.IsNullOrWhiteSpace(txtSerie.Text))
                {
                    lvSerie.Enabled = true;
                    ListViewItem item1 = new ListViewItem(txtSerie.Text);
                    item1.SubItems.Add(chkDefeito.Checked ? "Sim" : "Não");
                    item1.SubItems.Add(rtxtObservacao.Text);
                    lvSerie.Items.AddRange(new ListViewItem[] { item1 });
                    ntxtQuantidade.Text = lvSerie.Items.Count.ToString();
                    txtSerie.Clear();
                    rtxtObservacao.Clear();
                    chkDefeito.Checked = false;
                    statusSerie = StatusCadastro.Novo;
                    dataGridView1.SelectionChanged += dataGridView1_SelectionChanged;
                }
                else
                {
                    MessageBox.Show("O Nº de Série / Service Tag precisa ser preenchido!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                }

            }

        }



        private void gvEquipamento_SelectionChanged(object sender, EventArgs e)
        {
            bsSerie.DataSource = getSerie();
            if (gbCadastroEquipamento.Enabled)
            {
                txtDataGarantia.Enabled = false;
            }

        }

        private void SalvaSerieBanco()
        {
            foreach (ListViewItem item in lvSerie.Items)
            {
                SqlConnection conn2 = DatabaseSqlConnection.Instance.Conexao;
                string querySerie = "INSERT INTO [dbo].[Sistemas.CadastroEquipamentoSerie]" +
               " ([Serie],[Defeito],[Observacao],[FK_Equipamento]) " +
               " VALUES " +
               "(@Serie,@Defeito,@Observacao,@FK_Equipamento)";

                using (SqlCommand cmd2 = new SqlCommand(querySerie, conn2))
                {
                    cmd2.Parameters.AddWithValue("@Serie", item.Text);
                    cmd2.Parameters.AddWithValue("@Defeito", Convert.ToInt16((item.SubItems[1].Text == "Sim") ? true : false));
                    cmd2.Parameters.AddWithValue("@Observacao", item.SubItems[2].Text);
                    cmd2.Parameters.AddWithValue("@FK_Equipamento", Id == 0 ? 1 : Id);
                    cmd2.ExecuteNonQuery();
                }
            }
            lvSerie.Items.Clear();
        }

        private void PopulaTextTelefone()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Telefone from [dbo].[Fornecedores] where ID = " + mcbFornecedor.SelectedValue;
            DataTable table;
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                            txtTelefone.Text = reader["Telefone"].ToString();
                    }
                }


            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void chkGarantia_CheckedChanged(object sender, EventArgs e)
        {
            if (chkGarantia.Checked == true)
            {
                txtDataGarantia.Enabled = true;
            }
            else
            {
                txtDataGarantia.Enabled = false;
            }
        }

        private void mcbTipo_SelectionChangeCommitted(object sender, EventArgs e)
        {
            txtEquipamento.Focus();
        }

        private void mcbFornecedor_SelectionChangeCommitted(object sender, EventArgs e)
        {
            PopulaTextTelefone();
        }

        private void mcbFornecedor_DropDownClosed(object sender, EventArgs e)
        {

        }

        private int ContaSerie()
        {
            int lvserie;
            int gvserie;

            lvserie = lvSerie.Items.Count;
            gvserie = dataGridView1.Rows.Count;

            return lvserie + gvserie;

        }

        private void dataGridView1_SelectionChanged(object sender, EventArgs e)
        {

            if (dataGridView1.Rows.Count > 0)
            {
                string query = "Select *, CASE WHEN Defeito=1 THEN 'Sim' " +
           "WHEN Defeito=0 THEN 'Não' " +
           "END AS  [DefeitoString] from [dbo].[Sistemas.CadastroEquipamentoSerie] " +
           "where ID = @ID";

                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {

                        cmd.Parameters.AddWithValue("@ID", bsSerie.GetRelatedCurrencyManager("ID").Current.ToString());

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (dataGridView1.Rows.Count > 0)
                            {
                                while (reader.Read())
                                {
                                    txtSerie.Text = reader["Serie"].ToString();
                                    ntxtQuantidade.Text = ContaSerie().ToString();
                                    rtxtObservacao.Text = reader["Observacao"].ToString();
                                    chkDefeito.Checked = Convert.ToInt16(reader["Defeito"]) == 1 ? true : false;
                                }
                            }
                        }
                    }
                }
            }

        }

    }
}
