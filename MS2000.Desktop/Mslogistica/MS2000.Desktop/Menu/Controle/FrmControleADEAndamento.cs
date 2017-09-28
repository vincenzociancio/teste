using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmControleADEAndamento : MS2000.Desktop.Componentes.MSForm01
    {

        protected StatusCadastro statusCadastro;

        string CodImportador;
        string CodProcesso;
        bool finaliza;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
            groupBox1.Enabled = (statusCadastro == StatusCadastro.None);
            txtProcesso.Enabled = (statusCadastro == StatusCadastro.Novo);
            txtEmbarcacao.Enabled = false;
            txtCliente.Enabled = false;
            cbbStatus_SelectedIndexChanged(null, null);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmControleADEAndamento()
        {
            InitializeComponent();
        }

        private DataTable getControleADE()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select " +
                           "C.PK_ADEA " +
                           ",C.FK_Importador " +
                           ",C.FK_Processo " +
                           ",Cast( C.DT_Abertura_Processo as DateTime ) as 'DT_Abertura_Processo' " +
                           ",C.Num_Processo_Receita " +
                           ",C.FK_Fiscais " +
                           ",C.FK_Status " +
                           ",C.Embarcacao " +
                           ",L.Razao_Social " +
                           ",C.FK_Tipo " +
                           ",Cast( C.DT_COANA as DateTime ) as 'DT_COANA' " +
                           ",Cast( C.DT_DITEC as DateTime ) as 'DT_DITEC' " +
                           ",Cast( C.DT_DIANA as DateTime ) as 'DT_DIANA' " +
                           ",Cast( C.DT_ADE_Publicacao as DateTime ) as 'DT_ADE_Publicacao' " +
                           ",C.ADE_Num " +
                           ",Cast(C.Finalizado as int) as 'Finalizado'  " +
                           "from " +
                           "Controle_ADE_Andamento C " +
                           "left join Importadores L on ( L.Codigo = C.FK_Importador ) " +
                           "where " +
                           "C.Excluido <> 1 " +
                           "order by " +
                           "C.PK_ADEA";
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

        private void getStatus()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select PK_Status ,Descricao from Controle_ADE_Status order by Descricao";
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
                cbbStatus.DataSource = table;
                cbbStatus.DisplayMember = "Descricao";
                cbbStatus.ValueMember = "PK_Status";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getFiscais()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select PK_Fiscais,Nome,Excluido from Controle_ADE_Fiscais where Excluido = '0' Order by Nome";
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
                cbbFiscal.DataSource = table;
                cbbFiscal.DisplayMember = "Nome";
                cbbFiscal.ValueMember = "PK_Fiscais";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getTipo()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select PK_Tipo,Descricao from Controle_ADE_Tipo order by Descricao";
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
                cbbTipoADE.DataSource = table;
                cbbTipoADE.DisplayMember = "Descricao";
                cbbTipoADE.ValueMember = "PK_Tipo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void FrmControleADEAndamento_Load(object sender, EventArgs e)
        {
            this.ActiveControl = txtProcesso;
            bindingNavigator.DeleteItem = null;

            getFiscais();
            getTipo();
            getStatus();
            cbbOpcao.SelectedIndex = 0;

            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getControleADE();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtCliente.DataBindings.Add(new Binding("Text", bindingSource, "Razao_Social", true));
            txtEmbarcacao.DataBindings.Add(new Binding("Text", bindingSource, "Embarcacao", true));
            cbbFiscal.DataBindings.Add(new Binding("SelectedValue", bindingSource, "FK_Fiscais", true, DataSourceUpdateMode.Never, DBNull.Value));
            txtProcessoReceita.DataBindings.Add(new Binding("Text", bindingSource, "Num_Processo_Receita", true));
            txtDataProtocolo.DataBindings.Add(new Binding("Text", bindingSource, "DT_Abertura_Processo", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            cbbTipoADE.DataBindings.Add(new Binding("SelectedValue", bindingSource, "FK_Tipo", true, DataSourceUpdateMode.Never, DBNull.Value));
            cbbStatus.DataBindings.Add(new Binding("SelectedValue", bindingSource, "FK_Status", true, DataSourceUpdateMode.Never, DBNull.Value));
            txtNumeroADE.DataBindings.Add(new Binding("Text", bindingSource, "ADE_Num", true, DataSourceUpdateMode.Never, DBNull.Value));
            txtDataPublicacao.DataBindings.Add(new Binding("Text", bindingSource, "DT_ADE_Publicacao", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtDTDiana.DataBindings.Add(new Binding("Text", bindingSource, "DT_DIANA", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtDTDitec.DataBindings.Add(new Binding("Text", bindingSource, "DT_DITEC", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtDTCoana.DataBindings.Add(new Binding("Text", bindingSource, "DT_COANA", true, DataSourceUpdateMode.OnValidation, "  /  /"));

        }

        private void txtLocalizar_TextChanged(object sender, EventArgs e)
        {
            if (cbbOpcao.SelectedIndex == 0)
            {
                bindingSource.Filter = "Razao_Social LIKE '" + txtLocalizar.Text + "%'";
            }
            else
                if (cbbOpcao.SelectedIndex == 1)
                {
                    bindingSource.Filter = "Num_Processo_Receita LIKE '" + txtLocalizar.Text + "%'";
                }
                else
                {
                    string processo;

                    processo = txtLocalizar.Text.Replace("/", "").Trim();

                    if (processo.Length >= 6)
                    {
                        processo = txtLocalizar.Text;
                    }
                    else
                    {
                        processo = txtLocalizar.Text.Replace("/", "").Trim();
                    }
                    bindingSource.Filter = "FK_Processo LIKE '" + processo + "%'";
                }
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            this.ActiveControl = txtProcesso;
            cbbTipoADE.SelectedIndex = -1;
            cbbFiscal.SelectedIndex = -1;
            cbbStatus.SelectedIndex = -1;
        }

        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            if (txtProcesso.MaskCompleted)
            {

                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "select " +
                               "P.Codigo " +
                               ",P.Importador " +
                               ",P.Local_Inventario " +
                               ",P.Tipo " +
                               ",I.Razao_Social " +
                               "from " +
                               "Processos P " +
                               "inner join Importadores I on I.Codigo = P.Importador " +
                               "where " +
                               "P.Codigo = @Processo and P.tipo = 'AD' ";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        try
                        {
                            if (reader.HasRows)
                            {
                                reader.Read();
                                txtCliente.Text = reader["Razao_Social"].ToString();
                                CodImportador = reader["Importador"].ToString();
                                CodProcesso = reader["Codigo"].ToString();
                            }
                            else
                            {
                                MessageBox.Show("Processo não é do tipo Ato Declaratório!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            }
                        }
                        catch (Exception ex)
                        {
                            MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                    }
                }
            }
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtCliente.Text.Trim()))
            {
                MessageBox.Show("O Cliente é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCliente.Focus();
                return;
            }

            if (string.IsNullOrEmpty(cbbTipoADE.Text.Trim()))
            {
                MessageBox.Show("O Tipo é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbTipoADE.Focus();
                return;
            }

            if (!txtProcessoReceita.MaskCompleted)
            {
                MessageBox.Show("O Processo da Receita é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtProcessoReceita.Focus();
                return;
            }

            if (string.IsNullOrEmpty(cbbStatus.Text.Trim()))
            {
                MessageBox.Show("O Status é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbStatus.Focus();
                return;
            }

            if (!txtDataProtocolo.MaskCompleted)
            {
                MessageBox.Show("A Data do Protocolo é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDataProtocolo.Focus();
                return;
            }


            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    string query = "update  Controle_ADE_Andamento set " +
                                   "DT_Abertura_Processo =Cast(@DT_Abertura_Processo as Date), " +
                                   "Num_Processo_Receita=@Num_Processo_Receita, " +
                                   "FK_Fiscais=@FK_Fiscais, " +
                                   "FK_Status=@FK_Status, " +
                                   "Embarcacao=@Embarcacao, " +
                                   "FK_Tipo =@FK_Tipo, " +
                                   "DT_COANA =Cast(@DT_COANA as Date), " +
                                   "DT_DITEC =Cast(@DT_DITEC as Date), " +
                                   "DT_DIANA =Cast(@DT_DIANA as Date), " +
                                   "DT_ADE_Publicacao =Cast(@DT_ADE_Publicacao as Date), " +
                                   "ADE_Num =Cast(@ADE_Num as Integer) " +
                                   "where " +
                                   "PK_ADEA=@PK_ADEA ";
                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@DT_Abertura_Processo", !txtDataProtocolo.MaskCompleted ? DBNull.Value : (object)txtDataProtocolo.Text);
                            cmd.Parameters.AddWithValue("@Num_Processo_Receita", txtProcessoReceita.Text);
                            cmd.Parameters.AddWithValue("@FK_Fiscais", (cbbFiscal.SelectedValue == null) ? DBNull.Value : (object)cbbFiscal.SelectedValue);
                            cmd.Parameters.AddWithValue("@FK_Status", (cbbStatus.SelectedValue == null) ? DBNull.Value : (object)cbbStatus.SelectedValue);
                            cmd.Parameters.AddWithValue("@Embarcacao", txtEmbarcacao.Text);
                            cmd.Parameters.AddWithValue("@FK_Tipo", (cbbTipoADE.SelectedValue == null) ? DBNull.Value : (object)cbbTipoADE.SelectedValue);
                            cmd.Parameters.AddWithValue("@DT_COANA", !txtDTCoana.MaskCompleted ? DBNull.Value : (object)txtDTCoana.Text);
                            cmd.Parameters.AddWithValue("@DT_DITEC", !txtDTDitec.MaskCompleted ? DBNull.Value : (object)txtDTDitec.Text);
                            cmd.Parameters.AddWithValue("@DT_DIANA", !txtDTDiana.MaskCompleted ? DBNull.Value : (object)txtDTDiana.Text);
                            cmd.Parameters.AddWithValue("@DT_ADE_Publicacao", !txtDataPublicacao.MaskCompleted ? DBNull.Value : (object)txtDataPublicacao.Text);
                            cmd.Parameters.AddWithValue("@ADE_Num", txtNumeroADE.Text);
                            cmd.Parameters.AddWithValue("@PK_ADEA", bindingSource.GetRelatedCurrencyManager("PK_ADEA").Current.ToString());
                            cmd.ExecuteNonQuery();
                        }
                    }
                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("PK_ADEA").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Processo:{0} ", ((DataRowView)this.bindingSource.Current).Row["FK_Processo"].ToString()));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "Insert into  Controle_ADE_Andamento " +
                                   "(FK_Importador,FK_Processo,DT_Abertura_Processo ,Num_Processo_Receita,FK_Fiscais,FK_Status ,Embarcacao " +
                                   ",FK_Tipo,DT_COANA,DT_DITEC,DT_DIANA,DT_ADE_Publicacao,ADE_Num) " +
                                   "values " +
                                   "(@FK_Importador,@FK_Processo,Cast(@DT_Abertura_Processo as Date),@Num_Processo_Receita,@FK_Fiscais,@FK_Status,@Embarcacao " +
                                   ",@FK_Tipo,Cast(@DT_COANA as Date),Cast(@DT_DITEC as Date),Cast(@DT_DIANA as Date),Cast(@DT_ADE_Publicacao as Date),@ADE_Num)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@FK_Importador", CodImportador);
                        cmd.Parameters.AddWithValue("@FK_Processo", CodProcesso);
                        cmd.Parameters.AddWithValue("@DT_Abertura_Processo", !txtDataProtocolo.MaskCompleted ? DBNull.Value : (object)txtDataProtocolo.Text);
                        cmd.Parameters.AddWithValue("@Num_Processo_Receita", txtProcessoReceita.Text);
                        cmd.Parameters.AddWithValue("@FK_Fiscais", (cbbFiscal.SelectedValue == null) ? DBNull.Value : (object)cbbFiscal.SelectedValue);
                        cmd.Parameters.AddWithValue("@FK_Status", (cbbStatus.SelectedValue == null) ? DBNull.Value : (object)cbbStatus.SelectedValue);
                        cmd.Parameters.AddWithValue("@Embarcacao", txtEmbarcacao.Text);
                        cmd.Parameters.AddWithValue("@FK_Tipo", (cbbTipoADE.SelectedValue == null) ? DBNull.Value : (object)cbbTipoADE.SelectedValue);
                        cmd.Parameters.AddWithValue("@DT_COANA", !txtDTCoana.MaskCompleted ? DBNull.Value : (object)txtDTCoana.Text);
                        cmd.Parameters.AddWithValue("@DT_DITEC", !txtDTDitec.MaskCompleted ? DBNull.Value : (object)txtDTDitec.Text);
                        cmd.Parameters.AddWithValue("@DT_DIANA", !txtDTDiana.MaskCompleted ? DBNull.Value : (object)txtDTDiana.Text);
                        cmd.Parameters.AddWithValue("@DT_ADE_Publicacao", !txtDataPublicacao.MaskCompleted ? DBNull.Value : (object)txtDataPublicacao.Text);
                        cmd.Parameters.AddWithValue("@ADE_Num", txtNumeroADE.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Processo:{0}", CodProcesso));
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
                var ID_busca = bindingSource.GetRelatedCurrencyManager("PK_ADEA").Current.ToString();
                bindingSource.DataSource = getControleADE();
                bindingSource.Position = bindingSource.Find("PK_ADEA", ID_busca);

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

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            txtCliente.Focus();
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Controle_ADE_Andamento set Excluido = 1 where PK_ADEA = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("PK_ADEA").Current.ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("PK_ADEA").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Numero MS: {0}", bindingSource.GetRelatedCurrencyManager("FK_Processo").Current.ToString()));
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

        private void btnFiscais_Click(object sender, EventArgs e)
        {
            var form = new FrmControleADEAndamentoFiscais();
            FrmPrincipal.ShowModalMdiChildren(form);
            getFiscais();
            var ID_busca = bindingSource.GetRelatedCurrencyManager("PK_ADEA").Current.ToString();
            bindingSource.DataSource = getControleADE();
            bindingSource.Position = bindingSource.Find("PK_ADEA", ID_busca);
        }

        private void btnFinalizar_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Deseja realmente finalizar este registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Controle_ADE_Andamento set Finalizado = 1 where PK_ADEA = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("PK_ADEA").Current.ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("PK_ADEA").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), "Finalizado");
                    statusCadastro = StatusCadastro.None;
                    var ID_busca = bindingSource.GetRelatedCurrencyManager("PK_ADEA").Current.ToString();
                    bindingSource.DataSource = getControleADE();
                    bindingSource.Position = bindingSource.Find("PK_ADEA", ID_busca);
                    MessageBox.Show("Registro finalizado com sucesso.", "Finalizado", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void btnAbrir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Deseja realmente abrir este registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Controle_ADE_Andamento set Finalizado = 0 where PK_ADEA = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("PK_ADEA").Current.ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("PK_ADEA").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), "Registro Aberto.");
                    statusCadastro = StatusCadastro.None;
                    var ID_busca = bindingSource.GetRelatedCurrencyManager("PK_ADEA").Current.ToString();
                    bindingSource.DataSource = getControleADE();
                    bindingSource.Position = bindingSource.Find("PK_ADEA", ID_busca);
                    MessageBox.Show("Registro Aberto com sucesso.", "Finalizado", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void dataGridView_SelectionChanged(object sender, EventArgs e)
        {
            if (dataGridView.Rows.Count.ToString() != "0")
            {

                string ValorFinalizado = bindingSource.GetRelatedCurrencyManager("Finalizado").Current.ToString();
                if (ValorFinalizado == "0")
                {
                    pnlStatus.BackColor = Color.Green;
                    lblStatus.Text = "Aberto";
                    btnAbrir.Enabled = false;
                    btnFinalizar.Enabled = true;
                    finaliza = true;
                    BloqueiaFuncionalidadeFinaliza();
                    btnImportar.Enabled = false;
                }
                else
                {
                    pnlStatus.BackColor = Color.Red;
                    lblStatus.Text = "Finalizado";
                    btnAbrir.Enabled = true;
                    btnFinalizar.Enabled = false;
                    finaliza = false;
                    BloqueiaFuncionalidadeFinaliza();
                    btnImportar.Enabled = true;
                }
            }

        }

        private void btnLocalizaEmbarcacao_Click(object sender, EventArgs e)
        {
            using (var form = new FrmControleADEEmbarcacao())
            {
                if (statusCadastro == StatusCadastro.Novo)
                {
                    form.importador = CodImportador;
                }
                else
                {
                    form.importador = bindingSource.GetRelatedCurrencyManager("FK_Importador").Current.ToString();
                }
                form.embarcacao = "";
                if (FrmPrincipal.ShowModalMdiChildren(form) == DialogResult.OK)
                {
                    txtEmbarcacao.Text = form.embarcacao;
                }
            }
        }

        private void txtNumeroADE_KeyPress(object sender, KeyPressEventArgs e)
        {
            Util.SomenteNumero(e);
        }

        private void BloqueiaFuncionalidadeFinaliza()
        {
            btnExcluir.Enabled = finaliza;
            btnEditar.Enabled = finaliza;
        }

        private void cbbStatus_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (statusCadastro == StatusCadastro.None)
            {
                return;
            }
            if (cbbStatus.SelectedIndex >= 0)
            {
                if (cbbStatus.SelectedValue.ToString() == "6")
                {
                    txtDataPublicacao.Enabled = true;
                    txtNumeroADE.Enabled = true;
                }
                else
                {
                    txtDataPublicacao.Enabled = false;
                    txtNumeroADE.Enabled = false;
                    txtDataPublicacao.Clear();
                    txtNumeroADE.Text = "";
                }
            }
        }

        private void btnImportar_Click(object sender, EventArgs e)
        {
            //string SQLIMPORTADOR = "SELECT CODIGO FROM IMPORTADORES WHERE RAZAO_SOCIAL =@razao_social";

            string SQLINSERT = "INSERT INTO Controle_ADE_Deferido(FK_Importador,Embarcacao,Num_ADE_Executivo,DT_Publicacao,DT_VECTO_ADE) VALUES(@fk_importador,@embarcacao,@num_ade,@dt_publicacao,@dt_vecto)";

            //string fk_importador = "";
            //using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            //{
            //    using (SqlCommand cmd = new SqlCommand(SQLIMPORTADOR,conn))
            //    {
            //        cmd.Parameters.AddWithValue("@razao_social",txtCliente.Text);

            //        using (SqlDataReader reader = cmd.ExecuteReader())
            //        {
            //            if (reader.HasRows)
            //            {
            //                while (reader.Read())
            //                {
            //                    fk_importador = reader["codigo"].ToString();
            //                }
            //            }
            //        }
            //    }
            //}

            using (SqlConnection connection = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand command = new SqlCommand(SQLINSERT, connection))
                {
                    command.Parameters.AddWithValue("@fk_importador", ((DataRowView)bindingSource.Current).Row["FK_Importador"].ToString());
                    command.Parameters.AddWithValue("@embarcacao", txtEmbarcacao.Text);
                    command.Parameters.AddWithValue("@num_ade", txtNumeroADE.Text);
                    command.Parameters.AddWithValue("@dt_publicacao", txtDataPublicacao.MaskCompleted ? (object)txtDataPublicacao.Text : DBNull.Value);
                    command.Parameters.AddWithValue("@dt_vecto", " ");
                    command.ExecuteNonQuery();
                    MessageBox.Show("Os dados foram importados com sucesso", "MS2000", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
        }

    }
}
