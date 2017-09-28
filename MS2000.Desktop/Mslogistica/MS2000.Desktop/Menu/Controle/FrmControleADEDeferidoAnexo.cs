using System.Data.SqlClient;
using System.IO;
using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmControleADEDeferidoAnexo : MS2000.Desktop.Componentes.MSForm01
    {
        public int PK_ADED { get; set; }
        public string descricao { get; set; }
        public StatusCadastro status { get; set; }
        public string caminho { get; set; }
        const int CODIGO_CAMINHO_DOCUMENTOS_NOTAFISCAL_EQUIP = 14;
        string _caminho_ade_deferido;
        private string destino;

        public FrmControleADEDeferidoAnexo()
        {
            InitializeComponent();
            txtCaminho.Enabled = false;
        }

        private void btnApagar_Click(object sender, EventArgs e)
        {
            txtCaminho.Clear();
            txtDescricao.Clear();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnLocaliza_Click(object sender, EventArgs e)
        {
            openFileDialog1.FileName = "";
            openFileDialog1.Filter = "PDF | *.pdf";
            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                caminho = openFileDialog1.FileName;
                _caminho_ade_deferido = (new CaminhoDiretorioServidor().GetCaminhoById(CODIGO_CAMINHO_DOCUMENTOS_NOTAFISCAL_EQUIP)).Caminho;
                destino = _caminho_ade_deferido + DateTime.Now.ToShortDateString().Replace("/", "-") + @"\";
                txtCaminho.Text = destino + openFileDialog1.SafeFileName;
            }
        }

        private void btnConfirmar_Click(object sender, EventArgs e)
        {
            if (status == StatusCadastro.Novo)
            {
                string query = "insert into Controle_ADE_Deferido_Anexo (Descricao, Caminho, FK_ADED) " +
                               "values (@Descricao, @Caminho, @FK_ADED) ";
                try
                {
                    if (!Directory.Exists(destino))
                    {
                        Directory.CreateDirectory(destino);
                    }
                    File.Copy(caminho, txtCaminho.Text, true);
                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@FK_ADED", PK_ADED);
                            cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                            cmd.Parameters.AddWithValue("@Caminho", txtCaminho.Text);
                            cmd.ExecuteNonQuery();
                        }
                    }

                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Descricão Anexo: {0}", txtDescricao.Text));
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                string query =
                    "update Controle_ADE_Deferido_Anexo set Descricao = @Descricao , Caminho = @Caminho where FK_ADED = @FK_ADED ";
                try
                {
                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@FK_ADED", PK_ADED);
                            cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                            cmd.Parameters.AddWithValue("@Caminho", txtCaminho.Text);
                            cmd.ExecuteNonQuery();
                        }
                    }

                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Descricão Anexo: {0}", txtDescricao.Text));
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
          
          
           Close();
        }

        private void FrmControleADEDeferidoAnexo_Load(object sender, EventArgs e)
        {
            if (status == StatusCadastro.Editar)
            {
                label14.Text = "Edição de Anexo";
                txtCaminho.Text = caminho;
                txtDescricao.Text = descricao;
                btnLocaliza.Enabled = false;
                btnApagar.Enabled = false;
            }
            else
            {
                label14.Text = "Inclusão de novo Anexo";
                btnLocaliza.Enabled = true;
                btnApagar.Enabled = true;
            }
        }
    }
}
