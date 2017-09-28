using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Cadastros
{
    public partial class FrmFabricantesEProdutores : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        const string _codigoPaisBrasil = "105";
        private bool _canInsertEditAndDelete;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None) && (_canInsertEditAndDelete);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None) && (_canInsertEditAndDelete);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None) && (_canInsertEditAndDelete);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
            grbLocalizar.Enabled = (statusCadastro == StatusCadastro.None);
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

        public FrmFabricantesEProdutores()
        {
            InitializeComponent();

            _canInsertEditAndDelete = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Cadastros - Fabricantes - Inclui, Edita e Exclui",
                Chave_Busca = "botaoNovoEditarExcluiFabricantes"
            });
        }

        private void FrmFabricantesEProdutores_Load(object sender, EventArgs e)
        {
            //// 1
            getPais();
            getUF();

            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            //bindingSource.DataSource = getFabricantesEProdutores();
            txtLocalizar_TextChanged(null, null);

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtCodigo.DataBindings.Add(new Binding("Text", bindingSource, "Codigo", true));
            txtRazaoSocial.DataBindings.Add(new Binding("Text", bindingSource, "Razao_Social", true));
            cbbPais.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Pais"));
            txtCNPJ.DataBindings.Add(new Binding("Text", bindingSource, "CGC_CPF", true, DataSourceUpdateMode.OnValidation, "  .   .   /    -"));
            txtEndereco.DataBindings.Add(new Binding("Text", bindingSource, "Endereco", true));
            txtNumero.DataBindings.Add(new Binding("Text", bindingSource, "Numero", true));
            txtComplemento.DataBindings.Add(new Binding("Text", bindingSource, "Complemento", true));
            txtBairro.DataBindings.Add(new Binding("Text", bindingSource, "Bairro", true));
            txtCidade.DataBindings.Add(new Binding("Text", bindingSource, "Cidade", true));
            txtCEP.DataBindings.Add(new Binding("Text", bindingSource, "CEP", true, DataSourceUpdateMode.OnValidation, "     -"));
            cbbUF.DataBindings.Add(new Binding("SelectedValue", bindingSource, "UF"));
            txtEstado.DataBindings.Add(new Binding("Text", bindingSource, "Estado", true));
            txtIE.DataBindings.Add(new Binding("Text", bindingSource, "Inscricao_Estadual", true));
        }

        private DataTable getFabricantesEProdutores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select top 100 Codigo,Razao_Social,Pais,CGC_CPF,Endereco,Numero," +
                "Complemento,Bairro,Cidade,CEP,UF,Estado,Inscricao_Estadual " +
                "from Fabricantes_Produtores where lixo = 0 order by Codigo desc, Razao_Social";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    table.Columns["Codigo"].AutoIncrement = false;
                    return table;
                }
            }
        }

        private DataTable getFabricantesEProdutores(string razao_social)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Codigo,Razao_Social,Pais,CGC_CPF,Endereco,Numero," +
                "Complemento,Bairro,Cidade,CEP,UF,Estado,Inscricao_Estadual " +
                "from Fabricantes_Produtores where lixo = 0 and Razao_Social like @razao_social order by Razao_Social";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@razao_social", string.Format("%{0}%", razao_social));
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    table.Columns["Codigo"].AutoIncrement = false;
                    return table;
                }
            }
        }

        private void getPais()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select * from tab_pais order by descricao";
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
                cbbPais.DataSource = table;
                cbbPais.DisplayMember = "descricao";
                cbbPais.ValueMember = "codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getUF()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select * from tab_uf order by codigo";
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
                cbbUF.DataSource = table;
                cbbUF.DisplayMember = "codigo";
                cbbUF.ValueMember = "codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
        }

        private bool FabricanteJaCadastrado()
        {
            var query = "select TOP 1 CODIGO from Fabricantes_Produtores where lixo = 0 " +
                "and REPLACE(Razao_Social,' ','') = @razaosocial and REPLACE(Endereco,' ','') = @endereco " +
                "and REPLACE(Numero,' ','') = @numero and REPLACE(Complemento,' ','') = @complemento "+
                "and REPLACE(Cidade,' ','') = @cidade and REPLACE(Estado,' ','') = @estado ";
            var GoOn = false;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@razaosocial", txtRazaoSocial.Text.Trim().Replace(" ", ""));
                    cmd.Parameters.AddWithValue("@endereco", txtEndereco.Text.Trim().Replace(" ", ""));
                    cmd.Parameters.AddWithValue("@numero", txtNumero.Text.Trim().Replace(" ", ""));
                    cmd.Parameters.AddWithValue("@complemento", txtComplemento.Text.Trim().Replace(" ", ""));
                    cmd.Parameters.AddWithValue("@cidade", txtCidade.Text.Trim().Replace(" ", ""));
                    cmd.Parameters.AddWithValue("@estado", txtEstado.Text.Trim().Replace(" ", ""));

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
            if (string.IsNullOrEmpty(txtRazaoSocial.Text))
            {
                MessageBox.Show("A razão social é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtRazaoSocial.Focus();
                return;
            }

            if (string.IsNullOrEmpty(cbbPais.Text) || cbbPais.SelectedValue == null)
            {
                MessageBox.Show("O país é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbPais.Focus();
                return;
            }

            if ((txtCNPJ.MaskCompleted == false) && ((string)cbbPais.SelectedValue == _codigoPaisBrasil))
            {
                MessageBox.Show("O CNPJ é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCNPJ.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtIE.Text) &&
           ((string)cbbPais.SelectedValue == _codigoPaisBrasil))
            {
                MessageBox.Show("A inscrição estadual é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtIE.Focus();
                return;
            }

            if ((string)cbbPais.SelectedValue == _codigoPaisBrasil)
            {
                if (string.IsNullOrEmpty(txtEndereco.Text) ||
                    string.IsNullOrEmpty(txtNumero.Text) ||                    
                    string.IsNullOrEmpty(txtBairro.Text) ||
                    string.IsNullOrEmpty(txtCidade.Text) ||
                    (txtCEP.MaskCompleted == false) ||
                    string.IsNullOrEmpty(cbbUF.Text) ||
                    string.IsNullOrEmpty(txtEstado.Text))
                {
                    MessageBox.Show("Os seguintes campos são obrigatórios: \n\r - Endereço \n\r - Número \n\r - Complemento \n\r - Bairro \n\r - Cidade \n\r - CEP \n\r - UF \n\r - Estado", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    return;
                }
            }

            if ((string)cbbPais.SelectedValue != _codigoPaisBrasil)
            {
                if (string.IsNullOrEmpty(txtEndereco.Text) ||
                    string.IsNullOrEmpty(txtNumero.Text) ||
                    string.IsNullOrEmpty(txtCidade.Text) ||
                    string.IsNullOrEmpty(txtEstado.Text))
                {
                    MessageBox.Show("Os seguintes campos são obrigatórios: \n\r - Endereço \n\r - Número\n\r - Cidade \n\r - Estado", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    return;
                }
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    if (FabricanteEmUso(txtCodigo.Text))
                    {
                        MessageBox.Show("Fabricante já vinculado não pode ser alterado!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                        btnCancelar_Click(null, null);
                        return;
                    }

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Fabricantes_Produtores set " +
                        "Razao_Social = @Razao_Social, Pais = @Pais, CGC_CPF = @CGC_CPF, Endereco = @Endereco, Numero = @Numero, Complemento = @Complemento" +
                        ",Bairro = @Bairro, Cidade = @Cidade, CEP = @CEP, UF = @UF, Estado = @Estado, Inscricao_Estadual = @Inscricao_Estadual " +
                        "where codigo = @codigo";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Codigo", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@Razao_Social", txtRazaoSocial.Text);
                        cmd.Parameters.AddWithValue("@Pais", (cbbPais.SelectedValue == null ? (object)DBNull.Value : cbbPais.SelectedValue));
                        cmd.Parameters.AddWithValue("@CGC_CPF", txtCNPJ.MaskCompleted ? txtCNPJ.Text : (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@Endereco", txtEndereco.Text);
                        cmd.Parameters.AddWithValue("@Numero", txtNumero.Text);
                        cmd.Parameters.AddWithValue("@Complemento", txtComplemento.Text);
                        cmd.Parameters.AddWithValue("@Bairro", txtBairro.Text);
                        cmd.Parameters.AddWithValue("@Cidade", txtCidade.Text);
                        cmd.Parameters.AddWithValue("@CEP", txtCEP.MaskCompleted ? txtCEP.Text : (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@UF", (cbbUF.SelectedValue == null ? (object)DBNull.Value : cbbUF.SelectedValue));
                        cmd.Parameters.AddWithValue("@Estado", txtEstado.Text);
                        cmd.Parameters.AddWithValue("@Inscricao_Estadual", txtIE.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Razão Social: {0} ", txtRazaoSocial.Text));
                }
                else
                {
                    if (FabricanteJaCadastrado())
                    {
                        MessageBox.Show("Favor verificar, fabricante já Cadastrado!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return;
                    }

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into Fabricantes_Produtores" +
                        "(Razao_Social, Pais, CGC_CPF, Endereco, Numero, Complemento" +
                        ",Bairro, Cidade, CEP, UF, Estado, Inscricao_Estadual)" +
                        "values" +
                        "(@Razao_Social, @Pais, @CGC_CPF, @Endereco, @Numero, @Complemento" +
                        ",@Bairro, @Cidade, @CEP, @UF, @Estado, @Inscricao_Estadual); SELECT SCOPE_IDENTITY()";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Razao_Social", txtRazaoSocial.Text);
                        cmd.Parameters.AddWithValue("@Pais", (cbbPais.SelectedValue == null ? (object)DBNull.Value : cbbPais.SelectedValue));
                        cmd.Parameters.AddWithValue("@CGC_CPF", txtCNPJ.MaskCompleted ? txtCNPJ.Text : (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@Endereco", txtEndereco.Text);
                        cmd.Parameters.AddWithValue("@Numero", txtNumero.Text);
                        cmd.Parameters.AddWithValue("@Complemento", txtComplemento.Text);
                        cmd.Parameters.AddWithValue("@Bairro", txtBairro.Text);
                        cmd.Parameters.AddWithValue("@Cidade", txtCidade.Text);
                        cmd.Parameters.AddWithValue("@CEP", txtCEP.MaskCompleted ? txtCEP.Text : (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@UF", (cbbUF.SelectedValue == null ? (object)DBNull.Value : cbbUF.SelectedValue));
                        cmd.Parameters.AddWithValue("@Estado", txtEstado.Text);
                        cmd.Parameters.AddWithValue("@Inscricao_Estadual", txtIE.Text);                        
                        var returnValue = cmd.ExecuteScalar();
                        txtCodigo.Text = returnValue.ToString();
                    }

                    var codigo_busca = txtCodigo.Text;
                    bindingSource.DataSource = getFabricantesEProdutores();
                    bindingSource.Position = bindingSource.Find("codigo", codigo_busca);
                    LogSistemas.AddLogSistema(codigo_busca, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Razão Social: {0} ", txtRazaoSocial.Text));                                                            
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
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
            txtCodigo.Enabled = false;
        }

        private bool FabricanteEmUso(string codigo)
        {
            var query = "SELECT top 1 Fabricante FROM Produtosnew WHERE Fabricante = @Fabricante ";
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Fabricante", codigo);
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
            if (FabricanteEmUso(txtCodigo.Text))
            {
                MessageBox.Show("Este fabricante não pode ser excluída!", "Excluir", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "delete from Fabricantes_Produtores where codigo = @codigo";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@codigo", txtCodigo.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Razão Social: {0}", txtRazaoSocial.Text));
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

        private void txtLocalizar_TextChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtLocalizar.Text))
            {
                bindingSource.DataSource = getFabricantesEProdutores();
            }
            else
            {
                if (txtLocalizar.Text.Length >= 3)
                {
                    bindingSource.DataSource = getFabricantesEProdutores(txtLocalizar.Text);
                }
            }
            //bindingSource.Filter = "Razao_Social LIKE '%" + txtLocalizar.Text + "%'";
        }

        private void cbbPais_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbbPais.SelectedValue != null)
            {
                if (cbbPais.SelectedValue.ToString().Contains(_codigoPaisBrasil)
                    && statusCadastro != StatusCadastro.None)
                {
                    txtCNPJ.Enabled = true;
                    txtIE.Enabled = true;
                }
                else
                    if (statusCadastro != StatusCadastro.None)
                    {
                        txtCNPJ.Enabled = false;
                        txtIE.Enabled = false;
                        txtCNPJ.Clear();
                        txtIE.Clear();
                    }
            }
        }

        private void cbbPais_TextChanged(object sender, EventArgs e)
        {
            cbbPais_SelectedIndexChanged(null, null);
        }

        private void txtRazaoSocial_KeyDown(object sender, KeyEventArgs e)
        {
            BloqueiaCTRLV(e);
        }

        private void txtEndereco_KeyDown(object sender, KeyEventArgs e)
        {
            BloqueiaCTRLV(e);
        }

        private void txtRazaoSocial_MouseDown(object sender, MouseEventArgs e)
        {
            BloqueiaBtnDIREITO(e);
        }        

        private void txtEndereco_MouseDown(object sender, MouseEventArgs e)
        {
            BloqueiaBtnDIREITO(e);
        }

        //Bloqueia CTRL + V
        private void BloqueiaCTRLV(KeyEventArgs e)
        {
            //Validando se o usuario apertou no teclado Ctrl + V
            if (e.Control && e.KeyValue == 86)
            {
                e.Handled = true;
                e.SuppressKeyPress = true;
            }
        }

        //Bloqueia botão direito do mouse
        private void BloqueiaBtnDIREITO(MouseEventArgs e)
        {
            //Verificando se usuario clicou com botão direito sobre o textBox
            if (e.Button == System.Windows.Forms.MouseButtons.Right)
            {
                MessageBox.Show("Botão direito sobre a caixa de texto desabilitada.");
            }
        }

        private void txtEstado_KeyDown(object sender, KeyEventArgs e)
        {
            BloqueiaCTRLV(e);
        }

        private void txtEstado_MouseDown(object sender, MouseEventArgs e)
        {
            BloqueiaBtnDIREITO(e);
        }

        private void txtCidade_KeyDown(object sender, KeyEventArgs e)
        {
            BloqueiaCTRLV(e);
        }

        private void txtCidade_MouseDown(object sender, MouseEventArgs e)
        {
            BloqueiaBtnDIREITO(e);
        }

        private void txtBairro_KeyDown(object sender, KeyEventArgs e)
        {
            BloqueiaCTRLV(e);
        }

        private void txtBairro_MouseDown(object sender, MouseEventArgs e)
        {
            BloqueiaBtnDIREITO(e);
        }

        private void txtComplemento_KeyDown(object sender, KeyEventArgs e)
        {
            BloqueiaCTRLV(e);
        }

        private void txtComplemento_MouseDown(object sender, MouseEventArgs e)
        {
            BloqueiaBtnDIREITO(e);
        }

        private void txtNumero_KeyDown(object sender, KeyEventArgs e)
        {
            BloqueiaCTRLV(e);
        }

        private void txtNumero_MouseDown(object sender, MouseEventArgs e)
        {
            BloqueiaBtnDIREITO(e);
        }
    }
}
