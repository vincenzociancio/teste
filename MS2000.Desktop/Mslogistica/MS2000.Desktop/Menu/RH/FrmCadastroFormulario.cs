using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmCadastroFormulario : MS2000.Desktop.Componentes.MSForm01
    {
        string tipoarquivo;
        string Caminho;

        protected StatusCadastro statusCadastro;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
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

        public FrmCadastroFormulario()
        {
            InitializeComponent();
        }

        const int CODIGO_CAMINHO_FORMULARIO_RH = 6;
        string _caminho_doc_formulario_rh;

        private void FrmCadastroFormulario_Load(object sender, EventArgs e)
        {
            _caminho_doc_formulario_rh = (new CaminhoDiretorioServidor().GetCaminhoById(CODIGO_CAMINHO_FORMULARIO_RH)).Caminho;

            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getFormulario();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtTitulo.DataBindings.Add(new Binding("Text", bindingSource, "Titulo", true));
            txtArquivo.DataBindings.Add(new Binding("Text", bindingSource, "Descricao_Arquivo", true));
        }

        private DataTable getFormulario()
        {
            string query = "Select id,Cast(data as Date) as Data,Titulo,Descricao_Arquivo from RH_Formularios where lixo = 0";
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

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            txtArquivo.Enabled = false;
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            txtArquivo.Enabled = false;
            btnLocalizaUpload.Enabled = false;
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "Update RH_Formularios set Lixo = 1 where ID = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", ((DataRowView)bindingSource.Current).Row["ID"].ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(((DataRowView)bindingSource.Current).Row["ID"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Descricao: {0}", txtArquivo.Text));
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

            if (string.IsNullOrEmpty(txtTitulo.Text))
            {
                MessageBox.Show("O Título é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtTitulo.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtArquivo.Text))
            {
                MessageBox.Show("O Arquivo é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtArquivo.Focus();
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    string query = "UPDATE RH_Formularios SET Titulo = @Titulo WHERE ID = @ID";
                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Titulo", txtTitulo.Text);
                            cmd.Parameters.AddWithValue("@ID", ((DataRowView)bindingSource.Current).Row["ID"].ToString());
                            cmd.ExecuteNonQuery();
                        }
                    }
                    LogSistemas.AddLogSistema(((DataRowView)bindingSource.Current).Row["ID"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De:{0} Para:{1}", ((DataRowView)this.bindingSource.Current).Row["Titulo"].ToString(), txtTitulo.Text));
                }
                else
                {

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO RH_Formularios " +
                                   "(Descricao_Arquivo,Tipo_Arquivo,Data,Titulo) " +
                                   "VALUES " +
                                   "(@Descricao_Arquivo,@Tipo_Arquivo,@Data,@Titulo); SELECT SCOPE_IDENTITY()";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Descricao_Arquivo", txtArquivo.Text);                        
                        cmd.Parameters.AddWithValue("@Tipo_Arquivo", tipoarquivo);
                        cmd.Parameters.AddWithValue("@Data", DateTime.Now.ToString());
                        cmd.Parameters.AddWithValue("@Titulo", txtTitulo.Text);
                        var returnValue = cmd.ExecuteScalar();

                        var caminho_destino = _caminho_doc_formulario_rh;
                        caminho_destino += returnValue.ToString() + tipoarquivo;
                        File.Copy(Caminho, caminho_destino, true);
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Descricao:{0}", txtTitulo.Text));
                    bindingSource.DataSource = getFormulario();
                    bindingSource.Position = bindingSource.Find("ID", ((DataRowView)bindingSource.Current).Row["ID"].ToString());
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

        private void btnLocalizaUpload_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();

            dlg.Filter = "Office Files|*.doc;*.docx;*.pdf";
            dlg.ShowDialog();
            tipoarquivo = Path.GetExtension(dlg.FileName);
            txtArquivo.Text = Path.GetFileName(dlg.FileName);
            Caminho = dlg.FileName;
            if (txtArquivo.Text != "")
            {
                if (!((tipoarquivo == ".pdf") || (tipoarquivo == ".doc") || (tipoarquivo == ".docx")))
                {
                    MessageBox.Show("Extensão do arquivo, somente pdf, doc, docx!!!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    txtArquivo.Focus();
                    return;
                }
            }
        }

        private void txtLocalizar_TextChanged(object sender, EventArgs e)
        {
            bindingSource.Filter = "Titulo LIKE '" + txtLocalizar.Text + "%'";
        }
    }
}
