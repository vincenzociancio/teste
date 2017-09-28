using MS2000.Desktop.Classes;
using System;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Linq;

namespace MS2000.Desktop.Menu.Processos
{
    public partial class FrmATAERO : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        string codImportador;
        //string statusAtivo;
        string statusFechado;
        bool cadastraNovo;
        readonly string[] TipoAereo = {"11","14"};

        Importador importador = new Importador();
        Processo processo = new Processo();

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None) && (!cadastraNovo) && (statusFechado == "0" || FrmPrincipal.editaProcessoFechado);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None) && (cadastraNovo) && (statusFechado == "0" || FrmPrincipal.editaProcessoFechado);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None) && (statusFechado == "0" || FrmPrincipal.editaProcessoFechado);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }
            VerificaBotoes();
        }

        public FrmATAERO()
        {
            InitializeComponent();
        }

        private void FrmATAERO_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;
            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);
            this.ActiveControl = txtProcesso;
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (!txtProcesso.MaskCompleted)
            {
                MessageBox.Show("O Nº do processo é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtProcesso.Focus();
                return;
            }

            if (!rdbAliq3.Checked && !rdbAliq15.Checked && !rdbAliq13.Checked && !rdbAliq15percent.Checked && !rdbAliq16percent.Checked)
            {
                MessageBox.Show("A alíquota é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                gpbAliquota.Focus();
                return;
            }

            if (string.IsNullOrWhiteSpace(ntxtValor.Text))
            {
                MessageBox.Show("O valor é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                ntxtValor.Focus();
                return;
            }

            double Aliquota;
            double ATAereo;
            double BC;
            double ICMS = 0;
            double FECP = 0;
            int indexAliquota = 0;
            foreach (Control c in gpbAliquota.Controls)
            {
                if (c is RadioButton)
                {
                    RadioButton rbtn = (RadioButton)c;
                    if (rbtn.Checked)
                    {
                        switch ((int)rbtn.TabIndex)
                        {
                            case 0: // Cálculo 1.5 %
                                Aliquota = 1.5;
                                ATAereo = Convert.ToDouble(ntxtValor.Text);
                                BC = ATAereo / ((100 - Aliquota) / 100);
                                ICMS = BC * (Aliquota / 100);
                                indexAliquota = 0;
                                break;

                            case 1: // Cálculo 3 %
                                Aliquota = 3;
                                ATAereo = Convert.ToDouble(ntxtValor.Text);
                                BC = ATAereo / ((100 - Aliquota) / 100);
                                ICMS = BC * (Aliquota / 100);
                                indexAliquota = 1;
                                break;

                            case 2: 
                                Aliquota = 14;
                                ATAereo = Convert.ToDouble(ntxtValor.Text);
                                BC = ATAereo / ((100 - Aliquota) / 100);
                                ICMS = BC * (Aliquota / 100);
                                FECP = ICMS / 14;
                                indexAliquota = 2;
                                break;

                            case 3:
                                Aliquota = 16;
                                ATAereo = Convert.ToDouble(ntxtValor.Text);
                                BC = ATAereo / ((100 - Aliquota) / 100);
                                ICMS = BC * (Aliquota / 100);
                                FECP = ICMS / 16;
                                indexAliquota = 3;
                                break;

                            case 4:
                                Aliquota = 18;
                                ATAereo = Convert.ToDouble(ntxtValor.Text);
                                BC = ATAereo / ((100 - Aliquota) / 100);
                                ICMS = BC * (Aliquota / 100);
                                FECP = ICMS / 18;
                                indexAliquota = 4;
                                break;
                        }
                    }
                }
            }


            try
            {
                if (statusCadastro == StatusCadastro.Novo)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into Acresc_ATAereo (Processo, Valor, Aliq, Icms, Fecp)values(@Processo, @Valor, @Aliq, @Icms, @Fecp)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                        cmd.Parameters.AddWithValue("@Valor", Convert.ToDouble(ntxtValor.Text));
                        cmd.Parameters.AddWithValue("@Aliq", indexAliquota);
                        cmd.Parameters.AddWithValue("@Icms", ICMS);
                        cmd.Parameters.AddWithValue("@Fecp", FECP);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Valor:{0}", ntxtValor.Text));
                }

                txtProcesso_TextChanged(null, null);
                MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);

                statusCadastro = StatusCadastro.None;
                HabilitarDesabilitaControles(false);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        class DadosProcesso
        {
            public string Processo { get; set; }
            public string TipoProcesso { get; set; }
            public DateTime? DtDesembaraco { get; set; }
            public int Fechado { get; set; }
            public string CodigoImportador { get; set; }
            public string URF_Chegada { get; set; }
            public string URF_Despacho { get; set; }
        }


        private DadosProcesso getDadosProcesso(string processo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT p.Codigo, p.Tipo, p.DT_DESEMBARACO, p.Fechado, p.Importador, c.URF_chegada, c.URF_Despacho " +
                           "FROM Processos p " +
                           "INNER JOIN Conhecimento_Processo c ON p.Codigo = c.Processo " +
                           "WHERE p.Codigo = @Processo ";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Processo", processo);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DadosProcesso dados = null;
                    while (reader.Read())
                    {
                        dados = new DadosProcesso
                        {
                            CodigoImportador = reader["Importador"].ToString(),
                            DtDesembaraco = (reader["DT_DESEMBARACO"] == DBNull.Value ? (DateTime?)null : (DateTime?)reader["DT_DESEMBARACO"]),
                            Fechado = (int)reader["Fechado"],
                            Processo = reader["Codigo"].ToString(),
                            TipoProcesso = reader["Tipo"].ToString(),
                            URF_Chegada = reader["URF_chegada"].ToString(),
                            URF_Despacho = reader["URF_Despacho"].ToString()
                        };
                    }
                    return dados;
                }
            }
        }

        private void PopulaCampos()
        {
            var dados_ataero = (new ATAERO()).getATAERO(txtProcesso.Text);
            if (dados_ataero != null)
            {
                txtValorAcrescimo.Text = Convert.ToString(dados_ataero.Valor);
                txtValorICMS.Text = Convert.ToString(dados_ataero.Icms);
                txtValorFECP.Text = Convert.ToString(dados_ataero.Fecp);
                cadastraNovo = false;
            }
            else
            {
                cadastraNovo = true;
                lbMessagens.Text = "Processo não possui nenhum acréscimo.";
            }
        }

        private void PopulaVariaveisUsuario()
        {
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Importador", out codImportador);
        }

        private void LimpaCampos()
        {
            ntxtValor.Clear();
            txtValorAcrescimo.Clear();
            txtValorFECP.Clear();
            txtValorICMS.Clear();
            lbMessagens.Text = "";
            pnlAvisos.Visible = false;
        }

        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            LimpaCampos();
            if (txtProcesso.MaskCompleted)
            {
                PopulaVariaveisUsuario();
                if (VerificaProcesso())
                {
                    if ((new Usuario()).AcessaCliente(codImportador))
                    {
                        PopulaCampos();
                        if (Usuario.AcessaPasta(txtProcesso.Text, this))
                        {
                            pnlAvisos.Visible = true;
                        }
                    }
                    else
                    {
                        MessageBox.Show(@"Este Processo pertence a um Cliente que seu acesso não está permitido!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        txtProcesso.Clear();
                        return;
                    }
                }
            }
            VerificaBotoes();
        }

        private bool VerificaProcesso()
        {
            bool GoOn = true;

            DadosProcesso dadosProcesso = getDadosProcesso(txtProcesso.Text);
            if (dadosProcesso != null)
            {
                if (dadosProcesso.CodigoImportador != "30" && dadosProcesso.CodigoImportador != "358")
                {
                    if (dadosProcesso.DtDesembaraco == null)
                    {
                        MessageBox.Show(@"Esta operação é suportada somente para processos desembaraçados.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        GoOn = GoOn && false;
                    }
                }

                if (!TipoAereo.Contains(dadosProcesso.TipoProcesso))
                {
                    MessageBox.Show(@"Esta operação é suportada somente por processos do tipo Aéreo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    GoOn = false;
                }

                if ((!dadosProcesso.URF_Chegada.StartsWith("071")) && (!dadosProcesso.URF_Chegada.StartsWith("081")))
                {
                    MessageBox.Show(@"URF de Chegada não deve ser diferente de Rio de Janeiro. Operação cancelada.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    GoOn = GoOn && false;
                }
            }

            importador = importador.BuscarPorCodigo(codImportador);
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Fechado", out statusFechado);

            if (importador.Ativo == 0 && !FrmPrincipal.editaClienteInativo)
            {
                lbMessagens.Text = "Este cliente está inativo. Somente usuários habilitados para editar clientes inativos poderão alterar as informações do processo.";
                GoOn = GoOn && true;
            }
            if (importador.Ativo == 0 && FrmPrincipal.editaClienteInativo)
            {
                pnlAvisos.Visible = true;
                lbMessagens.Text = "Este cliente está inativo, porém você tem permissão para edita-lo." + Environment.NewLine;
                GoOn = GoOn && true;
            }
            if (statusFechado == "1" && !FrmPrincipal.editaProcessoFechado)
            {
                lbMessagens.Text = "Este processo está fechado. Somente usuários habilitados em editar processos fechados poderão alterar as informações do processo.";
                GoOn = GoOn && true;
            }
            if (statusFechado == "1" && FrmPrincipal.editaProcessoFechado)
            {
                pnlAvisos.Visible = true;
                lbMessagens.Text += "Este processo está fechado, porém você tem permissão para edita-lo." + Environment.NewLine;
                GoOn = GoOn && true;
            }
            if (processo.BuscarPorCodigoStatus(txtProcesso.Text).Count == 0)
            {
                MessageBox.Show("Processo não encontrado.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                GoOn = GoOn && false;
            }
            if (statusFechado == "0")
            {
                GoOn = GoOn && true;
            }
            return GoOn;
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "delete from Acresc_ATAereo where processo = @processo";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@processo", txtProcesso.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Valor: {0}", txtValorAcrescimo.Text));                    
                    statusCadastro = StatusCadastro.None;
                    txtProcesso_TextChanged(null, null);
                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

    }
}
