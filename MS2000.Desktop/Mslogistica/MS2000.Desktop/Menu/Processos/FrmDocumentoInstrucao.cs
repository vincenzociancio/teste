using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace MS2000.Desktop.Menu.Processos
{
    public partial class FrmDocumentoInstrucao : MS2000.Desktop.Componentes.MSForm01
    {
        private StatusCadastro statusCadastro;
        private Importador _importador = new Importador();

        ProcessoDocumentoInstrucao pd = new ProcessoDocumentoInstrucao();

        bool _canAlteraProcessoClienteInativo;
        bool _canAlteraProcessoFechado;

        public FrmDocumentoInstrucao()
        {
            InitializeComponent();
        }

        public virtual void VerificaBotoes()
        {

            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None) && (_canAlteraProcessoFechado) && (txtProcesso.MaskCompleted);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None) && (_canAlteraProcessoFechado) && (txtProcesso.MaskCompleted);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None) && (_canAlteraProcessoFechado) && (txtProcesso.MaskCompleted);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            grdDocumentoInstrucao.Enabled = (statusCadastro == StatusCadastro.None);
            txtProcesso.Enabled = (statusCadastro == StatusCadastro.None);
            //groupBox1.Enabled = (txtProcesso.MaskCompleted) || (statusCadastro == StatusCadastro.Novo) || (statusCadastro == StatusCadastro.Editar);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            foreach (Control controle in groupBox1.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public bool numeroDocumentoInstrucao(string numeroFatura)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string SQL = "SELECT NR_DCTO_INSTRUCAO FROM PROCESSO_DOCS_INSTRUCAO WHERE NR_DCTO_INSTRUCAO = @numeroFatura";

            try
            {
                using (SqlCommand cmd = new SqlCommand(SQL, conn))
                {
                    cmd.Parameters.AddWithValue("@numeroFatura", numeroFatura);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            return true;
                        }
                    }

                }
            }
            catch (SqlException sqlex)
            {

            }

            return false;
        }
        private DataTable getTabelaDocInstrucaoDespacho()
        {
            string SQL = "SELECT TDI.CODIGO, TDI.DESCRICAO FROM TAB_DOC_INSTRUCAO_DESPACHO TDI ORDER BY TDI.DESCRICAO";
            DataTable table = new DataTable();

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(SQL, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            table.Load(reader);
                        }
                    }
                }
            }

            return table;
        }
        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            UsuariosClientes usuarioClientes = new UsuariosClientes();

            string codigoImportador = "";
            _canAlteraProcessoFechado = true;
            _canAlteraProcessoClienteInativo = true;

            var usuario = new Usuario(FrmPrincipal.PK_UsuarioLogado);

            if (txtProcesso.MaskCompleted)
            {
                bindingNavigator.DeleteItem = null;
                var processo = (new Processo()).BuscarPorCodigo(txtProcesso.Text);

                if (processo != null)
                {
                    List<Processo> listaProcesso = processo.buscaProcessosFatura(txtProcesso.Text);
                    processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Importador", out codigoImportador);

                    if (_importador.BuscarPorCodigo(codigoImportador).Ativo == 0)
                    {
                        if (!FrmPrincipal.editaClienteInativo)
                        {
                            MessageBox.Show(usuario.getMensagem(), "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            _canAlteraProcessoClienteInativo = false;
                            return;
                        }
                    }

                    if (processo.Fechado >= 1)
                    {
                        if (!FrmPrincipal.editaProcessoFechado)
                        {
                            _canAlteraProcessoFechado = false;
                            MessageBox.Show("Este processo está fechado.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            return;
                        }
                        else
                            _canAlteraProcessoFechado = true;
                    }

                  // if (Usuario.AcessaPasta(txtProcesso.Text, this))
                    //{
                       //_canAlteraProcessoFechado = true;
                    //}

                    if (usuarioClientes.BuscarLista(FrmPrincipal.PK_UsuarioLogado).Count > 0)
                    {
                        if (usuarioClientes.buscaImportadores(codigoImportador))
                            _canAlteraProcessoClienteInativo = true;
                        else
                        {
                            _canAlteraProcessoClienteInativo = false;
                            MessageBox.Show("Esse processo pertence a um cliente no qual seu acesso não está permitido", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            return;
                        }
                    }
                    else
                    {
                        _canAlteraProcessoClienteInativo = true;
                    }

                    foreach (Processo pro in listaProcesso)
                    {
           //             if (!pd.buscaPorCodigo(txtProcesso.Text).Exists(c => c.NumeroDocumentoInstrucao == pro.Fatura))
            //                pd.inserir(txtProcesso.Text, pro.Fatura, pro.CodigoFatura, pro.TipoDocumento);

                        if (!pro.Certificado.Equals(""))
                        {
                            if (!pd.buscaPorCodigo(txtProcesso.Text).Exists(c => c.NumeroDocumentoInstrucao == pro.Certificado))
                                pd.inserir(txtProcesso.Text, pro.Certificado, pro.CodigoCo, pro.TipoDoc);
                        }
                    }
                }

                if (pd.tabelaProcessoDocumentoInstrucao(txtProcesso.Text).Rows.Count == 0)
                {
                    MessageBox.Show("Não existe tributação para esse processo.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    _canAlteraProcessoFechado = false;
                    HabilitarDesabilitaControles(false);
                    processo = null;
                }
                else
                {                    
                    bindingSource.DataSource = pd.tabelaProcessoDocumentoInstrucao(txtProcesso.Text);
                    grdDocumentoInstrucao.DataSource = bindingSource;
                    bindingNavigator.BindingSource = bindingSource;

                    txtCliente.Text = _importador.BuscarPorCodigo(codigoImportador).Razao_Social;
                    txtCNPJ.Text = _importador.BuscarPorCodigo(codigoImportador).CNPJ_CPF_COMPLETO;
                    cmbTipo.DataSource = getTabelaDocInstrucaoDespacho();
                    cmbTipo.DisplayMember = "DESCRICAO";
                    cmbTipo.ValueMember = "CODIGO";

                    cmbTipo.Text = grdDocumentoInstrucao.Rows[0].Cells["NM_DCTO_INSTRUCAO"].Value.ToString();
                    txtBeneficiarioRegime.Text = grdDocumentoInstrucao.Rows[0].Cells["NR_DCTO_INSTRUCAO"].Value.ToString();

                    statusCadastro = StatusCadastro.None;
                    HabilitarDesabilitaControles(false);
                    bindingNavigator.DeleteItem = null;
                }
            }
            else
            {
                limparCampos();
                HabilitarDesabilitaControles(false);
            }
        }

        public void limparCampos()
        {
            txtBeneficiarioRegime.Clear();
            txtCNPJ.Clear();
            txtCliente.Clear();
            cmbTipo.DataSource = null;
            cmbTipo.DisplayMember = "";
            cmbTipo.ValueMember = "";
            grdDocumentoInstrucao.DataSource = null;
        }
        private bool validarCampos()
        {
            bool GoOn = true;
            if (string.IsNullOrEmpty(txtBeneficiarioRegime.Text))
            {
                MessageBox.Show("O campo número do documento não pode ficar em branco", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtBeneficiarioRegime.Focus();
                GoOn = false;
            }

            if (string.IsNullOrEmpty(cmbTipo.Text) || cmbTipo.SelectedIndex == -1)
            {
                MessageBox.Show("Deve ser escohida uma opção no campo tipo", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                cmbTipo.Focus();
                GoOn = false;
            }
            return GoOn;
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (validarCampos())
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    if (_canAlteraProcessoFechado)
                    {
                        int registro = (int)grdDocumentoInstrucao.Rows[grdDocumentoInstrucao.CurrentCell.RowIndex].Cells["REG"].Value;
                        new ProcessoDocumentoInstrucao().alterar(txtBeneficiarioRegime.Text, cmbTipo.SelectedValue.ToString(), cmbTipo.Text, registro);                        

                        MessageBox.Show("Registro alterado com sucesso.", "Alterar", MessageBoxButtons.OK, MessageBoxIcon.Information);

                        LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),
                              string.Format("Número do documento :{0} Tipo :{1}", txtBeneficiarioRegime.Text, cmbTipo.Text));
                    }
                }
                else
                {
                    if (_canAlteraProcessoFechado)
                    {
                        new ProcessoDocumentoInstrucao().inserir(txtProcesso.Text, txtBeneficiarioRegime.Text, cmbTipo.SelectedValue.ToString(), cmbTipo.Text);

                        MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);

                        LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),
                            string.Format("Número do documento :{0} Tipo :{1}", txtBeneficiarioRegime.Text, cmbTipo.Text));
                    }
                }

                bindingSource.DataSource = pd.tabelaProcessoDocumentoInstrucao(txtProcesso.Text);
                
                statusCadastro = StatusCadastro.None;

                HabilitarDesabilitaControles(false);

                txtProcesso.Focus();
            }

        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void grdDocumentoInstrucao_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtBeneficiarioRegime.Text = grdDocumentoInstrucao.Rows[grdDocumentoInstrucao.CurrentRow.Index].Cells["NR_DCTO_INSTRUCAO"].Value.ToString();
            cmbTipo.Text = grdDocumentoInstrucao.Rows[grdDocumentoInstrucao.CurrentRow.Index].Cells["NM_DCTO_INSTRUCAO"].Value.ToString();
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);

            txtBeneficiarioRegime.Text = string.Empty;
            cmbTipo.SelectedIndex = -1;
            txtCNPJ.Enabled = false;
            txtCliente.Enabled = false;
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
            txtProcesso.Focus();
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            txtCNPJ.Enabled = false;
            txtCliente.Enabled = false;
            txtProcesso.Enabled = false;
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            int registro = (int)grdDocumentoInstrucao.Rows[grdDocumentoInstrucao.CurrentCell.RowIndex].Cells["REG"].Value;            

            try
            {
                if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                {
                    new ProcessoDocumentoInstrucao().excluir(registro);

                    bindingSource.RemoveCurrent();
                    statusCadastro = StatusCadastro.None;
                    MessageBox.Show("Registro excluído com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);                                       
                }
            }
            catch (SqlException sqlex)
            {
                MessageBox.Show(sqlex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }

        private void bindingNavigatorMoveNextItem_Click(object sender, EventArgs e)
        {
            txtBeneficiarioRegime.Text = grdDocumentoInstrucao.Rows[grdDocumentoInstrucao.CurrentRow.Index].Cells["NR_DCTO_INSTRUCAO"].Value.ToString();
            cmbTipo.Text = grdDocumentoInstrucao.Rows[grdDocumentoInstrucao.CurrentRow.Index].Cells["NM_DCTO_INSTRUCAO"].Value.ToString();
        }

        private void bindingNavigatorMovePreviousItem_Click(object sender, EventArgs e)
        {
            txtBeneficiarioRegime.Text = grdDocumentoInstrucao.Rows[grdDocumentoInstrucao.CurrentRow.Index].Cells["NR_DCTO_INSTRUCAO"].Value.ToString();
            cmbTipo.Text = grdDocumentoInstrucao.Rows[grdDocumentoInstrucao.CurrentRow.Index].Cells["NM_DCTO_INSTRUCAO"].Value.ToString();

        }

        private void FrmDocumentoInstrucao_Load(object sender, EventArgs e)
        {
            grdDocumentoInstrucao.AutoGenerateColumns = false;
            HabilitarDesabilitaControles(false);

            this.ActiveControl = txtProcesso;
        }

        private void grdDocumentoInstrucao_CellMouseDown(object sender, DataGridViewCellMouseEventArgs e)
        {
         
        }

        private void grdDocumentoInstrucao_SelectionChanged(object sender, EventArgs e)
        {   
            DataGridView dgv = sender as DataGridView;
            if (dgv != null && dgv.SelectedRows.Count > 0)
            {
                DataGridViewRow row = dgv.SelectedRows[0];

                if (row != null)
                {
                    txtBeneficiarioRegime.Text = grdDocumentoInstrucao.Rows[grdDocumentoInstrucao.CurrentRow.Index].Cells["NR_DCTO_INSTRUCAO"].Value.ToString();
                    cmbTipo.Text = grdDocumentoInstrucao.Rows[grdDocumentoInstrucao.CurrentRow.Index].Cells["NM_DCTO_INSTRUCAO"].Value.ToString();
                }
            }
        }
    }
}
