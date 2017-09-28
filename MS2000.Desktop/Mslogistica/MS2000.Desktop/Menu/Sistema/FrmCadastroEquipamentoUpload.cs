﻿using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Sistema
{
    public partial class FrmCadastroEquipamentoUpload : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        public string ID { get; set; }
        public string Equipamento { get; set; }

        string Caminho;
        const int CODIGO_CAMINHO_DOCUMENTOS_NOTAFISCAL_EQUIP = 12;
        string _caminho_doc_notafiscal_equip;



        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);         
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmCadastroEquipamentoUpload()
        {
            InitializeComponent();
        }

        private DataTable getUploadNotaEquipamento()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select ID, Cast(Data as date) as Data,Descricao,Titulo from [dbo].[Sistemas.CadastroEquipamentoUpload] where FK_Equipamento = @id ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@ID", ID);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void FrmCadastroEquipamentoUpload_Load(object sender, EventArgs e)
        {
            _caminho_doc_notafiscal_equip = (new CaminhoDiretorioServidor().GetCaminhoById(CODIGO_CAMINHO_DOCUMENTOS_NOTAFISCAL_EQUIP)).Caminho;

            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getUploadNotaEquipamento();
            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            lblRazaoSocial.Text = Equipamento;
            txtTitulo.DataBindings.Add(new Binding("Text", bindingSource, "Titulo", true));
        }

        private void btnLocalizaUpload_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();

            dlg.Filter = "files (*.pdf,) |*.pdf;";
            dlg.ShowDialog();
            txtArquivo.Text = Path.GetFileName(dlg.FileName);
            Caminho= dlg.FileName;
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            txtArquivo.Enabled = false;
            txtArquivo.Text = "";
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            string Destino;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "INSERT INTO [dbo].[Sistemas.CadastroEquipamentoUpload] " +
                               "(FK_Equipamento,Descricao,Tipo_Arquivo,Data,Titulo) " +
                               "VALUES " +
                               "(@FK_Equipamento,@DescricaoArquivo,@TipoArquivo,@Data,@Titulo)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_Equipamento", ID);
                    cmd.Parameters.AddWithValue("@DescricaoArquivo", txtArquivo.Text);
                    cmd.Parameters.AddWithValue("@TipoArquivo", ".pdf");
                    cmd.Parameters.AddWithValue("@Data", DateTime.Now);
                    cmd.Parameters.AddWithValue("@Titulo", txtTitulo.Text);
                    cmd.ExecuteNonQuery();
                }
                bindingSource.DataSource = getUploadNotaEquipamento();
                Destino = _caminho_doc_notafiscal_equip + bindingSource.GetRelatedCurrencyManager("ID").Current + ".pdf";
                File.Copy(Caminho, Destino, true);
                bindingSource.DataSource = getUploadNotaEquipamento();
                dataGridView.DataSource = bindingSource;
                bindingNavigator.BindingSource = bindingSource;
                MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                statusCadastro = StatusCadastro.None;
                HabilitarDesabilitaControles(false);
                LogSistemas.AddLogSistema(ID, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Descricão Upload:{0}", txtTitulo.Text));
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
            txtArquivo.Text = "";
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void dataGridView_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dataGridView.Columns[e.ColumnIndex].Name == "Download")
            {
                var Id = dataGridView.Rows[e.RowIndex].Cells["ID"].Value;
                try
                {
                    System.Diagnostics.Process.Start(_caminho_doc_notafiscal_equip + Id + ".pdf");
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }       

    }
}
