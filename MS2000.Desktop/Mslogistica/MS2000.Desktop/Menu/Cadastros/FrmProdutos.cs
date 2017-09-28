using MS2000.Desktop.Classes;
using MS2000.Desktop.Componentes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Threading;
using System.Windows.Forms;
using System.Linq;

namespace MS2000.Desktop.Menu.Cadastros
{
    public partial class FrmProdutos : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        List<ProdutosNew> listaFinal;
        string DescPort;

        // TRANSOCEAN - "2", "239","477","478","495"
        // ODEBRECHT OLEO E GAS S/A - "271","295","296","297","298","433"
        readonly string[] codigoImportadores = { "2", "239", "271", "295", "296", "297", "298", "433", "477", "478","495" };

        string caracteresPermitidos = "0123456789abcdefghijlmnopqrstuvxzwykABCDEFGHIJLMNOPQRSTUVXZWYKáéíóúàèìòùâêîôûãÁÉÍÓÚÀÈÌÒÙÂÊÎÔÛÃçÇ~!@#$%¨&*_+=-ªº°<>:?^~,.;/()[]{}-+*./"; 

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }
            VerificaBotoes();
        }


        public FrmProdutos()
        {
            InitializeComponent();
            this.cbbComercializada.SelectedIndexChanged +=
            new System.EventHandler(cbbComercializada_SelectedIndexChanged);
            backgroundWorker1.WorkerReportsProgress = true;
        }

        private void FrmProdutos_Load(object sender, EventArgs e)
        {
            tabControl.SelectedTab = tabSearch;
            txtCodigoCliente.Focus();
            cbbOpcao.SelectedIndex = 0;

            bindingNavigator.DeleteItem = null;
            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);

            DataTable dtUnidadesDeMedidas = new DataTable();
            dtUnidadesDeMedidas = getUnidadeMedidas(null, null);
            cbbComercializada.DataSource = dtUnidadesDeMedidas;
            cbbComercializada.DisplayMember = "descricao";
            cbbComercializada.ValueMember = "codigo";
            cbbComercializada.SelectedIndex = -1;

            cbbPais.DataSource = getPais();
            cbbPais.DisplayMember = "descricao";
            cbbPais.ValueMember = "codigo";
            cbbPais.SelectedIndex = -1;

            btnLocalizar_Click(null, null);
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
        }

        private bool ProdutoJaExiste(string cliente, string fabricante, string partNumber, string codigo)
        {
            var query = "SELECT top 1 codigo FROM Produtosnew WHERE (rtrim(ltrim(codigo))) = @codigo and importador = @importador and fabricante = @fabricante and (rtrim(ltrim(part_number))) = @part_number ";
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@codigo", codigo);
                    cmd.Parameters.AddWithValue("@importador", cliente);
                    cmd.Parameters.AddWithValue("@fabricante", fabricante);
                    cmd.Parameters.AddWithValue("@part_number", partNumber);
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

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtNomeCliente.Text))
            {
                MessageBox.Show("O cliente é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCodigoCliente.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtNomeFabricante.Text))
            {
                MessageBox.Show("O fabricante é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCodigoFabricante.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtCodigoProduto.Text))
            {
                MessageBox.Show("O código do produto é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCodigoProduto.Focus();
                return;
            }            

            if (string.IsNullOrEmpty(txtDescricaoPortugues.Text) || string.IsNullOrEmpty(txtDescricaoIngles.Text))
            {
                MessageBox.Show("A descrição do produto em português e inglês são obrigatórias!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricaoPortugues.Focus();
                return;
            }            

            if (string.IsNullOrEmpty(txtNomeNCM.Text))
            {
                MessageBox.Show("O código do NCM é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCodigoNCM.Focus();
                return;
            }

            if (string.IsNullOrEmpty(cbbPais.Text) || cbbPais.SelectedValue == null)
            {
                MessageBox.Show("O país é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbPais.Focus();
                return;
            }

            if (codigoImportadores.Contains(txtCodigoCliente.Text) && string.IsNullOrEmpty(txtCodigoProdutoCliente.Text))
            {
                MessageBox.Show("O código do produto do cliente é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCodigoProdutoCliente.Focus();
                return;
            }

            if (((txtCodigoCliente.Text == "252") || (txtCodigoCliente.Text == "265")) && (string.IsNullOrEmpty(txtPartNumber.Text)))
            {
                MessageBox.Show("O Part Number é obrigatório para esse importador!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtPartNumber.Focus();
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    int registro_do_produto = ((ProdutosNew)this.bindingSource.Current).Reg;
                    if ((ProdutoEmUso(registro_do_produto)) && (FrmPrincipal.UsuarioLogado != "MOLIVEIRA"))
                    {
                        MessageBox.Show("Produto já vinculado e não pode ser alterado!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                        btnCancelar_Click(null, null);
                        return;
                    }

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Produtosnew set " +
                        "Importador = @Importador, Fabricante = @Fabricante, CODIGO = @CODIGO, PART_NUMBER = @PART_NUMBER, Descricao = @Descricao, Descricao_ing = @Descricao_ing, NCM = @NCM, Destaque_NCM = @Destaque_NCM, NALADI = @NALADI, Unidade = @Unidade," +
                        "Unidade_Medida_Estat = @Unidade_Medida_Estat, DATA_ULTIMA_ALTERACAO = @DATA_ULTIMA_ALTERACAO, PaisOrigem = @PaisOrigem, CodigoProdutoCliente =@CodigoProdutoCliente " +
                        "where reg = @reg";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Importador", txtCodigoCliente.Text.Trim());
                        cmd.Parameters.AddWithValue("@Fabricante", txtCodigoFabricante.Text.Trim());
                        cmd.Parameters.AddWithValue("@CODIGO", txtCodigoProduto.Text.Trim());
                        cmd.Parameters.AddWithValue("@PART_NUMBER", txtPartNumber.Text.Trim());
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricaoPortugues.Text.Trim().RemoveAcentos());
                        cmd.Parameters.AddWithValue("@Descricao_ing", txtDescricaoIngles.Text.Trim());
                        cmd.Parameters.AddWithValue("@NCM", txtCodigoNCM.Text);
                        cmd.Parameters.AddWithValue("@Destaque_NCM", txtDestaqueNCM.Text.Trim());
                        cmd.Parameters.AddWithValue("@NALADI", txtNALADI.Text.Trim());
                        cmd.Parameters.AddWithValue("@Unidade", txtCodigoComercializada.Text);
                        cmd.Parameters.AddWithValue("@Unidade_Medida_Estat", txtCodigoEstatistica.Text);
                        cmd.Parameters.AddWithValue("@DATA_ULTIMA_ALTERACAO", DateTime.Now);
                        cmd.Parameters.AddWithValue("@PaisOrigem", (cbbPais.SelectedValue == null ? (object)DBNull.Value : cbbPais.SelectedValue));
                        cmd.Parameters.AddWithValue("@CodigoProdutoCliente", (string.IsNullOrEmpty(txtCodigoProdutoCliente.Text) ? (object)DBNull.Value : txtCodigoProdutoCliente.Text.Trim()));
                        cmd.Parameters.AddWithValue("@reg", registro_do_produto);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(registro_do_produto.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Descrição Inglês:{0}", txtDescricaoIngles.Text));
                }
                else
                {
                    if (ProdutoJaExiste(txtCodigoCliente.Text, txtCodigoFabricante.Text, txtPartNumber.Text.Trim(), txtCodigoProduto.Text.Trim()))
                    {
                        MessageBox.Show("Favor verificar, produto já cadastrado para este cliente!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                        txtCodigoCliente.Focus();
                        return;
                    }

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Produtosnew" +
                        "(Importador, Fabricante, CODIGO, PART_NUMBER, Descricao, Descricao_ing, NCM, Destaque_NCM, NALADI, Unidade," +
                        "Unidade_Medida_Estat, DATA_INCLUSAO, DATA_ULTIMA_ALTERACAO, PaisOrigem, CodigoProdutoCliente)" +
                        "values" +
                        "(@Importador, @Fabricante, @CODIGO, @PART_NUMBER, @Descricao, @Descricao_ing, @NCM, @Destaque_NCM, @NALADI, @Unidade," +
                        "@Unidade_Medida_Estat, @DATA_INCLUSAO, @DATA_ULTIMA_ALTERACAO, @PaisOrigem, @CodigoProdutoCliente)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Importador", txtCodigoCliente.Text.Trim());
                        cmd.Parameters.AddWithValue("@Fabricante", txtCodigoFabricante.Text.Trim());
                        cmd.Parameters.AddWithValue("@CODIGO", txtCodigoProduto.Text.Trim());
                        cmd.Parameters.AddWithValue("@PART_NUMBER", txtPartNumber.Text.Trim());
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricaoPortugues.Text.Trim().RemoveAcentos());
                        cmd.Parameters.AddWithValue("@Descricao_ing", txtDescricaoIngles.Text.Trim());
                        cmd.Parameters.AddWithValue("@NCM", txtCodigoNCM.Text);
                        cmd.Parameters.AddWithValue("@Destaque_NCM", txtDestaqueNCM.Text.Trim());
                        cmd.Parameters.AddWithValue("@NALADI", txtNALADI.Text.Trim());
                        cmd.Parameters.AddWithValue("@Unidade", txtCodigoComercializada.Text);
                        cmd.Parameters.AddWithValue("@Unidade_Medida_Estat", txtCodigoEstatistica.Text);
                        cmd.Parameters.AddWithValue("@DATA_INCLUSAO", DateTime.Now);
                        cmd.Parameters.AddWithValue("@DATA_ULTIMA_ALTERACAO", DateTime.Now);
                        cmd.Parameters.AddWithValue("@CodigoProdutoCliente", (string.IsNullOrEmpty(txtCodigoProdutoCliente.Text) ? (object)DBNull.Value : txtCodigoProdutoCliente.Text.Trim()));
                        cmd.Parameters.AddWithValue("@PaisOrigem", (cbbPais.SelectedValue == null ? (object)DBNull.Value : cbbPais.SelectedValue));
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtCodigoProduto.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Descrição Inglês:{0}", txtDescricaoIngles.Text));
                    btnLocalizar_Click(null, null);
                    bindingSource.Position = 0;
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

        private void btnEditar_Click(object sender, EventArgs e)
        {
            DescPort = "";
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
            DescPort = txtDescricaoPortugues.Text;
        }

        private void txtCodigoCliente_TextChanged(object sender, EventArgs e)
        {            
            if (!string.IsNullOrEmpty(txtCodigoCliente.Text))
            {
                DataTable table = new DataTable();
                table = getClientes(txtCodigoCliente.Text, null);
                txtNomeCliente.Text = ((table.Rows.Count > 0) ? table.Rows[0]["razao_social"].ToString() : "");            
            }
            else
            {
                txtNomeCliente.Clear();
            }
        }

        private DataTable getClientes(string codigo, string descricao)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query;
            if (!string.IsNullOrEmpty(codigo))
            {
                query = "select top 1 codigo, razao_social, endereco, cidade, CNPJ_CPF_COMPLETO, CGC_CPF from Importadores where codigo = @codigo";
            }
            else
            {
                query = "select top 1 codigo, razao_social, endereco, cidade, CNPJ_CPF_COMPLETO, CGC_CPF from Importadores where razao_social like '@razao_social %' ";
            }

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                if (!string.IsNullOrEmpty(codigo))
                {
                    cmd.Parameters.AddWithValue("@codigo", codigo);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@razao_social", descricao);
                }
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private DataTable getFabricante(string codigo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select top 1 Codigo, Razao_Social, endereco, cidade from Fabricantes_Produtores where codigo = @codigo ";

            if (statusCadastro != StatusCadastro.None)
            {
                query += "and lixo = 0";
            }

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@codigo", codigo);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void txtCodigoFabricante_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtCodigoFabricante.Text))
            {
                DataTable table = new DataTable();
                table = getFabricante(txtCodigoFabricante.Text);
                txtNomeFabricante.Text = ((table.Rows.Count > 0) ? table.Rows[0]["razao_social"].ToString() : "");
            }
            else
            {
                txtNomeFabricante.Clear();
            }
        }

        private DataTable getNCM(string codigo, string descricao)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query;
            if (!string.IsNullOrEmpty(codigo))
            {
                query = "select top 1 codigo, descricao, unidade_medida from TAB_NCM where codigo = @codigo";
            }
            else
            {
                query = "select top 1 codigo, descricao, unidade_medida from TAB_NCM where descricao like '@descricao %' ";
            }


            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                if (!string.IsNullOrEmpty(codigo))
                {
                    cmd.Parameters.AddWithValue("@codigo", codigo);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@descricao", descricao);
                }
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void txtCodigoNCM_TextChanged(object sender, EventArgs e)
        {
            txtNomeNCM.Clear();
            txtCodigoEstatistica.Clear();
            txtMedidaEstatistica.Clear();

            if (txtCodigoNCM.Text.Length > 7)
            {
                DataTable table = new DataTable();
                table = getNCM(txtCodigoNCM.Text, null);
                txtNomeNCM.Text = ((table.Rows.Count > 0) ? table.Rows[0]["descricao"].ToString() : "");
                txtCodigoEstatistica.Text = ((table.Rows.Count > 0) ? table.Rows[0]["unidade_medida"].ToString() : "");

                if (tabControl.SelectedTab == tabFormulario && table.Rows.Count == 0)
                {
                    MessageBox.Show("Favor verificar, NCM não encontrado!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
        }

        private DataTable getUnidadeMedidas(string codigo, string descricao)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query;
            if (!string.IsNullOrEmpty(codigo))
            {
                query = "select top 1 codigo, descricao from TAB_UNID_MEDIDA where codigo = @codigo order by descricao";
            }
            else
                if (!string.IsNullOrEmpty(descricao))
                {
                    query = "select top 1 codigo, descricao from TAB_UNID_MEDIDA where descricao like '@descricao %' order by descricao";
                }
                else
                {
                    query = "select codigo, descricao from TAB_UNID_MEDIDA order by descricao";
                }

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                if (!string.IsNullOrEmpty(codigo))
                {
                    cmd.Parameters.AddWithValue("@codigo", codigo);
                }
                else
                    if (!string.IsNullOrEmpty(descricao))
                    {
                        cmd.Parameters.AddWithValue("@descricao", descricao);
                    }

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private DataTable getPais()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select * from tab_pais order by descricao";
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

        private void txtCodigoEstatistica_TextChanged(object sender, EventArgs e)
        {
            if (txtCodigoEstatistica.Text.Length > 0)
            {
                DataTable table = new DataTable();
                table = getUnidadeMedidas(txtCodigoEstatistica.Text, null);
                txtMedidaEstatistica.Text = ((table.Rows.Count > 0) ? table.Rows[0]["descricao"].ToString() : "");
            }
        }

        private void searchProdutos(string codigo, string partNumber, string descIngles, string descPortugues)
        {

            pnlProcesso.Visible = true;
            if (!backgroundWorker1.IsBusy)
            {
                ProdutosNew TObj = new ProdutosNew();
                dataGridView.Rows.Clear();
                backgroundWorker1.RunWorkerAsync(TObj);
            }
        }

        string _codigo;
        string _partNumber;
        string _descIngles;
        string _descPortugues;
        string _codigoProdutoCliente;

        private void btnLocalizar_Click(object sender, EventArgs e)
        {
            _codigo = "";
            _partNumber = "";
            _descIngles = "";
            _descPortugues = "";
            _codigoProdutoCliente = "";

            btnLocalizar.Enabled = false;
            btnAbrir.Enabled = false;
            if (cbbOpcao.SelectedIndex == 0)
            {
                _codigo = txtPesquisa.Text;
            }
            else
                if (cbbOpcao.SelectedIndex == 1)
                {
                    _partNumber = txtPesquisa.Text;
                }
                else
                    if (cbbOpcao.SelectedIndex == 2)
                    {
                        _descPortugues = txtPesquisa.Text;
                    }
                    else
                        if (cbbOpcao.SelectedIndex == 3)
                        {
                            _descIngles = txtPesquisa.Text;
                        }
                        else
                            if (cbbOpcao.SelectedIndex == 4)
                            {
                                _codigoProdutoCliente = txtPesquisa.Text;
                            }

            pnlProcesso.Visible = true;

            if (!backgroundWorker1.IsBusy)
            {
                ProdutosNew TObj = new ProdutosNew();
                dataGridView.DataSource = null;
                dataGridView.Rows.Clear();
                backgroundWorker1.RunWorkerAsync(TObj);
            }

        }

        private void montaPesquisa(List<ProdutosNew> tabela)
        {
            //Pesquisa
            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = tabela;

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            //Clear
            txtCodigoCliente.DataBindings.Clear();
            txtCodigoFabricante.DataBindings.Clear();
            txtCodigoProduto.DataBindings.Clear();
            txtPartNumber.DataBindings.Clear();

            txtDescricaoPortugues.DataBindings.Clear();
            txtDescricaoIngles.DataBindings.Clear();
            txtCodigoNCM.DataBindings.Clear();
            txtDestaqueNCM.DataBindings.Clear();
            txtNALADI.DataBindings.Clear();
            cbbComercializada.DataBindings.Clear();
            cbbPais.DataBindings.Clear();
            txtPesquisaDescricaoIngles.DataBindings.Clear();
            txtPesquisaDescricaoPort.DataBindings.Clear();
            txtCodigoComercializada.DataBindings.Clear();
            txtCodigoProdutoCliente.DataBindings.Clear();

            txtCodigoCliente.DataBindings.Add(new Binding("Text", bindingSource, "CodigoImportador", true));
            txtCodigoFabricante.DataBindings.Add(new Binding("Text", bindingSource, "CodigoFabricante", true));
            txtCodigoProduto.DataBindings.Add(new Binding("Text", bindingSource, "codigo", true));
            txtPartNumber.DataBindings.Add(new Binding("Text", bindingSource, "PART_NUMBER", true));
            txtDescricaoPortugues.DataBindings.Add(new Binding("Text", bindingSource, "Descricao", true));
            txtDescricaoIngles.DataBindings.Add(new Binding("Text", bindingSource, "Descricao_ing", true));
            txtCodigoNCM.DataBindings.Add(new Binding("Text", bindingSource, "NCM", true));
            txtDestaqueNCM.DataBindings.Add(new Binding("Text", bindingSource, "Destaque_NCM", true));
            txtNALADI.DataBindings.Add(new Binding("Text", bindingSource, "NALADI", true));
            cbbComercializada.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Unidade"));
            cbbPais.DataBindings.Add(new Binding("SelectedValue", bindingSource, "PaisOrigem"));
            txtPesquisaDescricaoIngles.DataBindings.Add(new Binding("Text", bindingSource, "Descricao_ing", true));
            txtPesquisaDescricaoPort.DataBindings.Add(new Binding("Text", bindingSource, "Descricao", true));
            txtCodigoComercializada.DataBindings.Add(new Binding("Text", bindingSource, "Unidade", true));
            txtCodigoProdutoCliente.DataBindings.Add(new Binding("Text", bindingSource, "CodigoProdutoCliente", true));
        }

        private void tabControl_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (tabControl.SelectedTab == tabSearch)
            {
                btnCancelar_Click(null, null);
            }
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            int Registro_produto = ((ProdutosNew)this.bindingSource.Current).Reg;
            if (ProdutoEmUso(Registro_produto))
            {
                MessageBox.Show("Este produto não pode ser excluída!", "Excluir", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "delete from Produtosnew where reg = @reg";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@reg", Registro_produto);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(Registro_produto.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Descrição: {0}", txtDescricaoPortugues.Text));
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

        private bool ProdutoEmUso(int registro_produto)
        {
            var query = "SELECT top 1 Sequencial_Produto FROM ItensFaturas WHERE Sequencial_Produto  = @Sequencial_Produto ";
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Sequencial_Produto", registro_produto);
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

        private void btnAbrir_Click(object sender, EventArgs e)
        {
            tabControl.SelectedTab = tabFormulario;
        }

        private void btnSearechCliente_Click(object sender, EventArgs e)
        {
            using (FrmLocalizarClientes form = new FrmLocalizarClientes())
            {
                if (FrmPrincipal.ShowModalMdiChildren(form) == DialogResult.OK)
                {
                    txtCodigoCliente.Text = form.CodigoRetorno;
                }
            }
        }

        private void btnSearechFabricante_Click(object sender, EventArgs e)
        {
            using (FrmLocalizarFabricantes form = new FrmLocalizarFabricantes())
            {
                if (FrmPrincipal.ShowModalMdiChildren(form) == DialogResult.OK)
                {
                    txtCodigoFabricante.Text = form.CodigoRetorno;
                }
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void backgroundWorker1_ProgressChanged(object sender, System.ComponentModel.ProgressChangedEventArgs e)
        {
            if (!backgroundWorker1.CancellationPending)
            {
                ProdutosNew Obj = (ProdutosNew)e.UserState;
                dataGridView.Rows.Add(Obj.Codigo, Obj.Importador, Obj.NomeFabricante, Obj.Part_Number, Obj.NCM, Obj.Destaque_NCM);
                progressBar1.Value = e.ProgressPercentage;
            }
        }

        private void backgroundWorker1_DoWork(object sender, System.ComponentModel.DoWorkEventArgs e)
        {
            string where = null;
            if (!string.IsNullOrEmpty(_codigo))
            {
                where = "where p.codigo like @codigo ";
            }
            else
                if (!string.IsNullOrEmpty(_partNumber))
                {
                    where = "where p.part_number like @partNumber ";
                }
                else
                    if (!string.IsNullOrEmpty(_descIngles))
                    {
                        where = "where p.descricao_ing like @descIngles ";
                    }
                    else
                        if (!string.IsNullOrEmpty(_descPortugues))
                        {
                            where = "where p.descricao like @descPortugues ";
                        }
                        else
                            if (!string.IsNullOrEmpty(_codigoProdutoCliente))
                            {
                                where = "where p.CodigoProdutoCliente = @CodigoProdutoCliente ";
                            }

            ProdutosNew Obj = (ProdutosNew)e.Argument;
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = null;

            if (string.IsNullOrEmpty(where))
            {
                query = "SELECT TOP 30 ";
            }
            else
            {
                query = "SELECT TOP 1000 ";
            }

            query += "p.REG, ltrim(p.CODIGO)as codigo, ltrim(p.part_number) as part_number, p.Descricao, p.Descricao_ing, p.NCM, p.Destaque_NCM, p.NALADI, p.Unidade, p.Unidade_Medida_Estat," +
            "i.Razao_Social AS Importador, f.Razao_Social AS NomeFabricante, p.Fabricante as CodigoFabricante, p.PaisOrigem, p.Importador as CodigoImportador, p.CodigoProdutoCliente " +
            "FROM Produtosnew p " +
            "inner join Importadores i ON p.Importador = i.Codigo " +
            "inner join Fabricantes_Produtores f ON p.Fabricante = f.Codigo " + where + "order by reg desc";

            int i = 1;
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                if (!string.IsNullOrEmpty(_codigo))
                {
                    cmd.Parameters.AddWithValue("@codigo", string.Format("%{0}%", _codigo));
                }
                else
                    if (!string.IsNullOrEmpty(_partNumber))
                    {
                        cmd.Parameters.AddWithValue("@partNumber", string.Format("%{0}%", _partNumber));
                    }
                    else
                        if (!string.IsNullOrEmpty(_descIngles))
                        {
                            cmd.Parameters.AddWithValue("@descIngles", string.Format("%{0}%", _descIngles));
                        }
                        else
                            if (!string.IsNullOrEmpty(_descPortugues))
                            {
                                cmd.Parameters.AddWithValue("@descPortugues", string.Format("%{0}%", _descPortugues));
                            }
                            else
                                if (!string.IsNullOrEmpty(_codigoProdutoCliente))
                                {
                                    cmd.Parameters.AddWithValue("@CodigoProdutoCliente", string.Format("{0}", _codigoProdutoCliente));
                                }

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    listaFinal = new List<ProdutosNew>();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {

                            Obj.Reg = (int)reader["Reg"];
                            Obj.Codigo = reader["Codigo"].ToString();
                            Obj.Part_Number = reader["Part_Number"].ToString();
                            Obj.Descricao = reader["Descricao"].ToString();
                            Obj.Descricao_ing = reader["Descricao_ing"].ToString();
                            Obj.NCM = reader["NCM"].ToString();
                            Obj.Destaque_NCM = reader["Destaque_NCM"].ToString();
                            Obj.NALADI = reader["NALADI"].ToString();
                            Obj.Unidade = reader["Unidade"].ToString();
                            Obj.Unidade_Medida_Estat = reader["Unidade_Medida_Estat"].ToString();
                            Obj.PaisOrigem = reader["PaisOrigem"].ToString();
                            Obj.Importador = reader["Importador"].ToString();
                            Obj.NomeFabricante = reader["NomeFabricante"].ToString();
                            Obj.CodigoFabricante = (int)reader["CodigoFabricante"];
                            Obj.CodigoImportador = reader["CodigoImportador"].ToString();
                            Obj.CodigoProdutoCliente = reader["CodigoProdutoCliente"].ToString();
                            backgroundWorker1.ReportProgress(i, Obj);

                            listaFinal.Add(new ProdutosNew
                            {
                                Reg = (int)reader["Reg"],
                                Codigo = reader["Codigo"].ToString(),
                                Part_Number = reader["Part_Number"].ToString(),
                                Descricao = reader["Descricao"].ToString(),
                                Descricao_ing = reader["Descricao_ing"].ToString(),
                                NCM = reader["NCM"].ToString(),
                                Destaque_NCM = reader["Destaque_NCM"].ToString(),
                                NALADI = reader["NALADI"].ToString(),
                                Unidade = reader["Unidade"].ToString(),
                                Unidade_Medida_Estat = reader["Unidade_Medida_Estat"].ToString(),
                                PaisOrigem = reader["PaisOrigem"].ToString(),
                                Importador = reader["Importador"].ToString(),
                                NomeFabricante = reader["NomeFabricante"].ToString(),
                                CodigoFabricante = (int)reader["CodigoFabricante"],
                                CodigoImportador = reader["CodigoImportador"].ToString(),
                                CodigoProdutoCliente = reader["CodigoProdutoCliente"].ToString(),
                            });

                            Thread.Sleep(10);
                            if (backgroundWorker1.CancellationPending)
                            {
                                e.Cancel = true;
                                backgroundWorker1.ReportProgress(0);
                                return;
                            }
                            i++;
                        }
                    }
                }
            }
        }

        private void btnCancelarProcesso_Click(object sender, EventArgs e)
        {
            if (backgroundWorker1.IsBusy)
            {
                backgroundWorker1.CancelAsync();
                progressBar1.Value = 0;
                pnlProcesso.Visible = false;
            }
        }

        private void backgroundWorker1_RunWorkerCompleted(object sender, System.ComponentModel.RunWorkerCompletedEventArgs e)
        {
            pnlProcesso.Visible = false;
            progressBar1.Value = 0;
            if (listaFinal != null)
            {
                montaPesquisa(listaFinal);
            }

            btnLocalizar.Enabled = true;
            btnAbrir.Enabled = true;
        }

        private void cbbComercializada_SelectedIndexChanged(object sender, EventArgs e)
        {
            ComboBox cb = (ComboBox)sender;
            if (cb.Focused)
            {
                txtCodigoComercializada.Text = Convert.ToString(cbbComercializada.SelectedValue);
            }
            else
            {
                return;
            }
        }

        private void txtCodigoComercializada_TextChanged(object sender, EventArgs e)
        {
            if (txtCodigoComercializada.Text.Length > 0)
            {
                DataTable table = new DataTable();
                table = getUnidadeMedidas(txtCodigoComercializada.Text, null);
                cbbComercializada.SelectedValue = ((table.Rows.Count > 0) ? table.Rows[0]["codigo"].ToString() : "");
            }
            else
            {
                cbbComercializada.SelectedIndex = -1;
            }
        }

        private void txtDescricaoPortugues_TextChanged(object sender, EventArgs e)
        {
            if (txtDescricaoPortugues.Text.Length < 3500)
            {
                lblQtdCaracteres.Visible = false;                
            }
            else if ((txtDescricaoPortugues.Text.Length > 3500) && (txtDescricaoPortugues.Text.Length <= 3900))
                 {
                    lblQtdCaracteres.Visible = true;
                    lblQtdCaracteres.ForeColor = System.Drawing.Color.YellowGreen;                    
                    lblQtdCaracteres.Text = txtDescricaoPortugues.Text.Length.ToString() + " CARACTERES";
                 } else if (txtDescricaoPortugues.Text.Length > 3900)
                        {
                            lblQtdCaracteres.Visible = true;
                            lblQtdCaracteres.ForeColor = System.Drawing.Color.Red;                
                            lblQtdCaracteres.Text = txtDescricaoPortugues.Text.Length.ToString() + " CARACTERES";
                        }                                                   
        }

        private void txtDescricaoPortugues_KeyPress(object sender, KeyPressEventArgs e)
        {            
            //if (!((e.KeyChar == (char)Keys.Back) || (e.KeyChar == (char)Keys.Enter) || (e.KeyChar == (char)Keys.Space)))
            //{
            //    if (!(caracteresPermitidos.Contains(e.KeyChar.ToString())))
            //    {
            //        e.Handled = true;      
            //    }                
            //}                                           
        }
    }
}
