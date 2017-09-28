using MS2000.Desktop.Classes;
using MS2000.Desktop.Componentes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Processos.Fatura
{
    public partial class FrmItensFatura : MS2000.Desktop.Componentes.MSForm01
    {
        private StatusCadastro statusCadastro;
        public string CodigoImportador { get; set; }
        public string Processo { get; set; }
        public int FaturaId { get; set; }
        public string CodigoFatura { get; set; }
        public string CodigoExportador { get; set; }

        int IdProduto;
        public FrmItensFatura()
        {
            InitializeComponent();
        }
        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = ((statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo)) && (FrmPrincipal.Cadastrador);
            btnExcluir.Enabled = ((statusCadastro == StatusCadastro.None) && (FrmPrincipal.Cadastrador));
            btnNovo.Enabled = ((statusCadastro == StatusCadastro.None) && (FrmPrincipal.Cadastrador));
            btnEditar.Enabled = ((statusCadastro == StatusCadastro.None) && (FrmPrincipal.Cadastrador));
            btnCancelar.Enabled = ((statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo)) && (FrmPrincipal.Cadastrador);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
        }
        public void HabilitaBotoes(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        private DataTable getItensFatura()
        {
            string query = "SELECT Fatura_Id, Sequencial, Pagina, Produto, Fabricante, NCM, Unidade, Unidade_Medida_Estat, Destaque_NCM, NALADI, " +
                           " Referencia, Numero_serie, Referencia_projeto, PO, Seqpo, Quantidade, " +
                           " Valor_Unitario, Peso_Unitario, Valor_Total, Peso_Total, " +
                           " Peso_Total_Acertado, Peso_Unitario_Acertado, codigo_produto, sequencial_produto, " +
                           " Item_Admissivel, Descricao_Produto, Descricao_Produto_ing, Saldo_Tributavel, " +
                           " ItensFaturas_Id, Acresc_reduc_Valaduan " +
                           "FROM ItensFaturas " +
                           "WHERE Sequencial <> 'XXX' " +
                           "   AND Fatura_Id = @Fatura_Id " +
                            "ORDER BY Cast(Sequencial as real)";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Fatura_Id", FaturaId);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        DataTable table = new DataTable();
                        table.Load(reader);
                        return table;
                    }
                }
            }
        }

        private void getFabricante()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo,Razao_Social,Pais,CGC_CPF,Endereco,Numero " +
                           ",Complemento,Bairro,Cidade,CEP,UF,Estado,Inscricao_Estadual " +
                           ",Lixo " +
                           "  FROM Fabricantes_Produtores " +
                           " WHERE Razao_Social Is Not Null  ";
            if (statusCadastro == StatusCadastro.Novo)
            {
                query = query + " and lixo = 0 ";
            }

            query = query + "ORDER BY Razao_Social";
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
                cbbFabricante.DataSource = null;
                cbbFabricante.DataSource = table;
                cbbFabricante.DisplayMember = "Razao_Social";
                cbbFabricante.ValueMember = "Codigo";
                cbbFabricante.SelectedIndex = -1;
                //this.cbbFabricante.SelectedIndexChanged += new System.EventHandler(this.cbbFabricante_SelectedIndexChanged);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getNCM()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT codigo, descricao, unidade_medida " +
                           "FROM Tab_ncm " +
                           "ORDER BY descricao";
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
                cbbNCM.DataSource = null;
                cbbNCM.DataSource = table;
                cbbNCM.DisplayMember = "descricao";
                cbbNCM.ValueMember = "codigo";
                cbbNCM.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getUnidadeEstatisticaComercializada()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT codigo, descricao, ABREV " +
                           "FROM Tab_unid_medida " +
                           "ORDER BY Descricao";
            DataTable table;
            DataTable table1;
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }

                    using (SqlDataReader reader1 = cmd.ExecuteReader())
                    {
                        table1 = new DataTable();
                        table1.Load(reader1);
                    }
                }

                cbbUnidadeEstatistica.DataSource = null;
                cbbUnidadeEstatistica.DataSource = table;
                cbbUnidadeEstatistica.DisplayMember = "descricao";
                cbbUnidadeEstatistica.ValueMember = "codigo";
                cbbUnidadeEstatistica.SelectedIndex = -1;

                cbbUnidadeComercializada.DataSource = null;
                cbbUnidadeComercializada.DataSource = table1;
                cbbUnidadeComercializada.DisplayMember = "descricao";
                cbbUnidadeComercializada.ValueMember = "codigo";
                cbbUnidadeComercializada.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void FrmItensFatura_Load(object sender, EventArgs e)
        {
            HabilitaBotoes(false);

            this.ActiveControl = txtProcesso;

            bindingNavigator.DeleteItem = null;

            getFabricante();
            getUnidadeEstatisticaComercializada();
            getNCM();

            statusCadastro = StatusCadastro.None;

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getItensFatura();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtPagina.DataBindings.Add(new Binding("Text", bindingSource, "Pagina", true));
            txtSequencia.DataBindings.Add(new Binding("Text", bindingSource, "Sequencial", true));
            txtCodFabricante.DataBindings.Add(new Binding("Text", bindingSource, "Fabricante", true));
            cbbFabricante.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Fabricante"));
            txtCodigoProduto.DataBindings.Add(new Binding("Text", bindingSource, "codigo_produto", true));
            txtPartNumber.DataBindings.Add(new Binding("Text", bindingSource, "Produto", true));
            txtDescricaoPortugues.DataBindings.Add(new Binding("Text", bindingSource, "Descricao_Produto", true));
            txtDescricaoIngles.DataBindings.Add(new Binding("Text", bindingSource, "Descricao_Produto_ing", true));
            txtCodNCM.DataBindings.Add(new Binding("Text", bindingSource, "NCM", true));
            cbbNCM.DataBindings.Add(new Binding("SelectedValue", bindingSource, "NCM"));
            txtDestaque.DataBindings.Add(new Binding("Text", bindingSource, "Destaque_NCM", true));
            txtNaladi.DataBindings.Add(new Binding("Text", bindingSource, "NALADI", true));
            cbbUnidadeEstatistica.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Unidade_Medida_Estat"));
            txtCodUnidadeComercializada.DataBindings.Add(new Binding("Text", bindingSource, "Unidade", true));
            cbbUnidadeComercializada.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Unidade"));
            txtRefProjeto.DataBindings.Add(new Binding("Text", bindingSource, "Referencia_projeto", true));
            txtRefEmb.DataBindings.Add(new Binding("Text", bindingSource, "Referencia", true));
            txtNumeroSerie.DataBindings.Add(new Binding("Text", bindingSource, "Numero_serie", true));
            txtPO.DataBindings.Add(new Binding("Text", bindingSource, "PO", true));
            txtSeqPO.DataBindings.Add(new Binding("Text", bindingSource, "Seqpo", true));
            txtQuantidade.DataBindings.Add(new Binding("Text", bindingSource, "Quantidade", true));
            txtValorUnitario.DataBindings.Add(new Binding("Text", bindingSource, "Valor_Unitario", true));
            txtPesoUnitario.DataBindings.Add(new Binding("Text", bindingSource, "Peso_Unitario", true));
            txtPesoTotal.DataBindings.Add(new Binding("Text", bindingSource, "Peso_Total", true));

            //Binding b = new Binding("Checked", bindingSource, "Enquadramento_Pedido", true);
            //b.Format += new ConvertEventHandler(FormatRadio);
            //rdbPagamento.DataBindings.Add(b);
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitaBotoes(true);
            cbbFabricante.SelectedIndex = -1;
            cbbNCM.SelectedIndex = -1;
            cbbUnidadeEstatistica.SelectedIndex = -1;
            cbbUnidadeComercializada.SelectedIndex = -1;

            if (bindingSource.Count > 0)
            {
                txtPagina.Text = ((DataRowView)bindingSource.Current).Row["Pagina"].ToString() + 1;
                txtSequencia.Text = ((DataRowView)bindingSource.Current).Row["Sequencial"].ToString() + 1;
            }
            else
            {
                txtPagina.Text = "1";
                txtSequencia.Text = "1";
            }

            IdProduto = 0;

            if (CodigoImportador == "252")
            {
                gbBrasdrill.Enabled = true;
            }
            else
            {
                gbBrasdrill.Enabled = false;
            }
        }

        private bool LocalizaSequencial()
        {
            var query = "SELECT Sequencial, Pagina " +
                        "FROM ItensFaturas " +
                        "WHERE Fatura_Id = @Fatura_Id and Sequencial = @Sequencial " +
                        "ORDER BY Cast(Sequencial as real) DESC";

            var GoOn = false;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Fatura_Id", FaturaId);
                    cmd.Parameters.AddWithValue("@Sequencial", txtSequencia.Text);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            GoOn = true;
                        }
                        return GoOn;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtPagina.Text))
            {
                MessageBox.Show("A Página do Item é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtPagina.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtSequencia.Text))
            {
                MessageBox.Show("O Sequencial do Item é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtSequencia.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtDescricaoPortugues.Text))
            {
                MessageBox.Show("A Descrição do Produto é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricaoPortugues.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtDescricaoIngles.Text))
            {
                MessageBox.Show("A Descrição em inglês do Produto é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricaoIngles.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtCodFabricante.Text))
            {
                MessageBox.Show("O Código do Fabricante é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCodFabricante.Focus();
                return;
            }

            if (string.IsNullOrEmpty(cbbFabricante.Text))
            {
                MessageBox.Show("O Fabricante é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbFabricante.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtCodNCM.Text))
            {
                MessageBox.Show("O NCM é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCodNCM.Focus();
                return;
            }

            if (string.IsNullOrEmpty(cbbNCM.Text))
            {
                MessageBox.Show("O NCM é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbFabricante.Focus();
                return;
            }

            if (txtCodFabricante.Text == CodigoExportador)
            {
                if (MessageBox.Show(FrmPrincipal.UsuarioNomeCompleto + " ,Atenção! Confirma Fabricante igual ao Exportador??", "Informação", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                {
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.None, Convert.ToInt32(this.Tag), string.Format("Não confirmou aviso fabricante = exportador, item sequencial:{0}, da Fatura:{1} , do Processo:{2}  ", txtSequencia.Text, CodigoFatura, Processo));
                }
                else
                {
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.None, Convert.ToInt32(this.Tag), string.Format("Não confirmou aviso fabricante = exportador, item sequencial:{0}, da Fatura:{1} , do Processo:{2}  ", txtSequencia.Text, CodigoFatura, Processo));
                    cbbFabricante.Focus();
                    return;
                }
            }

            if (string.IsNullOrEmpty(cbbUnidadeComercializada.Text))
            {
                MessageBox.Show("A Unidade de Medida Comercializada é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbUnidadeComercializada.Focus();
                return;
            }


            if (Convert.ToDouble(txtQuantidade.Text) <= 0)
            {
                MessageBox.Show("A Quantidade deve ser maior que zero!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtQuantidade.Focus();
                return;
            }

            if (Convert.ToDouble(txtValorUnitario.Text) <= 0)
            {
                MessageBox.Show("O Valor Unitário deve ser maior que zero!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtQuantidade.Focus();
                return;
            }

            if ((statusCadastro == StatusCadastro.Novo) || ((statusCadastro == StatusCadastro.Editar) && (((DataRowView)bindingSource.Current).Row["Sequencial"].ToString() != txtSequencia.Text)))
            {
                if (LocalizaSequencial())
                {
                    if ((MessageBox.Show("Sequencial já existente! Deseja incluí-lo mesmo assim?", "Confirmação", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.No))
                    {
                        txtSequencia.Focus();
                        return;
                    }
                    else
                    {
                        var query = "SELECT Sequencial, Pagina " +
                                    "FROM ItensFaturas " +
                                    "WHERE Cast(Sequencial as Real) >= @Sequecial  AND Sequencial <> ''XXX'' " +
                                    "AND Fatura_Id = @Fatura_Id " +
                                    "ORDER BY Cast(Sequencial as real) DESC ";
                        try
                        {
                            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                            using (SqlCommand cmd = new SqlCommand(query, conn))
                            {
                                cmd.Parameters.AddWithValue("@Fatura_Id", FaturaId);
                                cmd.Parameters.AddWithValue("@Sequencial", txtSequencia.Text);
                                using (SqlDataReader reader = cmd.ExecuteReader())
                                {
                                    if (reader.HasRows)
                                    {
                                        while (reader.Read())
                                        {
                                            int novosequencial = Convert.ToInt32(reader["Sequencial"].ToString()) + 1;

                                            OrdenarSequencial(Convert.ToString(novosequencial), reader["Sequencial"].ToString());

                                            ExcluiTributacao(Convert.ToString(novosequencial));
                                        }
                                    }
                                }
                            }
                        }
                        catch (Exception ex)
                        {
                            MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                    }
                }
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {

                    if (((DataRowView)this.bindingSource.Current).Row["Saldo_Tributavel"].ToString() == "0")
                    {
                        MessageBox.Show("ATENÇÃO! Alteração de um item já tributado, será necessário tributa-lo novamente.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                        ExcluiTributacao(((DataRowView)this.bindingSource.Current).Row["Sequencial"].ToString());
                    }

                    string query = "UPDATE ItensFaturas " +
                                   "SET Sequencial=@Sequencial,Pagina=@Pagina,Produto=@Produto,Descricao_Produto=@Descricao_Produto "+
                                   ",Descricao_Produto_ing=@Descricao_Produto_ing,Fabricante=@Fabricante,NCM=@NCM,Unidade_Medida_Estat=@Unidade_Medida_Estat "+
                                   ",Unidade=@Unidade,Destaque_NCM=@Destaque_NCM,NALADI=@NALADI,Referencia=@Referencia,Numero_serie=@Numero_serie "+
                                   ",Referencia_projeto=@Referencia_projeto,PO=@PO,Seqpo=@Seqpo,Quantidade=@Quantidade,Valor_Unitario=@Valor_Unitario "+
                                   ",Valor_Total=@Valor_Total,Peso_Unitario=@Peso_Unitario,Peso_Unitario_Acertado=@Peso_Unitario_Acertado "+
                                   ",Peso_Total=@Peso_Total,Peso_Total_Acertado=@Peso_Total_Acertado,Saldo_Tributavel=@Saldo_Tributavel "+
                                   ",Acresc_reduc_Valaduan=@Acresc_reduc_Valaduan,Codigo_Produto=@Codigo_Produto,Sequencial_Produto=@Sequencial_Produto "+
                                   ",Item_Admissivel=@Item_Admissivel "+
                                   "WHERE ItensFaturas_Id=@ItensFaturas_Id ";
                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Sequencial", txtSequencia.Text);
                            cmd.Parameters.AddWithValue("@Pagina", txtPagina.Text);
                            cmd.Parameters.AddWithValue("@Produto", txtPartNumber.Text);
                            cmd.Parameters.AddWithValue("@Descricao_Produto", txtDescricaoPortugues.Text);
                            cmd.Parameters.AddWithValue("@Descricao_Produto_ing", txtDescricaoIngles.Text);
                            cmd.Parameters.AddWithValue("@Fabricante", (cbbFabricante.SelectedValue == null) ? (object)DBNull.Value : cbbFabricante.SelectedValue);
                            cmd.Parameters.AddWithValue("@NCM", (cbbNCM.SelectedValue == null) ? (object)DBNull.Value : cbbNCM.SelectedValue);
                            cmd.Parameters.AddWithValue("@Unidade_Medida_Estat", (cbbUnidadeEstatistica.SelectedValue == null) ? (object)DBNull.Value : cbbUnidadeEstatistica.SelectedValue);
                            cmd.Parameters.AddWithValue("@Unidade", (cbbUnidadeComercializada.SelectedValue == null) ? (object)DBNull.Value : cbbUnidadeComercializada.SelectedValue);
                            cmd.Parameters.AddWithValue("@Destaque_NCM", txtDestaque.Text);
                            cmd.Parameters.AddWithValue("@NALADI", txtNaladi.Text);
                            cmd.Parameters.AddWithValue("@Referencia", txtRefEmb.Text);
                            cmd.Parameters.AddWithValue("@Numero_serie", txtNumeroSerie.Text);
                            cmd.Parameters.AddWithValue("@Referencia_projeto", txtRefProjeto.Text);
                            cmd.Parameters.AddWithValue("@PO", txtPO.Text);
                            cmd.Parameters.AddWithValue("@Seqpo", txtSeqPO.Text);
                            cmd.Parameters.AddWithValue("@Quantidade", txtQuantidade.Text);
                            cmd.Parameters.AddWithValue("@Valor_Unitario", txtValorUnitario.Text);
                            cmd.Parameters.AddWithValue("@Valor_Total", Convert.ToDouble(txtQuantidade.Text) * Convert.ToDouble(txtValorUnitario.Text));
                            cmd.Parameters.AddWithValue("@Peso_Unitario", txtPesoUnitario.Text);
                            cmd.Parameters.AddWithValue("@Peso_Unitario_Acertado", 0);
                            cmd.Parameters.AddWithValue("@Peso_Total", Convert.ToDouble(txtQuantidade.Text) * Convert.ToDouble(txtPesoUnitario.Text));
                            cmd.Parameters.AddWithValue("@Peso_Total_Acertado", 0);
                            cmd.Parameters.AddWithValue("@Saldo_Tributavel", txtQuantidade.Text);
                            cmd.Parameters.AddWithValue("@Acresc_reduc_Valaduan", 0.00);
                            cmd.Parameters.AddWithValue("@Codigo_Produto", txtCodigoProduto.Text);
                            if (IdProduto > 0)
                            {
                                cmd.Parameters.AddWithValue("@Sequencial_Produto", IdProduto);
                            }
                            else
                            {
                                cmd.Parameters.AddWithValue("@Sequencial_Produto", ((DataRowView)this.bindingSource.Current).Row["Sequencial_Produto"].ToString());
                            }
                           
                            cmd.Parameters.AddWithValue("@Item_Admissivel", (rdbSim.Checked) ? 1 : 0);
                            cmd.Parameters.AddWithValue("@ItensFaturas_Id", ((DataRowView)this.bindingSource.Current).Row["ItensFaturas_Id"].ToString());
                            cmd.ExecuteNonQuery();
                        }
                    }
                         LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),
                         string.Format("Alterou o Item:{0}, da Fatura: {1} , do Processo:{2}  ",
                         ((DataRowView)this.bindingSource.Current).Row["Sequencial"].ToString(), FaturaId, txtProcesso.Text));

                         MessageBox.Show(FrmPrincipal.UsuarioNomeCompleto + ", ATENÇÃO!! Peso acertado deste item foi ZERADO. Favor verificar/processar o acerto de peso da fatura (por valor ou pelos pesos informados nos itens)!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                }
                else
                {

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO ItensFaturas " +
                                   "(Sequencial,Pagina,Produto,Descricao_Produto,Descricao_Produto_ing,Fabricante,NCM,Unidade_Medida_Estat " +
                                   ",Unidade,Destaque_NCM,NALADI,Referencia,Numero_serie,Referencia_projeto,PO,Seqpo,Quantidade,Valor_Unitario   " +
                                   ",Valor_Total,Peso_Unitario,Peso_Unitario_Acertado,Peso_Total,Peso_Total_Acertado,Saldo_Tributavel,Acresc_reduc_Valaduan " +
                                   ",Codigo_Produto,Sequencial_Produto,Item_Admissivel,Fatura_Id ) " +
                                   "VALUES " +
                                   "(@Sequencial ,@Pagina,@Produto,@Descricao_Produto,@Descricao_Produto_ing,@Fabricante,@NCM,@Unidade,@Unidade_Medida_Estat " +
                                   ",@Destaque_NCM,@NALADI,@Referencia,@Numero_serie,@Referencia_projeto,@PO,@Seqpo,@Quantidade " +
                                   ",@Valor_Unitario,@Valor_Total,@Peso_Unitario,@Peso_Unitario_Acertado, @Peso_Total,@Peso_Total_Acertado,@Saldo_Tributavel,@Acresc_reduc_Valaduan " +
                                   ",@Codigo_Produto,@Sequencial_Produto,@Item_Admissivel,@Fatura_Id)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Sequencial", txtSequencia.Text);
                        cmd.Parameters.AddWithValue("@Pagina", txtPagina.Text);
                        cmd.Parameters.AddWithValue("@Produto", txtPartNumber.Text);
                        cmd.Parameters.AddWithValue("@Descricao_Produto", txtDescricaoPortugues.Text);
                        cmd.Parameters.AddWithValue("@Descricao_Produto_ing", txtDescricaoIngles.Text);
                        cmd.Parameters.AddWithValue("@Fabricante", (cbbFabricante.SelectedValue == null) ? (object)DBNull.Value : cbbFabricante.SelectedValue);
                        cmd.Parameters.AddWithValue("@NCM", (cbbNCM.SelectedValue == null) ? (object)DBNull.Value : cbbNCM.SelectedValue);
                        cmd.Parameters.AddWithValue("@Unidade_Medida_Estat", (cbbUnidadeEstatistica.SelectedValue == null) ? (object)DBNull.Value : cbbUnidadeEstatistica.SelectedValue);
                        cmd.Parameters.AddWithValue("@Unidade", (cbbUnidadeComercializada.SelectedValue == null) ? (object)DBNull.Value : cbbUnidadeComercializada.SelectedValue);
                        cmd.Parameters.AddWithValue("@Destaque_NCM", txtDestaque.Text);
                        cmd.Parameters.AddWithValue("@NALADI", txtNaladi.Text);
                        cmd.Parameters.AddWithValue("@Referencia", txtRefEmb.Text);
                        cmd.Parameters.AddWithValue("@Numero_serie", txtNumeroSerie.Text);
                        cmd.Parameters.AddWithValue("@Referencia_projeto", txtRefProjeto.Text);
                        cmd.Parameters.AddWithValue("@PO", txtPO.Text);
                        cmd.Parameters.AddWithValue("@Seqpo", txtSeqPO.Text);
                        cmd.Parameters.AddWithValue("@Quantidade", txtQuantidade.Text);
                        cmd.Parameters.AddWithValue("@Valor_Unitario", txtValorUnitario.Text);
                        cmd.Parameters.AddWithValue("@Valor_Total", Convert.ToDouble(txtQuantidade.Text) * Convert.ToDouble(txtValorUnitario.Text));
                        cmd.Parameters.AddWithValue("@Peso_Unitario", txtPesoUnitario.Text);
                        cmd.Parameters.AddWithValue("@Peso_Unitario_Acertado", Convert.ToDouble(txtQuantidade.Text) * Convert.ToDouble(txtPesoUnitario.Text));
                        cmd.Parameters.AddWithValue("@Peso_Total", txtPesoTotal.Text);
                        cmd.Parameters.AddWithValue("@Peso_Total_Acertado", Convert.ToDouble(txtQuantidade.Text) * Convert.ToDouble(txtPesoUnitario.Text));
                        cmd.Parameters.AddWithValue("@Saldo_Tributavel", txtQuantidade.Text);
                        cmd.Parameters.AddWithValue("@Acresc_reduc_Valaduan", 0.00);
                        cmd.Parameters.AddWithValue("@Codigo_Produto", txtCodigoProduto.Text);
                        cmd.Parameters.AddWithValue("@Sequencial_Produto", IdProduto);
                        cmd.Parameters.AddWithValue("@Item_Admissivel",  (rdbSim.Checked) ? 1 : 0);
                        cmd.Parameters.AddWithValue("@Fatura_Id", FaturaId);
                        cmd.ExecuteNonQuery();
                    }
                         LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag),
                         string.Format("Incluiu o Item:{0}, da Fatura:{1}, do Processo:{2}",
                         txtSequencia.Text, FaturaId, txtProcesso.Text));
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
                HabilitaBotoes(false);
                //    bindingSource.DataSource = get();

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
            HabilitaBotoes(false);
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitaBotoes(true);

            IdProduto = 0;
            if (CodigoImportador == "252")
            {
                gbBrasdrill.Enabled = true;
            }
            else
            {
                gbBrasdrill.Enabled = false;
            }
        }

        private void ExcluiTributacao(string sequencial)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "DELETE FROM Tributacao_Item_Fatura " +
                           "WHERE Fatura_Id = @Fatura_Id AND Sequencial_Item = @Sequencial ";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Fatura_Id", FaturaId);
                cmd.Parameters.AddWithValue("@Sequencial", sequencial);
                cmd.ExecuteNonQuery();
            }
        }

        private void OrdenarSequencial(string novosequencial, string sequencial)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "UPDATE ItensFaturas SET Sequencial = @NovoSequencial " +
                           "WHERE Fatura_Id = @Fatura_Id " +
                           "AND Sequencial = @Sequencial ";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Fatura_Id", FaturaId);
                cmd.Parameters.AddWithValue("@NovoSequencial", novosequencial);
                cmd.Parameters.AddWithValue("@Sequencial", sequencial);
                cmd.ExecuteNonQuery();
            }
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Confirma exclusão do Item da Fatura e as Tributações?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    ExcluiTributacao(((DataRowView)this.bindingSource.Current).Row["Sequencial"].ToString());

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = " delete from ItensFaturas where ItensFaturas_Id = @ItensFaturas_Id ";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ItensFaturas_Id", ((DataRowView)this.bindingSource.Current).Row["ItensFaturas_Id"].ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(((DataRowView)this.bindingSource.Current).Row["ItensFaturas_Id"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Excluiu o Item: {0}, da Fatura: {1}, do Processo: {2} ", ((DataRowView)this.bindingSource.Current).Row["ItensFaturas_Id"].ToString(), CodigoFatura, Processo));
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

        private void txtCodigoProduto_TextChanged(object sender, EventArgs e)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT P.CODIGO, P.DESCRICAO FROM Produtosnew F  " +
                           "INNER JOIN TAB_PAIS P ON F.PaisOrigem = P.CODIGO  " +
                           "WHERE F.REG = @REG ";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@REG", ((DataRowView)bindingSource.Current).Row["Sequencial_Produto"].ToString());
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            txtPaisOrigem.Text = reader["CODIGO"].ToString() + " - " + reader["DESCRICAO"].ToString();
                        }

                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void txtCodFabricante_TextChanged(object sender, EventArgs e)
        {
            //if ((txtCodFabricante.Text.Length >= 1) && (txtCodFabricante.Text.Length < 23))
            //    cbbFabricante.SelectedValue = txtCodFabricante.Text;
            //else
            //    cbbFabricante.SelectedIndex = -1;

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT P.CODIGO, P.DESCRICAO FROM Fabricantes_Produtores F  " +
                           "INNER JOIN TAB_PAIS P ON F.Pais = P.CODIGO " +
                           "WHERE F.Codigo = @Codigo ";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Codigo", ((DataRowView)bindingSource.Current).Row["Fabricante"].ToString());
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            txtPaisFabricante.Text = reader["CODIGO"].ToString() + " - " + reader["DESCRICAO"].ToString();
                        }

                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnProdutos_Click(object sender, EventArgs e)
        {
            using (FrmLocalizarProdutos form = new FrmLocalizarProdutos())
            {
                if (FrmPrincipal.ShowModalMdiChildren(form) == DialogResult.OK)
                {
                    IdProduto = form.IdProduto;
                    txtCodigoProduto.Text = form.CodigoProduto;
                    txtCodFabricante.Text = form.CodFabricante;
                    cbbFabricante.SelectedValue = form.CodFabricante;
                    txtPartNumber.Text = form.Part_Number;
                    txtDescricaoPortugues.Text = form.DescPortugues;
                    txtDescricaoIngles.Text = form.DescIngles;
                    txtCodNCM.Text = form.ncm;
                    cbbNCM.SelectedValue = form.ncm;
                    txtDestaque.Text = form.DestaqueNCM;
                    txtNaladi.Text = form.NALADI;
                    txtCodUnidadeComercializada.Text = form.UnidadeComercializada;
                    cbbUnidadeComercializada.SelectedValue = form.UnidadeComercializada;
                }
            }
        }

        private void txtCodNCM_TextChanged(object sender, EventArgs e)
        {
            if (txtCodNCM.Text.Length == 8)
                cbbNCM.SelectedValue = txtCodNCM.Text;
            else
                cbbNCM.SelectedIndex = -1;
        }

        private void txtCodUnidadeComercializada_TextChanged(object sender, EventArgs e)
        {
            if (txtCodUnidadeComercializada.Text.Length == 2)
                cbbUnidadeComercializada.SelectedValue = txtCodUnidadeComercializada.Text;
            else
                cbbUnidadeComercializada.SelectedIndex = -1;
        }

        private void cbbFabricante_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(cbbFabricante.Text))
            {
                txtCodFabricante.Text = cbbFabricante.SelectedValue.ToString();
            }
        }

        private void cbbNCM_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(cbbNCM.Text))
            {
                txtCodNCM.Text = cbbNCM.SelectedValue.ToString();
            }
        }

        private void cbbUnidadeComercializada_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(cbbUnidadeComercializada.Text))
            {
                txtCodUnidadeComercializada.Text = cbbUnidadeComercializada.SelectedValue.ToString();
            }
        }
    }
}
