using Microsoft.Reporting.WinForms;
using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Processos
{
    public partial class FrmRATRepetro : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        bool GoOn;

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
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmRATRepetro()
        {
            InitializeComponent();
        }

        private DataTable getRatRepetro()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT ID,FK_Processo,Nome_Empresa_Estrangeira,Endereco_Empresa_Estrangeira,Enquadramento_Pedido,FK_Fundamentacao " +
                           ",Finalidade,Num_Processo_Bem_Principal,Num_DI_Bem_Principal,Num_DI_Bem_Acessorio,Localizacao_Fisica_Bem " +
                           ",Unidade_Jurisdicionante,Representante_Nome,Representante_CPF,Representante_Email,Representante_Telefone " +
                           ",Enquadramento_Prazo_Solicitado,Data_Criacao_Rat,Fk_usuario,Finalidade_Outra,Moeda,Num_Rat " +
                           "FROM RAT_Repetro Order by Fk_Processo Desc";
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

        private DataTable getFundamentacao(string codigo)
        {

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query;
            DataTable table;
            if (!string.IsNullOrEmpty(codigo))
            {
                query = "SELECT Descricao,Codigo FROM Fundamentacao_RCR Where  Descricao like '%1415%' and codigo = @codigo and Ativo ='1' order by descricao";
            }
            else
            {
                query = "SELECT Descricao,Codigo FROM Fundamentacao_RCR Where  Descricao like '%1415%' and Ativo ='1' order by descricao";
            }


            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                if (!string.IsNullOrEmpty(codigo))
                {
                    cmd.Parameters.AddWithValue("@codigo", codigo);
                }

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
            //return table;
        }

        private void getNome()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Codigo,upper(Razao_Social) as Razao_Social,CGC_CPF from Procuradores order by Razao_Social";
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
                mccbNome.DataSource = table;
                mccbNome.DisplayMember = "Razao_Social";
                mccbNome.ValueMember = "CGC_CPF";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }


        private void FrmRATRepetro_Load(object sender, EventArgs e)
        {
            GoOn = false;
            bindingNavigator.DeleteItem = null;

            cbbFundamentacao.DataSource = getFundamentacao(null);
            cbbFundamentacao.DisplayMember = "Descricao";
            cbbFundamentacao.ValueMember = "Codigo";

            getNome();

            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getRatRepetro();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtProcesso.DataBindings.Add(new Binding("Text", bindingSource, "Fk_Processo", true));
            txtMoeda.DataBindings.Add(new Binding("Text", bindingSource, "Moeda", true));
            txtRAT.DataBindings.Add(new Binding("Text", bindingSource, "Num_Rat", true));
            txtNomeEmpresa.DataBindings.Add(new Binding("Text", bindingSource, "Nome_Empresa_Estrangeira", true));
            txtEndereco.DataBindings.Add(new Binding("Text", bindingSource, "Endereco_Empresa_Estrangeira", true));
            txtDataPrazo.DataBindings.Add(new Binding("Text", bindingSource, "Enquadramento_Prazo_Solicitado", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtCodigoFundamentacao.DataBindings.Add(new Binding("Text", bindingSource, "FK_Fundamentacao", true));
            cbbFundamentacao.DataBindings.Add(new Binding("SelectedValue", bindingSource, "FK_Fundamentacao"));
            txtLocalizacaoFisicaBem.DataBindings.Add(new Binding("Text", bindingSource, "Localizacao_Fisica_Bem", true));
            txtUnidadeJurisdicionante.DataBindings.Add(new Binding("Text", bindingSource, "Unidade_Jurisdicionante", true));
            mccbNome.DataBindings.Add(new Binding("Text", bindingSource, "Representante_Nome", true));
            txtCPF.DataBindings.Add(new Binding("Text", bindingSource, "Representante_CPF", true));
            txtEmail.DataBindings.Add(new Binding("Text", bindingSource, "Representante_Email", true));
            txtTelefone.DataBindings.Add(new Binding("Text", bindingSource, "Representante_Telefone", true));
            txtOutra.DataBindings.Add(new Binding("Text", bindingSource, "Finalidade_Outra", true));

            Binding b = new Binding("Checked", bindingSource, "Enquadramento_Pedido", true);
            b.Format += new ConvertEventHandler(FormatRadio);
            rdbPagamento.DataBindings.Add(b);
        }

        private void FormatRadio(object sender, ConvertEventArgs e)
        {
            if (e.Value.GetType() != typeof(bool)) return;

            bool n = (bool)e.Value;
            switch (n)
            {
                case false:
                    rdbRepetro.Checked = true;
                    break;
                case true:
                    rdbPagamento.Checked = true;
                    break;
            }
        }

        private void txtCodigoFundamentacao_TextChanged(object sender, EventArgs e)
        {
            if (txtCodigoFundamentacao.Text.Length > 0)
            {
                DataTable table = new DataTable();
                table = getFundamentacao(txtCodigoFundamentacao.Text);
                cbbFundamentacao.SelectedValue = ((table.Rows.Count > 0) ? table.Rows[0]["codigo"].ToString() : "");
            }
            else
            {
                cbbFundamentacao.SelectedIndex = -1;
            }
        }

        private void cbbFundamentacao_SelectedIndexChanged(object sender, EventArgs e)
        {
            ComboBox cb = (ComboBox)sender;
            if (cb.Focused)
            {
                txtCodigoFundamentacao.Text = Convert.ToString(cbbFundamentacao.SelectedValue);
            }
            else
            {
                return;
            }
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            GoOn = true;
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            GoOn = false;
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            txtProcesso.Enabled = false;
        }

        private bool RatEmUso()
        {
            var query = " SELECT ID FROM RAT_Repetro WHERE Fk_Processo =@Fk_Processo  ";

            var GoOn = false;

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Fk_Processo", txtProcesso.Text);

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

        private bool TipodedeclaraçãoEmUso()
        {
            var query = "select * from Processos " +
                        "where Tipo_Declaracao in ('05','12') and Codigo = @Processo";
            var GoOn = true;
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
                            GoOn = false;
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
            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    string query = "UPDATE RAT_Repetro " +
                                   "SET Nome_Empresa_Estrangeira = @Nome_Empresa_Estrangeira,Endereco_Empresa_Estrangeira = @Endereco_Empresa_Estrangeira " +
                                   ",Enquadramento_Pedido = @Enquadramento_Pedido,FK_Fundamentacao = @FK_Fundamentacao,Finalidade = @Finalidade " +
                                   ",Num_Processo_Bem_Principal = @Num_Processo_Bem_Principal,Num_DI_Bem_Principal = @Num_DI_Bem_Principal " +
                                   ",Num_DI_Bem_Acessorio = @Num_DI_Bem_Acessorio,Localizacao_Fisica_Bem = @Localizacao_Fisica_Bem " +
                                   ",Unidade_Jurisdicionante = @Unidade_Jurisdicionante,Representante_Nome = @Representante_Nome " +
                                   ",Representante_CPF = @Representante_CPF,Representante_Email = @Representante_Email " +
                                   ",Representante_Telefone = @Representante_Telefone,Enquadramento_Prazo_Solicitado = @Enquadramento_Prazo_Solicitado " +
                                   ",Data_Criacao_Rat = @Data_Criacao_Rat,FK_Usuario = @FK_Usuario,Finalidade_Outra = @Finalidade_Outra,Moeda = @Moeda " +
                                   ",Num_Rat = @Num_Rat " +
                                   "WHERE ID = @ID ";
                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Nome_Empresa_Estrangeira", txtNomeEmpresa.Text);
                            cmd.Parameters.AddWithValue("@Endereco_Empresa_Estrangeira", txtEndereco.Text);
                            cmd.Parameters.AddWithValue("@Enquadramento_Pedido", (rdbRepetro.Checked == true) ? false : true);
                            cmd.Parameters.AddWithValue("@FK_Fundamentacao", (cbbFundamentacao.SelectedValue == null) ? (object)DBNull.Value : cbbFundamentacao.SelectedValue);
                            if (rdbBemPrincipal.Checked)
                            {
                                cmd.Parameters.AddWithValue("@Finalidade", "1");
                                cmd.Parameters.AddWithValue("@Num_Processo_Bem_Principal", txtNum_Processo_1.Text);
                                cmd.Parameters.AddWithValue("@Num_DI_Bem_Principal", "");
                                cmd.Parameters.AddWithValue("@Num_DI_Bem_Acessorio", "");
                            }
                            else if (rdbBemAcessorio.Checked)
                            {
                                cmd.Parameters.AddWithValue("@Finalidade", "2");
                                cmd.Parameters.AddWithValue("@Num_Processo_Bem_Principal", txtNum_Processo_2.Text);
                                cmd.Parameters.AddWithValue("@Num_DI_Bem_Principal", txtNum_DI_Bem_Principal_2.Text);
                                cmd.Parameters.AddWithValue("@Num_DI_Bem_Acessorio", "");
                            }
                            else if (rdbProrrogacaoBemPrincipal.Checked)
                            {
                                cmd.Parameters.AddWithValue("@Finalidade", "3");
                                cmd.Parameters.AddWithValue("@Num_Processo_Bem_Principal", txtNum_Processo_3.Text);
                                cmd.Parameters.AddWithValue("@Num_DI_Bem_Principal", txtNum_DI_Bem_Principal_3.Text);
                                cmd.Parameters.AddWithValue("@Num_DI_Bem_Acessorio", "");
                            }
                            else if (rdbNovaAdmissao.Checked)
                            {
                                cmd.Parameters.AddWithValue("@Finalidade", "4");
                                cmd.Parameters.AddWithValue("@Num_Processo_Bem_Principal", txtNum_Processo_4.Text);
                                cmd.Parameters.AddWithValue("@Num_DI_Bem_Principal", txtNum_DI_Bem_Principal_4.Text);
                                cmd.Parameters.AddWithValue("@Num_DI_Bem_Acessorio", "");
                            }
                            else
                            {
                                cmd.Parameters.AddWithValue("@Finalidade", "5");
                                cmd.Parameters.AddWithValue("@Num_Processo_Bem_Principal", txtNum_Processo_5.Text);
                                cmd.Parameters.AddWithValue("@Num_DI_Bem_Principal", txtNum_DI_Bem_Principal_5.Text);
                                cmd.Parameters.AddWithValue("@Num_DI_Bem_Acessorio", txtNum_DI_Bem_Acessorio_5.Text);
                            }
                            cmd.Parameters.AddWithValue("@Localizacao_Fisica_Bem", txtLocalizacaoFisicaBem.Text);
                            cmd.Parameters.AddWithValue("@Unidade_Jurisdicionante", txtUnidadeJurisdicionante.Text);
                            cmd.Parameters.AddWithValue("@Representante_Nome", mccbNome.SelectedText);
                            cmd.Parameters.AddWithValue("@Representante_CPF", txtCPF.Text);
                            cmd.Parameters.AddWithValue("@Representante_Email", txtEmail.Text);
                            cmd.Parameters.AddWithValue("@Representante_Telefone", txtTelefone.Text);
                            cmd.Parameters.AddWithValue("@Enquadramento_Prazo_Solicitado", txtDataPrazo.MaskCompleted ? (object)txtDataPrazo.Text : DBNull.Value);
                            cmd.Parameters.AddWithValue("@Data_Criacao_Rat", DateTime.Now.Date);
                            cmd.Parameters.AddWithValue("@FK_Usuario", FrmPrincipal.PK_UsuarioLogado);
                            cmd.Parameters.AddWithValue("@Finalidade_Outra", txtOutra.Text);
                            cmd.Parameters.AddWithValue("@Moeda", txtMoeda.Text);
                            cmd.Parameters.AddWithValue("@Num_Rat", txtRAT.Text);
                            cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("ID").Current.ToString());
                            cmd.ExecuteNonQuery();
                        }
                    }
                    LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),
                   string.Format("Moeda:{0} N° RAT :{1} Nome empresa:{2} Endereço:{3} Enquadramento:{4} Termo final solicitado:{5} Indicação do dispositivo:{6} Localização do bem:{7} Unidade da RFB:{8} CPF:{9}",
                   txtMoeda.Text, txtRAT.Text, txtNomeEmpresa.Text, txtEndereco.Text, (rdbRepetro.Checked == true) ? false : true, txtDataPrazo.Text, cbbFundamentacao.Text, txtLocalizacaoFisicaBem.Text, txtUnidadeJurisdicionante.Text, txtCPF.Text));
                }
                else
                {
                    if (RatEmUso())
                    {
                        MessageBox.Show("Já existe um RAT para este processo!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return;
                    }

                    if (TipodedeclaraçãoEmUso())
                    {
                        MessageBox.Show("Não foi possível realizar o cadastro, pois não se trata de um processo de Admissão Temporária.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return;
                    }

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO RAT_Repetro " +
                                   "(FK_Processo,Nome_Empresa_Estrangeira,Endereco_Empresa_Estrangeira,Enquadramento_Pedido " +
                                   ",FK_Fundamentacao,Finalidade,Num_Processo_Bem_Principal,Num_DI_Bem_Principal " +
                                   ",Num_DI_Bem_Acessorio,Localizacao_Fisica_Bem,Unidade_Jurisdicionante,Representante_Nome " +
                                   ",Representante_CPF,Representante_Email,Representante_Telefone,Enquadramento_Prazo_Solicitado " +
                                   ",Data_Criacao_Rat,FK_Usuario,Finalidade_Outra,Moeda,Num_Rat) " +
                                   "VALUES " +
                                   "(@FK_Processo,@Nome_Empresa_Estrangeira,@Endereco_Empresa_Estrangeira,@Enquadramento_Pedido " +
                                   ",@FK_Fundamentacao,@Finalidade,@Num_Processo_Bem_Principal,@Num_DI_Bem_Principal " +
                                   ",@Num_DI_Bem_Acessorio,@Localizacao_Fisica_Bem,@Unidade_Jurisdicionante,@Representante_Nome " +
                                   ",@Representante_CPF,@Representante_Email,@Representante_Telefone,@Enquadramento_Prazo_Solicitado " +
                                   ",@Data_Criacao_Rat,@FK_Usuario,@Finalidade_Outra,@Moeda,@Num_Rat)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Fk_Processo", txtProcesso.Text);
                        cmd.Parameters.AddWithValue("@Nome_Empresa_Estrangeira", txtNomeEmpresa.Text);
                        cmd.Parameters.AddWithValue("@Endereco_Empresa_Estrangeira", txtEndereco.Text);
                        cmd.Parameters.AddWithValue("@Enquadramento_Pedido", (rdbRepetro.Checked == true) ? false : true);
                        cmd.Parameters.AddWithValue("@FK_Fundamentacao", (cbbFundamentacao.SelectedValue == null) ? (object)DBNull.Value : cbbFundamentacao.SelectedValue);

                        if (rdbBemPrincipal.Checked)
                        {
                            cmd.Parameters.AddWithValue("@Finalidade", "1");
                            cmd.Parameters.AddWithValue("@Num_Processo_Bem_Principal", txtNum_Processo_1.Text);
                            cmd.Parameters.AddWithValue("@Num_DI_Bem_Principal", "");
                            cmd.Parameters.AddWithValue("@Num_DI_Bem_Acessorio", "");
                        }
                        else if (rdbBemAcessorio.Checked)
                        {
                            cmd.Parameters.AddWithValue("@Finalidade", "2");
                            cmd.Parameters.AddWithValue("@Num_Processo_Bem_Principal", txtNum_Processo_2.Text);
                            cmd.Parameters.AddWithValue("@Num_DI_Bem_Principal", txtNum_DI_Bem_Principal_2.Text);
                            cmd.Parameters.AddWithValue("@Num_DI_Bem_Acessorio", "");
                        }
                        else if (rdbProrrogacaoBemPrincipal.Checked)
                        {
                            cmd.Parameters.AddWithValue("@Finalidade", "3");
                            cmd.Parameters.AddWithValue("@Num_Processo_Bem_Principal", txtNum_Processo_3.Text);
                            cmd.Parameters.AddWithValue("@Num_DI_Bem_Principal", txtNum_DI_Bem_Principal_3.Text);
                            cmd.Parameters.AddWithValue("@Num_DI_Bem_Acessorio", "");
                        }
                        else if (rdbNovaAdmissao.Checked)
                        {
                            cmd.Parameters.AddWithValue("@Finalidade", "4");
                            cmd.Parameters.AddWithValue("@Num_Processo_Bem_Principal", txtNum_Processo_4.Text);
                            cmd.Parameters.AddWithValue("@Num_DI_Bem_Principal", txtNum_DI_Bem_Principal_4.Text);
                            cmd.Parameters.AddWithValue("@Num_DI_Bem_Acessorio", "");
                        }
                        else
                        {
                            cmd.Parameters.AddWithValue("@Finalidade", "5");
                            cmd.Parameters.AddWithValue("@Num_Processo_Bem_Principal", txtNum_Processo_5.Text);
                            cmd.Parameters.AddWithValue("@Num_DI_Bem_Principal", txtNum_DI_Bem_Principal_5.Text);
                            cmd.Parameters.AddWithValue("@Num_DI_Bem_Acessorio", txtNum_DI_Bem_Acessorio_5.Text);
                        }
                        cmd.Parameters.AddWithValue("@Localizacao_Fisica_Bem", txtLocalizacaoFisicaBem.Text);
                        cmd.Parameters.AddWithValue("@Unidade_Jurisdicionante", txtUnidadeJurisdicionante.Text);
                        cmd.Parameters.AddWithValue("@Representante_Nome", mccbNome.SelectedText);
                        cmd.Parameters.AddWithValue("@Representante_CPF", txtCPF.Text);
                        cmd.Parameters.AddWithValue("@Representante_Email", txtEmail.Text);
                        cmd.Parameters.AddWithValue("@Representante_Telefone", txtTelefone.Text);
                        cmd.Parameters.AddWithValue("@Enquadramento_Prazo_Solicitado", txtDataPrazo.MaskCompleted ? (object)txtDataPrazo.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Data_Criacao_Rat", DateTime.Now.Date);
                        cmd.Parameters.AddWithValue("@FK_Usuario", FrmPrincipal.PK_UsuarioLogado);
                        cmd.Parameters.AddWithValue("@Finalidade_Outra", txtOutra.Text);
                        cmd.Parameters.AddWithValue("@Moeda", txtMoeda.Text);
                        cmd.Parameters.AddWithValue("@Num_Rat", txtRAT.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag),
                    string.Format("Moeda:{0} N° RAT :{1} Nome empresa:{2} Endereço:{3} Enquadramento:{4} Termo final solicitado:{5} Indicação do dispositivo:{6} Localização do bem:{7} Unidade da RFB:{8} CPF:{9}",
                    txtMoeda.Text, txtRAT.Text, txtNomeEmpresa.Text, txtEndereco.Text, (rdbRepetro.Checked == true) ? false : true, txtDataPrazo.Text, cbbFundamentacao.Text, txtLocalizacaoFisicaBem.Text, txtUnidadeJurisdicionante.Text, txtCPF.Text));
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
                var ID_busca = bindingSource.GetRelatedCurrencyManager("ID").Current.ToString();
                bindingSource.DataSource = getRatRepetro();
                bindingSource.Position = bindingSource.Find("ID", ID_busca);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            GoOn = false;
            bindingSource.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
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

            bindingSource.Filter = "Fk_processo LIKE '" + processo + "%'";
        }

        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            if (GoOn)
            {
                if (txtProcesso.MaskCompleted)
                {
                    string endereco;
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "select top 1 E.Razao_Social,E.Endereco,E.Numero,E.Complemento,E.Bairro,E.Cidade,E.CEP,E.UF,E.Estado,CP.URF_Despacho,T.DESCRICAO, " +
                                   "Case When c.Data_prorrogacao is null or c.Data_prorrogacao = '' then C.Vigencia_final else C.Data_prorrogacao end As Data " +
                                   "from " +
                                   "Processos P " +
                                   "inner join Faturas F on P.Codigo = F.Processo " +
                                   "inner join Exportadores E on F.Exportador = E.Codigo " +
                                   "inner join Conhecimento_Processo CP on CP.Processo = F.Processo " +
                                   "left join TAB_URF T on CP.URF_Despacho = T.CODIGO " +
                                   "inner join Contratos C on C.Importador = P.Importador and C.Contrato =P.Contrato " +
                                   "where F.Processo = @Processo";
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
                                    txtNomeEmpresa.Text = reader[0].ToString();
                                    if (!string.IsNullOrEmpty(reader[1].ToString()))
                                    {
                                        endereco = reader[1].ToString();
                                        if (!string.IsNullOrEmpty(reader[2].ToString()))
                                        {
                                            endereco = endereco + ',' + reader[2].ToString();

                                            if (!string.IsNullOrEmpty(reader[3].ToString()))
                                            {
                                                endereco = endereco + '/' + reader[3].ToString();
                                            }
                                        }
                                        if (!string.IsNullOrEmpty(reader[4].ToString()))
                                        {
                                            endereco = endereco + ',' + reader[4].ToString();
                                        }

                                        if (!string.IsNullOrEmpty(reader[5].ToString()))
                                        {
                                            endereco = endereco + '-' + reader[5].ToString();
                                        }

                                        if (!string.IsNullOrEmpty(reader[6].ToString()))
                                        {
                                            endereco = endereco + '-' + reader[6].ToString();
                                        }
                                        txtEndereco.Text = endereco;
                                    }

                                    // txtLocalizacaoFisicaBem.Text = reader[10].ToString();
                                    txtUnidadeJurisdicionante.Text = reader[9].ToString();
                                    txtDataPrazo.Text = reader[11].ToString();
                                }
                            }
                            catch (Exception ex)
                            {
                                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                                //txtLocalizacaoFisicaBem.Text = "";
                                txtUnidadeJurisdicionante.Text = "";
                                txtEndereco.Text = "";
                                txtNomeEmpresa.Text = "";
                                txtDataPrazo.Text = "";
                            }
                        }
                    }
                }
                else
                {
                    // txtLocalizacaoFisicaBem.Text = "";
                    txtUnidadeJurisdicionante.Text = "";
                    txtEndereco.Text = "";
                    txtNomeEmpresa.Text = "";
                    txtDataPrazo.Text = "";
                }
            }
        }

        private void dataGridView_SelectionChanged(object sender, EventArgs e)
        {
            if (dataGridView.Rows.Count.ToString() != "0")
            {

                string ValorFinalidade = bindingSource.GetRelatedCurrencyManager("Finalidade").Current.ToString();

                if (ValorFinalidade == "1")
                {
                    rdbBemPrincipal.Checked = true;
                    txtNum_Processo_2.Text = "";
                    txtNum_DI_Bem_Principal_2.Text = "";
                    txtNum_Processo_3.Text = "";
                    txtNum_DI_Bem_Principal_3.Text = "";
                    txtNum_Processo_4.Text = "";
                    txtNum_DI_Bem_Principal_4.Text = "";
                    txtNum_Processo_5.Text = "";
                    txtNum_DI_Bem_Principal_5.Text = "";
                    txtNum_DI_Bem_Acessorio_5.Text = "";
                    txtNum_Processo_1.Text = string.IsNullOrEmpty(((DataRowView)bindingSource.Current).Row["Num_Processo_Bem_Principal"].ToString()) ? "" : ((DataRowView)bindingSource.Current).Row["Num_Processo_Bem_Principal"].ToString();
                }
                else if (ValorFinalidade == "2")
                {
                    rdbBemAcessorio.Checked = true;
                    txtNum_Processo_1.Text = "";
                    txtNum_Processo_3.Text = "";
                    txtNum_DI_Bem_Principal_3.Text = "";
                    txtNum_Processo_4.Text = "";
                    txtNum_DI_Bem_Principal_4.Text = "";
                    txtNum_Processo_5.Text = "";
                    txtNum_DI_Bem_Principal_5.Text = "";
                    txtNum_DI_Bem_Acessorio_5.Text = "";
                    txtNum_Processo_2.Text = string.IsNullOrEmpty(((DataRowView)bindingSource.Current).Row["Num_Processo_Bem_Principal"].ToString()) ? "" : ((DataRowView)bindingSource.Current).Row["Num_Processo_Bem_Principal"].ToString();
                    txtNum_DI_Bem_Principal_2.Text = string.IsNullOrEmpty(((DataRowView)bindingSource.Current).Row["Num_DI_Bem_Principal"].ToString()) ? "" : ((DataRowView)bindingSource.Current).Row["Num_DI_Bem_Principal"].ToString();
                }
                else if (ValorFinalidade == "3")
                {
                    rdbProrrogacaoBemPrincipal.Checked = true;
                    txtNum_Processo_1.Text = "";
                    txtNum_Processo_2.Text = "";
                    txtNum_DI_Bem_Principal_2.Text = "";
                    txtNum_Processo_4.Text = "";
                    txtNum_DI_Bem_Principal_4.Text = "";
                    txtNum_Processo_5.Text = "";
                    txtNum_DI_Bem_Principal_5.Text = "";
                    txtNum_DI_Bem_Acessorio_5.Text = "";
                    txtNum_Processo_3.Text = string.IsNullOrEmpty(((DataRowView)bindingSource.Current).Row["Num_Processo_Bem_Principal"].ToString()) ? "" : ((DataRowView)bindingSource.Current).Row["Num_Processo_Bem_Principal"].ToString();
                    txtNum_DI_Bem_Principal_3.Text = string.IsNullOrEmpty(((DataRowView)bindingSource.Current).Row["Num_DI_Bem_Principal"].ToString()) ? "" : ((DataRowView)bindingSource.Current).Row["Num_DI_Bem_Principal"].ToString();
                }
                else if (ValorFinalidade == "4")
                {
                    rdbNovaAdmissao.Checked = true;
                    txtNum_Processo_1.Text = "";
                    txtNum_Processo_2.Text = "";
                    txtNum_DI_Bem_Principal_2.Text = "";
                    txtNum_Processo_3.Text = "";
                    txtNum_DI_Bem_Principal_3.Text = "";
                    txtNum_Processo_5.Text = "";
                    txtNum_DI_Bem_Principal_5.Text = "";
                    txtNum_DI_Bem_Acessorio_5.Text = "";
                    txtNum_Processo_4.Text = string.IsNullOrEmpty(((DataRowView)bindingSource.Current).Row["Num_Processo_Bem_Principal"].ToString()) ? "" : ((DataRowView)bindingSource.Current).Row["Num_Processo_Bem_Principal"].ToString();
                    txtNum_DI_Bem_Principal_4.Text = string.IsNullOrEmpty(((DataRowView)bindingSource.Current).Row["Num_DI_Bem_Principal"].ToString()) ? "" : ((DataRowView)bindingSource.Current).Row["Num_DI_Bem_Principal"].ToString();
                }
                else
                {
                    rdbOutra.Checked = true;
                    txtNum_Processo_1.Text = "";
                    txtNum_Processo_2.Text = "";
                    txtNum_DI_Bem_Principal_2.Text = "";
                    txtNum_Processo_3.Text = "";
                    txtNum_DI_Bem_Principal_3.Text = "";
                    txtNum_Processo_4.Text = "";
                    txtNum_DI_Bem_Principal_4.Text = "";
                    txtNum_Processo_5.Text = string.IsNullOrEmpty(((DataRowView)bindingSource.Current).Row["Num_Processo_Bem_Principal"].ToString()) ? "" : ((DataRowView)bindingSource.Current).Row["Num_Processo_Bem_Principal"].ToString();
                    txtNum_DI_Bem_Principal_5.Text = string.IsNullOrEmpty(((DataRowView)bindingSource.Current).Row["Num_DI_Bem_Principal"].ToString()) ? "" : ((DataRowView)bindingSource.Current).Row["Num_DI_Bem_Principal"].ToString();
                    txtNum_DI_Bem_Acessorio_5.Text = string.IsNullOrEmpty(((DataRowView)bindingSource.Current).Row["Num_DI_Bem_Acessorio"].ToString()) ? "" : ((DataRowView)bindingSource.Current).Row["Num_DI_Bem_Acessorio"].ToString();
                }
                btnEditar.Enabled = true;
            }
            else
            {
                btnEditar.Enabled = false;
                txtNum_Processo_1.Text = "";
                txtNum_Processo_2.Text = "";
                txtNum_DI_Bem_Principal_2.Text = "";
                txtNum_Processo_3.Text = "";
                txtNum_DI_Bem_Principal_3.Text = "";
                txtNum_Processo_4.Text = "";
                txtNum_DI_Bem_Principal_4.Text = "";
                txtNum_Processo_5.Text = "";
                txtNum_DI_Bem_Principal_5.Text = "";
                txtNum_DI_Bem_Acessorio_5.Text = "";
            }
        }

        private DataTable getItens(string processo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            var query = "Select I.Sequencial,I.Quantidade,TM.ABREV as Unidade,I.Valor_Total, " +
                        "CASE WHEN (P.Importador = '252' OR P.Importador = '265') THEN " +
                        "I.Descricao_Produto + ' PN('+ I.Produto +');'+'SN{'+I.Numero_serie+'}SN' ELSE " +
                        "I.Descricao_Produto + ' Part.Number: #PN=' + I.Produto +'#'+' Nº. Serie: #SN='+ I.Numero_serie + '#' END AS 'Descricao_Produto' " +
                        "From Processos P " +
                        "inner join Faturas F on P.Codigo = F.Processo " +
                        "inner join ItensFaturas I  on F.Fatura_Id = I.Fatura_Id " +
                        "Inner Join Tributacao_Item_Fatura T on I.Fatura_Id = T.Fatura_Id And " +
                        "I.Sequencial = T.Sequencial_Item And T.Regime_Tributacao_II = '5' " +
                        "Inner Join TAB_UNID_MEDIDA TM on I.Unidade = TM.CODIGO " +
                        "Where P.Codigo= @processo";
            //I.Descricao_Produto+' - P/N: ' + I.Produto +' - S/N: ' + I.Numero_serie   AS Descricao_Produto
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@processo", processo);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }


        private void dataGridView_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dataGridView.Columns[e.ColumnIndex].Name == "PDF")
            {
                var Id = dataGridView.Rows[e.RowIndex].Cells["ID"].Value;

                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "Select P.Codigo,I.Codigo,I.Razao_Social,I.CNPJ_CPF_COMPLETO,P.Fundamentacao_RCR, C.Vigencia_inicial,C.Vigencia_final,C.Data_prorrogacao,C.Descricao, RR.FK_Fundamentacao, " +
                               "F.Descricao as Desc_Fundamentacao, RR.Endereco_Empresa_Estrangeira,RR.Nome_Empresa_Estrangeira,Convert(date,RR.Enquadramento_Prazo_Solicitado,103)  as Enquadramento_Prazo_Solicitado ,RR.Localizacao_Fisica_Bem, " +
                               "RR.Unidade_Jurisdicionante,RR.Representante_Nome,RR.Representante_CPF,RR.Representante_Email,RR.Representante_Telefone,RR.Enquadramento_Pedido,RR.Finalidade, " +
                               "RR.Num_DI_Bem_Principal,RR.Num_DI_Bem_Acessorio,RR.Num_Processo_Bem_Principal,RR.Finalidade_Outra,RR.Moeda,RR.FK_Processo " +
                               ",C.ProcessoContratoDIANA From Processos P " +
                               "Inner Join RAT_Repetro RR on RR.FK_Processo = P.Codigo " +
                               "Inner Join Importadores I on P.Importador = I.Codigo " +
                               "Inner Join Contratos C on P.Contrato = C.Contrato and P.Importador = C.Importador " +
                               "left join  Fundamentacao_RCR F on F.Codigo = RR.FK_Fundamentacao " +
                               "Where P.Codigo = @Codigo";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Codigo", txtProcesso.Text);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            reader.Read();
                            try
                            {
                                SaveFileDialog saveFileDialog1 = new SaveFileDialog();

                                saveFileDialog1.Filter = "*PDF files (*.pdf)|*.pdf";
                                saveFileDialog1.FilterIndex = 2;
                                saveFileDialog1.RestoreDirectory = true;
                                saveFileDialog1.FileName = "RATRepetro_" + txtProcesso.Text.Replace("/", "");

                                if (saveFileDialog1.ShowDialog() == DialogResult.OK)
                                {

                                    ReportViewer RV = new ReportViewer();
                                    RV.ProcessingMode = ProcessingMode.Local;
                                    RV.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Processos.rptRATRepetro.rdlc";

                                    ReportDataSource rps = new ReportDataSource("ds01", getItens(reader[0].ToString()));
                                    RV.LocalReport.DataSources.Clear();
                                    RV.LocalReport.DataSources.Add(rps);

                                    IList<ReportParameter> parametros = new List<ReportParameter>();
                                    parametros.Add(new ReportParameter("RazaoSocial", reader[2].ToString()));
                                    parametros.Add(new ReportParameter("CNPJ", Convert.ToUInt64(reader[3].ToString()).ToString(@"00\.000\.000\/0000\-00")));
                                    parametros.Add(new ReportParameter("NumContrato", reader[8].ToString()));

                                    if (string.IsNullOrEmpty(reader[7].ToString()))
                                    {
                                        parametros.Add(new ReportParameter("Data_prorrogacao", string.IsNullOrEmpty(reader[6].ToString()) ? null : reader[6].ToString()));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("Data_prorrogacao", string.IsNullOrEmpty(reader[7].ToString()) ? null : reader[7].ToString()));
                                    }

                                    parametros.Add(new ReportParameter("Vigencia_inicial", string.IsNullOrEmpty(reader[5].ToString()) ? null : reader[5].ToString()));
                                    parametros.Add(new ReportParameter("Endereco_Empresa_Estrangeira", reader[11].ToString()));
                                    parametros.Add(new ReportParameter("Nome_Empresa_Estrangeira", reader[12].ToString()));
                                    parametros.Add(new ReportParameter("Enquadramento_Prazo_Solicitado", string.IsNullOrEmpty(reader[13].ToString()) ? null : reader[13].ToString()));
                                    parametros.Add(new ReportParameter("Localizacao_Fisica_Bem", reader[14].ToString()));
                                    parametros.Add(new ReportParameter("Unidade_Jurisdicionante", reader[15].ToString()));
                                    parametros.Add(new ReportParameter("Representante_Nome", reader[16].ToString()));
                                    parametros.Add(new ReportParameter("Representante_CPF", reader[17].ToString()));
                                    parametros.Add(new ReportParameter("Representante_Email", reader[18].ToString()));
                                    parametros.Add(new ReportParameter("Representante_Telefone", reader[19].ToString()));
                                    parametros.Add(new ReportParameter("Fundamentacao", reader[10].ToString()));
                                    parametros.Add(new ReportParameter("Enquadramento_Pedido", reader[20].ToString()));
                                    parametros.Add(new ReportParameter("Finalidade", reader[21].ToString()));
                                    parametros.Add(new ReportParameter("Num_Processo_Bem_Principal", reader[24].ToString()));
                                    parametros.Add(new ReportParameter("Num_DI_Bem_Principal", reader[22].ToString()));
                                    parametros.Add(new ReportParameter("Num_DI_Bem_Acessorio", reader[23].ToString()));
                                    parametros.Add(new ReportParameter("Finalidade_Outra", reader[25].ToString()));
                                    parametros.Add(new ReportParameter("Moeda", reader[26].ToString()));
                                    parametros.Add(new ReportParameter("NumProcesso", reader[27].ToString()));
                                    parametros.Add(new ReportParameter("txtProcessoDIANA", reader["ProcessoContratoDIANA"].ToString()));

                                    RV.LocalReport.SetParameters(parametros);

                                    Warning[] warnings;
                                    string[] streamids;
                                    string mimeType;
                                    string encoding;
                                    string extension;

                                    byte[] bytePDF = RV.LocalReport.Render("Pdf", null, out mimeType, out encoding, out extension, out streamids, out warnings);

                                    FileStream newFile = new FileStream(saveFileDialog1.FileName, FileMode.Create);
                                    newFile.Write(bytePDF, 0, bytePDF.Length);
                                    newFile.Close();
                                }
                            }
                            catch (Exception ex)
                            {
                                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            }
                        }
                    }
                }
            }
        }

        private void mccbNome_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bindingSource.Count >= 1)
            {
                txtCPF.Text = mccbNome.SelectedValue.ToString();
            }
        }

        private void dataGridView_CellMouseEnter(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex < 0 || e.RowIndex < 0)
            {
                return;
            }
            var dataGridView = (sender as DataGridView);
            //Check the condition as per the requirement casting the cell value to the appropriate type
            if (e.ColumnIndex == 0)
                dataGridView.Cursor = Cursors.Hand;
            else
                dataGridView.Cursor = Cursors.Default;
        }
    }
}
