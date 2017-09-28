using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Text;
using System.Windows.Forms;
using MS2000.Desktop.Menu.Consultas;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmControleADEDeferido : MS2000.Desktop.Componentes.MSForm01
    {

        protected StatusCadastro statusCadastro;
        private string CodImportador;
        private string CodProcesso;
        private bool finaliza;
        private SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            gvADEDeferida.Enabled = (statusCadastro == StatusCadastro.None);
            groupBox1.Enabled = (statusCadastro == StatusCadastro.None);
            txtProcesso.Enabled = (statusCadastro == StatusCadastro.Novo);
            txtEmbarcacao.Enabled = false;
            cbClientes.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmControleADEDeferido()
        {
            InitializeComponent();
        }

        private DataTable getAnexosADED()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "select FK_ADED, Descricao,(select Caminho from CaminhoDiretorioServidor where ID = 14) + Caminho as Caminho from Controle_ADE_Deferido_Anexo where FK_ADED = @PK_ADED And Excluido <> 1";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@PK_ADED",
                    bsADEDeferido.GetRelatedCurrencyManager("PK_ADED").Current.ToString());
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private DataTable getControleADED()
        {
            string query =
                "select Finalizado, PK_ADED, FK_Importador, CNPJ_CPF_COMPLETO, Embarcacao, Cast( DT_VECTO_ADE as DateTime ) as DT_VECTO_ADE, Razao_Social, " +
                "Cast( DT_Publicacao as DateTime ) as DT_Publicacao ,Num_ADE_Executivo ,Path_PDF, Vencido, Num_Contrato, Num_Processo  " +
                "from Controle_ADE_Deferido C left join " +
                "Importadores on ( FK_Importador = Codigo) where Excluido <> 1 order by  C.PK_ADED";
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

        private void GetClientes()
        {
            string query =
                "select Codigo ,Razao_Social from Importadores where Codigo not like 'X%' and Codigo not like 'A%' order by Razao_Social";
            DataTable table;
            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                cbClientes.DataSource = table;
                cbClientes.DisplayMember = "Razao_Social";
                cbClientes.ValueMember = "Codigo";
            }


        }

        private void FrmControleADEAndamento_Load(object sender, EventArgs e)
        {
            this.ActiveControl = txtProcesso;
            bindingNavigator.DeleteItem = null;
            ToolTip toolTip = new ToolTip();
            GetClientes();

            toolTip.SetToolTip(btnAnexo, "Anexar Arquivo");
            toolTip.SetToolTip(btnEditAnexo, "Editar Anexo");
            toolTip.SetToolTip(btnDeletaAnexo, "Excluir Anexo");

            cbbOpcao.SelectedIndex = 0;
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
            gvADEDeferida.AutoGenerateColumns = false;

            bsADEDeferido.DataSource = getControleADED();
            gvADEDeferida.DataSource = bsADEDeferido;

            bindingNavigator.BindingSource = bsADEDeferido;

            cbClientes.DataBindings.Add(new Binding("SelectedValue", bsADEDeferido, "FK_Importador", true));
            txtContrato.DataBindings.Add(new Binding("Text", bsADEDeferido, "Num_Contrato", true));
            txtEmbarcacao.DataBindings.Add(new Binding("Text", bsADEDeferido, "Embarcacao", true));
            txtCNPJ.DataBindings.Add(new Binding("Text", bsADEDeferido, "CNPJ_CPF_COMPLETO", true));
            txtDataVencimentoADE.DataBindings.Add(new Binding("Text", bsADEDeferido, "DT_VECTO_ADE", true,
                DataSourceUpdateMode.OnValidation, "  /  /"));
            txtProcesso.DataBindings.Add(new Binding("Text", bsADEDeferido, "Num_Processo", true));
            txtNumeroADE.DataBindings.Add(new Binding("Text", bsADEDeferido, "Num_ADE_Executivo", true,
                DataSourceUpdateMode.Never, DBNull.Value));
            chkVencido.DataBindings.Add(new Binding("Checked", bsADEDeferido, "Vencido", true));
            txtDataPublicacao.DataBindings.Add(new Binding("Text", bsADEDeferido, "DT_Publicacao", true,
                DataSourceUpdateMode.OnValidation, "  /  /"));

        }

        private void txtLocalizar_TextChanged(object sender, EventArgs e)
        {
            if (cbbOpcao.SelectedIndex == 0)
            {
                bsADEDeferido.Filter = "Razao_Social LIKE '" + txtLocalizar.Text + "%'";
            }
            else
            {
                bsADEDeferido.Filter = "Embarcacao LIKE '" + txtLocalizar.Text + "%'";
            }
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            gvAnexos.DataSource = null;
            gvADEDeferida.SelectionChanged -= gvADEDeferida_SelectionChanged;
            bsADEDeferido.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            this.ActiveControl = txtProcesso;

        }



        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(cbClientes.Text.Trim()))
            {
                MessageBox.Show("O Cliente é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbClientes.Focus();
                return;
            }
            if (string.IsNullOrEmpty(txtEmbarcacao.Text.Trim()))
            {
                MessageBox.Show("O campo Embarcação é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtEmbarcacao.Focus();
                return;
            }
            if (!txtDataVencimentoADE.MaskCompleted)
            {
                MessageBox.Show("A Data do Protocolo é obrigatória!", "Atenção", MessageBoxButtons.OK,
                    MessageBoxIcon.Stop);
                txtDataVencimentoADE.Focus();
                return;
            }


            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    string query = "update  Controle_ADE_Deferido set " +
                                   "FK_Importador =@FK_Importador, " +
                                   "Embarcacao =@Embarcacao, " +
                                   "DT_VECTO_ADE=Cast(@DT_VECTO_ADE as Date), " +
                                   "DT_Publicacao = Cast(@DT_Publicacao as Date), " +
                                   "Num_ADE_Executivo=@Num_ADE_Executivo, " +
                                   "Vencido=@Vencido,  " +
                                   "Num_Contrato=@Num_Contrato, " +
                                   "Num_Processo=@Num_Processo " +
                                   "where PK_ADED=@PK_ADED";
                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@PK_ADED",
                                bsADEDeferido.GetRelatedCurrencyManager("PK_ADED").Current.ToString());
                            cmd.Parameters.AddWithValue("@FK_Importador", cbClientes.SelectedValue);
                            cmd.Parameters.AddWithValue("@Embarcacao", txtEmbarcacao.Text);
                            cmd.Parameters.AddWithValue("@DT_VECTO_ADE",
                                !txtDataVencimentoADE.MaskCompleted ? DBNull.Value : (object)txtDataVencimentoADE.Text);
                            cmd.Parameters.AddWithValue("@DT_Publicacao", !txtDataPublicacao.MaskCompleted ? DBNull.Value : (object)txtDataPublicacao.Text);
                            cmd.Parameters.AddWithValue("@Num_ADE_Executivo", txtNumeroADE.Text);
                            cmd.Parameters.AddWithValue("@Vencido", chkVencido.Checked);
                            cmd.Parameters.AddWithValue("@Num_Contrato", txtContrato.Text);
                            cmd.Parameters.AddWithValue("@Num_Processo", txtProcesso.Text);
                            cmd.ExecuteNonQuery();
                        }
                    }
                    LogSistemas.AddLogSistema(bsADEDeferido.GetRelatedCurrencyManager("PK_ADED").Current.ToString(),
                        FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),
                        string.Format("Processo:{0} ",
                            ((DataRowView)this.bsADEDeferido.Current).Row["Num_Processo"].ToString()));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query =
                        "insert into  Controle_ADE_Deferido (FK_Importador,Embarcacao,DT_VECTO_ADE,DT_Publicacao,Num_ADE_Executivo,Vencido,Num_Contrato,Num_Processo) " +
                        "values (@FK_Importador,@Embarcacao,Cast(@DT_VECTO_ADE as Date ),Cast(@DT_Publicacao as Date ),@Num_ADE_Executivo,@Vencido,@Num_Contrato,@Num_Processo)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@FK_Importador", cbClientes.SelectedValue);
                        cmd.Parameters.AddWithValue("@Embarcacao", txtEmbarcacao.Text);
                        cmd.Parameters.AddWithValue("@DT_VECTO_ADE",
                            !txtDataVencimentoADE.MaskCompleted ? DBNull.Value : (object)txtDataVencimentoADE.Text);
                        cmd.Parameters.AddWithValue("@DT_Publicacao",
                            !txtDataPublicacao.MaskCompleted ? DBNull.Value : (object)txtDataPublicacao.Text);
                        cmd.Parameters.AddWithValue("@Num_ADE_Executivo", txtNumeroADE.Text);
                        cmd.Parameters.AddWithValue("@Vencido", chkVencido.Checked);
                        cmd.Parameters.AddWithValue("@Num_Contrato", txtContrato.Text);
                        cmd.Parameters.AddWithValue("@Num_Processo", txtProcesso.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo,
                        Convert.ToInt32(this.Tag), string.Format("Processo:{0}", CodProcesso));
                }

                if (statusCadastro == StatusCadastro.Editar)
                {
                    MessageBox.Show("Registro alterado com sucesso.", "Salvar", MessageBoxButtons.OK,
                        MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK,
                        MessageBoxIcon.Information);
                }
                statusCadastro = StatusCadastro.None;
                HabilitarDesabilitaControles(false);
                gvADEDeferida.SelectionChanged += gvADEDeferida_SelectionChanged;
                gvAnexos.DataSource = bsAnexo;
                var ID_busca = bsADEDeferido.GetRelatedCurrencyManager("PK_ADED").Current.ToString();
                bsADEDeferido.DataSource = getControleADED();
                bsADEDeferido.Position = bsADEDeferido.Find("PK_ADED", ID_busca);

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bsADEDeferido.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
            gvADEDeferida.SelectionChanged += gvADEDeferida_SelectionChanged;
            gvAnexos.DataSource = bsAnexo;
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            cbClientes.Focus();
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (
                MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo,
                    MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Controle_ADE_Deferido set Excluido = 1 where PK_ADED = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID",
                            bsADEDeferido.GetRelatedCurrencyManager("PK_ADED").Current.ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(bsADEDeferido.GetRelatedCurrencyManager("PK_ADED").Current.ToString(),
                        FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag),
                        string.Format("Numero MS: {0}",
                            bsADEDeferido.GetRelatedCurrencyManager("Num_Processo").Current.ToString()));
                    bsADEDeferido.RemoveCurrent();
                    statusCadastro = StatusCadastro.None;
                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK,
                        MessageBoxIcon.Information);
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

        private void btnFinalizar_Click(object sender, EventArgs e)
        {
            if (txtDataVencimentoADE.Text == "01/01/1900")
            {
                MessageBox.Show("Favor corrigir a data de vencimento ADE!", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtDataVencimentoADE.Focus();
                return;
            }

            if (
                MessageBox.Show("Deseja realmente finalizar este registro?", "Excluir", MessageBoxButtons.YesNo,
                    MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Controle_ADE_Deferido set Finalizado = 1 where PK_ADED = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID",
                            bsADEDeferido.GetRelatedCurrencyManager("PK_ADED").Current.ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(bsADEDeferido.GetRelatedCurrencyManager("PK_ADED").Current.ToString(),
                        FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), "Finalizado");
                    statusCadastro = StatusCadastro.None;
                    var ID_busca = bsADEDeferido.GetRelatedCurrencyManager("PK_ADED").Current.ToString();
                    bsADEDeferido.DataSource = getControleADED();
                    bsADEDeferido.Position = bsADEDeferido.Find("PK_ADED", ID_busca);
                    MessageBox.Show("Registro finalizado com sucesso.", "Finalizado", MessageBoxButtons.OK,
                        MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void btnAbrir_Click(object sender, EventArgs e)
        {
            if (
                MessageBox.Show("Deseja realmente abrir este registro?", "Excluir", MessageBoxButtons.YesNo,
                    MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {

                    string query = "update Controle_ADE_Deferido set Finalizado = 0 where PK_ADED = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID",
                            bsADEDeferido.GetRelatedCurrencyManager("PK_ADED").Current.ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(bsADEDeferido.GetRelatedCurrencyManager("PK_ADED").Current.ToString(),
                        FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag),
                        "Registro Aberto.");
                    statusCadastro = StatusCadastro.None;
                    var ID_busca = bsADEDeferido.GetRelatedCurrencyManager("PK_ADED").Current.ToString();
                    bsADEDeferido.DataSource = getControleADED();
                    bsADEDeferido.Position = bsADEDeferido.Find("PK_ADED", ID_busca);
                    MessageBox.Show("Registro Aberto com sucesso.", "Finalizado", MessageBoxButtons.OK,
                        MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void gvADEDeferida_SelectionChanged(object sender, EventArgs e)
        {
            if (gvADEDeferida.Rows.Count.ToString() != "0")
            {
                bsAnexo.DataSource = getAnexosADED();
                gvAnexos.DataSource = bsAnexo;


                bool ValorFinalizado =
                    Convert.ToBoolean(bsADEDeferido.GetRelatedCurrencyManager("Finalizado").Current.ToString());
                if (!ValorFinalizado)
                {
                    pnlStatus.BackColor = Color.Green;
                    lblStatus.Text = "Aberto";
                    btnAbrir.Enabled = false;
                    btnLocalizar.Enabled = true;
                    finaliza = true;
                    BloqueiaFuncionalidadeFinaliza();
                    BloqueiaAnexos();
                }
                else
                {
                    pnlStatus.BackColor = Color.Red;
                    lblStatus.Text = "Finalizado";
                    btnAbrir.Enabled = true;
                    btnLocalizar.Enabled = false;
                    finaliza = false;
                    BloqueiaFuncionalidadeFinaliza();
                    BloqueiaAnexos();
                }


            }

        }

        private void btnLocalizaEmbarcacao_Click(object sender, EventArgs e)
        {
            using (var form = new FrmControleADEEmbarcacao())
            {
                if (statusCadastro == StatusCadastro.Novo)
                {
                    if (cbClientes.SelectedValue != null)
                    {
                        form.importador = cbClientes.SelectedValue.ToString();
                    }
                    else
                    {
                        MessageBox.Show("Por favor selecione um Cliente.", "Aviso", MessageBoxButtons.OK,
                            MessageBoxIcon.Warning);
                        return;
                    }

                }
                else
                {
                    form.importador = bsADEDeferido.GetRelatedCurrencyManager("FK_Importador").Current.ToString();
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
        private void BloqueiaAnexos()
        {
            btnAnexo.Enabled = finaliza;
            btnEditAnexo.Enabled = finaliza;
            btnDeletaAnexo.Enabled = finaliza;
        }
        private void label13_Click(object sender, EventArgs e)
        {

        }

        private void txtNumeroADE_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnAnexo_Click(object sender, EventArgs e)
        {
            var frmAnexo = new FrmControleADEDeferidoAnexo();
            frmAnexo.PK_ADED = Convert.ToInt32(bsADEDeferido.GetRelatedCurrencyManager("PK_ADED").Current.ToString());
            frmAnexo.status = StatusCadastro.Novo;
            FrmPrincipal.ShowModalMdiChildren(frmAnexo);
            bsAnexo.DataSource = getAnexosADED();
        }

        private void btnAbrirPDF_Click(object sender, EventArgs e)
        {
            try
            {
                System.Diagnostics.Process.Start(((DataRowView)this.bsAnexo.Current).Row["Caminho"].ToString());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnDeletaAnexo_Click(object sender, EventArgs e)
        {
            try
            {

                string query = "delete from Controle_ADE_Deferido_Anexo where PK_Anexo = @PK_Anexo";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@PK_Anexo",
                        bsAnexo.GetRelatedCurrencyManager("PK_Anexo").Current.ToString());
                    cmd.ExecuteNonQuery();
                }
                File.Delete(((DataRowView)this.bsAnexo.Current).Row["Caminho"].ToString());
                MessageBox.Show("Arquivo excluído com sucesso", "Excluir", MessageBoxButtons.OK,
                    MessageBoxIcon.Information);
                bsAnexo.DataSource = getAnexosADED();
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);

            }


        }

        private void btnEditAnexo_Click(object sender, EventArgs e)
        {
            var frmAnexo = new FrmControleADEDeferidoAnexo();
            frmAnexo.PK_ADED = Convert.ToInt32(bsAnexo.GetRelatedCurrencyManager("FK_ADED").Current.ToString());
            frmAnexo.status = StatusCadastro.Editar;
            frmAnexo.descricao = ((DataRowView)this.bsAnexo.Current).Row["Descricao"].ToString();
            frmAnexo.caminho = ((DataRowView)this.bsAnexo.Current).Row["Caminho"].ToString();
            FrmPrincipal.ShowModalMdiChildren(frmAnexo);
            bsAnexo.DataSource = getAnexosADED();
        }

        private void btnEmail_Click(object sender, EventArgs e)
        {
            var frmEmail = new FrmControleADEDeferidoEmail();
            frmEmail.cnpj = txtCNPJ.Text;
            frmEmail.dataPublicacao = txtDataPublicacao.Text;
            frmEmail.embarcacao = txtEmbarcacao.Text;
            if (gvAnexos.Rows.Count > 0)
            {
                frmEmail.anexo = ((DataRowView)this.bsAnexo.Current).Row["Caminho"].ToString();
            }
            frmEmail.importador = cbClientes.SelectedText;
            FrmPrincipal.ShowModalMdiChildren(frmEmail);
        }

        private void btnRelatorio_Click(object sender, EventArgs e)
        {
            var frmRelatorio = new FrmControleADEDRelatorio();
            FrmPrincipal.ShowModalMdiChildren(frmRelatorio);
        }

        private void cbbOpcao_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
