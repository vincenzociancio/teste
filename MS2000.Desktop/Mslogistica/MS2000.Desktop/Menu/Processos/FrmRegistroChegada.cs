using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Windows.Forms;
using MS2000.Desktop.Classes;
using System.Data.SqlClient;
using System.Linq;

namespace MS2000.Desktop.Menu.Processos
{
    public partial class FrmRegistroChegada : Componentes.MSForm01
    {
        private Processo processo = new Processo();
        private Usuario usuario = new Usuario();
        private Importador importador = new Importador();

        private string codImportador;
        private string codCodSit;
        private string statusAtivo;
        private string statusFechado;
        private string paisProcedencia;
        private string pesoLiquido;
        private string pesoBruto;
        private string tipo;
        private string via;
        private string embarcacao;
        private string dt_eta;
        private string transportador;
        private string modalidadedespacho;
        private bool verificaUsuarioEmail;
        private bool temConhecimento;
        //  private const string TIPO_MSREGIS = "MSREGIS";
        private string strPara = "";
        private string strComCopia = "";
        private bool _canAlteraProcesso = true;
        bool _canLiberaDataURF;
        bool _canLiberaURFDespacho;
        private StatusCadastro statusCadastro;

        string[] TIPOS_DE_PROCESSOS_LIBERADO = { "5", "19", "NC", "33", "IB", "6A"};

        public FrmRegistroChegada()
        {
            InitializeComponent();
            _canLiberaDataURF = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Processos - Registro de Chegada - Libera Data de Chegada URF ",
                Chave_Busca = "liberadatachegadaurf"
            });

