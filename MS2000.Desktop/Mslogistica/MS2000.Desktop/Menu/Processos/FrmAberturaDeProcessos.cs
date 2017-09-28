using MS2000.Desktop.Classes;
using System;
using System.ComponentModel;
using System.Windows.Forms;
using System.Linq;
using MS2000.Desktop.Componentes;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Text;

namespace MS2000.Desktop.Menu.Processos
{
    public partial class FrmAberturaDeProcessos : MS2000.Desktop.Componentes.MSForm01
    {
        private StatusCadastro statusCadastro;
        private const string _tipoProcessoAtoDeclaratorio = "AD";
        private const string _setorJuridico = "JUR";
        private Importador _importador;

        //Direitos de acesso
        bool _canAbreProcesso;
        bool _canAlteraProcesso;
        bool _canAlteraProcessoClienteInativo;
        bool _canAlteraProcessoFechado;
        bool _canAlteraTipoProcesso_TipoDeclaracao;


        // 11 - Importação - Aéreo
        // 12 - Importação - Marítimo
        // 19 - Importação - Fícta
        // 20 - Importação - Bem de Apoio
        // 21 - Exportação
        // 22 - Reexportação
        // 23 - Exportação Fícta
        // 24 - Exportação Temporária
        // 26 - Exportação de Óleo / Petróleo
        // 14 - Reimportação - Aéreo
        // 15 - Reimportação - Marítimo
        // 31 - Transferência de Titularidade - Bem Principal 
        // 32 - Transferência de Titularidade - Partes e Peças
        // 33 - Transferência de Regime - Partes e Peças
        // 5 -  Destruição
        // 6A - Transferência de Regime - Bem Principal
        // IB - Importação - Bem Principal
        // MR - Movimentação de Repetro
        // NC - Nacionalização
        // 28 - Baixa RMBR
        // 40 - Importação Fícta - DAC
        readonly string[] _arrayTipoProcessoParaItensFaturaObrigatorios = { "11", "12", "19", "20", "21", "22", "23", "24", "26", "28", "14", "15", "31", "32", "33", "5", "6A", "IB", "MR", "NC", "40" };

        // 6 - Transferência de Regime
        // 8 - Prorrogação de TR
        // 19 - Importação fícta
        // 22 - Reexportação        
        // NC - Nacionalização
        // BT - Baixa de TR
        // 6A - Transferência de Regime - Bem Principal
        // 31 - Transferência de Titularidade - Bem Principal 
        // 32 - Transferência de Titularidade - Partes e Peças
        // 5  - Destruição
        // 40 - Importação Fícta - DAC
        readonly string[] _arrayTipoProcessoParaVincular = { "5", "19", "22", "31", "32", "33", "34", "35", "6A", "NC", "BT", "40", "46" };
        // 05 - ADMISSAO TEMPORARIA
        // 12 - CONSUMO E ADMISSAO TEMPORARIA
        readonly string[] _arrayTipoDeclaracaoContratoLocalObrigatorio = { "05", "12" };

        public virtual void VerificaBotoes()
        {
            //int quantidadeProcesso = bindingSourceProcesso.Count;
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None) && (_canAbreProcesso);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None) && (txtData.MaskCompleted) && (_canAlteraProcesso);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            pnlLocalizarProcesso.Enabled = (statusCadastro == StatusCadastro.None);
            lbMessagens.Text = string.Empty;

