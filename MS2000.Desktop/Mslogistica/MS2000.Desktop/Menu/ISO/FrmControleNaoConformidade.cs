using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmControleNaoConformidade : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            tabControlCampos.Enabled = (statusCadastro == StatusCadastro.None) || (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            txtNumero.Enabled = false;
            txtDataAtual.Enabled = false;
            txtRespIdent.Enabled = false;
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }
            foreach (Control controle in this.pnlAnalise.Controls)
            {
                controle.Enabled = bValue;
            }
            foreach (Control controle in this.pnlOcorrencia.Controls)
            {
                controle.Enabled = bValue;
            }
            foreach (Control controle in this.pnlDisposicao.Controls)
            {
                controle.Enabled = bValue;
            }
            foreach (Control controle in this.pnlProposta.Controls)
            {
                controle.Enabled = bValue;
            }
            foreach (Control controle in this.pnlVerificacaoImplementacao.Controls)
            {
                controle.Enabled = bValue;
            }
            foreach (Control controle in this.pnlImplementacao.Controls)
            {
                controle.Enabled = bValue;
            }
            VerificaBotoes();
        }

        public FrmControleNaoConformidade()
        {
            InitializeComponent();
        }

        private DataTable getControle()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Sequencial,Responsavel_identif,data,Requisito_norma,Local,Real_Potencial " +
                           ",Descricao_conformidade,Descricao_disposicao,Resp_disposicao,Data_diposicao " +
                           ",tipo_NC,Desc_Analise_Causas,Resp_Analise_Causas,Dt_Analise_Causas " +
                           ",Aprovado_Acoes_Corretiva,Dt_Acoes_Corretiva,Des_Implementacao,Resp_Implementacao " +
                           ",DT_Implementacao,Verifica_Implementacao,Verifica_Eficacia,Verificado_por " +
                           ",DT_Verificado_por,Encerrado_por,DT_Encerrado_por,Desc_Analise_Risco " +
                           ",Analise_Risco,Tipo_Acao " +
                           "FROM Nao_Conformidade " +
                           "Order by Sequencial ";
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

        private DataTable getProposta(string seq)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT pa.Pk_ID, pa.Sequencial, pa.Desc_Acoes_Corretiva,pa.Resp_Acoes_Corretiva,pa.Prazo_Acoes_Corretiva " +
                           "FROM Nao_Conformidade as nc " +
                           "INNER JOIN proposta_de_acao as pa on nc.Sequencial = pa.pk_id " +
                           "WHERE nc.Sequencial =@seq ";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@seq", seq);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }


        private void getTipo()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT  Codigo, Descricao FROM Tipos_NC order by Descricao";
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
                mcbbTipo.DataSource = table;
                mcbbTipo.DisplayMember = "Descricao";
                mcbbTipo.ValueMember = "Codigo";
                mcbbTipo.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void FrmControleNaoConformidade_Load(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.None;

            Dictionary<string, string> _TipoAcao = new Dictionary<string, string>();
            _TipoAcao.Add("Corretiva", "Corretiva");
            _TipoAcao.Add("Preventiva", "Preventiva");

            mcbbAcao.DisplayMember = "Value";
            mcbbAcao.ValueMember = "Key";
            mcbbAcao.DataSource = new BindingSource(_TipoAcao, null);
            mcbbAcao.SelectedIndex = 0;

            getTipo();

            Dictionary<string, string> _TipoLocal = new Dictionary<string, string>();
            _TipoLocal.Add("Operacional", "Operacional");
            _TipoLocal.Add("RH", "RH");
            _TipoLocal.Add("Financeiro", "Financeiro");
            _TipoLocal.Add("Gestão", "Gestão");
            _TipoLocal.Add("Informática", "Informática");
            _TipoLocal.Add("Comercial", "Comercial");
            _TipoLocal.Add("SMS", "SMS");
            _TipoLocal.Add("Compras", "Compras");

            mcbbLocal.DisplayMember = "Value";
            mcbbLocal.ValueMember = "Key";
            mcbbLocal.DataSource = new BindingSource(_TipoLocal, null);
            mcbbLocal.SelectedIndex = 0;

            HabilitarDesabilitaControles(false);

            dataGridView1.AutoGenerateColumns = false;
            bindingSource.DataSource = getControle();
            dataGridView1.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtNumero.DataBindings.Add(new Binding("Text", bindingSource, "Sequencial", true));
            txtDataAtual.DataBindings.Add(new Binding("Text", bindingSource, "data", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtRespIdent.DataBindings.Add(new Binding("Text", bindingSource, "Responsavel_identif", true));
            txtRequisito.DataBindings.Add(new Binding("Text", bindingSource, "Requisito_norma", true));
            mcbbAcao.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Tipo_Acao"));
            mcbbTipo.DataBindings.Add(new Binding("SelectedValue", bindingSource, "tipo_NC"));
            mcbbLocal.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Local"));

            Binding b = new Binding("Checked", bindingSource, "Real_Potencial", true);
            b.Format += new ConvertEventHandler(FormatRadio);
            rdbPotencial.DataBindings.Add(b);

            txtConformidade.DataBindings.Add(new Binding("Text", bindingSource, "Descricao_conformidade", true));
            txtDisposicao.DataBindings.Add(new Binding("Text", bindingSource, "Descricao_disposicao", true));
            txtResponsavelDisposicao.DataBindings.Add(new Binding("Text", bindingSource, "Resp_disposicao", true));
            txtDataDisposicao.DataBindings.Add(new Binding("Text", bindingSource, "data_diposicao", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtAnaliseCausas.DataBindings.Add(new Binding("Text", bindingSource, "Desc_Analise_Causas", true));
            txtRespAnalise.DataBindings.Add(new Binding("Text", bindingSource, "Resp_Analise_Causas", true));
            txtDataAnalise.DataBindings.Add(new Binding("Text", bindingSource, "DT_Analise_Causas", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtAprovadoAcao.DataBindings.Add(new Binding("Text", bindingSource, "Aprovado_Acoes_Corretiva", true));
            txtDataAcao.DataBindings.Add(new Binding("Text", bindingSource, "DT_Acoes_Corretiva", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtAcao.DataBindings.Add(new Binding("Text", bindingSource, "Desc_Analise_Risco", true));
            txtImplementacao.DataBindings.Add(new Binding("Text", bindingSource, "Des_Implementacao", true));
            txtRespImplementacao.DataBindings.Add(new Binding("Text", bindingSource, "Resp_Implementacao", true));
            txtDataImplementacao.DataBindings.Add(new Binding("Text", bindingSource, "DT_Implementacao", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtVerifImplementacao.DataBindings.Add(new Binding("Text", bindingSource, "Verifica_Implementacao", true));
            txtVerifEficacia.DataBindings.Add(new Binding("Text", bindingSource, "Verifica_Eficacia", true));
            txtEncerrado.DataBindings.Add(new Binding("Text", bindingSource, "Encerrado_por", true));
            txtDataImpEficacia.DataBindings.Add(new Binding("Text", bindingSource, "DT_Encerrado_por", true, DataSourceUpdateMode.OnValidation, "  /  /"));

            Binding a = new Binding("Checked", bindingSource, "Analise_Risco", true);
            a.Format += new ConvertEventHandler(FormatRadioProposta);
            rdbSim.DataBindings.Add(a);

        }

        private void FormatRadio(object sender, ConvertEventArgs e)
        {
            if (e.Value.GetType() != typeof(bool)) return;

            bool n = (bool)e.Value;
            switch (n)
            {
                case false:
                    rdbReal.Checked = true;
                    break;
                case true:
                    rdbPotencial.Checked = true;
                    break;
            }
        }

        private void FormatRadioProposta(object sender, ConvertEventArgs e)
        {
            if (e.Value.GetType() != typeof(bool))
            {
                rdbNao.Checked = false;
                rdbSim.Checked = false;
                return;
            }

            bool n = (bool)e.Value;
            switch (n)
            {
                case false:
                    rdbNao.Checked = true;
                    break;
                case true:
                    rdbSim.Checked = true;
                    break;
            }
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
            tabControlCampos.SelectedTab = tabPage1;
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {

        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "UPDATE Nao_Conformidade " +
                                   "SET Responsavel_identif = @Responsavel_identif,data = @data,Requisito_norma = @Requisito_norma " +
                                   ",Local = @Local,Real_Potencial = @Real_Potencial,Descricao_conformidade = @Descricao_conformidade " +
                                   ",Descricao_disposicao = @Descricao_disposicao,Resp_disposicao = @Resp_disposicao " +
                                   ",Data_diposicao = @Data_diposicao,tipo_NC = @tipo_NC,Desc_Analise_Causas = @Desc_Analise_Causas " +
                                   ",Resp_Analise_Causas = @Resp_Analise_Causas,Dt_Analise_Causas = @Dt_Analise_Causas " +
                                   ",Aprovado_Acoes_Corretiva = @Aprovado_Acoes_Corretiva,Dt_Acoes_Corretiva = @Dt_Acoes_Corretiva " +
                                   ",Des_Implementacao = @Des_Implementacao,Resp_Implementacao = @Resp_Implementacao " +
                                   ",DT_Implementacao = @DT_Implementacao,Verifica_Implementacao = @Verifica_Implementacao " +
                                   ",Verifica_Eficacia = @Verifica_Eficacia,Encerrado_por = @Encerrado_por,DT_Encerrado_por = @DT_Encerrado_por " +
                                   ",Desc_Analise_Risco = @Desc_Analise_Risco,Analise_Risco = @Analise_Risco,Tipo_Acao = @Tipo_Acao " +
                                   "WHERE Sequencial = @Sequencial";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Responsavel_identif", txtRespIdent.Text);
                        cmd.Parameters.AddWithValue("@data", txtDataAtual.MaskCompleted ? (object)txtDataAtual.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Requisito_norma", txtRequisito.Text);
                        cmd.Parameters.AddWithValue("@Local", (mcbbLocal.SelectedValue == null) ? (object)DBNull.Value : mcbbLocal.SelectedValue);
                        cmd.Parameters.AddWithValue("@Real_Potencial", (rdbPotencial.Checked == true) ? true : false);
                        cmd.Parameters.AddWithValue("@Descricao_conformidade", txtConformidade.Text);
                        cmd.Parameters.AddWithValue("@Descricao_disposicao", txtDisposicao.Text);
                        cmd.Parameters.AddWithValue("@Resp_disposicao", txtResponsavelDisposicao.Text);
                        cmd.Parameters.AddWithValue("@Data_diposicao", txtDataDisposicao.MaskCompleted ? (object)txtDataDisposicao.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@tipo_NC", (mcbbTipo.SelectedValue == null) ? (object)DBNull.Value : mcbbTipo.SelectedValue);
                        cmd.Parameters.AddWithValue("@Desc_Analise_Causas", txtAnaliseCausas.Text);
                        cmd.Parameters.AddWithValue("@Resp_Analise_Causas", txtRespAnalise.Text);
                        cmd.Parameters.AddWithValue("@Dt_Analise_Causas", txtDataAnalise.MaskCompleted ? (object)txtDataAnalise.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Aprovado_Acoes_Corretiva", txtAprovadoAcao.Text);
                        cmd.Parameters.AddWithValue("@Dt_Acoes_Corretiva", txtDataAcao.MaskCompleted ? (object)txtDataAcao.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Des_Implementacao", txtImplementacao.Text);
                        cmd.Parameters.AddWithValue("@Resp_Implementacao", txtRespImplementacao.Text);
                        cmd.Parameters.AddWithValue("@DT_Implementacao", txtDataImplementacao.MaskCompleted ? (object)txtDataImplementacao.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Verifica_Implementacao", txtVerifImplementacao.Text);
                        cmd.Parameters.AddWithValue("@Verifica_Eficacia", txtVerifEficacia.Text);
                        cmd.Parameters.AddWithValue("@Encerrado_por", txtEncerrado.Text);
                        cmd.Parameters.AddWithValue("@DT_Encerrado_por", txtDataImpEficacia.MaskCompleted ? (object)txtDataImpEficacia.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Desc_Analise_Risco", txtAcao.Text);
                        cmd.Parameters.AddWithValue("@Analise_Risco", (rdbSim.Checked == true) ? true : false);
                        cmd.Parameters.AddWithValue("@Tipo_Acao", (mcbbAcao.SelectedValue == null ? "" : mcbbAcao.SelectedValue));
                        cmd.Parameters.AddWithValue("@Sequencial", txtNumero.Text);
                        cmd.ExecuteNonQuery();

                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Número: {0} - Norma: {1} - Tipo:{2} ", txtNumero.Text, txtRequisito.Text, mcbbTipo.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Nao_Conformidade " +
                                   "(Responsavel_identif,data,Requisito_norma,Local,Real_Potencial,Descricao_conformidade " +
                                   ",Descricao_disposicao,Resp_disposicao,Data_diposicao,tipo_NC,Desc_Analise_Causas " +
                                   ",Resp_Analise_Causas,Dt_Analise_Causas,Aprovado_Acoes_Corretiva,Dt_Acoes_Corretiva " +
                                   ",Des_Implementacao,Resp_Implementacao,DT_Implementacao,Verifica_Implementacao " +
                                   ",Verifica_Eficacia,Encerrado_por " +
                                   ",DT_Encerrado_por,Desc_Analise_Risco,Analise_Risco,Tipo_Acao) " +
                                   " VALUES " +
                                   "(@Responsavel_identif,@data,@Requisito_norma,@Local,@Real_Potencial " +
                                   ",@Descricao_conformidade,@Descricao_disposicao,@Resp_disposicao, " +
                                   ",@Data_diposicao,@tipo_NC,@Desc_Analise_Causas ,@Resp_Analise_Causas " +
                                   ",@Dt_Analise_Causas,@Aprovado_Acoes_Corretiva,@Dt_Acoes_Corretiva " +
                                   ",@Des_Implementacao,@Resp_Implementacao,@DT_Implementacao,@Verifica_Implementacao " +
                                   ",@Verifica_Eficacia,@Encerrado_por " +
                                   ",@DT_Encerrado_por,@Desc_Analise_Risco,@Analise_Risco,@Tipo_Acao)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Responsavel_identif", txtRespIdent.Text);
                        cmd.Parameters.AddWithValue("@data", txtDataAtual.MaskCompleted ? (object)txtDataAtual.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Requisito_norma", txtRequisito.Text);
                        cmd.Parameters.AddWithValue("@Local", (mcbbLocal.SelectedValue == null) ? (object)DBNull.Value : mcbbLocal.SelectedValue);
                        cmd.Parameters.AddWithValue("@Real_Potencial", (rdbPotencial.Checked == true) ? true : false);
                        cmd.Parameters.AddWithValue("@Descricao_conformidade", txtConformidade.Text);
                        cmd.Parameters.AddWithValue("@Descricao_disposicao", txtDisposicao.Text);
                        cmd.Parameters.AddWithValue("@Resp_disposicao", txtResponsavelDisposicao.Text);
                        cmd.Parameters.AddWithValue("@Data_diposicao", txtDataDisposicao.MaskCompleted ? (object)txtDataDisposicao.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@tipo_NC", (mcbbTipo.SelectedValue == null) ? (object)DBNull.Value : mcbbTipo.SelectedValue);
                        cmd.Parameters.AddWithValue("@Desc_Analise_Causas", txtAnaliseCausas.Text);
                        cmd.Parameters.AddWithValue("@Resp_Analise_Causas", txtRespAnalise.Text);
                        cmd.Parameters.AddWithValue("@Dt_Analise_Causas", txtDataAnalise.MaskCompleted ? (object)txtDataAnalise.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Aprovado_Acoes_Corretiva", txtAprovadoAcao.Text);
                        cmd.Parameters.AddWithValue("@Dt_Acoes_Corretiva", txtDataAcao.MaskCompleted ? (object)txtDataAcao.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Des_Implementacao", txtImplementacao.Text);
                        cmd.Parameters.AddWithValue("@Resp_Implementacao", txtRespImplementacao.Text);
                        cmd.Parameters.AddWithValue("@DT_Implementacao", txtDataImplementacao.MaskCompleted ? (object)txtDataImplementacao.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Verifica_Implementacao", txtVerifImplementacao.Text);
                        cmd.Parameters.AddWithValue("@Verifica_Eficacia", txtVerifEficacia.Text);
                        cmd.Parameters.AddWithValue("@Encerrado_por", txtEncerrado.Text);
                        cmd.Parameters.AddWithValue("@DT_Encerrado_por", txtDataImpEficacia.MaskCompleted ? (object)txtDataImpEficacia.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Desc_Analise_Risco", txtAcao.Text);
                        cmd.Parameters.AddWithValue("@Analise_Risco", (rdbSim.Checked == true) ? true : false);
                        cmd.Parameters.AddWithValue("@Tipo_Acao", (mcbbAcao.SelectedValue == null ? "" : mcbbAcao.SelectedValue));
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Número: {0} - Norma: {1} - Tipo:{2} ", txtNumero.Text, txtRequisito.Text, mcbbTipo.Text));
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

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void txtPesquisa_TextChanged(object sender, EventArgs e)
        {
            bindingSource.Filter = "Requisito_norma LIKE '" + txtPesquisa.Text + "%'";
        }

        private void dataGridView1_SelectionChanged(object sender, EventArgs e)
        {
            string Sequencial = bindingSource.GetRelatedCurrencyManager("Sequencial").Current.ToString();

            dvgAcao.AutoGenerateColumns = false;
            dvgAcao.DataSource = getProposta(Sequencial);
        }

        private void dataGridView1_DoubleClick(object sender, EventArgs e)
        {
            tabControl.SelectedTab = tabFormulario;
        }

        private void btnAbrir_Click(object sender, EventArgs e)
        {
            tabControl.SelectedTab = tabFormulario;
        }

        private void btnAlterarProposta_Click(object sender, EventArgs e)
        {
            using (var form = new FrmControleNaoConformidadeProposta())
            {
                string Sequencial = ((DataRowView)bindingSource.Current).Row["Sequencial"].ToString();

                form.ID = dvgAcao.CurrentRow.Cells["ID"].Value.ToString();
                form.statusCadastro = StatusCadastro.Editar;
                form.Fk_Sequencial = Sequencial;

                if (FrmPrincipal.ShowModalMdiChildren(form) == DialogResult.OK)
                {
                    dvgAcao.AutoGenerateColumns = false;
                    dvgAcao.DataSource = getProposta(Sequencial);
                }
            }
        }

        private void btnIncluir_Click(object sender, EventArgs e)
        {
            var form = new FrmControleNaoConformidadeProposta();
            FrmPrincipal.ShowModalMdiChildren(form);            
        }
    }
}
