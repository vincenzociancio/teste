using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Cadastros
{
    public partial class FrmContratosAdmissaoTemporaria : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        protected StatusDocumentos statusDocumentos;
        //Contratos
        bool _canIncluiContrato;
        bool _canEditaContrato;
        bool _canExcluiContrato;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None) && (_canExcluiContrato);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None) && (_canIncluiContrato);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None) && (_canEditaContrato);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
            mcbbImportadores.Enabled = (statusCadastro == StatusCadastro.None);
            dataGridViewLocais.Enabled = (statusCadastro == StatusCadastro.None);
            bindingNavigatorLocais.Enabled = (statusCadastro == StatusCadastro.None);
            txtAliquota.Enabled = (statusCadastro != StatusCadastro.None) && (ckbRepetro.Checked == true);
            txtAliquotaFECP.Enabled = (statusCadastro != StatusCadastro.None) && (ckbRepetro.Checked == true);

            btnNovoLocal.Enabled = (statusCadastro == StatusCadastro.None) && (_canIncluiContrato);

            ckbSemContrato_CheckedChanged(null, null);
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

        public FrmContratosAdmissaoTemporaria()
        {
            InitializeComponent();

            // Permissões para contratos
            _canIncluiContrato = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Cadastros de Admissão Temporária - Contratos - Inclui",
                Chave_Busca = "btnNovoContratoAdmissaoTemp"
            });

            _canEditaContrato = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Cadastros de Admissão Temporária - Contratos - Edita",
                Chave_Busca = "btnEditarContratoAdmissaoTemp"
            });

            _canExcluiContrato = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Cadastros de Admissão Temporária - Contratos - Exclui",
                Chave_Busca = "btnExcluirContratoAdmissaoTemp"
            });

            // Permissões para locais
        }

        private void FrmContratosAdmissaoTemporaria_Load(object sender, EventArgs e)
        {
            getImportadores();
            getTiposDeContrato();
            //getRegime();

            bindingNavigator.DeleteItem = null;
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
            dataGridView.AutoGenerateColumns = false;
            mcbbImportadores_SelectedIndexChanged(null, null);
        }

        private void getImportadores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Codigo, upper(Razao_Social) +'  (CNPJ: '+ cnpj_cpf_completo +')' as Razao_Social from Importadores order by Razao_Social";
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

        private void getTiposDeContrato()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Codigo, Descricao from Tipos_contratos";
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
                cbbTipo.DataSource = table;
                cbbTipo.DisplayMember = "Descricao";
                cbbTipo.ValueMember = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private DataTable getContratos(string importador)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Contrato, Descricao, Vigencia_inicial, Vigencia_final,Tipo, Data_Baixa, SemContrato, " +
                "Data_prorrogacao, Repetro, Ativo, Cod_Regime_Fundamento, INs, Setor, Identificacao, Valor_Icms,Valor_FECP, Numero_ATO, Data_Validade_ATO, ProcessoContratoDIANA FROM Contratos Where Importador = @Importador and setor = 'OPN'";

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
                "FROM Locais_Inventario Where Importador = @Importador and contrato = @contrato";

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

        private void PreencheContrato(string contrato = default(string))
        {
            bindingSource.DataSource = getContratos(mcbbImportadores.SelectedValue.ToString());
            if (!string.IsNullOrWhiteSpace(contrato))
            {
                bindingSource.Position = bindingSource.Find("Contrato", contrato);
            }

            if (bindingSource.Count > 0)
            {
                dataGridView.DataSource = bindingSource;
                bindingNavigator.BindingSource = bindingSource;

                txtCodigo.DataBindings.Clear();
                txtDescricao.DataBindings.Clear();
                txtVigenciaInicial.DataBindings.Clear();
                txtVigenciaFinal.DataBindings.Clear();
                txtIN.DataBindings.Clear();
                ckbRepetro.DataBindings.Clear();
                ckbAtivo.DataBindings.Clear();
                txtDataProrrogacao.DataBindings.Clear();
                txtAliquota.DataBindings.Clear();
                txtAliquotaFECP.DataBindings.Clear();
                cbbTipo.DataBindings.Clear();
                ckbSemContrato.DataBindings.Clear();
                txtNumeroATO.DataBindings.Clear();
                txtDataValidadeATO.DataBindings.Clear();
                txtProcessoDIANA.DataBindings.Clear();

                txtCodigo.DataBindings.Add(new Binding("Text", bindingSource, "Contrato", true));
                txtDescricao.DataBindings.Add(new Binding("Text", bindingSource, "Descricao", true));
                txtVigenciaInicial.DataBindings.Add(new Binding("Text", bindingSource, "Vigencia_inicial", true, DataSourceUpdateMode.OnValidation, "  /  /"));
                txtVigenciaFinal.DataBindings.Add(new Binding("Text", bindingSource, "Vigencia_final", true, DataSourceUpdateMode.OnValidation, "  /  /"));
                txtIN.DataBindings.Add(new Binding("Text", bindingSource, "INs", true));
                ckbRepetro.DataBindings.Add(new Binding("Checked", bindingSource, "Repetro", true));
                ckbAtivo.DataBindings.Add(new Binding("Checked", bindingSource, "Ativo", true));
                txtDataProrrogacao.DataBindings.Add(new Binding("Text", bindingSource, "Data_prorrogacao", true, DataSourceUpdateMode.OnValidation, "  /  /"));
                txtAliquota.DataBindings.Add(new Binding("Text", bindingSource, "Valor_Icms", true));
                txtAliquotaFECP.DataBindings.Add(new Binding("Text", bindingSource, "Valor_FECP", true));
                cbbTipo.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Tipo"));
                ckbSemContrato.DataBindings.Add(new Binding("Checked", bindingSource, "SemContrato", true));
                txtNumeroATO.DataBindings.Add(new Binding("Text", bindingSource, "Numero_ATO", true));
                txtDataValidadeATO.DataBindings.Add(new Binding("Text", bindingSource, "Data_Validade_ATO", true, DataSourceUpdateMode.OnValidation, "  /  /"));
                txtProcessoDIANA.DataBindings.Add(new Binding("Text", bindingSource, "ProcessoContratoDIANA", true, DataSourceUpdateMode.OnValidation, "     .      /    -"));

            }
        }

        private void mcbbImportadores_SelectedIndexChanged(object sender, EventArgs e)
        {
            PreencheContrato();
            bindingSource_BindingComplete(null, null);
            //rdbAtivos_CheckedChanged(null, null);
            rdbTodos_CheckedChanged(null, null);
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
            ckbSemContrato.Checked = false;
        }

        private void updateProcessosDataVectoTR(string importador, string contrato, DateTime? data)
        {
            /* Eduardo Souza - 14/05/2014
            var query = "UPDATE Processos SET Data_vencimento_TR = c.vigencia_final " +
                "FROM Processos p INNER JOIN Contratos as c ON (c.Contrato = p.Contrato) AND (c.Importador = p.Importador) " +
                "WHERE c.Importador = @importador AND c.Contrato = @contrato AND c.Vigencia_final Is Not Null AND p.Numero_TR Is Not Null AND p.Numero_TR <> '' ";
            */

            var query = "UPDATE Processos SET Data_vencimento_TR = @data " +
            "WHERE Importador = @importador AND Contrato = @contrato AND Numero_TR Is Not Null AND Numero_TR <> '' ";

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@contrato", contrato);
                cmd.Parameters.AddWithValue("@importador", importador);
                cmd.Parameters.AddWithValue("@data", data != null ? data : (object)DBNull.Value);
                cmd.ExecuteNonQuery();
            }

        }

        private void updateDocumentosDtVigenciaFinal(string importador, string contrato)
        {
            var query = "UPDATE Documentos SET Vigencia_final = p.Data_vencimento_TR " +
                "FROM Processos p INNER JOIN  Documentos d ON (p.Importador = d.Importador) AND (p.Codigo = d.Processo) AND (p.Contrato = d.Contrato)" +
                "WHERE p.Importador = @importador AND p.Contrato = @contrato AND p.Numero_TR IS NOT NULL AND p.Numero_TR <> '' AND d.Tipo_Doc = 'PROC' AND d.Sub_Tipo_Doc = '11'";

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@contrato", contrato);
                cmd.Parameters.AddWithValue("@importador", importador);
                cmd.ExecuteNonQuery();
            }

        }

        private void updateDocumentosDtRenovacaoEStatus(string importador, string contrato, StatusDocumentos statusDocumento, DateTime? data)
        {
            //Eduardo Souza - 14/05/2014
            //var query = "UPDATE Documentos SET Data_renovacao = c.data_prorrogacao, status = @statusDocumento " +
            //    "FROM Documentos d " +
            //    "INNER JOIN Processos  p ON (p.Codigo = d.Processo) AND (p.Importador = d.Importador) " +
            //    "INNER JOIN Contratos  c ON (c.Contrato = p.Contrato) AND (c.Importador = p.Importador) " +
            //    "WHERE c.Importador = @importador AND c.Contrato = @contrato " +
            //    "AND d.Tipo_Doc = 'PROC' AND d.Sub_Tipo_Doc = '11' AND (d.Data_baixa Is Null or d.Data_baixa = '')";

            var query = "UPDATE Documentos SET Data_renovacao = @Data, status = @statusDocumento " +
                "WHERE Importador = @importador AND Contrato = @contrato " +
                "AND Tipo_Doc = 'PROC' AND Sub_Tipo_Doc = '11' AND (Data_baixa Is Null or Data_baixa = '') ";

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@contrato", contrato);
                cmd.Parameters.AddWithValue("@importador", importador);
                cmd.Parameters.AddWithValue("@statusDocumento", (int)statusDocumento);
                cmd.Parameters.AddWithValue("@data", data);
                cmd.ExecuteNonQuery();
            }

        }

        private void updateRepetroDtVigenciaFinalOutros(string importador, string contrato, DateTime? data, string descricao)
        {
            //var query = "UPDATE Repetro SET Contratos_Descricao = c.Descricao, " +
            //    "Vigencia_final = CASE " +
            //    "WHEN c.Data_prorrogacao IS NULL OR c.Data_prorrogacao = '' THEN " +
            //    "c.Vigencia_final ELSE c.Data_prorrogacao END " +
            //    "FROM Repetro r " +
            //    "INNER JOIN Contratos c ON r.Codigo = c.Importador AND r.Contrato = c.Contrato " +
            //    "WHERE r.Codigo = @importador AND r.Contrato = @contrato";

            var query = "UPDATE Repetro SET Contratos_Descricao = @descricao, " +
                "Vigencia_final = @Data " +
                "WHERE Codigo = @importador AND Contrato = @contrato";

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@contrato", contrato);
                cmd.Parameters.AddWithValue("@importador", importador);
                cmd.Parameters.AddWithValue("@descricao", descricao);
                cmd.Parameters.AddWithValue("@data", data != null ? data : (object)DBNull.Value);
                cmd.ExecuteNonQuery();
            }

        }

        private bool ContratoJaCadastrado()
        {
            var query = "select TOP 1 Contrato from Contratos where " +
                "REPLACE(Descricao,' ','') = @descricao and importador = @importador and Setor <> 'JUR' ";

            var GoOn = false;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@descricao", txtDescricao.Text.Trim().Replace(" ", ""));
                    cmd.Parameters.AddWithValue("@importador", mcbbImportadores.SelectedValue);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                GoOn = true;
                            }
                        }
                        return GoOn;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtDescricao.Text))
            {
                MessageBox.Show("O descrição do contrato é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricao.Focus();
                return;
            }

            //if (txtDescricao.Text.Trim().Replace(" ", "") != "SEMCONTRATO")
            //if ((!txtDescricao.Text.Replace(" ", "").Contains("SEMCONTRATO"))
            if (!ckbSemContrato.Checked)
            {
                if (!txtVigenciaInicial.MaskCompleted)
                {
                    MessageBox.Show("Data de vigência inicial é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    txtVigenciaInicial.Focus();
                    return;
                }

                if (!txtVigenciaFinal.MaskCompleted)
                {
                    MessageBox.Show("Data de vigência final é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    txtVigenciaFinal.Focus();
                    return;
                }

                if (Convert.ToDateTime(txtVigenciaInicial.Text) > Convert.ToDateTime(txtVigenciaFinal.Text))
                {
                    MessageBox.Show("A data da Vigência Final é menor do que a data da Vigência Inicial!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    txtDescricao.Focus();
                    return;
                }

                if (!string.IsNullOrEmpty(txtNumeroATO.Text) && !txtDataValidadeATO.MaskCompleted)
                {
                    MessageBox.Show("A data de validade do ATO é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    txtDataValidadeATO.Focus();
                    return;
                }
            }
            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update contratos set " +
                    "Descricao = @Descricao, Vigencia_inicial = @Vigencia_inicial, Vigencia_final = @Vigencia_final, Tipo = @Tipo, " +
                    "Data_prorrogacao = @Data_prorrogacao, Repetro = @Repetro, Ativo = @Ativo, INs = @INs, Valor_Icms = @Valor_Icms,Valor_FECP=@Valor_FECP, SemContrato = @SemContrato, Numero_ATO = @Numero_ATO, Data_Validade_ATO = @Data_Validade_ATO, ProcessoContratoDIANA = @ProcessoContratoDIANA " +
                    "where contrato = @contrato and importador = @importador";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Importador", (mcbbImportadores.SelectedValue == null ? (object)DBNull.Value : mcbbImportadores.SelectedValue));
                        cmd.Parameters.AddWithValue("@Contrato", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@Vigencia_inicial", txtVigenciaInicial.MaskCompleted ? (object)txtVigenciaInicial.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Vigencia_final", txtVigenciaFinal.MaskCompleted ? (object)txtVigenciaFinal.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Tipo", (cbbTipo.SelectedValue == null ? (object)DBNull.Value : cbbTipo.SelectedValue));
                        cmd.Parameters.AddWithValue("@Data_prorrogacao", txtDataProrrogacao.MaskCompleted ? (object)txtDataProrrogacao.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Repetro", Convert.ToBoolean(ckbRepetro.Checked));
                        cmd.Parameters.AddWithValue("@Ativo", Convert.ToBoolean(ckbAtivo.Checked));
                        cmd.Parameters.AddWithValue("@INs", txtIN.Text);
                        cmd.Parameters.AddWithValue("@Valor_Icms", txtAliquota.Text.Replace(',', '.'));
                        cmd.Parameters.AddWithValue("@Valor_FECP", txtAliquotaFECP.Text.Replace(',', '.'));
                        cmd.Parameters.AddWithValue("@SemContrato", Convert.ToBoolean(ckbSemContrato.Checked));
                        cmd.Parameters.AddWithValue("@Numero_ATO", (string.IsNullOrEmpty(txtNumeroATO.Text) ? (object)DBNull.Value : txtNumeroATO.Text.Trim()));
                        cmd.Parameters.AddWithValue("@Data_Validade_ATO", txtDataValidadeATO.MaskCompleted ? (object)txtDataValidadeATO.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@ProcessoContratoDIANA", txtProcessoDIANA.MaskCompleted ? (object)txtProcessoDIANA.Text : DBNull.Value);
                        cmd.ExecuteNonQuery();
                    }

                    //********* Futuramente ver possibilidade de tirar metodos abaixo - Eduardo Souza - 19/02/2014 ********//
                    DateTime? _data_de_vencimento_contrato = null;

                    if (txtDataProrrogacao.MaskCompleted)
                    {
                        _data_de_vencimento_contrato = Convert.ToDateTime(txtDataProrrogacao.Text);
                    }
                    else
                        if (txtVigenciaFinal.MaskCompleted)
                        {
                            _data_de_vencimento_contrato = Convert.ToDateTime(txtVigenciaFinal.Text);
                        }


                    if (MessageBox.Show("Você confirma aplicação da vigência Final deste contrato para vigência de todos os RAT's vinculados a este contrato?", "Atenção", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                    {
                        updateProcessosDataVectoTR(mcbbImportadores.SelectedValue.ToString(), txtCodigo.Text, _data_de_vencimento_contrato);
                        updateDocumentosDtVigenciaFinal(mcbbImportadores.SelectedValue.ToString(), txtCodigo.Text);

                        LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),
                                string.Format("Importador:{0} Contrato:{1} - {2} - {3}", mcbbImportadores.Text, txtCodigo.Text, txtDescricao.Text,
                               "Confirmou aplicação da vigência Final deste contrato para vigência de todos os RAT's vinculados a este contrato"));
                    }
                    updateRepetroDtVigenciaFinalOutros(mcbbImportadores.SelectedValue.ToString(), txtCodigo.Text, _data_de_vencimento_contrato, txtDescricao.Text);

                    if (txtDataProrrogacao.MaskCompleted)
                    {
                        if (MessageBox.Show("Você deseja aplicar a data de prorrogação deste contrato para todos os RAT's vinculados a este contrato(com exceção dos já baixados)?", "Atenção", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                        {
                            if (MessageBox.Show("Sim (para Prorrogado) ou Não (para Prorrogação em Análise).", "Atenção", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                            {
                                statusDocumentos = StatusDocumentos.Prorrogado;
                            }
                            else
                            {
                                statusDocumentos = StatusDocumentos.ProrrogacaoEmAnalise;
                            }
                            updateDocumentosDtRenovacaoEStatus(mcbbImportadores.SelectedValue.ToString(), txtCodigo.Text, statusDocumentos, Convert.ToDateTime(txtDataProrrogacao.Text));
                            LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),
                                string.Format("Importador:{0} Contrato:{1} - {2} - {3}", mcbbImportadores.Text, txtCodigo.Text, txtDescricao.Text, "Aplicou a data de prorrogação deste contrato para todos os RAT's vinculados a este contrato(com exceção dos já baixados), para " + statusDocumentos.ToString()));
                        }
                    }

                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),
                        string.Format("Importador:{0} Contrato:{1} Vigencia Inicial:{2} Vigencia Final:{3} Data Prorrogação:{4} IN:{5} Aliquota:{6} Repetro:{7} Ativo:{8}",
                        mcbbImportadores.Text, txtDescricao.Text, txtVigenciaInicial.Text, txtVigenciaFinal.Text, txtDataProrrogacao.Text, txtIN.Text, txtAliquota.Text, ckbRepetro.Checked.ToString(), ckbAtivo.Checked.ToString()));

                }
                else
                {
                    if (ContratoJaCadastrado())
                    {
                        MessageBox.Show("Favor verificar, contrato já cadastrado para esse cliente!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return;
                    }

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into contratos " +
                        "(Importador, Contrato, Descricao, Vigencia_inicial, Vigencia_final, Tipo," +
                        "Data_prorrogacao, Repetro, Ativo, INs, Valor_Icms,Valor_FECP, SemContrato,Numero_ATO,Data_Validade_ATO,ProcessoContratoDIANA)" +
                        "values" +
                        "(@Importador, @Contrato, @Descricao, @Vigencia_inicial, @Vigencia_final, @Tipo," +
                        "@Data_prorrogacao, @Repetro, @Ativo, @INs, @Valor_Icms, @Valor_FECP, @SemContrato,@Numero_ATO,@Data_Validade_ATO,@ProcessoContratoDIANA); SELECT SCOPE_IDENTITY()";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Importador", (mcbbImportadores.SelectedValue == null ? (object)DBNull.Value : mcbbImportadores.SelectedValue));
                        cmd.Parameters.AddWithValue("@Contrato", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@Vigencia_inicial", txtVigenciaInicial.MaskCompleted ? (object)txtVigenciaInicial.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Vigencia_final", txtVigenciaFinal.MaskCompleted ? (object)txtVigenciaFinal.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Tipo", (cbbTipo.SelectedValue == null ? (object)DBNull.Value : cbbTipo.SelectedValue));
                        cmd.Parameters.AddWithValue("@Data_prorrogacao", txtDataProrrogacao.MaskCompleted ? (object)txtDataProrrogacao.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Repetro", Convert.ToBoolean(ckbRepetro.Checked));
                        cmd.Parameters.AddWithValue("@Ativo", Convert.ToBoolean(ckbAtivo.Checked));
                        cmd.Parameters.AddWithValue("@INs", txtIN.Text);
                        cmd.Parameters.AddWithValue("@Valor_Icms", txtAliquota.Text.Replace(',', '.'));
                        cmd.Parameters.AddWithValue("@Valor_FECP", txtAliquotaFECP.Text.Replace(',', '.'));
                        cmd.Parameters.AddWithValue("@SemContrato", Convert.ToBoolean(ckbSemContrato.Checked));
                        cmd.Parameters.AddWithValue("@Numero_ATO", (string.IsNullOrEmpty(txtNumeroATO.Text) ? (object)DBNull.Value : txtNumeroATO.Text.Trim()));
                        cmd.Parameters.AddWithValue("@Data_Validade_ATO", txtDataValidadeATO.MaskCompleted ? (object)txtDataValidadeATO.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@ProcessoContratoDIANA", txtProcessoDIANA.MaskCompleted ? (object)txtProcessoDIANA.Text : DBNull.Value);
                        var returnValue = cmd.ExecuteScalar();
                        txtCodigo.Text = returnValue.ToString();
                    }
                    PreencheContrato(txtCodigo.Text);
                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag),
                        string.Format("Importador:{0} Contrato:{1} Vigencia Inicial:{2} Vigencia Final:{3} Data Prorrogação:{4} IN:{5} Aliquota:{6} Repetro:{7} Ativo:{8}",
                        mcbbImportadores.Text, txtDescricao.Text, txtVigenciaInicial.Text, txtVigenciaFinal.Text, txtDataProrrogacao.Text, txtIN.Text, txtAliquota.Text, ckbRepetro.Checked.ToString(), ckbAtivo.Checked.ToString()));
                }

                if (statusCadastro == StatusCadastro.Editar)
                {
                    bindingSource.EndEdit();
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

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
        }

        private bool ContratoEmUso(string importador, string contrato)
        {
            var query = "SELECT top 1 Contrato FROM Processos WHERE Importador = @importador AND Contrato = @contrato";
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@contrato", contrato);
                    cmd.Parameters.AddWithValue("@importador", importador);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        return reader.HasRows;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (ContratoEmUso(mcbbImportadores.SelectedValue.ToString(), txtCodigo.Text))
            {
                MessageBox.Show("Este contrato não pode ser excluída!", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Exclusão", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    string[] querys = new string[2];
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    querys[0] = "delete from Locais_Inventario WHERE Importador = @importador AND Contrato = @contrato";
                    querys[1] = "delete from Contratos WHERE Importador = @importador AND Contrato = @contrato";

                    foreach (var query in querys)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@contrato", txtCodigo.Text);
                            cmd.Parameters.AddWithValue("@importador", mcbbImportadores.SelectedValue.ToString());
                            cmd.ExecuteNonQuery();
                        }
                    }
                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Descricao:{0}", txtDescricao.Text));
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
            using (var form = new FrmLocalContratosAdmissaoTemporaria())
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
            using (var form = new FrmLocalContratosAdmissaoTemporaria())
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

        private bool LocalEmUso(string importador, string contrato, string local)
        {
            var query = "SELECT top 1 Contrato FROM Processos WHERE Importador = @importador AND Contrato = @contrato and local_inventario = @local";
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@contrato", contrato);
                    cmd.Parameters.AddWithValue("@importador", importador);
                    cmd.Parameters.AddWithValue("@local", local);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        return reader.HasRows;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
        }

        private void btnExcluirLocal_Click(object sender, EventArgs e)
        {
            if (LocalEmUso(mcbbImportadores.SelectedValue.ToString(), txtCodigo.Text, ((DataRowView)bindingSourceLocal.Current).Row["Local"].ToString()))
            {
                MessageBox.Show("Este local não pode ser excluída!", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Exclusão", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "delete from Locais_Inventario WHERE Importador = @importador AND Contrato = @contrato and local = @local";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@contrato", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@importador", mcbbImportadores.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@local", ((DataRowView)bindingSourceLocal.Current).Row["Local"].ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("ID: {0} Descricao: {1}", txtCodigo.Text, txtDescricao.Text));
                    bindingSourceLocal.RemoveCurrent();
                    statusCadastro = StatusCadastro.None;
                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void ckbRepetro_CheckedChanged(object sender, EventArgs e)
        {
            txtAliquota.Enabled = ckbRepetro.Checked;
            if (!ckbRepetro.Checked)
            {
                txtAliquota.Clear();
                txtAliquotaFECP.Clear();
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
                btnExcluirLocal.Enabled = _canExcluiContrato;//true;
                btnEditarLocal.Enabled = _canEditaContrato; //true;
            }
            else
            {
                dataGridViewLocais.DataSource = null;
                btnExcluirLocal.Enabled = false;
                btnEditarLocal.Enabled = false;
            }
        }

        private void dataGridView_DataBindingComplete(object sender, DataGridViewBindingCompleteEventArgs e)
        {
            foreach (DataGridViewRow row in dataGridView.Rows)
            {
                if (!string.IsNullOrEmpty(row.Cells[2].Value.ToString()))  // make sure the value is present
                {
                    if (row.Cells[2].Value.ToString() == "0")
                    {
                        row.DefaultCellStyle.ForeColor = Color.Red;  //then change row color to red
                    }
                }
            }
        }

        private void dataGridViewLocais_DataBindingComplete(object sender, DataGridViewBindingCompleteEventArgs e)
        {
            foreach (DataGridViewRow row in dataGridViewLocais.Rows)
            {
                if (!string.IsNullOrEmpty(row.Cells[2].Value.ToString()))  // make sure the value is present
                {
                    if (row.Cells[2].Value.ToString() == "0")
                    {
                        row.DefaultCellStyle.ForeColor = Color.Red;  //then change row color to red
                    }
                }
            }
        }

        private void ckbSemContrato_CheckedChanged(object sender, EventArgs e)
        {
            if (ckbSemContrato.Checked)
            {
                if (statusCadastro != StatusCadastro.None)
                {
                    txtVigenciaInicial.Clear();
                    txtVigenciaFinal.Clear();
                    txtIN.Clear();
                    txtDataProrrogacao.Clear();
                    txtAliquota.Clear();
                    txtAliquotaFECP.Clear();
                    cbbTipo.SelectedValue = -1;
                }
                txtVigenciaInicial.Enabled = false;
                txtVigenciaFinal.Enabled = false;
                txtIN.Enabled = false;
                txtDataProrrogacao.Enabled = false;
                txtAliquota.Enabled = false;
                txtAliquotaFECP.Enabled = false;
                cbbTipo.Enabled = false;
            }
            else
            {
                if (statusCadastro != StatusCadastro.None)
                {
                    txtVigenciaInicial.Enabled = true;
                    txtVigenciaFinal.Enabled = true;
                    txtIN.Enabled = true;
                    txtDataProrrogacao.Enabled = true;
                    txtAliquota.Enabled = true;
                    txtAliquotaFECP.Enabled = true;
                    cbbTipo.Enabled = true;
                }
            }
        }

        private void dataGridViewLocais_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
