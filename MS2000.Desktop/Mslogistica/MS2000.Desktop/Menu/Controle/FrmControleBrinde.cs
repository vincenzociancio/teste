using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmControleBrinde : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        const int CODIGO_CAMINHO_FOTOS_BRINDES = 11;
        string _caminho_doc_fotos_brindes;
        string IdBrinde = default(string);
        private Image _originalImage;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
            btnFoto.Enabled = (statusCadastro == StatusCadastro.None);
            pcbFoto.Enabled = (statusCadastro == StatusCadastro.None);
            groupBox1.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }
            VerificaBotoes();
        }


        public FrmControleBrinde()
        {
            InitializeComponent();
        }

        private DataTable getBrinde()
        {
            string query = "SELECT ID,Nome,Descricao,FK_Fornecedor,Quantidade,Valor_Unitario,Valor_Total FROM Controle_Brinde Order by Nome";
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

        private DataTable getDistribuicao()
        {
            string query = "SELECT ID as IdDistribuicao,U.Nome_Completo,Presenteado,(case C.FK_importador " +
                           "when '0000000001' then 'AGENTE DE CARGA' " +
                           "when '0000000002' then 'BANCO' " +
                           "when '0000000003' then 'PRESTADOR DE SERVIÇO' " +
                           "when '0000000004' then 'RECEITA FEDERAL' " +
                           "when '0000000005' then 'TRANSPORTADOR'  " +
                           "else  " +
                           " ( select top 1 Razao_Social from Importadores   where CGC_CPF =  C.FK_importador) " +
                           "end ) as Razao_Social " +
                           ",Quantidade,Data " +
                           "FROM Controle_Brinde_Distribuicao C  " +
                           "left join Usuarios U on C.FK_Usuario = U.PK_USUARIO " +
                           "where FK_Brinde = @FK_Brinde " +
                           "Group by ID,U.Nome_Completo,Presenteado,FK_importador,Quantidade,Data " +
                           "order by Data desc";
            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_Brinde", bindingSource.GetRelatedCurrencyManager("ID").Current.ToString());
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            DataTable table = new DataTable();
                            table.Load(reader);
                            return table;
                        }
                        else
                        {
                            return null;
                        }
                    }
                }
            }
        }

        private void getFornecedores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Id, Razao_Social FROM Fornecedores ORDER BY Razao_Social ";
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
                cbbFornecedor.DataSource = table;
                cbbFornecedor.DisplayMember = "Razao_Social";
                cbbFornecedor.ValueMember = "Id";
                cbbFornecedor.SelectedIndex = -1;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getUsuario()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT PK_USUARIO, Nome_Completo FROM Usuarios WHERE Ativo = '1' ORDER BY Nome_Completo ";
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
                cbbRequisitante.DataSource = table;
                cbbRequisitante.DisplayMember = "Nome_Completo";
                cbbRequisitante.ValueMember = "PK_USUARIO";
                cbbRequisitante.SelectedIndex = -1;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getEmpresa()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "(SELECT Max(I.[Razao_Social]) AS [Razao_Social], I.[CGC_CPF] " +
                           "FROM Importadores AS I WHERE I.[CGC_CPF] <> '' " +
                           "GROUP BY I.[CGC_CPF]) " +
                           "UNION ALL " +
                           "(SELECT 'AGENTE DE CARGA' AS [Razao_Social], '0000000001' AS [CGC_CPF] ) " +
                           "UNION ALL " +
                           "SELECT 'BANCO' AS [Razao_Social], '0000000002' AS [CGC_CPF] " +
                           "UNION ALL " +
                           "SELECT 'PRESTADOR DE SERVIÇO' AS [Razao_Social], '0000000003' AS [CGC_CPF] " +
                           "UNION ALL " +
                           "SELECT 'RECEITA FEDERAL' AS [Razao_Social], '0000000004' AS [CGC_CPF] " +
                           "UNION ALL " +
                           "SELECT 'TRANSPORTADOR' AS [Razao_Social], '0000000005' AS [CGC_CPF]  " +
                           "ORDER BY Max(Razao_Social) ";
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
                cbbEmpresa.DataSource = table;
                cbbEmpresa.DisplayMember = "Razao_Social";
                cbbEmpresa.ValueMember = "CGC_CPF";
                cbbEmpresa.SelectedIndex = -1;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void FrmControleBrinde_Load(object sender, EventArgs e)
        {

            _caminho_doc_fotos_brindes = (new CaminhoDiretorioServidor().GetCaminhoById(CODIGO_CAMINHO_FOTOS_BRINDES)).Caminho;
            getFornecedores();
            getEmpresa();
            getUsuario();

            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getBrinde();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            dgvDistribuicao.AutoGenerateColumns = false;
            if (dataGridView.RowCount > 0)
            {
                dgvDistribuicao.DataSource = getDistribuicao();
            }
            else
            {
                dgvDistribuicao.DataSource = null;
            }

            txtNome.DataBindings.Add(new Binding("Text", bindingSource, "Nome", true));
            txtDescricao.DataBindings.Add(new Binding("Text", bindingSource, "Descricao", true));
            cbbFornecedor.DataBindings.Add(new Binding("SelectedValue", bindingSource, "FK_Fornecedor", true));
            txtQuantidade.DataBindings.Add(new Binding("Text", bindingSource, "Quantidade", true));
            txtValorUnitario.DataBindings.Add(new Binding("Text", bindingSource, "Valor_Unitario", true, DataSourceUpdateMode.OnValidation, "0.00", "N"));
            txtValorTotal.DataBindings.Add(new Binding("Text", bindingSource, "Valor_Total", true, DataSourceUpdateMode.OnValidation, "0.00", "N"));
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
            dgvDistribuicao.DataSource = null;
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtNome.Text))
            {
                MessageBox.Show("O Nome é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtNome.Focus();
                return;
            }

            if (string.IsNullOrEmpty(cbbFornecedor.Text))
            {
                MessageBox.Show("O Fornecedor é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbFornecedor.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtDescricao.Text))
            {
                MessageBox.Show("O descrição é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricao.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtQuantidade.Text))
            {
                MessageBox.Show("A Quantidade é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtQuantidade.Focus();
                return;
            }
            if (string.IsNullOrEmpty(txtValorUnitario.Text))
            {
                MessageBox.Show("O Valor Unitário é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtValorUnitario.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtValorTotal.Text))
            {
                MessageBox.Show("O Valor Total é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtValorTotal.Focus();
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    string query = "UPDATE Controle_Brinde " +
                                   "SET Nome = @Nome,Descricao = @Descricao,FK_Fornecedor = @FK_Fornecedor,Quantidade = @Quantidade " +
                                   ",Valor_Unitario = @Valor_Unitario,Valor_Total = @Valor_Total " +
                                   "WHERE ID= @ID";
                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Nome", txtNome.Text);
                            cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                            cmd.Parameters.AddWithValue("@FK_Fornecedor", (cbbFornecedor.SelectedValue == null) ? DBNull.Value : (object)cbbFornecedor.SelectedValue);
                            cmd.Parameters.AddWithValue("@Quantidade", txtQuantidade.Text);
                            cmd.Parameters.AddWithValue("@Valor_Unitario", Convert.ToDouble(txtValorUnitario.Text));
                            cmd.Parameters.AddWithValue("@Valor_Total", Convert.ToDouble(txtValorTotal.Text));
                            cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("ID").Current.ToString());
                            cmd.ExecuteNonQuery();
                        }
                    }
                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De:{0} Para:{1}", ((DataRowView)this.bindingSource.Current).Row["Nome"].ToString(), txtNome.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Controle_Brinde " +
                                   "(Nome,Descricao,FK_Fornecedor,Quantidade,Valor_Unitario,Valor_Total) " +
                                   "VALUES " +
                                   "(@Nome,@Descricao,@FK_Fornecedor,@Quantidade,@Valor_Unitario,@Valor_Total)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Nome", txtNome.Text);
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@FK_Fornecedor", (cbbFornecedor.SelectedValue == null) ? DBNull.Value : (object)cbbFornecedor.SelectedValue);
                        cmd.Parameters.AddWithValue("@Quantidade", txtQuantidade.Text);
                        cmd.Parameters.AddWithValue("@Valor_Unitario", Convert.ToDouble(txtValorUnitario.Text));
                        cmd.Parameters.AddWithValue("@Valor_Total", Convert.ToDouble(txtValorTotal.Text));
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Nome:{0}", txtNome.Text));
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
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "delete from Controle_Brinde where ID = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("ID").Current.ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Nome: {0}", txtNome.Text));
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

        private void txtPesquisar_TextChanged(object sender, EventArgs e)
        {
            bindingSource.Filter = "Nome LIKE '" + txtPesquisar.Text + "%'";
        }

        private void dataGridView_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dataGridView.Columns[e.ColumnIndex].Name == "Upload")
            {
                var form = new FrmControleBrindeUpload();
                form.ID = dataGridView.Rows[e.RowIndex].Cells["ID"].Value.ToString();
                form.Nome = dataGridView.Rows[e.RowIndex].Cells["Nome"].Value.ToString();
                FrmPrincipal.ShowModalMdiChildren(form);
            }
        }

        private void dataGridView_CellMouseEnter(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex < 0 || e.RowIndex < 0)
            {
                return;
            }
            var dataGridView = (sender as DataGridView);

            if (e.ColumnIndex == 1)
                dataGridView.Cursor = Cursors.Hand;
            else
                dataGridView.Cursor = Cursors.Default;
        }

        private void txtQuantidade_KeyPress(object sender, KeyPressEventArgs e)
        {
            Util.SomenteNumero(e);
        }

        private void txtValorUnitario_KeyPress(object sender, KeyPressEventArgs e)
        {
            Util.SomenteNumero(e);
        }

        private void txtValorTotal_KeyPress(object sender, KeyPressEventArgs e)
        {
            Util.SomenteNumero(e);
        }

        private void pcbFoto_DoubleClick(object sender, EventArgs e)
        {
            Process.Start(_caminho_doc_fotos_brindes + IdBrinde + ".JPG");
        }

        private void bindingSource_PositionChanged(object sender, EventArgs e)
        {
            if (bindingSource.Current == null)
                return;
            IdBrinde = ((DataRowView)bindingSource.Current).Row["ID"].ToString();//bindingSource.GetRelatedCurrencyManager("ID").Current.ToString();
            if (File.Exists(_caminho_doc_fotos_brindes + IdBrinde + ".jpg"))
            {
                FileStream fs;
                fs = new FileStream(_caminho_doc_fotos_brindes + IdBrinde + ".jpg", FileMode.Open, FileAccess.Read);
                pcbFoto.Image = Image.FromStream(fs);
                fs.Close();
            }
            else
            {
                FileStream fs;
                fs = new FileStream(_caminho_doc_fotos_brindes + "sem_foto.jpg", FileMode.Open, FileAccess.Read);
                pcbFoto.Image = Image.FromStream(fs);
                fs.Close();
            }

            if (dataGridView.RowCount > 0)
            {
                dgvDistribuicao.DataSource = getDistribuicao();
            }
            else
            {
                dgvDistribuicao.DataSource = null;
            }
            limparCampos();
        }

        private void btnFoto_Click(object sender, EventArgs e)
        {
            openFileDialog1.Filter = "Images (*.JPG)|*.JPG|" + "All files (*.*)|*.*";
            openFileDialog1.CheckFileExists = true;
            openFileDialog1.CheckPathExists = true;
            openFileDialog1.FilterIndex = 2;
            openFileDialog1.RestoreDirectory = true;
            openFileDialog1.ReadOnlyChecked = true;
            openFileDialog1.ShowReadOnly = true;

            DialogResult dr = this.openFileDialog1.ShowDialog();

            if (dr == System.Windows.Forms.DialogResult.OK)
            {
                foreach (String arquivo in openFileDialog1.FileNames)
                {
                    try
                    {
                        Image Imagem = Image.FromFile(arquivo);

                        pcbFoto.SizeMode = PictureBoxSizeMode.StretchImage;
                        pcbFoto.Image = Imagem;
                        _originalImage = pcbFoto.Image.Clone() as Image;

                        if (File.Exists(_caminho_doc_fotos_brindes + IdBrinde + ".jpg"))
                        {
                            File.Delete(_caminho_doc_fotos_brindes + IdBrinde + ".jpg");
                            Bitmap bmpScreenshot;

                            bmpScreenshot = pcbFoto.Image as Bitmap;
                            bmpScreenshot.Save(_caminho_doc_fotos_brindes + IdBrinde + ".JPG", ImageFormat.Jpeg);

                        }
                        else
                        {
                            Bitmap bmpScreenshot;

                            bmpScreenshot = pcbFoto.Image as Bitmap;
                            bmpScreenshot.Save(_caminho_doc_fotos_brindes + IdBrinde + ".JPG", ImageFormat.Jpeg);

                        }

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Não é possível exibir a imagem");
                    }
                }
            }
        }

        private void btnIncluir_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(cbbRequisitante.Text) || cbbRequisitante.SelectedValue == null)
            {
                MessageBox.Show("O Requisitante é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbRequisitante.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtPresenteado.Text))
            {
                MessageBox.Show("O Presenteado é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtPresenteado.Focus();
                return;
            }

            if (string.IsNullOrEmpty(cbbEmpresa.Text) || cbbEmpresa.SelectedValue == null)
            {
                MessageBox.Show("A Empresa é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbEmpresa.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtQuantidadeDistribuicao.Text))
            {
                MessageBox.Show("A Quantidade é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtQuantidadeDistribuicao.Focus();
                return;
            }
            if (!txtData.MaskCompleted)
            {
                MessageBox.Show("A Data é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtData.Focus();
                return;
            }

            if (TotalQuantidade() < 0)
            {
                MessageBox.Show("Brinde insuficiente!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtQuantidadeDistribuicao.Focus();
                return;
            }

            try
            {

                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "INSERT INTO Controle_Brinde_Distribuicao " +
                               "(FK_Brinde,FK_Usuario,Presenteado,FK_importador,Quantidade,Data) " +
                               "VALUES " +
                               "(@FK_Brinde,@FK_Usuario,@Presenteado,@FK_importador,@Quantidade,@Data)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_Brinde", ((DataRowView)bindingSource.Current).Row["ID"].ToString());
                    cmd.Parameters.AddWithValue("@FK_Usuario", (cbbRequisitante.SelectedValue == null) ? DBNull.Value : cbbRequisitante.SelectedValue);
                    cmd.Parameters.AddWithValue("@Presenteado", txtPresenteado.Text);
                    cmd.Parameters.AddWithValue("@FK_importador", (cbbEmpresa.SelectedValue == null) ? DBNull.Value : cbbEmpresa.SelectedValue);
                    cmd.Parameters.AddWithValue("@Quantidade", Convert.ToDouble(txtQuantidadeDistribuicao.Text));
                    cmd.Parameters.AddWithValue("@Data", !txtData.MaskCompleted ? DBNull.Value : (object)txtData.Text);
                    cmd.ExecuteNonQuery();
                }
                LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Presenteado:{0}", txtPresenteado.Text));

                dgvDistribuicao.DataSource = getDistribuicao();
                limparCampos();
                statusCadastro = StatusCadastro.None;
                HabilitarDesabilitaControles(false);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void txtQuantidadeDistribuicao_KeyPress(object sender, KeyPressEventArgs e)
        {
            Util.SomenteNumero(e);
        }

        private void limparCampos()
        {
            // cbbEmpresa.SelectedIndex = -1;
            // cbbRequisitante.SelectedIndex = -1;
            cbbEmpresa.Text = "";
            cbbRequisitante.Text = "";
            txtPresenteado.Clear();
            txtQuantidadeDistribuicao.Clear();
            txtData.Clear();
        }

        private int TotalQuantidade()
        {

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "Select Cast(Quantidade - (Select sum(Quantidade) from Controle_Brinde_Distribuicao where FK_Brinde = @ID)  as int)  As total  " +
                           "from Controle_Brinde where Id = @ID";
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@ID", (bindingSource.GetRelatedCurrencyManager("ID").Current.ToString()));
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            reader.Read();
                            if (!string.IsNullOrEmpty((reader[0].ToString())))
                            {
                                return (Convert.ToInt32(reader[0].ToString()) - Convert.ToInt32(txtQuantidadeDistribuicao.Text));
                            }
                            else
                            {
                                return (Convert.ToInt32(txtQuantidade.Text) - Convert.ToInt32(txtQuantidadeDistribuicao.Text));
                            }
                        }
                    }
                    return 0;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return -1;
            }

        }

        private void tabControl_SelectedIndexChanged(object sender, EventArgs e)
        {
            limparCampos();
            if (dataGridView.RowCount > 0)
            {
                dgvDistribuicao.DataSource = getDistribuicao();
            }
            else
            {
                dgvDistribuicao.DataSource = null;
            }
        }
    }
}
