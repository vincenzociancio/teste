using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmControleTR : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        string FK_Importador;
        string FK_Documento_Arquivo;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
            groupBox1.Enabled = (statusCadastro == StatusCadastro.None);
            txtNumeroMS.Enabled = false;
            txtCliente.Enabled = false;
            txtReceita.Enabled = false;
            txtEmbarcacao.Enabled = false;
            txtNumeroTR.Enabled = false;
            txtVencimento.Enabled = false;
            txtDataProrrogacao.Enabled = false;
            txtDI.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            txtIN.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            txtDespacho.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            txtStatusTR.Enabled = false;
            txtProcesso.Enabled = (statusCadastro == StatusCadastro.Novo);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmControleTR()
        {
            InitializeComponent();
        }

        private DataTable getControleTR()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select  " +
                           "D.Processo, D.Numero_Doc as 'Num_TR', " +
                           "Cast(D.Vigencia_final as DateTime ) as 'DT_TR_Vecto', " +
                           "I.Razao_Social as 'Nome_Importador', " +
                           "P.Numero_RCR as 'Processo_Receita',  " +
                           "F.Descricao as 'Intr_Normativa', " +
                           "S.Descricao as 'Desc_Status', " +
                           "TR.[IN], " +
                           "TR.DI, " +
                           "LI.Descricao as 'Embarcacao', " +
                           "TR.Despacho, " +
                           "TR.PK_TR, " +
                           "D.Data_renovacao " +
                           "from Controle_TR TR " +
                           "left join Documentos D on (D.Arquivo = TR.FK_Documento_Arquivo) " +
                           "left join Importadores I on ( I.Codigo = D.Importador )  " +
                           "left join Processos P on ( P.Codigo = D.Processo )  " +
                           "left join Fundamentacao_RCR F on ( P.Fundamentacao_RCR = F.Codigo ) " +
                           "left join Tipos_status_documentos S on ( S.CODIGO = D.Status ) " +
                           "left join Locais_Inventario LI on " +
                           "(LI.Importador = P.Importador ) " +
                           "AND (LI.Contrato= P.Contrato ) " +
                           "AND ( (LI.Ativo = 1 ) " +
                           "or (LI.Local = P.Local_Inventario and LI.Ativo = 1)) " +
                           "where " +
                           "TR.Excluido = 0 " +
                           "order by " +
                           "I.Razao_Social";
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

        private void FrmControleTR_Load(object sender, EventArgs e)
        {
            this.ActiveControl = txtProcesso;
            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;           
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getControleTR();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtNumeroMS.DataBindings.Add(new Binding("Text", bindingSource, "Processo", true));
            txtCliente.DataBindings.Add(new Binding("Text", bindingSource, "Nome_Importador", true));
            txtReceita.DataBindings.Add(new Binding("Text", bindingSource, "Processo_Receita", true));
            txtEmbarcacao.DataBindings.Add(new Binding("Text", bindingSource, "Embarcacao", true));
            txtNumeroTR.DataBindings.Add(new Binding("Text", bindingSource, "Num_TR", true));
            txtVencimento.DataBindings.Add(new Binding("Text", bindingSource, "DT_TR_Vecto", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtDataProrrogacao.DataBindings.Add(new Binding("Text", bindingSource, "Data_renovacao", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtDI.DataBindings.Add(new Binding("Text", bindingSource, "DI", true));
            txtIN.DataBindings.Add(new Binding("Text", bindingSource, "Intr_Normativa", true));
            txtDespacho.DataBindings.Add(new Binding("Text", bindingSource, "Despacho", true));
            txtStatusTR.DataBindings.Add(new Binding("Text", bindingSource, "Desc_Status", true));
        }

        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            if (txtProcesso.MaskCompleted)
            {
                if (ProcessoEmUso())
                {
                    MessageBox.Show("O número de MS: "+ txtProcesso.Text + " já está cadastrado.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    txtProcesso.Clear();
                    this.ActiveControl = txtProcesso;
                                        return;
                }

                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "select "+
                               "D.Importador, D.Processo, D.Sub_Tipo_Doc "+
                               ",D.Numero_Doc as 'Num_TR', D.Vigencia_inicial as 'DT_TR_Inicial', "+ 
                               "D.Vigencia_final as 'DT_TR_Vecto' "+ 
                               ",D.Local as 'Codigo_Local', L.Descricao as 'Nome_Local', I.Razao_Social as 'Nome_Importador' "+
                               ",P.NR_DECLARACAO_IMP as 'DI', lTrim(rTrim( P.Numero_RCR )) as 'Processo_Receita', RCR_LOCAL as 'URF_Despacho' "+
                               ",F.Descricao as 'Intr_Normativa', S.CODIGO as 'Status', S.Descricao as 'Desc_Status', "+
                               "D.Arquivo, D.Data_renovacao "+
                               "from "+  
                               "Documentos D "+ 
                               "left join Importadores I on ( I.Codigo = D.Importador ) "+
                               "left join Processos P on ( P.Codigo = D.Processo ) "+
                               "left join Fundamentacao_RCR F on ( P.Fundamentacao_RCR = F.Codigo ) "+
                               "left join Tipos_status_documentos S on ( S.CODIGO = D.Status ) "+
                               "left join Locais_Inventario L on "+
                               "(L.Importador = P.Importador ) "+
                               "AND (L.Contrato= P.Contrato ) "+
                               "AND ( (L.Ativo = 1 ) "+
                               "or (L.Local = P.Local_Inventario and L.Ativo = 1)) "+
                               "where " +
                               "D.Tipo_Doc = 'PROC' and  D.Sub_Tipo_Doc = '11' and D.Pagina = 1 and D.Processo=@Processo";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        try
                        {
                            if (reader.HasRows)
                            {
                                reader.Read();
                                txtNumeroMS.Text = reader["Processo"].ToString();
                                txtCliente.Text = reader["Nome_Importador"].ToString();
                                txtReceita.Text = reader["Processo_Receita"].ToString();
                                txtEmbarcacao.Text = reader["Nome_Local"].ToString();
                                txtNumeroTR.Text = reader["Num_TR"].ToString();
                                txtVencimento.Text = reader["DT_TR_Vecto"].ToString();
                                txtDataProrrogacao.Text = reader["Data_renovacao"].ToString();
                                txtDI.Text = reader["DI"].ToString();
                                txtIN.Text = reader["Intr_Normativa"].ToString();
                                txtDespacho.Text = reader["URF_Despacho"].ToString();
                                txtStatusTR.Text = reader["Desc_Status"].ToString();
                                FK_Importador = reader["Importador"].ToString();
                                FK_Documento_Arquivo = reader["Arquivo"].ToString();
                            }
                            else
                            {
                                MessageBox.Show("Não foi possível localizar o registro!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            }
                        }
                        catch (Exception ex)
                        {
                            MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            LimparCampos();
                        }
                    }
                }
            }
            else
            {
                LimparCampos();
            }
        }

        private void LimparCampos()
        {
            txtNumeroMS.Clear();
            txtCliente.Clear();
            txtReceita.Clear();
            txtEmbarcacao.Clear();
            txtNumeroTR.Clear();
            txtVencimento.Clear();
            txtDataProrrogacao.Clear();
            txtDI.Clear();
            txtIN.Clear();
            txtDespacho.Clear();
            txtStatusTR.Clear();
            FK_Importador = "";
            FK_Documento_Arquivo = "";
        }

        private bool ProcessoEmUso()
        {
            var query = "select * from Controle_TR where Excluido = 0 and FK_Processo=@Processo";
            var GoOn = false;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);

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

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            txtProcesso.Focus();
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    string query = "update Controle_TR set "+
                                   "Embarcacao=@Embarcacao, DI=@DI, [IN]=@IN,Despacho=@Despacho " +
                                   "where PK_TR=@PK_TR ";
                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Embarcacao", txtEmbarcacao.Text);                           
                            cmd.Parameters.AddWithValue("@DI", txtDI.Text);
                            cmd.Parameters.AddWithValue("@IN", txtIN.Text);
                            cmd.Parameters.AddWithValue("@Despacho", txtDespacho.Text);
                            cmd.Parameters.AddWithValue("@PK_TR", bindingSource.GetRelatedCurrencyManager("PK_TR").Current.ToString());
                            cmd.ExecuteNonQuery();
                        }
                    }
                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("PK_TR").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Processo:{0} ", ((DataRowView)this.bindingSource.Current).Row["Processo"].ToString()));
                }
                else
                {                  

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = " Insert into Controle_TR " +
                                   "(FK_Importador,Embarcacao,FK_Processo,DI,[IN],Despacho,FK_Documento_Arquivo) " +
                                   "values " +
                                   "(@FK_Importador,@Embarcacao,@FK_Processo,@DI,@IN,@Despacho,@FK_Documento_Arquivo)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@FK_Importador", FK_Importador);
                        cmd.Parameters.AddWithValue("@Embarcacao", txtEmbarcacao.Text);
                        cmd.Parameters.AddWithValue("@FK_Processo", txtNumeroMS.Text);
                        cmd.Parameters.AddWithValue("@DI", txtDI.Text);
                        cmd.Parameters.AddWithValue("@IN", txtIN.Text);
                        cmd.Parameters.AddWithValue("@Despacho", txtDespacho.Text);
                        cmd.Parameters.AddWithValue("@FK_Documento_Arquivo", FK_Documento_Arquivo);                
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Processo:{0}", txtNumeroMS.Text));
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
                var ID_busca = bindingSource.GetRelatedCurrencyManager("PK_TR").Current.ToString();
                bindingSource.DataSource = getControleTR();
                bindingSource.Position = bindingSource.Find("PK_TR", ID_busca);

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
            txtDI.Focus();
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Controle_TR set Excluido = 1 where PK_TR = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("PK_TR").Current.ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("Processo").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Numero TR: {0}", txtNumeroTR.Text));
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

        private void txtLocalizaProcesso_TextChanged(object sender, EventArgs e)
        {
            string processo;

            processo = txtLocalizaProcesso.Text.Replace("/", "").Trim();

            if (processo.Length >= 6)
            {
                processo = txtLocalizaProcesso.Text;
            }
            else
            {
                processo = txtLocalizaProcesso.Text.Replace("/", "").Trim();
            }

            bindingSource.Filter = "Processo LIKE '" + processo + "%'";
        }
    }
}
