using Microsoft.Reporting.WinForms;
using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.IO;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Financeiro
{
    public partial class FrmContratoFornecedores : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
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

        public FrmContratoFornecedores()
        {
            InitializeComponent();
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

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getSolicitante()
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
                cbbSolicitante.DataSource = table;
                cbbSolicitante.DisplayMember = "Nome_Completo";
                cbbSolicitante.ValueMember = "PK_USUARIO";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getResponsavel()
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

                cbbResponsavel.DataSource = table;
                cbbResponsavel.DisplayMember = "Nome_Completo";
                cbbResponsavel.ValueMember = "PK_USUARIO";

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getSetor()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Descricao FROM Setores WHERE Excluido = '0' ORDER BY Descricao ";
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
                cbbSetor.DataSource = table;
                cbbSetor.DisplayMember = "Descricao";
                cbbSetor.ValueMember = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private DataTable getContratoFornecedores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT  cf.id,cf.numero_contrato,cf.data,cf.fk_fornecedor,cf.data_aprovacao " +
                           ",cf.data_vigencia_inicial,cf.data_vigencia_final,cf.observacao,cf.fk_usuario,cf.lixo,cf.responsavel_preenchimento " +
                           ",cf.fk_usuario_solicitante,cf.fk_usuario_responsavel,cf.fk_setor,cf.utilizacao,cf.uso " +
                           ",cf.prazo_cancelamento,cf.ind_contrato,cf.ind_contrato_social,cf.ind_cnpj,cf.ind_certidao_receita " +
                           ",cf.ind_certidao_fgts,cf.ind_certidao_inss,cf.ind_titularidade_bancaria,cf.ind_politica_anticorrupcao " +
                           ",cf.ind_outros_01,cf.outros_01,cf.ind_outros_02,cf.outros_02, f.Razao_Social + ' - ' + cast(f.id as varchar(4)) as Razao_Social " +
                           "FROM Contratos_Fornecedores_Cadastrados_Financeiro cf left join fornecedores f on f.id = cf.fk_fornecedor " +
                           "ORDER BY id";

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

        private void FrmContratoFornecedores_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;

            getFornecedores();
            getSolicitante();
            getSetor();
            getResponsavel();

            Dictionary<string, string> itens = new Dictionary<string, string>();

            itens.Add("1", "Contrato"); itens.Add("2", "Nome Fornecedor");

            cbbPesquisar.DisplayMember = "Value";
            cbbPesquisar.ValueMember = "Key";
            cbbPesquisar.DataSource = new BindingSource(itens, null);

            Dictionary<string, string> itensUso = new Dictionary<string, string>();

            itensUso.Add("CONTINUO", "CONTINUO"); itensUso.Add("UNICO", "ÚNICO"); itensUso.Add("ESPORADICO", "ESPORÁDICO");

            cbbUso.DisplayMember = "Value";
            cbbUso.ValueMember = "Key";
            cbbUso.DataSource = new BindingSource(itensUso, null);

            Dictionary<string, string> itensPrazo = new Dictionary<string, string>();

            itensPrazo.Add("0", "0"); itensPrazo.Add("10", "10"); itensPrazo.Add("15", "15"); itensPrazo.Add("20", "20");
            itensPrazo.Add("30", "30"); itensPrazo.Add("60", "60"); itensPrazo.Add("90", "90");

            cbbPrazo.DisplayMember = "Value";
            cbbPrazo.ValueMember = "Key";
            cbbPrazo.DataSource = new BindingSource(itensPrazo, null);

            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getContratoFornecedores();
            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            cbbFornecedor.DataBindings.Add(new Binding("SelectedValue", bindingSource, "fk_fornecedor", true));
            txtRespPreenchimento.DataBindings.Add(new Binding("Text", bindingSource, "responsavel_preenchimento", true));
            cbbSolicitante.DataBindings.Add(new Binding("SelectedValue", bindingSource, "fk_usuario_solicitante", true));
            cbbResponsavel.DataBindings.Add(new Binding("SelectedValue", bindingSource, "fk_usuario_responsavel", true));
            cbbSetor.DataBindings.Add(new Binding("SelectedValue", bindingSource, "fk_setor", true));
            txtUtilizacao.DataBindings.Add(new Binding("Text", bindingSource, "utilizacao", true));
            cbbUso.DataBindings.Add(new Binding("SelectedValue", bindingSource, "uso", true));
            txtDataAprovacao.DataBindings.Add(new Binding("Text", bindingSource, "Data_Aprovacao", true, DataSourceUpdateMode.Never));
            txtVigenciaInicial.DataBindings.Add(new Binding("Text", bindingSource, "data_vigencia_inicial", true, DataSourceUpdateMode.Never));
            txtVigenciaFinal.DataBindings.Add(new Binding("Text", bindingSource, "data_vigencia_final", true, DataSourceUpdateMode.Never));
            cbbPrazo.DataBindings.Add(new Binding("SelectedValue", bindingSource, "prazo_cancelamento", true));
            chkContrato.DataBindings.Add(new Binding("Checked", bindingSource, "ind_contrato", true));
            chkContratoSocial.DataBindings.Add(new Binding("Checked", bindingSource, "ind_contrato_social", true));
            chkCNPJ.DataBindings.Add(new Binding("Checked", bindingSource, "ind_cnpj", true));
            chkCertidaoReceita.DataBindings.Add(new Binding("Checked", bindingSource, "ind_certidao_receita", true));
            chkCertidaoFTGS.DataBindings.Add(new Binding("Checked", bindingSource, "ind_certidao_fgts", true));
            chkCertidaoINSS.DataBindings.Add(new Binding("Checked", bindingSource, "ind_certidao_inss", true));
            chkTitularidadeBancaria.DataBindings.Add(new Binding("Checked", bindingSource, "ind_titularidade_bancaria", true));
            chkPoliticaAnticorrupcao.DataBindings.Add(new Binding("Checked", bindingSource, "ind_politica_anticorrupcao", true));
            chkOutros01.DataBindings.Add(new Binding("Checked", bindingSource, "ind_outros_01", true));
            txtOutros01.DataBindings.Add(new Binding("Text", bindingSource, "outros_01", true));
            chkOutros02.DataBindings.Add(new Binding("Checked", bindingSource, "ind_outros_02", true));
            txtOutros02.DataBindings.Add(new Binding("Text", bindingSource, "outros_02", true));
            txtObservacao.DataBindings.Add(new Binding("Text", bindingSource, "observacao", true));
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            chkContrato.Checked = false;
            chkContratoSocial.Checked = false;
            chkCNPJ.Checked = false;
            chkCertidaoReceita.Checked = false;
            chkCertidaoFTGS.Checked = false;
            chkCertidaoINSS.Checked = false;
            chkTitularidadeBancaria.Checked = false;
            chkPoliticaAnticorrupcao.Checked = false;
            chkOutros01.Checked = false;
            chkOutros02.Checked = false;
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
        }

        private bool FornecedorInativo()
        {
            var query = "SELECT Id, Razao_Social FROM Fornecedores WHERE Ativo = '0' and Id= @ID ORDER BY Razao_Social ";
            var GoOn = false;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@ID", cbbFornecedor.SelectedValue);

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

        private string getNovoCodigo()
        {
            string codigo;
            int numero;
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select top 1 MAX(numero_contrato) as numero_contrato, year(data) as Ano, id from Contratos_Fornecedores_Cadastrados_Financeiro group by data, numero_contrato, id order by id desc";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            reader.Read();
                            if (Convert.ToInt32(reader[1].ToString()) == DateTime.Now.Date.Year)
                            {
                                //codigo = reader[0].ToString();
                                numero = Convert.ToInt32(reader[0].ToString().Substring(0, 5));
                                numero = numero + 1;

                                codigo = numero.ToString();
                                codigo = codigo.PadLeft(5, '0');

                                return codigo + "/" + DateTime.Now.Date.Year.ToString().Substring(2, 2);
                            }
                            else
                            {
                                return "00001/" + DateTime.Now.Date.Year.ToString().Substring(2, 2);
                            }

                            ;
                        }
                        else
                        {
                            return "1";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return null;
            }
        }


        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(cbbFornecedor.Text))
            {
                MessageBox.Show("O Fornecedor é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbFornecedor.Focus();
                return;
            }

            if (FornecedorInativo())
            {
                MessageBox.Show("Este Fornecedor está inativo!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    string query = "UPDATE Contratos_Fornecedores_Cadastrados_Financeiro SET " +
                                   "fk_fornecedor = @fk_fornecedor,data_aprovacao = @data_aprovacao,data_vigencia_inicial = @data_vigencia_inicial " +
                                   ",data_vigencia_final = @data_vigencia_final,observacao = @observacao,fk_usuario = @fk_usuario " +
                                   ",responsavel_preenchimento = @responsavel_preenchimento,fk_usuario_solicitante = @fk_usuario_solicitante " +
                                   ",fk_usuario_responsavel = @fk_usuario_responsavel,fk_setor = @fk_setor,utilizacao = @utilizacao,uso = @uso " +
                                   ",prazo_cancelamento = @prazo_cancelamento,ind_contrato = @ind_contrato,ind_contrato_social = @ind_contrato_social " +
                                   ",ind_cnpj = @ind_cnpj,ind_certidao_receita = @ind_certidao_receita,ind_certidao_fgts = @ind_certidao_fgts " +
                                   ",ind_certidao_inss = @ind_certidao_inss,ind_titularidade_bancaria = @ind_titularidade_bancaria " +
                                   ",ind_politica_anticorrupcao = @ind_politica_anticorrupcao,ind_outros_01 = @ind_outros_01 " +
                                   ",outros_01 = @outros_01,ind_outros_02 = @ind_outros_02,outros_02 = @outros_02 " +
                                   "WHERE ID = @ID ";
                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@fk_fornecedor", (cbbFornecedor.SelectedValue == null) ? "" : cbbFornecedor.SelectedValue);
                            cmd.Parameters.AddWithValue("@Data_Aprovacao", (txtDataAprovacao.Text == "  /  /") ? DBNull.Value : (object)txtDataAprovacao.Text);
                            cmd.Parameters.AddWithValue("@data_vigencia_inicial", (txtVigenciaInicial.Text == "  /  /") ? DBNull.Value : (object)txtVigenciaInicial.Text);
                            cmd.Parameters.AddWithValue("@data_vigencia_final", (txtVigenciaFinal.Text == "  /  /") ? DBNull.Value : (object)txtVigenciaFinal.Text);
                            cmd.Parameters.AddWithValue("@observacao", txtObservacao.Text);
                            cmd.Parameters.AddWithValue("@fk_usuario", FrmPrincipal.PK_UsuarioLogado);
                            cmd.Parameters.AddWithValue("@responsavel_preenchimento", txtRespPreenchimento.Text);
                            cmd.Parameters.AddWithValue("@fk_usuario_solicitante", (cbbSolicitante.SelectedValue == null) ? "" : cbbSolicitante.SelectedValue);
                            cmd.Parameters.AddWithValue("@fk_usuario_responsavel", (cbbResponsavel.SelectedValue == null) ? "" : cbbResponsavel.SelectedValue);
                            cmd.Parameters.AddWithValue("@fk_setor", (cbbSetor.SelectedValue == null) ? "" : cbbSetor.SelectedValue);
                            cmd.Parameters.AddWithValue("@utilizacao", txtUtilizacao.Text);
                            cmd.Parameters.AddWithValue("@uso", (cbbUso.SelectedValue == null) ? "" : cbbUso.SelectedValue);
                            cmd.Parameters.AddWithValue("@prazo_cancelamento", (cbbPrazo.SelectedValue == null) ? "" : cbbPrazo.SelectedValue);
                            cmd.Parameters.AddWithValue("@ind_contrato", Convert.ToInt16(chkContrato.Checked));
                            cmd.Parameters.AddWithValue("@ind_contrato_social", Convert.ToInt16(chkContratoSocial.Checked));
                            cmd.Parameters.AddWithValue("@ind_cnpj", Convert.ToInt16(chkCNPJ.Checked));
                            cmd.Parameters.AddWithValue("@ind_certidao_receita", Convert.ToInt16(chkCertidaoReceita.Checked));
                            cmd.Parameters.AddWithValue("@ind_certidao_fgts", Convert.ToInt16(chkCertidaoFTGS.Checked));
                            cmd.Parameters.AddWithValue("@ind_certidao_inss", Convert.ToInt16(chkCertidaoINSS.Checked));
                            cmd.Parameters.AddWithValue("@ind_titularidade_bancaria", Convert.ToInt16(chkTitularidadeBancaria.Checked));
                            cmd.Parameters.AddWithValue("@ind_politica_anticorrupcao", Convert.ToInt16(chkPoliticaAnticorrupcao.Checked));
                            cmd.Parameters.AddWithValue("@ind_outros_01", Convert.ToInt16(chkOutros01.Checked));
                            cmd.Parameters.AddWithValue("@outros_01", txtOutros01.Text);
                            cmd.Parameters.AddWithValue("@ind_outros_02", Convert.ToInt16(chkOutros02.Checked));
                            cmd.Parameters.AddWithValue("@outros_02", txtOutros02.Text);
                            cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("ID").Current.ToString());
                            cmd.ExecuteNonQuery();
                        }
                    }
                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De:{0} Para:{1}", ((DataRowView)this.bindingSource.Current).Row["Razao_Social"].ToString(), cbbFornecedor.Text));
                }
                else
                {

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Contratos_Fornecedores_Cadastrados_Financeiro " +
                                   "(numero_contrato,data,fk_fornecedor,data_aprovacao,data_vigencia_inicial " +
                                   ",data_vigencia_final,observacao,fk_usuario,responsavel_preenchimento,fk_usuario_solicitante " +
                                   ",fk_usuario_responsavel,fk_setor,utilizacao,uso,prazo_cancelamento " +
                                   ",ind_contrato,ind_contrato_social,ind_cnpj,ind_certidao_receita,ind_certidao_fgts,ind_certidao_inss " +
                                   ",ind_titularidade_bancaria,ind_politica_anticorrupcao,ind_outros_01,outros_01,ind_outros_02,outros_02) " +
                                   "VALUES " +
                                   "(@numero_contrato,@data,@fk_fornecedor,@data_aprovacao,@data_vigencia_inicial " +
                                   ",@data_vigencia_final,@observacao,@fk_usuario,@responsavel_preenchimento,@fk_usuario_solicitante " +
                                   ",@fk_usuario_responsavel,@fk_setor,@utilizacao,@uso,@prazo_cancelamento " +
                                   ",@ind_contrato,@ind_contrato_social,@ind_cnpj,@ind_certidao_receita,@ind_certidao_fgts,@ind_certidao_inss " +
                                   ",@ind_titularidade_bancaria,@ind_politica_anticorrupcao,@ind_outros_01,@outros_01,@ind_outros_02,@outros_02)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@numero_contrato", getNovoCodigo());
                        cmd.Parameters.AddWithValue("@data", DateTime.Now);
                        cmd.Parameters.AddWithValue("@fk_fornecedor", (cbbFornecedor.SelectedValue == null) ? "" : cbbFornecedor.SelectedValue);
                        cmd.Parameters.AddWithValue("@Data_Aprovacao", (txtDataAprovacao.Text == "  /  /") ? DBNull.Value : (object)txtDataAprovacao.Text);
                        cmd.Parameters.AddWithValue("@data_vigencia_inicial", (txtVigenciaInicial.Text == "  /  /") ? DBNull.Value : (object)txtVigenciaInicial.Text);
                        cmd.Parameters.AddWithValue("@data_vigencia_final", (txtVigenciaFinal.Text == "  /  /") ? DBNull.Value : (object)txtVigenciaFinal.Text);
                        cmd.Parameters.AddWithValue("@observacao", txtObservacao.Text);
                        cmd.Parameters.AddWithValue("@fk_usuario", FrmPrincipal.PK_UsuarioLogado);
                        cmd.Parameters.AddWithValue("@responsavel_preenchimento", txtRespPreenchimento.Text);
                        cmd.Parameters.AddWithValue("@fk_usuario_solicitante", (cbbSolicitante.SelectedValue == null) ? "" : cbbSolicitante.SelectedValue);
                        cmd.Parameters.AddWithValue("@fk_usuario_responsavel", (cbbResponsavel.SelectedValue == null) ? "" : cbbResponsavel.SelectedValue);
                        cmd.Parameters.AddWithValue("@fk_setor", (cbbSetor.SelectedValue == null) ? "" : cbbSetor.SelectedValue);
                        cmd.Parameters.AddWithValue("@utilizacao", txtUtilizacao.Text);
                        cmd.Parameters.AddWithValue("@uso", (cbbUso.SelectedValue == null) ? "" : cbbUso.SelectedValue);
                        cmd.Parameters.AddWithValue("@prazo_cancelamento", (cbbPrazo.SelectedValue == null) ? "" : cbbPrazo.SelectedValue);
                        cmd.Parameters.AddWithValue("@ind_contrato", Convert.ToInt16(chkContrato.Checked));
                        cmd.Parameters.AddWithValue("@ind_contrato_social", Convert.ToInt16(chkContratoSocial.Checked));
                        cmd.Parameters.AddWithValue("@ind_cnpj", Convert.ToInt16(chkCNPJ.Checked));
                        cmd.Parameters.AddWithValue("@ind_certidao_receita", Convert.ToInt16(chkCertidaoReceita.Checked));
                        cmd.Parameters.AddWithValue("@ind_certidao_fgts", Convert.ToInt16(chkCertidaoFTGS.Checked));
                        cmd.Parameters.AddWithValue("@ind_certidao_inss", Convert.ToInt16(chkCertidaoINSS.Checked));
                        cmd.Parameters.AddWithValue("@ind_titularidade_bancaria", Convert.ToInt16(chkTitularidadeBancaria.Checked));
                        cmd.Parameters.AddWithValue("@ind_politica_anticorrupcao", Convert.ToInt16(chkPoliticaAnticorrupcao.Checked));
                        cmd.Parameters.AddWithValue("@ind_outros_01", Convert.ToInt16(chkOutros01.Checked));
                        cmd.Parameters.AddWithValue("@outros_01", txtOutros01.Text);
                        cmd.Parameters.AddWithValue("@ind_outros_02", Convert.ToInt16(chkOutros02.Checked));
                        cmd.Parameters.AddWithValue("@outros_02", txtOutros02.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Descricao:{0}", cbbFornecedor.Text));
                }
                bindingSource.DataSource = getContratoFornecedores();
                dataGridView.DataSource = bindingSource;
                bindingNavigator.BindingSource = bindingSource;
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

        private void chkOutros01_CheckedChanged(object sender, EventArgs e)
        {
            if (chkOutros01.Checked)
            {
                txtOutros01.Enabled = true;
            }
            else
            {
                txtOutros01.Enabled = false;
            }
        }

        private void chkOutros02_CheckedChanged(object sender, EventArgs e)
        {
            if (chkOutros02.Checked)
            {
                txtOutros02.Enabled = true;
            }
            else
            {
                txtOutros02.Enabled = false;
            }
        }

        private void txtPesquisar_TextChanged(object sender, EventArgs e)
        {
            if (cbbPesquisar.SelectedValue == "1")
            {
                string processo;

                processo = txtPesquisar.Text.Replace("/", "").Trim();

                bindingSource.Filter = "numero_contrato LIKE '" + processo + "%'";
            }
            else
            {
                bindingSource.Filter = "Razao_Social LIKE '" + txtPesquisar.Text + "%'";
            }
        }


        private DataTable getFornecedorEmpresa(string id)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            var query = "SELECT id,fk_fornecedor,Razao_Social,Telefone,Contato FROM dbo.Fornecedores_Empresa where fk_fornecedor = @fk_fornecedor ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@fk_fornecedor", id);
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
                string query = "Select f.id as id_fornecedor, cast(f.id as varchar(5)) as cod_fornecedor,  f.Fantasia, f.Razao_Social, f.Endereco, f.Complemento, f.Bairro, f.CEP, f.CNPJ_CPF_COMPLETO as CNPJ, f.Cidade, f.Estado, f.Contato, f.Telefone, f.Email, " +
                          " f.Ind_Qualidade, f.Ind_EmpresaResponsabilidade, f.Ind_Garantia, cast(f.Dias_Garantia as varchar(8)) as Dias_Garantia , " +
                          " cf.responsavel_preenchimento, " +
                          " u1.Nome_Completo as UsuarioSoliciante, u2.Nome_Completo as UsuarioResponsavel, s.descricao as Setor, cf.utilizacao, cf.uso, " + // cf.atende_requisito, " +
                          " cf.numero_contrato, cf.data_vigencia_inicial, cf.data_vigencia_final, cf.prazo_cancelamento, cf.observacao, cf.ind_contrato, cf.ind_contrato_social, cf.ind_cnpj, cf.ind_certidao_receita, cf.ind_certidao_fgts, ind_certidao_inss, cf.ind_titularidade_bancaria, cf.ind_politica_anticorrupcao, cf.ind_outros_01, cf.outros_01, cf.ind_outros_02, cf.outros_02 " +
                          " from Contratos_Fornecedores_Cadastrados_Financeiro cf " +
                          " left join Fornecedores f on f.id = cf.fk_fornecedor " +
                          " left join Usuarios u1 on u1.PK_USUARIO = cf.fk_usuario_solicitante " +
                          " left join Usuarios u2 on u2.PK_USUARIO = cf.fk_usuario_responsavel " +
                          " left join Setores s on s.codigo = cf.fk_setor " +
                          " where cf.id = @id";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    //     cmd.Parameters.AddWithValue("@codigo", txtCodigo.Text);
                    cmd.Parameters.AddWithValue("@id", Id);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                try
                                {
                                    ReportViewer RV = new ReportViewer();
                                    RV.ProcessingMode = ProcessingMode.Local;
                                    RV.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Financeiro.rptContratosFornecedores.rdlc";

                                    ReportDataSource rps = new ReportDataSource("DataSet1", getFornecedorEmpresa(reader[0].ToString()));
                                    RV.LocalReport.DataSources.Clear();
                                    RV.LocalReport.DataSources.Add(rps);


                                    IList<ReportParameter> parametros = new List<ReportParameter>();

                                    parametros.Add(new ReportParameter("ID", reader[1].ToString()));
                                    parametros.Add(new ReportParameter("Fantasia", reader[2].ToString()));
                                    parametros.Add(new ReportParameter("RazaoSocial", reader[3].ToString()));
                                    parametros.Add(new ReportParameter("Endereco", reader[4].ToString()));
                                    parametros.Add(new ReportParameter("Complemento", reader[5].ToString()));
                                    parametros.Add(new ReportParameter("Bairro", reader[6].ToString()));
                                    parametros.Add(new ReportParameter("CEP", reader[7].ToString()));
                                    parametros.Add(new ReportParameter("CNPJ", reader[8].ToString()));
                                    parametros.Add(new ReportParameter("Cidade", reader[9].ToString()));
                                    parametros.Add(new ReportParameter("Estado", reader[10].ToString()));
                                    parametros.Add(new ReportParameter("Contato", reader[11].ToString()));
                                    parametros.Add(new ReportParameter("Telefone", reader[12].ToString()));
                                    parametros.Add(new ReportParameter("Email", reader[13].ToString()));


                                    if (Convert.ToBoolean(reader[14].ToString()) == true)
                                    {
                                        parametros.Add(new ReportParameter("IndQualidade", "SIM"));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("IndQualidade", "NÃO"));
                                    }

                                    if (Convert.ToBoolean(reader[15].ToString()) == true)
                                    {
                                        parametros.Add(new ReportParameter("IndEmpresaResponsabilidade", "SIM"));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("IndEmpresaResponsabilidade", "NÃO"));
                                    }

                                    if (Convert.ToBoolean(reader[16].ToString()) == true)
                                    {
                                        parametros.Add(new ReportParameter("IndGarantia", "SIM"));
                                        parametros.Add(new ReportParameter("DiasGarantia", reader[17].ToString()));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("IndGarantia", "NÃO"));
                                        parametros.Add(new ReportParameter("DiasGarantia", ""));
                                    }


                                    parametros.Add(new ReportParameter("ResponsavelPreenchimento", reader[18].ToString()));
                                    parametros.Add(new ReportParameter("Solicitante", reader[19].ToString()));
                                    parametros.Add(new ReportParameter("Setor", reader[21].ToString()));
                                    parametros.Add(new ReportParameter("Responsavel", reader[20].ToString()));
                                    parametros.Add(new ReportParameter("Utilizacao", reader[22].ToString()));
                                    parametros.Add(new ReportParameter("Uso", reader[23].ToString()));
                                    parametros.Add(new ReportParameter("NumeroContrato", reader[24].ToString()));
                                    parametros.Add(new ReportParameter("DataVigInicial", string.IsNullOrEmpty(reader[25].ToString()) ? null : reader[25].ToString()));
                                    parametros.Add(new ReportParameter("DataVigFinal", string.IsNullOrEmpty(reader[26].ToString()) ? null : reader[26].ToString()));
                                    parametros.Add(new ReportParameter("PrazoCancelamento", reader[27].ToString()));
                                    parametros.Add(new ReportParameter("Observacao", reader[28].ToString()));


                                    if (Convert.ToBoolean(reader[29].ToString()) == true)
                                    {
                                        parametros.Add(new ReportParameter("IndContrato", "[ X ]"));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("IndContrato", "[   ]"));
                                    }

                                    if (Convert.ToBoolean(reader[30].ToString()) == true)
                                    {
                                        parametros.Add(new ReportParameter("IndContratoSocial", "[ X ]"));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("IndContratoSocial", "[   ]"));
                                    }

                                    if (Convert.ToBoolean(reader[31].ToString()) == true)
                                    {
                                        parametros.Add(new ReportParameter("IndCNPJ", "[ X ]"));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("IndCNPJ", "[   ]"));
                                    }

                                    if (Convert.ToBoolean(reader[32].ToString()) == true)
                                    {
                                        parametros.Add(new ReportParameter("IndCertidaoReceita", "[ X ]"));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("IndCertidaoReceita", "[   ]"));
                                    }

                                    if (Convert.ToBoolean(reader[33].ToString()) == true)
                                    {
                                        parametros.Add(new ReportParameter("IndCertidaoFGTS", "[ X ]"));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("IndCertidaoFGTS", "[   ]"));
                                    }

                                    if (Convert.ToBoolean(reader[34].ToString()) == true)
                                    {
                                        parametros.Add(new ReportParameter("IndCertidaoINSS", "[ X ]"));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("IndCertidaoINSS", "[   ]"));
                                    }

                                    if (Convert.ToBoolean(reader[35].ToString()) == true)
                                    {
                                        parametros.Add(new ReportParameter("IndTitularidadeBancaria", "[ X ]"));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("IndTitularidadeBancaria", "[   ]"));
                                    }

                                    if (Convert.ToBoolean(reader[36].ToString()) == true)
                                    {
                                        parametros.Add(new ReportParameter("IndPoliticaAntiCorrupcao", "[ X ]"));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("IndPoliticaAntiCorrupcao", "[   ]"));
                                    }

                                    if (Convert.ToBoolean(reader[37].ToString()) == true)
                                    {
                                        parametros.Add(new ReportParameter("IndOutros01", "[ X ]"));
                                        parametros.Add(new ReportParameter("Outros01", reader[38].ToString()));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("IndOutros01", "[   ]"));
                                        parametros.Add(new ReportParameter("Outros01", ""));
                                    }

                                    if (Convert.ToBoolean(reader[39].ToString()) == true)
                                    {
                                        parametros.Add(new ReportParameter("IndOutros02", "[ X ]"));
                                        parametros.Add(new ReportParameter("Outros02", reader[40].ToString()));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("IndOutros02", "[   ]"));
                                        parametros.Add(new ReportParameter("Outros02", ""));
                                    }
                                    //   parametros.Add(new ReportParameter("CodFatura", CodigoFatura(reader[1].ToString())));
                                    RV.LocalReport.SetParameters(parametros);

                                    Warning[] warnings;
                                    string[] streamids;
                                    string mimeType;
                                    string encoding;
                                    string extension;

                                    byte[] bytePDF = RV.LocalReport.Render("Pdf", null, out mimeType, out encoding, out extension, out streamids, out warnings);

                                    FileStream fileStreamPDF = null;
                                    string nomeArquivoPDF = Path.GetTempPath() + "Contrato_Fornecedor_" + reader[1].ToString() + ".pdf";

                                    fileStreamPDF = new FileStream(nomeArquivoPDF, FileMode.Create);
                                    fileStreamPDF.Write(bytePDF, 0, bytePDF.Length);
                                    fileStreamPDF.Close();

                                    Process.Start(nomeArquivoPDF);
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
            else
            {
                if (dataGridView.Columns[e.ColumnIndex].Name == "Upload")
                {
                    var form = new FrmContratoFornecedoresUpload();
                    form.ID = dataGridView.Rows[e.RowIndex].Cells["ID"].Value.ToString();
                    form.RazaoSocial = dataGridView.Rows[e.RowIndex].Cells["Razao_Social"].Value.ToString();
                    FrmPrincipal.ShowModalMdiChildren(form);
                }
            }
        }

        private void btnImportadoresHabilitados_Click(object sender, EventArgs e)
        {
            var frmContratoFornecedoresXImportadores = new FrmContratoFornecedoresXImportadores();
            frmContratoFornecedoresXImportadores.FK_Contrato = (int)((DataRowView)this.bindingSource.Current).Row["ID"];
            frmContratoFornecedoresXImportadores.Fornecedor = cbbFornecedor.Text;
            FrmPrincipal.ShowModalMdiChildren(frmContratoFornecedoresXImportadores);
        }
    }
}