            if (((Processo)bindingSourceProcesso.Current) != null && statusCadastro != StatusCadastro.Novo)
            {
                //Verificando se o cliente está inativo
                if (_importador.Ativo <= 0)
                {
                    btnEditar.Enabled = btnEditar.Enabled && _canAlteraProcessoClienteInativo;
                    lbMessagens.Text = "- Este cliente está inativo. Somente usuários com permissão podem realizar alterações!" + System.Environment.NewLine;
                }

                //Verificando se processo está fechado
                if (((Processo)bindingSourceProcesso.Current).Fechado >= 1)
                {
                    btnEditar.Enabled = btnEditar.Enabled && _canAlteraProcessoFechado;
                    lbMessagens.Text += "- Este processo está fechado. Somente usuários com permissão podem realizar alterações!" + System.Environment.NewLine;
                }
                //
                if (new Processo().ExisteTributacao(((Processo)bindingSourceProcesso.Current).Codigo))
                {
                    lbMessagens.Text += "- Este processo está tributado. Tipo do processo não pode ser alterado!" + System.Environment.NewLine;
                    lbMessagens.Text += "- Este processo está tributado. Tipo do Declaração não pode ser alterado!" + System.Environment.NewLine;
                    if (!_canAlteraTipoProcesso_TipoDeclaracao)
                    {
                        mcbbTiposDeProcesso.Enabled = false;
                        mcbbTipoDeDeclaracao.Enabled = false;
                    }
                    else
                    {
                        if (statusCadastro == StatusCadastro.Novo || statusCadastro == StatusCadastro.Editar)
                        {
                            mcbbTiposDeProcesso.Enabled = true;
                            mcbbTipoDeDeclaracao.Enabled = true;
                        }
                        else
                        {
                            mcbbTiposDeProcesso.Enabled = false;
                            mcbbTipoDeDeclaracao.Enabled = false;
                        }
                    }
                }
            }
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }
            VerificaBotoes();

            //if (statusCadastro != StatusCadastro.None)
            //{
            //CarregaComboboxSDinamico();
            //bindingSourceProcesso.ResetCurrentItem();
            //bindingSourceProcesso.ResetBindings(true);
            //}
        }

        public FrmAberturaDeProcessos()
        {
            InitializeComponent();
            _canAbreProcesso = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Processos - Abertura de Processos - Inclui",
                Chave_Busca = "btnNovoProcesso"
            });

            _canAlteraProcesso = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Processos - Abertura de Processos - Altera",
                Chave_Busca = "btnAlteraProcesso"
            });

            _canAlteraProcessoClienteInativo = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Processos - Abertura de Processos - Altera Processo Cliente Inativo",
                Chave_Busca = "btnAlteraProcessoClienteInativo"
            });

            _canAlteraProcessoFechado = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Processos - Abertura de Processos - Altera Processo Fechado",
                Chave_Busca = "btnAlteraProcessoFechado"
            });

            _canAlteraTipoProcesso_TipoDeclaracao = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Processos - Abertura de Processos - Altera Tipo de Processo/Tipo de Declaração",
                Chave_Busca = "btnAlteraTipoProcesso"
            });
        }

        private void FrmAberturaDeProcessos_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;
            bindingNavigator.AddNewItem = null;
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
            txtProcesso.TextChanged += new EventHandler(BuscarProcesso);

            txtCliente.TextChanged += new EventHandler(BuscarContratosPorImportador);
            mcbbTiposDeProcesso.SelectedIndexChanged += new EventHandler(BuscarContratosPorImportador);
            mcbbTiposDeProcesso.SelectionChangeCommitted += new EventHandler(VerificarTipoEVinculado);
            mcbbContratos.SelectedIndexChanged += new EventHandler(BuscarLocalDeInventario);
            //------------------------------------------------------------------------------
            CarregaComboboxSEstatico();

            this.ActiveControl = txtProcesso;
        }

        private void BuscarProcesso(object sender, EventArgs e)
        {
            bindingSourceProcesso.Clear();
            LimparCampos();
            if (txtProcesso.MaskCompleted)
            {
                var processo = (new Processo()).BuscarPorCodigo(txtProcesso.Text);
                if (processo != null)
                {
                    //EDUARDO SOUZA - 18/06/2014 - 
                    //var clientes = (new UsuariosClientes()).BuscarLista(FrmPrincipal.PK_UsuarioLogado);
                    //if (clientes.Exists(c => c.FK_Importador == processo.Importador) || _canAbreProcesso)
                    //{

                    var usuario = new Usuario(FrmPrincipal.PK_UsuarioLogado);
                    if (usuario.AcessaCliente(processo.Importador) || _canAbreProcesso)
                    {
                        getCliente(processo.Importador);
                        bindingSourceProcesso.DataSource = processo;
                        CarregaComboboxSDinamico();

                        mcbbTiposDeProcesso.SelectedValue = ((Processo)bindingSourceProcesso.Current).Tipo;
                        mcbbContratos.SelectedValue = ((Processo)bindingSourceProcesso.Current).Contrato;
                        mcbbLocal.SelectedValue = ((Processo)bindingSourceProcesso.Current).Local_Inventario;
                    }
                    else
                    {
                        MessageBox.Show(usuario.getMensagem(), "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                }
                else
                {
                    MessageBox.Show("Processo não encontrado!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                }
                VerificaBotoes();
            }
            pnlAvisos.Visible = !string.IsNullOrEmpty(lbMessagens.Text);
        }

        private void BuscarContratosPorImportador(object sender, EventArgs e)
        {
            mcbbContratos.DataSource = null;
            if (_importador == null)
                return;

            var tipoDeProcessoAtual = mcbbTiposDeProcesso.SelectedValue;

            if (tipoDeProcessoAtual is string)
            {
                if (tipoDeProcessoAtual != null)
                {
                    BindingList<ContratoDeAdmissaoTemporaria> contratoDeAdmissaoTemporaria = null;
                    if (statusCadastro == StatusCadastro.Novo)
                    {
                        contratoDeAdmissaoTemporaria = new BindingList<ContratoDeAdmissaoTemporaria>((new ContratoDeAdmissaoTemporaria())
                           .BuscarListaPorImportador(_importador.Codigo)
                           .Where(x => ((string)tipoDeProcessoAtual == _tipoProcessoAtoDeclaratorio ? x.Setor == _setorJuridico : x.Setor != _setorJuridico)
                           && x.Ativo == 1)
                              .Select(c => new ContratoDeAdmissaoTemporaria
                              {
                                  Contrato = c.Contrato,
                                  Descricao = c.Descricao,
                                  SemContrato = c.SemContrato
                              }).ToList());
                    }
                    else
                    {
                        contratoDeAdmissaoTemporaria = new BindingList<ContratoDeAdmissaoTemporaria>((new ContratoDeAdmissaoTemporaria())
                             .BuscarListaPorImportador(_importador.Codigo)
                             .Where(x => ((string)tipoDeProcessoAtual == _tipoProcessoAtoDeclaratorio ? x.Setor == _setorJuridico : x.Setor != _setorJuridico)
                             && (x.Ativo == 1 || x.Contrato == (((Processo)bindingSourceProcesso.Current).Contrato)))
                                .Select(c => new ContratoDeAdmissaoTemporaria
                                {
                                    Contrato = c.Contrato,
                                    Descricao = c.Descricao,
                                    SemContrato = c.SemContrato
                                }).ToList());
                    }

                    mcbbContratos.NumberColumnsDisplay = 2;
                    mcbbContratos.DataSource = contratoDeAdmissaoTemporaria;
                    mcbbContratos.DisplayMember = "Descricao";
                    mcbbContratos.ValueMember = "Contrato";
                    mcbbContratos.SelectedValue = -1;
                }
            }
        }

        private void BuscarLocalDeInventario(object sender, EventArgs e)
        {
            mcbbLocal.DataSource = null;
            if (_importador == null)
                return;
            if (((TiposDeProcesso)mcbbTiposDeProcesso.SelectedItem) == null)
                return;
            if (((ContratoDeAdmissaoTemporaria)mcbbContratos.SelectedItem) == null)
                return;

            BindingList<LocalDeInventario> locais = null;
            if (statusCadastro == StatusCadastro.Novo)
            {
                locais = new BindingList<LocalDeInventario>((new LocalDeInventario())
                    .BuscarListaPorImportadorEContrato(_importador.Codigo, ((ContratoDeAdmissaoTemporaria)mcbbContratos.SelectedItem).Contrato)
                    .Where(p => (((TiposDeProcesso)mcbbTiposDeProcesso.SelectedItem).Codigo == _tipoProcessoAtoDeclaratorio ? p.Setor == _setorJuridico : p.Setor != _setorJuridico) &&
                        p.Ativo == 1)
                     .Select(c => new LocalDeInventario
                     {
                         Local = c.Local,
                         Descricao = c.Descricao,
                         Contrato = c.Contrato,
                         Setor = c.Setor
                     }).ToList());
            }
            else
            {
                if (((Processo)bindingSourceProcesso.Current) == null)
                    return;
                locais = new BindingList<LocalDeInventario>((new LocalDeInventario())
                    .BuscarListaPorImportadorEContrato(_importador.Codigo, ((ContratoDeAdmissaoTemporaria)mcbbContratos.SelectedItem).Contrato)
                    .Where(p => (((TiposDeProcesso)mcbbTiposDeProcesso.SelectedItem).Codigo == _tipoProcessoAtoDeclaratorio ? p.Setor == _setorJuridico : p.Setor != _setorJuridico) &&
                        (p.Ativo == 1 || p.Local == (((Processo)bindingSourceProcesso.Current).Local_Inventario)))
                    .Select(c => new LocalDeInventario
                    {
                        Local = c.Local,
                        Descricao = c.Descricao,
                        Contrato = c.Contrato,
                        Setor = c.Setor
                    }).ToList());
            }
            mcbbLocal.NumberColumnsDisplay = 2;
            mcbbLocal.DataSource = locais;
            mcbbLocal.DisplayMember = "Descricao";
            mcbbLocal.ValueMember = "Local";
            mcbbLocal.SelectedValue = -1;
        }

        private void CarregaComboboxSDinamico()
        {
            //Tipos de processos  
            BindingList<TiposDeProcesso> _tiposDeProcessos = null;
            if (statusCadastro == StatusCadastro.Novo)
            {
                _tiposDeProcessos = new BindingList<TiposDeProcesso>((new TiposDeProcesso()).BuscarLista()
                    .Where(p => p.Ativo == 1)
                     .Select(c => new TiposDeProcesso
                     {
                         Codigo = c.Codigo,
                         Descricao = c.Descricao
                     }).ToList());
            }
            else
                if (statusCadastro == StatusCadastro.Editar)
                {
                    _tiposDeProcessos = new BindingList<TiposDeProcesso>((new TiposDeProcesso()).BuscarLista()
                        .Where(p => p.Ativo == 1 || p.Codigo == (((Processo)bindingSourceProcesso.Current).Tipo))
                        .Select(c => new TiposDeProcesso
                        {
                            Codigo = c.Codigo,
                            Descricao = c.Descricao
                        }).ToList());
                }
                else
                {
                    _tiposDeProcessos = new BindingList<TiposDeProcesso>((new TiposDeProcesso()).BuscarLista()
                     .Select(c => new TiposDeProcesso
                     {
                         Codigo = c.Codigo,
                         Descricao = c.Descricao
                     }).ToList());
                }

            mcbbTiposDeProcesso.NumberColumnsDisplay = 2;
            mcbbTiposDeProcesso.DataSource = null;
            mcbbTiposDeProcesso.DataSource = _tiposDeProcessos;
            mcbbTiposDeProcesso.DisplayMember = "Descricao";
            mcbbTiposDeProcesso.ValueMember = "Codigo";
        }

        private void CarregaComboboxSEstatico()
        {
            //Centro de Custos
            BindingList<CentroDeCusto> centroDeCustos = new BindingList<CentroDeCusto>((new CentroDeCusto()).BuscarLista());
            bindingSourceCentroCusto.DataSource = centroDeCustos;
            cbbCentroDeCusto.SelectedValue = 0;

            //Tipos de declaração
            BindingList<TipoDeDeclaracao> tipoDeDeclaracao = new BindingList<TipoDeDeclaracao>(
                (new TipoDeDeclaracao())
                .BuscarLista()
                   .Select(c => new TipoDeDeclaracao
                   {
                       Codigo = c.Codigo,
                       Descricao = c.Descricao
                   }).ToList());
            mcbbTipoDeDeclaracao.NumberColumnsDisplay = 2;
            mcbbTipoDeDeclaracao.DataSource = tipoDeDeclaracao;
            mcbbTipoDeDeclaracao.DisplayMember = "Descricao";
            mcbbTipoDeDeclaracao.ValueMember = "Codigo";
            mcbbTipoDeDeclaracao.SelectedValue = 0;

            //Processo Tipo Urgência
            BindingList<ProcessosTipoUrgencia> processosTipoUrgencia = new BindingList<ProcessosTipoUrgencia>(
                (new ProcessosTipoUrgencia())
                .BuscarLista()
                   .Select(c => new ProcessosTipoUrgencia
                   {
                       Sigla = c.Sigla,
                       Descricao = c.Descricao,
                       PK_Tipo_Urgencia = c.PK_Tipo_Urgencia
                   }).ToList());
            mcbbUrgencia.NumberColumnsDisplay = 3;
            mcbbUrgencia.DataSource = processosTipoUrgencia;
            mcbbUrgencia.DisplayMember = "Sigla";
            mcbbUrgencia.ValueMember = "PK_Tipo_Urgencia";
            mcbbUrgencia.SelectedValue = 0;
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSourceProcesso.CancelEdit();
            if (statusCadastro == StatusCadastro.Editar)
            {
                statusCadastro = StatusCadastro.None;
                BuscarProcesso(null, null);
            }
            if (statusCadastro == StatusCadastro.Novo)
            {
                statusCadastro = StatusCadastro.None;
                LimparCampos();
            }
            HabilitarDesabilitaControles(false);
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            txtProcesso.Clear();
            //bindingSourceProcesso.AddNew();           
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            LimparCampos();
            cbbCentroDeCusto.SelectedIndex = 2;
            txtData.Text = DateTime.Now.Date.ToString();
            CarregaComboboxSDinamico();
            mcbbTiposDeProcesso.SelectedValue = -1;
        }

        private void LimparCampos()
        {
            txtData.Clear();
            txtCNPJ.Clear();
            txtCliente.Clear();
            cbbCentroDeCusto.SelectedIndex = -1;
            mcbbTiposDeProcesso.SelectedIndex = -1;
            mcbbUrgencia.SelectedIndex = -1;
            txtProcessoVinculado.Clear();
            chkMaterialUsado.Checked = false;
            ckbDrawback.Checked = false;
            txtReferenciaCliente.Clear();
            mcbbTipoDeDeclaracao.SelectedIndex = -1;
            ckbPgProporcional.Checked = false;
            mcbbContratos.SelectedIndex = -1;
            mcbbLocal.SelectedIndex = -1;
            lbMessagens.Text = string.Empty;
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            BuscarProcesso(null, null);
            HabilitarDesabilitaControles(true);
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }


        private void VerificarTipoEVinculado(object sender, EventArgs e)
        {
            if (_arrayTipoProcessoParaVincular.Contains(mcbbTiposDeProcesso.SelectedValue))
            {
                const string message =
                    "Existe processo a vincular?";
                const string caption = "Atenção";
                var result = MessageBox.Show(message, caption,
                                             MessageBoxButtons.YesNo,
                                             MessageBoxIcon.Question);
                if (result == DialogResult.Yes)
                {
                    txtProcessoVinculado.Focus();
                }
                else
                {
                    mcbbUrgencia.Focus();
                }
            }
        }

        private Dictionary<string, string> getResponsaveis(string importador)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select UC.Usuario as 'Coordenador', US.Usuario as 'Supervisor' from Importadores_Parametros I " +
                            "inner join Usuarios UC on UC.PK_USUARIO = I.fk_coordenador " +
                            "inner join Usuarios US on US.PK_USUARIO = I.fk_supervisor " +
                            "where I.fk_importador =@importador ";

            Dictionary<string, string> retorno = new Dictionary<string, string>();

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@importador", importador);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    //int i = 1;
                    while (reader.Read())
                    {

                        for (int i = 0; i < reader.FieldCount; i++)
                        {
                            //columns.Add(dataReader.GetName(i));
                            retorno.Add(reader.GetName(i), reader[reader.GetName(i)].ToString());
                        }


                        //i++;
                    }
                }
            }
            return retorno;
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (cbbCentroDeCusto.SelectedValue == null)
            {
                MessageBox.Show("O centro de custo é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbCentroDeCusto.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtCliente.Text))
            {
                MessageBox.Show("O cliente é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCliente.Focus();
                return;
            }

            if (mcbbTiposDeProcesso.SelectedValue == null)
            {
                MessageBox.Show("O tipo de processo é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mcbbTiposDeProcesso.Focus();
                return;
            }

            //Transferências de Regime e Transferências de Titularidade
            if ((mcbbTiposDeProcesso.SelectedValue.ToString() == "31") || (mcbbTiposDeProcesso.SelectedValue.ToString() == "32") ||
                (mcbbTiposDeProcesso.SelectedValue.ToString() == "33") || (mcbbTiposDeProcesso.SelectedValue.ToString() == "6A"))
            {
                if (mcbbTipoDeDeclaracao.SelectedValue == null)
                {
                    MessageBox.Show("O tipo de declaração é obrigatório para esse tipo de processo!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    mcbbTipoDeDeclaracao.Focus();
                    return;
                }
            }

            if (_arrayTipoProcessoParaItensFaturaObrigatorios.Contains(mcbbTiposDeProcesso.SelectedValue))
            {
                if (string.IsNullOrEmpty(ntxtQtdItensFatura.Text))
                {
                    MessageBox.Show("A quantidade de itens da fatura é obrigatório para este tipo de processo!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    ntxtQtdItensFatura.Focus();
                    return;
                }
            }

            //Contrato/Local obrigatório
            if ((new TiposDeProcesso()).ContratoLocalObrigatorio(mcbbTiposDeProcesso.SelectedValue.ToString()))
            {
                if ((mcbbContratos.SelectedValue == null) || (mcbbLocal.SelectedValue == null))
                {
                    MessageBox.Show("O tipo de processo requer o contrato e o local de inventário!");
                    mcbbContratos.Focus();
                    return;
                }
            }

            //Contrato/Local obrigatório
            if (_arrayTipoDeclaracaoContratoLocalObrigatorio.Contains(mcbbTipoDeDeclaracao.SelectedValue))
            {
                //if ((new ContratoDeAdmissaoTemporaria()).SemVigencia(_importador.Codigo, mcbbContratos.SelectedValue.ToString()))
                if (((ContratoDeAdmissaoTemporaria)mcbbContratos.SelectedItem).SemContrato)
                {
                    MessageBox.Show("O tipo de declaração requer o contrato e o local de inventário!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    mcbbContratos.Focus();
                    return;
                }
            }

            //Processo de Reexportação / Reexportação de Embarcação / Destruição / Nacionalização / Transferência de Regime - Bem Principal / Transferência de Regime - Partes e Peças / Transferência de Titularidade - Bem Principal / Transferência de Titularidade - Partes e Peças
            if ((mcbbTiposDeProcesso.SelectedValue.ToString() == "22") || (mcbbTiposDeProcesso.SelectedValue.ToString() == "36") || (mcbbTiposDeProcesso.SelectedValue.ToString() == "5") || (mcbbTiposDeProcesso.SelectedValue.ToString() == "NC") || (mcbbTiposDeProcesso.SelectedValue.ToString() == "6A") || (mcbbTiposDeProcesso.SelectedValue.ToString() == "33") || (mcbbTiposDeProcesso.SelectedValue.ToString() == "31") || (mcbbTiposDeProcesso.SelectedValue.ToString() == "32")) 
            {
                if (!txtProcessoVinculado.MaskCompleted)
                {
                    MessageBox.Show("Processo vinculado é obrigatório para esse tipo de processo.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    txtProcessoVinculado.Focus();
                    return;
                }
            }

            try
            {
                var novoProcesso = new Processo
                {
                    Data = Convert.ToDateTime(DateTime.Now.ToString("dd/MM/yyyy")),
                    COD_SIT = "1",
                    Status = "0",
                    Centro_Custo = (string)cbbCentroDeCusto.SelectedValue,
                    Importador = _importador.Codigo,
                    Tipo = (string)mcbbTiposDeProcesso.SelectedValue,
                };

                novoProcesso.Codigo = txtProcesso.Text;
                novoProcesso.Urgente = (mcbbUrgencia.SelectedValue == null ? (int?)null : 1);
                novoProcesso.Qtd_Itens_Fatura = string.IsNullOrEmpty(ntxtQtdItensFatura.Text) ? (int?)null : Convert.ToInt32(ntxtQtdItensFatura.Text);
                novoProcesso.FK_Processos_Tipo_Urgencia = (int?)mcbbUrgencia.SelectedValue;
                novoProcesso.Material_Usado = Convert.ToInt16(chkMaterialUsado.Checked);
                novoProcesso.Codigo_Cliente = string.IsNullOrEmpty(txtReferenciaCliente.Text) ? (string)null : txtReferenciaCliente.Text;
                novoProcesso.Tipo_Declaracao = (string)mcbbTipoDeDeclaracao.SelectedValue;
                novoProcesso.Pag_proporcional = Convert.ToInt16(ckbPgProporcional.Checked);
                novoProcesso.Contrato = (mcbbContratos.SelectedValue == null ? (string)null : (string)mcbbContratos.SelectedValue);
                novoProcesso.Local_Inventario = (mcbbLocal.SelectedValue == null ? (string)null : (string)mcbbLocal.SelectedValue);
                novoProcesso.Numero_RTC = string.IsNullOrEmpty(txtRTC.Text) ? (string)null : txtRTC.Text;
                novoProcesso.TipoProjeto = (ckbProjeto.Checked) ? 1 : 0;
                novoProcesso.proc_vinc = txtProcessoVinculado.MaskCompleted ? txtProcessoVinculado.Text : (string)null;
                novoProcesso.vinc_processo = Convert.ToInt16(txtProcessoVinculado.MaskCompleted);
                novoProcesso.Drawback = Convert.ToInt16(ckbDrawback.Checked);
                novoProcesso.Responsavel_Empresa = FrmPrincipal.UsuarioLogado;

                Dictionary<string, string> responsaveis = new Dictionary<string, string>();
                responsaveis = getResponsaveis(_importador.Codigo);
                if (responsaveis.Count > 0)
                {
                    novoProcesso.Supervisor_Resp = responsaveis["Supervisor"];
                    novoProcesso.Coordenador_Resp = responsaveis["Coordenador"];
                }

                if (statusCadastro == StatusCadastro.Editar)
                {
                    //Processo de Reexportação / Destruição / Nacionalização / Transferência de Regime - Bem Principal / Transferência de Regime - Partes e Peças / Transferência de Titularidade - Bem Principal / Transferência de Titularidade - Partes e Peças
                    if ((mcbbTiposDeProcesso.SelectedValue.ToString() == "22") || (mcbbTiposDeProcesso.SelectedValue.ToString() == "5") || (mcbbTiposDeProcesso.SelectedValue.ToString() == "NC") || 
                        (mcbbTiposDeProcesso.SelectedValue.ToString() == "6A") || (mcbbTiposDeProcesso.SelectedValue.ToString() == "33") || (mcbbTiposDeProcesso.SelectedValue.ToString() == "31") || (mcbbTiposDeProcesso.SelectedValue.ToString() == "32"))
                        //(mcbbTiposDeProcesso.SelectedValue.ToString() == "20") || (mcbbTiposDeProcesso.SelectedValue.ToString() == "43") || (mcbbTiposDeProcesso.SelectedValue.ToString() == "IB"))
                        // Importação - Bem de Apoio / Importação - Bem Principal AJB / Importação - Bem Principal
                    {
                        VerificaTipoProcessoEEnviaEmail();
                    }

                    novoProcesso.Alterar(novoProcesso);
                    LogSistemas.AddLogSistema(novoProcesso.Codigo, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),
                        string.Format("Cliente:{0}-{1} Tipo:{2} Urgente:{3} Vinculado:{4} Mat.Usado:{5} CodCliente:{6} Declaracao:{7} Pgto:{8} Contrato:{9} Local:{10} Itens:{11} RTC:{12}",
                        _importador.Codigo,
                        txtCliente.Text,
                        mcbbTiposDeProcesso.Text,
                        mcbbUrgencia.Text,
                        txtProcessoVinculado.Text,
                        chkMaterialUsado.Checked.ToString(),
                        txtReferenciaCliente.Text,
                        mcbbTipoDeDeclaracao.Text,
                        ckbPgProporcional.Checked.ToString(),
                        mcbbContratos.Text,
                        mcbbLocal.Text,
                        ntxtQtdItensFatura.Text, txtRTC.Text));
                }
                else
                {
                    string NovoCodigo = novoProcesso.Incluir(novoProcesso);
                    //Desabilitando onchange txtProcesso
                    txtProcesso.TextChanged -= new EventHandler(BuscarProcesso);
                    txtProcesso.Text = NovoCodigo;
                    //Habilitando onchange txtProcesso
                    txtProcesso.TextChanged += new EventHandler(BuscarProcesso);
                    //Grava no controle de pastas
                    var controle = new ControleDePasta
                    {
                        FK_Processo = novoProcesso.ID,
                        Processo = NovoCodigo,
                        FK_Usuario = FrmPrincipal.PK_UsuarioLogado,
                        Usuario = FrmPrincipal.UsuarioLogado,
                        Aceite = 1,
                        Data = DateTime.Now
                    };
                    controle.Incluir(controle);

                    //Grava follow de abertura
                    var follow = new FollowUp
                    {
                        FK_Processo = novoProcesso.ID,
                        Processo = NovoCodigo,
                        CodigoEvento = "412",
                        CodigoObs = "0",
                        Data = Convert.ToDateTime(DateTime.Now.ToString("dd/MM/yyyy")),
                        Hora = DateTime.Now.ToString("HH:mm"),
                        FK_Usuario = FrmPrincipal.PK_UsuarioLogado,
                        Usuario = FrmPrincipal.UsuarioLogado,
                    };

                    if (follow.Incluir(follow))
                    {
                        LogSistemas.AddLogSistema(NovoCodigo, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt16(this.Tag), "Evento: 412 - Observação: 0");
                    }

                    //Processo de Reexportação / Destruição / Nacionalização / Transferência de Regime - Bem Principal / Transferência de Regime - Partes e Peças / Transferência de Titularidade - Bem Principal / Transferência de Titularidade - Partes e Peças
                    if ((mcbbTiposDeProcesso.SelectedValue.ToString() == "22") || (mcbbTiposDeProcesso.SelectedValue.ToString() == "5") || (mcbbTiposDeProcesso.SelectedValue.ToString() == "NC") || (mcbbTiposDeProcesso.SelectedValue.ToString() == "6A") || (mcbbTiposDeProcesso.SelectedValue.ToString() == "33") || (mcbbTiposDeProcesso.SelectedValue.ToString() == "31") || (mcbbTiposDeProcesso.SelectedValue.ToString() == "32"))
                    {
                        VerificaTipoProcessoEEnviaEmail();
                    }

                    LogSistemas.AddLogSistema(NovoCodigo, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag),
                     string.Format("Cliente:{0}-{1} Tipo:{2} Urgente:{3} Vinculado:{4} Mat.Usado:{5} CodCliente:{6} Declaracao:{7} Pgto:{8} Contrato:{9} Local:{10} Itens:{11} RTC:{12}",
                        _importador.Codigo,
                        txtCliente.Text,
                        mcbbTiposDeProcesso.Text,
                        mcbbUrgencia.Text,
                        txtProcessoVinculado.Text,
                        chkMaterialUsado.Checked.ToString(),
                        txtReferenciaCliente.Text,
                        mcbbTipoDeDeclaracao.Text,
                        ckbPgProporcional.Checked.ToString(),
                        mcbbContratos.Text,
                        mcbbLocal.Text,
                        ntxtQtdItensFatura.Text, txtRTC.Text));
                }

                if (statusCadastro == StatusCadastro.Editar)
                {
                    statusCadastro = StatusCadastro.None;
                    BuscarProcesso(null, null);
                    MessageBox.Show("Registro alterado com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    statusCadastro = StatusCadastro.None;
                    BuscarProcesso(null, null);
                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }

                HabilitarDesabilitaControles(false);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        void getCliente(string codigo_cliente)
        {
            _importador = (new Importador()).BuscarPorCodigo(codigo_cliente);
            txtCliente.Text = _importador.Razao_Social;
            txtCNPJ.Text = _importador.CNPJ_CPF_COMPLETO;
        }

        private void btnClientes_Click(object sender, EventArgs e)
        {
            using (FrmLocalizarClientes form = new FrmLocalizarClientes())
            {
                if (FrmPrincipal.ShowModalMdiChildren(form) == DialogResult.OK)
                {
                    getCliente(form.CodigoRetorno);
                }
            }
        }

        private void EnviaEmail(string caracter_identificador)
        {
            try
            {
                string corpoDoEmail = "";
                string assunto = "";
                string para = "";

                StringBuilder sb = new StringBuilder();

                if (caracter_identificador == "R")
                {
                    assunto = "AVISO DE ABERTURA DE PROCESSO - REEXPORTAÇÃO";

                    corpoDoEmail = "Processo <B>" + txtProcesso.Text + "</B> em fase de <B>REEXPORTAÇÃO</B>, referente ao processo anterior " + txtProcessoVinculado.Text + " (<B>" + Processo.DescricaoContratoLocal(txtProcessoVinculado.Text) + "</B>), favor consultar o Departamento de Exportação.";
                }

                if (caracter_identificador == "D")
                {
                    assunto = "AVISO DE ABERTURA DE PROCESSO - DESTRUIÇÃO";

                    corpoDoEmail = "Processo <B>" + txtProcesso.Text + "</B> em fase de <B>DESTRUIÇÃO</B>, referente ao processo anterior " + txtProcessoVinculado.Text + " (<B>" + Processo.DescricaoContratoLocal(txtProcessoVinculado.Text) + "</B>), favor consultar o responsável no Setor Operacional.";
                }

                if (caracter_identificador == "N")
                {
                    assunto = "AVISO DE ABERTURA DE PROCESSO - NACIONALIZAÇÃO";

                    corpoDoEmail = "Processo <B>" + txtProcesso.Text + "</B> em fase de <B>NACIONALIZAÇÃO</B>, referente ao processo anterior " + txtProcessoVinculado.Text + " (<B>" + Processo.DescricaoContratoLocal(txtProcessoVinculado.Text) + "</B>), favor consultar o responsável no Setor Operacional.";
                }

                if (caracter_identificador == "TRB")
                {
                    assunto = "AVISO DE ABERTURA DE PROCESSO - TRANSFERÊNCIA DE REGIME - BEM PRINCIPAL";

                    corpoDoEmail = "Processo <B>" + txtProcesso.Text + "</B> em fase de <B>TRANSFERÊNCIA DE REGIME - BEM PRINCIPAL</B>, referente ao processo anterior " + txtProcessoVinculado.Text + " (<B>" + Processo.DescricaoContratoLocal(txtProcessoVinculado.Text) + "</B>), favor consultar o responsável no Setor Operacional.";
                }

                if (caracter_identificador == "TRP")
                {
                    assunto = "AVISO DE ABERTURA DE PROCESSO - TRANSFERÊNCIA DE REGIME - PARTES E PEÇAS";

                    corpoDoEmail = "Processo <B>" + txtProcesso.Text + "</B> em fase de <B>TRANSFERÊNCIA DE REGIME - PARTES E PEÇAS</B>, referente ao processo anterior " + txtProcessoVinculado.Text + " (<B>" + Processo.DescricaoContratoLocal(txtProcessoVinculado.Text) + "</B>), favor consultar o responsável no Setor Operacional.";
                }

                if (caracter_identificador == "TTB")
                {
                    assunto = "AVISO DE ABERTURA DE PROCESSO - TRANSFERÊNCIA DE TITULARIDADE - BEM PRINCIPAL";

                    corpoDoEmail = "Processo <B>" + txtProcesso.Text + "</B> em fase de <B>TRANSFERÊNCIA DE TITULARIDADE - BEM PRINCIPAL</B>, referente ao processo anterior " + txtProcessoVinculado.Text + " (<B>" + Processo.DescricaoContratoLocal(txtProcessoVinculado.Text) + "</B>), favor consultar o responsável no Setor Operacional.";
                }

                if (caracter_identificador == "TTP")
                {
                    assunto = "AVISO DE ABERTURA DE PROCESSO - TRANSFERÊNCIA DE TITULARIDADE - PARTES E PEÇAS";

                    corpoDoEmail = "Processo <B>" + txtProcesso.Text + "</B> em fase de <B>TRANSFERÊNCIA DE TITULARIDADE - PARTES E PEÇAS</B>, referente ao processo anterior " + txtProcessoVinculado.Text + " (<B>" + Processo.DescricaoContratoLocal(txtProcessoVinculado.Text) + "</B>), favor consultar o responsável no Setor Operacional.";
                }

                //if (caracter_identificador == "IBA")
                //{
                //    assunto = "AVISO DE ABERTURA DE PROCESSO -  IMPORTAÇÃO - BEM DE APOIO";

                //    corpoDoEmail = "Processo <B>" + txtProcesso.Text + "</B> em fase de <B>IMPORTAÇÃO - BEM DE APOIO</B>, referente a <B>" + mcbbContratos.Text + "</B>.";
                //}

                //if (caracter_identificador == "IBPA")
                //{
                //    assunto = "AVISO DE ABERTURA DE PROCESSO - IMPORTAÇÃO - BEM PRINCIPAL AJB";

                //    corpoDoEmail = "Processo <B>" + txtProcesso.Text + "</B> em fase de <B>IMPORTAÇÃO - BEM PRINCIPAL AJB</B>, referente a <B>" + mcbbContratos.Text + "</B>.";
                //}

                //if (caracter_identificador == "IBP")
                //{
                //    assunto = "AVISO DE ABERTURA DE PROCESSO - IMPORTAÇÃO - BEM PRINCIPAL";

                //    corpoDoEmail = "Processo <B>" + txtProcesso.Text + "</B> em fase de <B>IMPORTAÇÃO - BEM PRINCIPAL</B>, referente a <B>" + mcbbContratos.Text + "</B>.";
                //}

                sb.Append("<BR> Prezado, <BR>");
                sb.Append("<BR>");
                sb.Append(corpoDoEmail);
                sb.Append("<BR><BR>");
                sb.Append("Este e-mail é automático e não necessita de resposta. <BR>");
                sb.Append("<BR><BR>");
                sb.Append("Atenciosamente,<BR><BR>");
                sb.Append("MS2000 - SISTEMA GERENCIAL ADUANEIRO<BR><BR>");

                EmailAuto.incluir("MS2000", assunto, assunto, "MS2000 <auditoria@logistic-ms.com.br>", "documental@mslogistica.com.br", "supervisores@mslogistica.com.br; coordenadores@mslogistica.com.br; odilma.queiroz@mslogistica.com.br", "", sb.ToString(), "", 1);                
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void VerificaTipoProcessoEEnviaEmail()
        {
            if (mcbbTiposDeProcesso.SelectedValue.ToString() == "22")
            {
                //Reexportação
                EnviaEmail("R");
            }

            if (mcbbTiposDeProcesso.SelectedValue.ToString() == "5")
            {
                //Destruição
                EnviaEmail("D");
            }

            if (mcbbTiposDeProcesso.SelectedValue.ToString() == "NC")
            {
                //Nacionalização
                EnviaEmail("N");
            }

            if (mcbbTiposDeProcesso.SelectedValue.ToString() == "6A")
            {
                //Transferência de Regime - Bem Principal
                EnviaEmail("TRB");
            }

            if (mcbbTiposDeProcesso.SelectedValue.ToString() == "33")
            {
                //Transferência de Regime - Partes e Peças
                EnviaEmail("TRP");
            }

            if (mcbbTiposDeProcesso.SelectedValue.ToString() == "31")
            {
                //Transferência de Titularidade - Bem Principal
                EnviaEmail("TTB");
            }

            if (mcbbTiposDeProcesso.SelectedValue.ToString() == "32")
            {
                //Transferência de Titularidade - Partes e Peças
                EnviaEmail("TTP");
            }

            //if (mcbbTiposDeProcesso.SelectedValue.ToString() == "20")
            //{
            //    //Importação - Bem de Apoio
            //    EnviaEmail("IBA");
            //}

            //if (mcbbTiposDeProcesso.SelectedValue.ToString() == "43")
            //{
            //    //Importação - Bem Principal AJB
            //    EnviaEmail("IBPA");
            //}

            //if (mcbbTiposDeProcesso.SelectedValue.ToString() == "IB")
            //{
            //    //Importação - Bem Principal
            //    EnviaEmail("IBP");
            //}            
        }
    }
}