            _canLiberaURFDespacho = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Processos - Registro de Chegada - Libera URF de Despacho ",
                Chave_Busca = "liberaurfdespacho"
            });
        }
        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None && txtProcesso.MaskCompleted);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar);
            pnlLocalizarProcesso.Enabled = (statusCadastro == StatusCadastro.None);
        }
        public void HabilitaBotoes(bool bValue)
        {
            foreach (Control controle in pnlGeral.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }
        private bool VerificaProcesso()
        {
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Fechado", out statusFechado);

            if (processo.BuscarPorCodigoStatus(txtProcesso.Text).Count == 0)
            {
                MessageBox.Show("Processo não encontrado.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            importador = importador.BuscarPorCodigo(codImportador);

            if (importador.Ativo == 0 && !FrmPrincipal.editaClienteInativo)
            {
                MessageBox.Show(
                    @"Este Cliente está Inativo. Somente usuários habilitados para editar clientes inativos poderão alterar as informações do processo.",
                    "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                _canAlteraProcesso = false;
                return false;
            }
            if (importador.Ativo == 0 && FrmPrincipal.editaClienteInativo)
            {
                PopulaVariaveisUsuario();
                return true;
            }
            if (statusFechado == "1" && !FrmPrincipal.editaProcessoFechado)
            {
                MessageBox.Show(
                    @"Este Processo está Fechado. Somente usuários habilitados em editar processos fechados poderão alterar as informações do processo.",
                    "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                _canAlteraProcesso = false;
                return false;
            }
            if (statusFechado == "1" && FrmPrincipal.editaProcessoFechado)
            {
                PopulaVariaveisUsuario();
                _canAlteraProcesso = true;
                return true;
            }

            if (statusFechado == "0")
            {
                PopulaVariaveisUsuario();
                return true;
            }

            return false;
        }
        private void PopulaVariaveisUsuario()
        {
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Importador", out codImportador);
        }

        //private void dadosDoArmazem()
        //{
        //    string contratanteCambial = "";
        //    string codigoImportador = "";

        //    VerificaTabelaConhecimento().TryGetValue("Contratante_OPCAMBIAL", out contratanteCambial);

        //    processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Importador", out codigoImportador);

        //    if (!contratanteCambial.Equals(""))
        //    {
        //        if (contratanteCambial.Equals(importador.BuscarPorCodigo(codigoImportador).Razao_Social))
        //        {
        //            rdbProprioImportador.Checked = true;
        //        }
        //        else
        //            rdbOutro.Checked = true;
        //    }

        //}
        private void GetDocumentos()
        {
            string query = "SELECT Codigo, Descricao FROM Tipo_Doc_Chegada ORDER BY Descricao";

            DataTable table;
            try
            {
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            table = new DataTable();
                            table.Load(reader);
                        }
                        mcbbDocumentoChegada.DataSource = null;
                        mcbbDocumentoChegada.DataSource = table;
                        mcbbDocumentoChegada.DisplayMember = "Descricao";
                        mcbbDocumentoChegada.ValueMember = "Codigo";
                        mcbbDocumentoChegada.SelectedIndex = -1;
                    }
                }
                //  txtDocumento.Text = mcbbDocumentoChegada.SelectedValue.ToString();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void GetURF()
        {
            string query = "SELECT CODIGO,DESCRICAO FROM TAB_URF ORDER BY DESCRICAO ";

            DataTable table = null;

            try
            {
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    //  cmd.Parameters.AddWithValue("@processo", txtProcesso.Text);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();

                        table.Load(reader);

                        if (table.Rows.Count > 0)
                        {
                            mcbbURFDespacho.DataSource = null;
                            mcbbURFDespacho.DataSource = table;
                            mcbbURFDespacho.DisplayMember = "DESCRICAO";
                            mcbbURFDespacho.ValueMember = "CODIGO";
                            mcbbURFDespacho.SelectedIndex = -1;
                            txtURF.Text = "";
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void GetRecinto()
        {
            string query = "SELECT CODIGO, DESCRICAO, COD_ORGAO_REC FROM TAB_REC_ALFANDEGADO WHERE COD_ORGAO_REC = @URF ORDER BY DESCRICAO ";

            if (mcbbURFDespacho.SelectedValue == null)
                mcbbRecintoAlfandegario.SelectedIndex = -1;
            else
            {
                try
                {
                    DataTable table;
                    using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@URF", mcbbURFDespacho.SelectedValue.ToString());
                            using (SqlDataReader reader = cmd.ExecuteReader())
                            {
                                table = new DataTable();
                                table.Load(reader);
                            }
                        }
                        mcbbRecintoAlfandegario.DataSource = null;
                        mcbbRecintoAlfandegario.DataSource = table;
                        mcbbRecintoAlfandegario.DisplayMember = "DESCRICAO";
                        mcbbRecintoAlfandegario.ValueMember = "CODIGO";
                        mcbbRecintoAlfandegario.SelectedIndex = -1;
                        txtRecinto.Text = "";
                    }

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitaBotoes(true);

            if (txtDataEntradaURF.MaskCompleted)
                if (_canLiberaDataURF)
                {
                    txtDataEntradaURF.Enabled = true;
                    verificaUsuarioEmail = false;
                }
                else
                {
                    txtDataEntradaURF.Enabled = false;
                    verificaUsuarioEmail = false;
                }
            else
            {
                txtDataEntradaURF.Enabled = true;
                verificaUsuarioEmail = true;
            }

            if (!_canLiberaURFDespacho)
            {
                processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("COD_SIT", out codCodSit);
                if (codCodSit == "2")
                {
                    mcbbURFDespacho.Enabled = false;
                    txtURF.Enabled = false;
                    mcbbRecintoAlfandegario.Focus();
                    MessageBox.Show(FrmPrincipal.UsuarioNomeCompleto + ", Atenção! Não é permitido alterar a URF de despacho quando houver DI desembaraçada", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
        }
        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }
        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitaBotoes(false);
        }
        private void LimpaCampos()
        {
            txtCodigoPresenca.DataBindings.Clear();
            txtURF.DataBindings.Clear();
            txtDataDespachoURF.DataBindings.Clear();
            txtDataEntradaURF.DataBindings.Clear();
            mcbbDocumentoChegada.DataBindings.Clear();
            mcbbRecintoAlfandegario.DataBindings.Clear();
            mcbbSetorArmazenamento.DataBindings.Clear();
            mcbbURFDespacho.DataBindings.Clear();
            txtRecinto.DataBindings.Clear();
            txtDocumento.DataBindings.Clear();
            txtHoraFollow.DataBindings.Clear();
            txtIdentificacao.DataBindings.Clear();
            txtOutro.DataBindings.Clear();
            txtSetor.DataBindings.Clear();
            chkFUNDAP.DataBindings.Clear();
        }
        private void GetSetor()
        {

            if (txtRecinto.Text == "2222222")
            {
                string query = "SELECT SETOR,NOME,ORGAO FROM TAB_RECINTO_SETORES_IMPORTACAO WHERE Orgao = @URF AND Recinto = @Recinto ORDER BY Setor,Nome";
                DataTable table;

                if (mcbbURFDespacho.SelectedValue == null || mcbbRecintoAlfandegario.SelectedValue == null)
                    mcbbSetorArmazenamento.SelectedIndex = -1;
                else
                {
                    try
                    {
                        using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Recinto", mcbbRecintoAlfandegario.SelectedValue.ToString());
                            cmd.Parameters.AddWithValue("@URF", mcbbURFDespacho.SelectedValue.ToString());
                            using (SqlDataReader reader = cmd.ExecuteReader())
                            {
                                table = new DataTable();
                                if (reader.HasRows)
                                {
                                    table.Load(reader);
                                    mcbbSetorArmazenamento.DataSource = null;
                                    mcbbSetorArmazenamento.DataSource = table;
                                    mcbbSetorArmazenamento.DisplayMember = "Nome";
                                    mcbbSetorArmazenamento.ValueMember = "SETOR";
                                    mcbbSetorArmazenamento.SelectedIndex = -1;
                                    txtSetor.Text = "";
                                }
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
            else
            {
                string query = "SELECT SETOR,NOME,ORGAO FROM TAB_RECINTO_SETORES_IMPORTACAO WHERE Orgao = @URF AND Recinto = @Recinto ORDER BY Nome";
                DataTable table;

                if (mcbbURFDespacho.SelectedValue == null || mcbbRecintoAlfandegario.SelectedValue == null)
                    mcbbSetorArmazenamento.SelectedIndex = -1;
                else
                {
                    try
                    {
                        using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@URF", mcbbURFDespacho.SelectedValue.ToString());
                            cmd.Parameters.AddWithValue("@Recinto", mcbbRecintoAlfandegario.SelectedValue.ToString());
                            using (SqlDataReader reader = cmd.ExecuteReader())
                            {
                                table = new DataTable();
                                if (reader.HasRows)
                                {
                                    table.Load(reader);
                                    mcbbSetorArmazenamento.DataSource = null;
                                    mcbbSetorArmazenamento.DataSource = table;
                                    mcbbSetorArmazenamento.DisplayMember = "Nome";
                                    mcbbSetorArmazenamento.ValueMember = "SETOR";
                                    mcbbSetorArmazenamento.SelectedIndex = -1;
                                    txtSetor.Text = "";
                                }
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
        }
        private DataTable GetArmazem()
        {
            string query = "SELECT A.Codigo, A.Descricao FROM Armazem AS A WHERE NOT EXISTS " +
                           "(SELECT * FROM Armazem_Processo AS AP WHERE AP.Processo = @Processo " +
                           "AND  A.Codigo = AP.CodArmazem)";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        DataTable table = new DataTable();
                        table.Load(reader);
                        return table;
                    }
                }
            }
        }
        private DataTable GetArmazemProcesso()
        {

            string query = "select CodArmazem, Nome_Armazem from Armazem_Processo where Processo = @Processo";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        DataTable table = new DataTable();
                        table.Load(reader);
                        return table;
                    }
                }
            }
        }
        private void btnInclui_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "INSERT INTO Armazem_Processo " +
                               "(Processo, CodArmazem , Nome_Armazem) " +
                               " VALUES " +
                               "(@Processo,@CodArmazem,@Nome_Armazem)";

                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                        cmd.Parameters.AddWithValue("@CodArmazem",
                            ((DataRowView)this.bsArmazem.Current).Row["Codigo"].ToString());
                        cmd.Parameters.AddWithValue("@Nome_Armazem",
                            ((DataRowView)this.bsArmazem.Current).Row["Descricao"].ToString());
                        cmd.ExecuteNonQuery();
                    }
                }

                bsArmazem.RemoveCurrent();
                bsArmazemPro.DataSource = GetArmazemProcesso();
                gvArmazemPro.DataSource = bsArmazemPro;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            if (gvArmazemPro.RowCount != 0)
                btnRemover.Enabled = true;

            if (gvArmazem.RowCount == 0)
                btnInclui.Enabled = false;
        }
        private void btnRemover_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "DELETE FROM Armazem_Processo where CodArmazem = @CodArmazem AND Nome_Armazem = @Nome_Armazem and Processo = @Processo";
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@CodArmazem",
                            ((DataRowView)this.bsArmazemPro.Current).Row["CodArmazem"].ToString());
                        cmd.Parameters.AddWithValue("@Nome_Armazem",
                            ((DataRowView)this.bsArmazemPro.Current).Row["Nome_Armazem"].ToString());
                        cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                        cmd.ExecuteNonQuery();
                    }
                }
                bsArmazemPro.RemoveCurrent();

                if (gvArmazem.RowCount != 0)
                    btnInclui.Enabled = true;

                if (gvArmazemPro.RowCount == 0)
                    btnRemover.Enabled = false;

                bsArmazem.DataSource = GetArmazem();
                gvArmazem.DataSource = bsArmazem;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private IDictionary<string, string> VerificaTabelaConhecimento()
        {
            var listaString = new Dictionary<string, string>();

            string query = "select Transportador, DT_ETA, Embarcacao, Pais_Procedencia, Peso_Liquido, Peso_Bruto, Via,Modalidade_despacho " +
                           " from Conhecimento_Processo where Processo = @Processo";
            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                using (SqlDataReader reader = cmd.ExecuteReader())
                    if (reader.HasRows)
                        while (reader.Read())
                            for (int i = 0; i < reader.VisibleFieldCount; i++)
                                listaString.Add(reader.GetName(i), reader[i].ToString());
            }

            return listaString;
        }
        private bool ValidaHora(string hora)
        {
            string[] horario = hora.Split(':');
            int hr = Convert.ToInt32(horario[0]);
            int min = Convert.ToInt32(horario[1]);

            if ((hr < 00 || hr > 23) && (min < 00 || min > 59))
                return false;

            return true;
        }
        private void AtualizarStatusProcesso()
        {
            StringBuilder sb = new StringBuilder();

            try
            {
                sb.Append("UPDATE processos                                ");
                sb.Append("SET    status = '01'                            ");
                sb.Append("FROM   processos P                              ");
                sb.Append("       INNER JOIN conhecimento_processo CP      ");
                sb.Append("               ON P.codigo = CP.processo        ");
                sb.Append("WHERE  P.codigo = @processo                     ");
                sb.Append("       AND status = '0'                         ");
                sb.Append("       AND CP.data_chegada_urf_cheg IS NOT NULL ");

                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                using (SqlCommand cmd = new SqlCommand(sb.ToString(), conn))
                {
                    cmd.Parameters.AddWithValue("@processo", txtProcesso.Text);
                    cmd.ExecuteNonQuery();
                }

                sb.Clear();

                sb.Append("UPDATE processos                                 ");
                sb.Append("SET    status = '0'                              ");
                sb.Append("FROM   processos  P                              ");
                sb.Append("       INNER JOIN conhecimento_processo CP       ");
                sb.Append("               ON P.codigo = CP.processo         ");
                sb.Append("WHERE  P.codigo = @processo                      ");
                sb.Append("       AND status = '01'                         ");
                sb.Append("       AND ( CP.data_chegada_urf_cheg IS NULL    ");
                sb.Append("              OR CP.data_chegada_urf_cheg = '' ) ");

                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                using (SqlCommand cmd = new SqlCommand(sb.ToString(), conn))
                {
                    cmd.Parameters.AddWithValue("@processo", txtProcesso.Text);
                    cmd.ExecuteNonQuery();
                }
            }
            catch (SqlException sqlex)
            {
                MessageBox.Show(sqlex.Message, "ERRO", MessageBoxButtons.OK);
            }
        }
        private bool isHoraOuDataValida(string hora)
        {
            try
            {
                Convert.ToDateTime(hora);
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        private void selecionaEmailAviso()
        {
            string SQL = "SELECT EMAIL,PARA,CC FROM EMAILS_AVISOS WHERE ATIVO = '1' AND TIPO = 'MSREGIS' ";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            using (SqlCommand cmd = new SqlCommand(SQL, conn))
            {
                //      cmd.Parameters.AddWithValue("@tipo", TIPO_MSREGIS);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            string para = reader["PARA"].ToString();

                            if (reader["PARA"].ToString().Equals("True"))
                            {
                                if (string.IsNullOrEmpty(strPara))
                                    strPara = reader["EMAIL"].ToString();
                                else
                                    strPara = strPara + ";" + reader["EMAIL"].ToString();
                            }

                            if (reader["CC"].ToString().Equals("True"))
                            {
                                if (string.IsNullOrEmpty(strComCopia))
                                    strComCopia = reader["EMAIL"].ToString();
                                else
                                    strComCopia = strComCopia + ";" + reader["EMAIL"].ToString();
                            }
                        }
                    }
                }
            }
        }
        private int SubtrairDatas(DateTime dataAtual, DateTime dataChegada)
        {
            return (dataAtual - dataChegada).Days;
        }
        private void EnviaEmail()
        {
            string corpoDoEmail = "Por meio deste informamos que o usuário " + FrmPrincipal.UsuarioNomeCompleto + ", no processo " + txtProcesso.Text + " registrou a data de chegada da carga (" + txtDataDespachoURF.Text + ") com atraso superior a 3 dias";

            EmailAuto email = new EmailAuto();

            email.Titulo = "MS2000 - Aviso de registro na data de chegada da carga com mais de 3 dias de atraso";
            email.Assunto = "Usuário registrou com atraso a data de chegada da carga";
            email.De = "MS2000 <auditoria@logistic-ms.com.br>";
            email.HTML = 1;
            email.Anexo = "";

            StringBuilder sb = new StringBuilder();

            sb.Append("<BR> Prezado, <BR>");
            sb.Append("<BR>");
            sb.Append(corpoDoEmail);
            sb.Append("<BR><BR>");
            sb.Append("Este e-mail é automático e não necessita de resposta. <BR>");
            sb.Append("<BR><BR>");
            sb.Append("Atenciosamente,<BR><BR>");
            sb.Append("MS2000 - SISTEMA GERENCIAL ADUANEIRO<BR><BR>");

            EmailAuto.incluir("MS2000", email.Assunto, email.Titulo, email.De, strPara, strComCopia, "", sb.ToString(), email.Anexo, email.HTML);
        }
        private void InserirOuExcluirProcessoNoFollow()
        {
            string evento = string.Empty;
            DataTable table = null;

            string SQLSELECT = "SELECT PROCESSO FROM FOLLOWUP WHERE PROCESSO = @processo AND CODEVENTO =@codevento";

            FollowUp followUp = null;

            if ((tipo == "11") || (tipo == "14"))
            {
                evento = "3";
            }

            if ((tipo == "12") || (tipo == "15"))
            {
                evento = "43";
            }

            if (!string.IsNullOrEmpty(evento))
            {
                if (txtDataEntradaURF.MaskCompleted)
                {
                    try
                    {
                        using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                        using (SqlCommand cmd = new SqlCommand(SQLSELECT, conn))
                        {
                            cmd.Parameters.AddWithValue("@processo", txtProcesso.Text);
                            cmd.Parameters.AddWithValue("@codevento", evento);

                            using (SqlDataReader reader = cmd.ExecuteReader())
                            {
                                table = new DataTable();
                                table.Load(reader);
                                if (table.Rows.Count == 0)
                                {
                                    followUp = new FollowUp();
                                    followUp.Processo = txtProcesso.Text;
                                    followUp.CodigoEvento = evento;
                                    followUp.CodigoObs = "";
                                    followUp.Data = Convert.ToDateTime(txtDataEntradaURF.Text);
                                    followUp.Hora = txtHoraFollow.Text;
                                    followUp.Usuario = FrmPrincipal.UsuarioLogado;

                                    followUp.Incluir(followUp);
                                    if (evento.Equals("3"))
                                    {
                                        LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar,
                                          Convert.ToInt32(this.Tag), string.Format("URF DESPACHO:{0},Recinto{1},Setor de Armazenamento{2}",
                                                                                    "Data de Chegada Na URF de Entrada{3}," +
                                                                                    "Documento de Chegada{4}," +
                                                                                    "Identificação{5}," +
                                                                                    "Código de Presença da Carga{6}," +
                                                                                    "Data de chegada URF Despacho{7}," +
                                                                                    "Hora da gravação do Follow{8}" +
                                                                                     mcbbURFDespacho.SelectedValue.ToString(),
                                                                                     mcbbRecintoAlfandegario.SelectedValue.ToString(),
                                                                                     mcbbSetorArmazenamento.SelectedValue.ToString(),
                                                                                     txtDataEntradaURF.Text, txtIdentificacao.Text,
                                                                                     txtCodigoPresenca.Text,
                                                                                     txtDataDespachoURF.Text,
                                                                                     txtHoraFollow.Text
                                                                                     ));

                                        MessageBox.Show("Atenção, foi incluído follow up de chegada da carga");
                                    }
                                    else
                                    {
                                        LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar,
                                          Convert.ToInt32(this.Tag), string.Format("URF DESPACHO:{0},Recinto{1},Setor de Armazenamento{2}",
                                                                                    "Data de Chegada Na URF de Entrada{3}," +
                                                                                    "Documento de Chegada{4}," +
                                                                                    "Identificação{5}," +
                                                                                    "Código de Presença da Carga{6}," +
                                                                                    "Data de chegada URF Despacho{7}," +
                                                                                    "Hora da gravação do Follow{8}" +
                                                                                     mcbbURFDespacho.SelectedValue.ToString(),
                                                                                     mcbbRecintoAlfandegario.SelectedValue.ToString(),
                                                                                     mcbbSetorArmazenamento.SelectedValue.ToString(),
                                                                                     txtDataEntradaURF.Text, txtIdentificacao.Text,
                                                                                     txtCodigoPresenca.Text,
                                                                                     txtDataDespachoURF.Text,
                                                                                     txtHoraFollow.Text
                                                                                     ));
                                        MessageBox.Show("Foi incluído o follow na chegada da carga");
                                    }
                                }
                            }
                        }
                    }
                    catch (SqlException sqlEx)
                    {
                        MessageBox.Show(sqlEx.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                else
                {
                    try
                    {
                        using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                        using (SqlCommand command = new SqlCommand(SQLSELECT, conn))
                        {
                            command.Parameters.AddWithValue("@processo", txtProcesso.Text);
                            command.Parameters.AddWithValue("@codevento", evento);

                            using (SqlDataReader reader = command.ExecuteReader())
                            {
                                table = new DataTable();
                                table.Load(reader);

                                if (table.Rows.Count > 0)
                                {
                                    followUp = new FollowUp();
                                    followUp.ExcluirPorProcessoEvento(txtProcesso.Text, evento);
                                    if (evento.Equals("3"))
                                    {
                                        LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar,
                                        Convert.ToInt32(this.Tag), string.Format("URF DESPACHO:{0},Recinto{1},Setor de Armazenamento{2}",
                                                                                  "Data de Chegada Na URF de Entrada{3}," +
                                                                                  "Documento de Chegada{4}," +
                                                                                  "Identificação{5}," +
                                                                                  "Código de Presença da Carga{6}," +
                                                                                  "Data de chegada URF Despacho{7}," +
                                                                                  "Hora da gravação do Follow{8}" +
                                                                                   mcbbURFDespacho.SelectedValue.ToString(),
                                                                                   mcbbRecintoAlfandegario.SelectedValue.ToString(),
                                                                                   mcbbSetorArmazenamento.SelectedValue.ToString(),
                                                                                   txtDataEntradaURF.Text, txtIdentificacao.Text,
                                                                                   txtCodigoPresenca.Text,
                                                                                   txtDataDespachoURF.Text,
                                                                                   txtHoraFollow.Text
                                                                                   ));
                                        MessageBox.Show("Foi excluído o follow up de chegada da carga", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                    }
                                    else
                                    {
                                        LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar,
                                      Convert.ToInt32(this.Tag), string.Format("URF DESPACHO:{0},Recinto{1},Setor de Armazenamento{2}",
                                                                                "Data de Chegada Na URF de Entrada{3}," +
                                                                                "Documento de Chegada{4}," +
                                                                                "Identificação{5}," +
                                                                                "Código de Presença da Carga{6}," +
                                                                                "Data de chegada URF Despacho{7}," +
                                                                                "Hora da gravação do Follow{8}" +
                                                                                 mcbbURFDespacho.SelectedValue.ToString(),
                                                                                 mcbbRecintoAlfandegario.SelectedValue.ToString(),
                                                                                 mcbbSetorArmazenamento.SelectedValue.ToString(),
                                                                                 txtDataEntradaURF.Text, txtIdentificacao.Text,
                                                                                 txtCodigoPresenca.Text,
                                                                                 txtDataDespachoURF.Text,
                                                                                 txtHoraFollow.Text
                                                                                 ));
                                        MessageBox.Show("Foi excluído follow up de chegada do navio", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                    }
                                }
                            }
                        }
                    }
                    catch (SqlException sqlEx)
                    {
                        MessageBox.Show(sqlEx.Message);
                    }
                }
            }

        }
        private void txtDocumento_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtDocumento.Text))
            {
                mcbbDocumentoChegada.SelectedValue = txtDocumento.Text;
            }
            else
            {
                mcbbDocumentoChegada.SelectedIndex = -1;
            }
        }
        private void txtURF_TextChanged(object sender, EventArgs e)
        {
            if (txtURF.Text.Length == 7)
            {
                mcbbURFDespacho.SelectedValue = txtURF.Text;
                GetRecinto();
                //mcbbURFDespacho.DataSource = null;
                //mcbbURFDespacho.DataSource = _urfdespacho.Where(c => c.Codigo.ToString().Contains(txtURF.Text)).ToList();
                //mcbbURFDespacho.DisplayMember = "Descricao";
                //mcbbURFDespacho.ValueMember = "Codigo";
            }
            else
            {
                mcbbURFDespacho.SelectedIndex = -1;
            }
        }
        private void txtRecinto_TextChanged(object sender, EventArgs e)
        {
            if (txtRecinto.Text.Length == 7)
            {
                mcbbRecintoAlfandegario.SelectedValue = txtRecinto.Text;
                GetSetor();
            }
            else
            {
                mcbbRecintoAlfandegario.SelectedIndex = -1;
            }
        }
        private void txtSetor_TextChanged(object sender, EventArgs e)
        {
            if (txtSetor.Text.Length == 3)
                mcbbSetorArmazenamento.SelectedValue = txtSetor.Text;
            else
                mcbbSetorArmazenamento.SelectedIndex = -1;
        }
        private void mcbbDocumentoChegada_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(mcbbDocumentoChegada.Text) && mcbbDocumentoChegada.SelectedIndex > 0)
            {
                txtDocumento.Text = mcbbDocumentoChegada.SelectedValue.ToString();
            }
        }
        private void FrmRegistroChegada_Load(object sender, EventArgs e)
        {
            GetDocumentos();
            GetURF();
            GetRecinto();
            GetSetor();
            HabilitaBotoes(false);

            this.ActiveControl = txtProcesso;
        }
        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            if (txtProcesso.MaskCompleted)
            {
                PopulaVariaveisUsuario();
                if (VerificaProcesso())
                {
                    if (usuario.AcessaCliente(codImportador))
                        if (Usuario.AcessaPasta(txtProcesso.Text, this))
                        {
                            HabilitaBotoes(false);
                            gvArmazem.DataSource = null;
                            bsArmazem.DataSource = GetArmazem();
                            gvArmazem.DataSource = bsArmazem;

                            gvArmazemPro.DataSource = null;
                            bsArmazemPro.DataSource = GetArmazemProcesso();
                            gvArmazemPro.DataSource = bsArmazemPro;

                            if (gvArmazem.RowCount == 0)
                                btnInclui.Enabled = false;

                            if (gvArmazemPro.RowCount == 0)
                                btnRemover.Enabled = false;

                            bindingSource.DataSource = getConhecimento();

                            if (bindingSource.Count > 0)
                            {
                                temConhecimento = true;
                                rdbProprioImportador.Checked = true;

                                LimpaCampos();
                                txtCNPJ.Text = importador.CNPJ_CPF_COMPLETO;
                                txtRazaoSocial.Text = importador.Razao_Social;

                                VerificaTabelaConhecimento().TryGetValue("Via", out via);
                                VerificaTabelaConhecimento().TryGetValue("Pais_Procedencia", out paisProcedencia);
                                VerificaTabelaConhecimento().TryGetValue("Peso_Liquido", out pesoLiquido);
                                VerificaTabelaConhecimento().TryGetValue("Peso_Bruto", out pesoBruto);
                                VerificaTabelaConhecimento().TryGetValue("Embarcacao", out embarcacao);
                                VerificaTabelaConhecimento().TryGetValue("DT_ETA", out dt_eta);
                                VerificaTabelaConhecimento().TryGetValue("Transportador", out transportador);
                                VerificaTabelaConhecimento().TryGetValue("Modalidade_despacho", out modalidadedespacho);

                                processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Tipo", out tipo);

                                txtURF.DataBindings.Add(new Binding("Text", bindingSource, "URF_Despacho", true));
                                mcbbURFDespacho.DataBindings.Add(new Binding("SelectedValue", bindingSource, "URF_Despacho"));
                                txtRecinto.DataBindings.Add(new Binding("Text", bindingSource, "Recinto_Alfandegario", true));
                                mcbbRecintoAlfandegario.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Recinto_Alfandegario"));
                                txtSetor.DataBindings.Add(new Binding("Text", bindingSource, "Setor_Alfandegario", true));
                                mcbbSetorArmazenamento.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Setor_Alfandegario"));
                                txtDataEntradaURF.DataBindings.Add(new Binding("Text", bindingSource, "Data_Chegada_URF_Cheg", true, DataSourceUpdateMode.OnValidation, "  /  /"));
                                txtDocumento.DataBindings.Add(new Binding("Text", bindingSource, "Tipomanifesto", true));
                                mcbbDocumentoChegada.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Tipomanifesto"));
                                txtIdentificacao.DataBindings.Add(new Binding("Text", bindingSource, "Numeromanifesto", true));
                                txtCodigoPresenca.DataBindings.Add(new Binding("Text", bindingSource, "Codigo_Presenca_Carga", true));
                                txtDataDespachoURF.DataBindings.Add(new Binding("Text", bindingSource, "Data_Chegada_URF_Desp", true, DataSourceUpdateMode.OnValidation, "  /  /"));
                                txtHoraFollow.DataBindings.Add(new Binding("Text", bindingSource, "Data_Follow", true));
                                chkFUNDAP.DataBindings.Add(new Binding("Checked", bindingSource, "Operacao_FUNDAP", true));

                                bindingNavigator.Enabled = Usuario.DINaoSolicitada(txtProcesso.Text, this);
                            }
                            else
                            {
                                // MessageBox.Show("Favor Cadastrar o Conhecimento!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                temConhecimento = false;
                                if (bindingSource.Current != null)
                                {
                                    bindingSource.RemoveCurrent();
                                }

                                txtCNPJ.Text = "";
                                txtRazaoSocial.Text = "";
                                gvArmazem.DataSource = null;
                                gvArmazemPro.DataSource = null;
                            }

                        }
                }
            }
            else
            {
                HabilitaBotoes(false);

                if (bindingSource.Current != null)
                {
                    bindingSource.RemoveCurrent();
                }

                txtCNPJ.Text = "";
                txtRazaoSocial.Text = "";
                gvArmazem.DataSource = null;
                gvArmazemPro.DataSource = null;
            }
        }
        private DataTable getConhecimento()
        {
            string query = "select C.URF_Despacho, C.Recinto_Alfandegario, C.Setor_Alfandegario, " +
                           "C.Tipomanifesto, C.Numeromanifesto, C.Codigo_Presenca_Carga, C.Data_Chegada_URF_Cheg, " +
                           "C.Data_Chegada_URF_Desp, C.Data_Follow, C.Operacao_FUNDAP  " +
                           "from Conhecimento_Processo C " +
                           "where C.Processo = @Processo";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        DataTable table = new DataTable();
                        table.Load(reader);
                        return table;
                    }
                }
            }
        }
        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(paisProcedencia))
            {
                if ((!txtDataEntradaURF.MaskCompleted) && (!TIPOS_DE_PROCESSOS_LIBERADO.Contains(tipo)) && (modalidadedespacho != "2"))
                {
                    string erro =
                        "Somente é permitido informar a data de chegada na URF de Entrada se informar o País de Procedência. " +
                        "Por favor, preencher as informações da carga.";

                    MessageBox.Show(erro, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtDataEntradaURF.Focus();
                    return;
                }
            }

            if (string.IsNullOrEmpty(pesoBruto) || string.IsNullOrEmpty(pesoLiquido))
            {
                if ((!txtDataEntradaURF.MaskCompleted) && (!TIPOS_DE_PROCESSOS_LIBERADO.Contains(tipo)) && (modalidadedespacho != "2"))
                {
                    string erro = "Somente é permitido informar a data de chegada na URF de Entrada se informar " +
                                  "o Peso bruto e o Peso Líquido na tela de informações da carga. " +
                                  "Por favor, preencher as informações da carga.";
                    MessageBox.Show(erro, "Erro",
                        MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }

            if (!isHoraOuDataValida(txtHoraFollow.Text))
            {
                MessageBox.Show("Informe uma hora válida para a gravação do follow automático", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtHoraFollow.Focus();
                return;
            }

            if (string.IsNullOrEmpty(mcbbURFDespacho.SelectedValue.ToString()))
            {
                MessageBox.Show(@"O Campo 'URF de Despacho' é obrigatório.", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                mcbbURFDespacho.Focus();
                return;
            }

            if ((txtDataEntradaURF.MaskCompleted) && (!TIPOS_DE_PROCESSOS_LIBERADO.Contains(tipo)) && (modalidadedespacho != "2"))
            {
                if ((tipo == "12") && (via != "A"))
                {
                    if (string.IsNullOrEmpty(embarcacao) && string.IsNullOrEmpty(dt_eta))
                    {
                        MessageBox.Show(@"Por favor, informe o nome da embarcação e a data do embarque.", "Erro",
                            MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }
                }
                else if (tipo.Equals("11"))
                {
                    if ((Convert.ToInt32(transportador) == 0 || string.IsNullOrEmpty(transportador)) ||
                         string.IsNullOrEmpty(dt_eta))
                    {
                        MessageBox.Show(
                            @"Por favor, verifique o nome da companhia de transporte e/ou a data ETA, são obrigatórias para este caso.",
                            "Erro",
                            MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }
                }
            }

            if (verificaUsuarioEmail)
            {
                if ((txtDataEntradaURF.MaskCompleted) && (!TIPOS_DE_PROCESSOS_LIBERADO.Contains(tipo)) && (modalidadedespacho != "2"))
                {
                    if (Convert.ToDateTime(txtDataEntradaURF.Text) < DateTime.Now)
                    {
                        int dias = 0;
                        DateTime startdate = Convert.ToDateTime(txtDataEntradaURF.Text);
                        DateTime enddate = DateTime.Now;

                        while (startdate <= enddate)
                        {
                            startdate = startdate.AddDays(1);
                            if ((Util.IsDiaUtil(startdate)) && (!Util.IsFeriado(startdate)))
                            {
                                dias += 1;
                            }
                        }
                        selecionaEmailAviso();
                        if (dias > 3)
                        {
                            EnviaEmail();
                        }
                    }
                }
            }

            if (string.IsNullOrEmpty(mcbbRecintoAlfandegario.Text))
            {
                MessageBox.Show("Recinto alfandegário inválido!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                mcbbRecintoAlfandegario.Focus();
                return;
            }

            if (string.IsNullOrEmpty(mcbbSetorArmazenamento.Text))
            {
                MessageBox.Show("Setor de Armazenamento inválido!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                mcbbSetorArmazenamento.Focus();
                return;
            }

            if ((string.IsNullOrEmpty(mcbbDocumentoChegada.Text)) && (!TIPOS_DE_PROCESSOS_LIBERADO.Contains(tipo)) && (via != "9") && (via != "10") && (modalidadedespacho != "2"))
            {
                MessageBox.Show("Documento de chegada inválido", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                mcbbDocumentoChegada.Focus();
                return;
            }

            if (txtDataDespachoURF.MaskCompleted)
            {
                if (!txtDataEntradaURF.MaskCompleted)
                {
                    MessageBox.Show("Data de chegada na URF de entrada inválida!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    txtDataEntradaURF.Focus();
                    return;
                }
                else
                {
                    if (Convert.ToDateTime(txtDataDespachoURF.Text) < Convert.ToDateTime(txtDataEntradaURF.Text))
                    {
                        MessageBox.Show("Data de chegada na URF de despacho inválida!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        txtDataDespachoURF.Focus();
                        return;
                    }
                }

                if (Convert.ToDateTime(txtDataEntradaURF.Text) > DateTime.Now)
                {
                    MessageBox.Show(@"Data de Chegada na URF de Entrada não pode ser maior que a data atual!", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtDataEntradaURF.Focus();
                }
            }
            try
            {
                if (temConhecimento)
                {
                    string query = "UPDATE conhecimento_processo  " +
                                   "SET    urf_despacho          = @URF_DESPACHO,      " +
                                   "       recinto_alfandegario  = @RECINTO,           " +
                                   "       setor_alfandegario    = @SETOR_ALFANDEGARIO," +
                                   "       data_chegada_urf_cheg = @DATACHEGADAURF,    " +
                                   "       tipomanifesto         = @TIPOMANIFESTO,     " +
                                   "       numeromanifesto       = @NUMEROMANIFESTO,   " +
                                   "       codigo_presenca_carga = @CODIGOPRESENCA,    " +
                                   "       data_chegada_urf_desp = @DATACHEGADA,       " +
                                   "       data_follow           = @DATAFOLLOW,        " +
                                   "       operacao_fundap       = @OPERACAOFUNDAO,    " +
                                   "       contratante_opcambial = @CONTRATANTE        " +
                                   "WHERE  processo              = @processo           ";


                    using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@URF_DESPACHO", mcbbURFDespacho.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@RECINTO", mcbbRecintoAlfandegario.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@SETOR_ALFANDEGARIO", mcbbSetorArmazenamento.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@DATACHEGADAURF", txtDataEntradaURF.MaskCompleted ? txtDataEntradaURF.Text : (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@TIPOMANIFESTO", string.IsNullOrEmpty(mcbbDocumentoChegada.Text) ? (object)DBNull.Value : mcbbDocumentoChegada.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@NUMEROMANIFESTO", txtIdentificacao.Text);
                        cmd.Parameters.AddWithValue("@CODIGOPRESENCA", txtCodigoPresenca.Text);
                        cmd.Parameters.AddWithValue("@DATACHEGADA", txtDataDespachoURF.MaskCompleted ? txtDataDespachoURF.Text : (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@DATAFOLLOW", txtHoraFollow.Text);
                        cmd.Parameters.AddWithValue("@OPERACAOFUNDAO", chkFUNDAP.Checked ? 1 : 0);
                        cmd.Parameters.AddWithValue("@CONTRATANTE", txtOutro.Text);
                        cmd.Parameters.AddWithValue("@processo", txtProcesso.Text);
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar,
                                                 Convert.ToInt32(this.Tag), string.Format("URF DESPACHO:{0},Recinto{1},Setor de Armazenamento{2}",
                                                                                           "Data de Chegada Na URF de Entrada{3}," +
                                                                                           "Documento de Chegada{4}," +
                                                                                           "Identificação{5}," +
                                                                                           "Código de Presença da Carga{6}," +
                                                                                           "Data de chegada URF Despacho{7}," +
                                                                                           "Hora da gravação do Follow{8}" +
                                                                                            mcbbURFDespacho.SelectedValue.ToString(),
                                                                                            mcbbRecintoAlfandegario.SelectedValue.ToString(),
                                                                                            mcbbSetorArmazenamento.SelectedValue.ToString(),
                                                                                            txtDataEntradaURF.Text, txtIdentificacao.Text,
                                                                                            txtCodigoPresenca.Text,
                                                                                            txtDataDespachoURF.Text,
                                                                                            txtHoraFollow.Text
                                                                                            ));

                    MessageBox.Show("Registro atualizado com sucesso", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    string query = "INSERT INTO conhecimento_processo  " +
                     "            (urf_despacho,         " +
                     "             recinto_alfandegario, " +
                     "             setor_alfandegario,   " +
                     "             data_chegada_urf_cheg," +
                     "             tipomanifesto,        " +
                     "             numeromanifesto,      " +
                     "             codigo_presenca_carga," +
                     "             data_chegada_urf_desp," +
                     "             data_follow,          " +
                     "             operacao_fundap,      " +
                     "             contratante_opcambial," +
                     "             processo)             " +
                     "VALUES     (@URF_DESPACHO,         " +
                     "            @RECINTO,              " +
                     "            @SETOR,                " +
                     "            @DATACHEGADAURF,       " +
                     "            @TIPOMANIFESTO,        " +
                     "            @NUMEROMANIFESTO,      " +
                     "            @CODIGO_PRESENCA,      " +
                     "            @DATACHEGADA,          " +
                     "            @DATAFOLLOW,           " +
                     "            @OPERACAOFUNDAP,       " +
                     "            @CONTRATANTE,          " +
                     "            @PROCESSO)             ";


                    using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@URF_DESPACHO", mcbbURFDespacho.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@RECINTO", mcbbRecintoAlfandegario.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@SETOR", mcbbSetorArmazenamento.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@DATACHEGADAURF", string.IsNullOrEmpty(txtDataEntradaURF.Text.Replace("/", "").Trim()) ? (object)DBNull.Value : txtDataEntradaURF.Text);
                        cmd.Parameters.AddWithValue("@TIPOMANIFESTO", string.IsNullOrEmpty(mcbbDocumentoChegada.Text) ? (object)DBNull.Value : mcbbDocumentoChegada.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@NUMEROMANIFESTO", txtIdentificacao.Text);
                        cmd.Parameters.AddWithValue("@CODIGO_PRESENCA", txtCodigoPresenca.Text);
                        cmd.Parameters.AddWithValue("@DATACHEGADA", string.IsNullOrEmpty(txtDataDespachoURF.Text.Replace("/", "").Trim()) ? (object)DBNull.Value : txtDataDespachoURF.Text);
                        cmd.Parameters.AddWithValue("@DATAFOLLOW", txtHoraFollow.Text);
                        cmd.Parameters.AddWithValue("@OPERACAOFUNDAP", chkFUNDAP.Checked ? 1 : 0);
                        cmd.Parameters.AddWithValue("@CONTRATANTE", txtOutro.Text);
                        cmd.Parameters.AddWithValue("@PROCESSO", txtProcesso.Text);
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar,
                                                 Convert.ToInt32(this.Tag), string.Format("URF DESPACHO:{0},Recinto{1},Setor de Armazenamento{2}",
                                                                                           "Data de Chegada Na URF de Entrada{3}," +
                                                                                           "Documento de Chegada{4}," +
                                                                                           "Identificação{5}," +
                                                                                           "Código de Presença da Carga{6}," +
                                                                                           "Data de chegada URF Despacho{7}," +
                                                                                           "Hora da gravação do Follow{8}" +
                                                                                            mcbbURFDespacho.SelectedValue.ToString(),
                                                                                            mcbbRecintoAlfandegario.SelectedValue.ToString(),
                                                                                            mcbbSetorArmazenamento.SelectedValue.ToString(),
                                                                                            txtDataEntradaURF.Text, txtIdentificacao.Text,
                                                                                            txtCodigoPresenca.Text,
                                                                                            txtDataDespachoURF.Text,
                                                                                            txtHoraFollow.Text
                                                                                            ));
                    MessageBox.Show("Registro incluído com sucesso", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (SqlException sqlEx)
            {
                MessageBox.Show(sqlEx.Message, "Informação");
            }
            AtualizarStatusProcesso();
            InserirOuExcluirProcessoNoFollow();
            statusCadastro = StatusCadastro.None;
            HabilitaBotoes(false);

        }
        private void mcbbURFDespacho_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(mcbbURFDespacho.Text))
            {
                GetRecinto();
                GetSetor();
                txtURF.Text = mcbbURFDespacho.SelectedValue.ToString();
            }
        }
        private void mcbbRecintoAlfandegario_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(mcbbRecintoAlfandegario.Text))
            {
                GetSetor();
                txtRecinto.Text = mcbbRecintoAlfandegario.SelectedValue.ToString();
            }
        }
        private void mcbbSetorArmazenamento_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(mcbbSetorArmazenamento.Text))
            {
                txtSetor.Text = mcbbSetorArmazenamento.SelectedValue.ToString();
            }
        }
        private void rdbOutro_Click(object sender, EventArgs e)
        {
            txtOutro.Text = importador.CNPJ_CPF_COMPLETO;
        }
        private void rdbProprioImportador_Click(object sender, EventArgs e)
        {
            txtOutro.Clear();
        }

        private void txtDataEntradaURF_Leave(object sender, EventArgs e)
        {
            //if (statusCadastro != StatusCadastro.None)
            //{
            //    var txtData = (MaskedTextBox)sender;
            //    if (txtData.MaskCompleted)
            //    {
            //        if (Convert.ToDateTime(txtData.Text).Year < DateTime.Now.Year)
            //        {
            //            MessageBox.Show("O ano da data de chegada não pode ser anterior ao ano corrente.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Error);
            //            txtData.Focus();
            //        }
            //    }
            //}
        }

    }
}
