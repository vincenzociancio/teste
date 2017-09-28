using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Processos
{
    public partial class FrmSolicitacaoDeNumerario : MS2000.Desktop.Componentes.MSForm01
    {
        string codImportador;
        string statusFechado;
        Importador importador = new Importador();
        Processo processo = new Processo();
        List<DadosDoAutorizadorESolicitante> _dados_autorizador;
        DadosDoAutorizadorESolicitante _dados_solicitante;

        enum Numerarios_Status
        {
            Solicitacao = 1,
            Cancelado = 2,
            Expirado = 3,
            Autorizado = 4,
            NaoAutorizado = 5,
            Enviado = 6,
            SolicitadoComplementar = 7
        }

        public FrmSolicitacaoDeNumerario()
        {
            InitializeComponent();
        }

        private Numerarios_Status _status_solicitacao { get; set; }
        private string NumeroProcesso { get; set; }

        private void FrmSolicitacaoDeNumerario_Load(object sender, EventArgs e)
        {
            dgvSolicitacao.AutoGenerateColumns = false;

            bindingSource.DataSource = getSolicitacao();
            dgvSolicitacao.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;
            bindingSource_PositionChanged(null, null);

            mkdData.DataBindings.Add(new Binding("Text", bindingSource, "Data_Solicitacao", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            mkdHora.DataBindings.Add(new Binding("Text", bindingSource, "Hora_Solicitacao", true, DataSourceUpdateMode.OnValidation, "  :"));
            txtSolicitante.DataBindings.Add(new Binding("Text", bindingSource, "Solicitante", true));
            txtStatus.DataBindings.Add(new Binding("Text", bindingSource, "Status_Atual", true));
            txtAutorizador.DataBindings.Add(new Binding("Text", bindingSource, "Autorizador", true));
            txtCanceladoPor.DataBindings.Add(new Binding("Text", bindingSource, "Cancelado_por", true));
            txtObsSolicitacao.DataBindings.Add(new Binding("Text", bindingSource, "OBS_Solicitacao", true));
            txtObsCancelamento.DataBindings.Add(new Binding("Text", bindingSource, "OBS_Cancelamento", true));
            txtObsNaoAutorizacao.DataBindings.Add(new Binding("Text", bindingSource, "OBS_NaoAutorizado", true));
        }

        private DataTable getSolicitacao()
        {
            //Eduardo - 14/12/2015 - Mudança
            /*
            string query = "SELECT PK_Solicitacao, FK_msNumero, Cast(Data_Solicitacao as DateTime) as 'Data_Solicitacao'," +
                        "convert(varchar(5), Hora_Solicitacao, 108) as 'Hora_Solicitacao',  u1.Nome_Completo as 'Solicitante', " +
                        "u2.Nome_Completo as 'Autorizador', autorizador_atual, u3.Nome_Completo as 'Cancelado_por' ,OBS_Cancelamento " +
                        ",OBS_NaoAutorizado ,OBS_Solicitacao ,st.Status as 'Status_Atual' " +
                        "FROM " +
                        "Controle_Numerarios_Solicitacao " +
                        "inner join usuarios u1 on u1.Usuario = Solicitante " +
                        "inner join usuarios u2 on u2.Usuario = autorizador_atual " +
                        "left join usuarios u3 on u3.Usuario =  Cancelado_por " +
                        "inner join Controle_Numerarios_Status st on st.PK_status = Status_Atual " +
                        "WHERE Solicitante=@Usuario " +
                        "ORDER BY Data_Solicitacao desc, Hora_Solicitacao desc";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Usuario", FrmPrincipal.UsuarioLogado);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        DataTable table = new DataTable();
                        table.Load(reader);
                        return table;
                    }
                }
            }*/

            string query = "SELECT PK_Solicitacao, FK_msNumero, Cast(Data_Solicitacao as DateTime) as 'Data_Solicitacao'," +
                        "convert(varchar(5), Hora_Solicitacao, 108) as 'Hora_Solicitacao',  u1.Nome_Completo as 'Solicitante', " +
                        "u2.Nome_Completo as 'Autorizador', autorizador_atual, u3.Nome_Completo as 'Cancelado_por' ,OBS_Cancelamento " +
                        ",OBS_NaoAutorizado ,OBS_Solicitacao ,st.Status as 'Status_Atual' " +
                        "FROM " +
                        "Controle_Numerarios_Solicitacao " +
                        "inner join usuarios u1 on u1.Usuario = Solicitante " +
                        "left join usuarios u2 on u2.Usuario = autorizador_atual " +
                        "left join usuarios u3 on u3.Usuario =  Cancelado_por " +
                        "inner join Controle_Numerarios_Status st on st.PK_status = Status_Atual " +
                        "WHERE Solicitante=@Usuario " +
                        "ORDER BY Data_Solicitacao desc, Hora_Solicitacao desc";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Usuario", FrmPrincipal.UsuarioLogado);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        DataTable table = new DataTable();
                        table.Load(reader);
                        return table;
                    }
                }
            }
        }

        private DataTable getMovimentacaoId(int pk_solicitacao)
        {
            string query = "SELECT Cast(M.Data_Movimento as DateTime) as 'Data_Solicitacao', " +
                            "convert(varchar(5), M.Hora_Movimento,108) as 'Hora_Solicitacao', " +
                            "u.Nome_Completo as 'Autorizador', " +
                            "st.Status, U2.Nome_Completo as 'Cancelado_Por', " +
                            "u3.Nome_Completo as 'Enviado_Por' " +
                            "FROM " +
                            "Controle_Numerarios_Movimentos M " +
                            "left join usuarios u on u.Usuario = autorizador " +
                            "left join usuarios u2 on u2.Usuario = M.Cancelado_Por " +
                            "left join usuarios u3 on u3.Usuario = M.Enviado_Por " +
                            "inner join Controle_Numerarios_Status st on st.PK_Status = M.Status " +
                            "WHERE M.FK_Solicitacao=@FK_Solicitacao ORDER BY M.PK_Movimento";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_Solicitacao", pk_solicitacao);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        DataTable table = new DataTable();
                        table.Load(reader);
                        return table;
                    }
                }
            }
        }

        class DadosDoAutorizadorESolicitante
        {
            public string NomeCompleto { get; set; }
            public string Usuario { get; set; }
            public string Tipo { get; set; }
            public string Email { get; set; }
        }

        private List<DadosDoAutorizadorESolicitante> getDadosDoAutorizadores()
        {
            //Eduardo - 14/12/2015 - Mudança, agora são todos os sup. e coord.
            /* string query = "WITH cte_Autorizador AS( " +
                   "SELECT Autorizador = " +
                   "CASE WHEN c.Tipo = 1 THEN c.FK_Colaborador_Independente " +
                   "WHEN (c.FK_Supervisor <> '') THEN c.FK_Supervisor " +
                   "WHEN c.FK_Coordenador <> '' THEN c.FK_Coordenador " +
                   "WHEN c.FK_Gerente <> '' THEN c.FK_Gerente " +
                   "END, Tipo = CASE " +
                   "WHEN c.Tipo = 1 THEN 'SUPERVISOR' " +
                   "WHEN ( c.FK_Supervisor <> '' ) THEN 'SUPERVISOR' " +
                   "WHEN c.FK_Coordenador <> '' THEN 'COORDENADOR' " +
                   "WHEN c.FK_Gerente <> '' THEN 'GERENTE' END " +
                   "FROM Controle_Hierarquico_Colaborador_Cel cc " +
                   "INNER JOIN Controle_Hierarquico_Celulas c on c.PK_Celula = cc.FK_Celula " +
                   "WHERE c.Excluido = 0 and cc.FK_Colaborador =@Usuario) " +
                   "SELECT Autorizador, Tipo, Email, Nome_Completo FROM cte_Autorizador " +
                   "INNER JOIN Usuarios U ON U.Usuario = Autorizador ";

             using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
             {
                 using (SqlCommand cmd = new SqlCommand(query, conn))
                 {
                     cmd.Parameters.AddWithValue("@Usuario", usuario);
                     using (SqlDataReader reader = cmd.ExecuteReader())
                     {
                         DadosDoAutorizadorESolicitante dados = null;
                         if (reader.HasRows)
                         {
                             dados = new DadosDoAutorizadorESolicitante();
                             while (reader.Read())
                             {
                                 dados.Tipo = reader["Tipo"].ToString();
                                 dados.Usuario = reader["Autorizador"].ToString();
                                 dados.Email = reader["Email"].ToString();
                                 dados.NomeCompleto = reader["Nome_Completo"].ToString();
                             }
                         }
                         return dados;
                     }
                 }
             }*/

            string query = "select Nome_Completo, Email from Usuarios " +
                "where Hierarquia in (2,3) and Ativo = 1 and Setor in('OPN','VIT')";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        List<DadosDoAutorizadorESolicitante> dados = new List<DadosDoAutorizadorESolicitante>();
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                dados.Add(new DadosDoAutorizadorESolicitante
                                {
                                    NomeCompleto = reader["Nome_Completo"].ToString(),
                                    Email = reader["Email"].ToString()
                                });
                            }
                        }
                        return dados;
                    }
                }
            }
        }

        private DadosDoAutorizadorESolicitante getDadosDoSolicitante(string usuario)
        {
            string query = "SELECT Email, Nome_Completo, Usuario FROM Usuarios " +
                  "WHERE Usuario =@Usuario ";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Usuario", usuario);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        DadosDoAutorizadorESolicitante dados = null;
                        if (reader.HasRows)
                        {
                            dados = new DadosDoAutorizadorESolicitante();
                            while (reader.Read())
                            {
                                dados.Usuario = reader["Usuario"].ToString();
                                dados.Email = reader["Email"].ToString();
                                dados.NomeCompleto = reader["Nome_Completo"].ToString();
                            }
                        }
                        return dados;
                    }
                }
            }
        }

        private void gravarSolicitacao(string processo, string solicitante, int status, string obs)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "insert into Controle_Numerarios_Solicitacao " +
            "(FK_MsNumero,Data_Solicitacao,Hora_Solicitacao,Solicitante,Status_Atual,OBS_Solicitacao)" +
            "values " +
            "(@FK_MsNumero,GETDATE(),Convert(Time, GETDATE()),@Solicitante,@Status_Atual,@OBSSolicitacao)";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@FK_MsNumero", processo);
                cmd.Parameters.AddWithValue("@Solicitante", solicitante);
                cmd.Parameters.AddWithValue("@Status_Atual", status);
                cmd.Parameters.AddWithValue("@OBSSolicitacao", obs);
                cmd.ExecuteNonQuery();
            }
        }

        private void gravarCancelamento(string cancelado_por, int status, string obs, int pk_Solicitacao)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "update Controle_Numerarios_Solicitacao set " +
                    "Cancelado_Por=@Cancelado_Por, Status_Atual=@Status, OBS_Cancelamento=@OBS_Cancelamento " +
                    "where PK_Solicitacao=@PK_Solicitacao";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Cancelado_Por", cancelado_por);
                cmd.Parameters.AddWithValue("@Status", status);
                cmd.Parameters.AddWithValue("@OBS_Cancelamento", obs);
                cmd.Parameters.AddWithValue("@PK_Solicitacao", pk_Solicitacao);
                cmd.ExecuteNonQuery();
            }
        }

        private void gravarEmail(string assunto, string titulo, string de, string para, string body)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "insert into Email_auto " +
                           "(Programa, Assunto,Titulo, De, Para, CC, CCO, Body, Anexo, HTML, Data,Hora) " +
                           "values('CONTSOLN', @Assunto ,@Titulo ,@De ,@Para ,'','',@Body ,'', 1, getdate(), getdate())";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Assunto", assunto.Substring(0, assunto.Length > 150 ? 150 : assunto.Length));
                cmd.Parameters.AddWithValue("@Titulo", titulo);
                cmd.Parameters.AddWithValue("@De", de);
                cmd.Parameters.AddWithValue("@Para", para);
                cmd.Parameters.AddWithValue("@Body", body);
                cmd.ExecuteNonQuery();
            }
        }

        private void gravarMovimento(string solicitante, DateTime datavalidade)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "insert into Controle_Numerarios_Movimentos (FK_Solicitacao,Data_Movimento,Hora_Movimento,Status,Validade) " +
                         "select top 1 PK_Solicitacao, Data_Solicitacao, Hora_Solicitacao, Status_Atual, " +
                         "CAST(CAST(@Validade AS DATE) AS DATETIME) + CAST(Hora_Solicitacao AS TIME) AS Validade " +
                         "from Controle_Numerarios_Solicitacao where solicitante =@solicitante order by PK_Solicitacao desc";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@solicitante", solicitante);
                cmd.Parameters.AddWithValue("@Validade", datavalidade);
                cmd.ExecuteNonQuery();
            }
        }

        private void gravarMovimentoCancelamento(string cancelado_por, int status, int pk_Solicitacao)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "insert into Controle_Numerarios_Movimentos " +
                    "(FK_Solicitacao,Data_Movimento,Hora_Movimento,Cancelado_Por,[Status])" +
                    "values(@FK_Solicitacao,GETDATE(),Convert(Time, GETDATE()),@Cancelado_Por,@Status)";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@FK_Solicitacao", pk_Solicitacao);
                cmd.Parameters.AddWithValue("@Cancelado_Por", cancelado_por);
                cmd.Parameters.AddWithValue("@Status", status);
                cmd.ExecuteNonQuery();
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void bindingSource_PositionChanged(object sender, EventArgs e)
        {
            dgvMovimentacao.AutoGenerateColumns = false;
            if (bindingSource.Current == null)
                return;

            if (dgvSolicitacao.RowCount > 0)
            {
                int id = (int)bindingSource.GetRelatedCurrencyManager("PK_Solicitacao").Current;
                dgvMovimentacao.DataSource = getMovimentacaoId(id);

                string status = ((DataRowView)bindingSource.Current).Row["Status_Atual"].ToString();
                btnCancelarSolicitacao.Enabled = !((status == "Cancelado") || (status == "Não Autorizado"));
            }
            else
            {
                dgvMovimentacao.DataSource = null;
            }
        }

        private void btnNovaSolicitacao_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            btnNovaSolicitacao.Enabled = false;
            btnCancelarSolicitacao.Enabled = false;
            btnSolicitacaoComplementar.Enabled = false;
            btnDesistirSolicitacao.Enabled = true;
            //btnSalvarSolicitacao.Enabled = true;

            txtStatus.Text = "Solicitado";
            pnlLocalizarProcesso.Enabled = true;
            txtProcesso.Clear();
            txtProcesso.Focus();
            _status_solicitacao = Numerarios_Status.Solicitacao;

            DesabilitarControles(false);
        }

        private void btnSolicitacaoComplementar_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            btnNovaSolicitacao.Enabled = false;
            btnCancelarSolicitacao.Enabled = false;
            btnSolicitacaoComplementar.Enabled = false;
            btnDesistirSolicitacao.Enabled = true;
            //btnSalvarSolicitacao.Enabled = true;

            txtStatus.Text = "Solicitado(Complementar)";
            pnlLocalizarProcesso.Enabled = true;
            txtProcesso.Clear();
            txtProcesso.Focus();
            _status_solicitacao = Numerarios_Status.SolicitadoComplementar;

            DesabilitarControles(false);
        }

        private void btnSalvarSolicitacao_Click(object sender, EventArgs e)
        {
            pnlObservacao.Show();
            DesabilitarControles(false);
        }

        private void btnDesistirSolicitacao_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            btnNovaSolicitacao.Enabled = true;
            btnCancelarSolicitacao.Enabled = true;
            btnSolicitacaoComplementar.Enabled = true;
            btnDesistirSolicitacao.Enabled = false;
            btnSalvarSolicitacao.Enabled = false;

            txtProcesso.Clear();
            pnlLocalizarProcesso.Enabled = false;

            DesabilitarControles(true);
            pnlObservacao.Hide();
            lblCliente.Text = string.Empty;
        }

        private void DesabilitarControles(bool param)
        {
            grbDadosSolicitacao.Enabled = param;
            dgvSolicitacao.Enabled = param;
            if (!param)
            {
                dgvMovimentacao.DataSource = null;
            }
        }

        private void btnDesistir_Click(object sender, EventArgs e)
        {
            btnDesistirSolicitacao_Click(null, null);
            pnlObservacao.Hide();
        }

        private void btnConfirmar_Click(object sender, EventArgs e)
        {
            if (_status_solicitacao == Numerarios_Status.Cancelado)
            {
                int pk_solicitacao = (int)bindingSource.GetRelatedCurrencyManager("PK_Solicitacao").Current;
                gravarCancelamento(FrmPrincipal.UsuarioLogado, (int)_status_solicitacao, txtObsGravacao.Text, pk_solicitacao);
            }
            else
            {
                gravarSolicitacao(NumeroProcesso,
                    FrmPrincipal.UsuarioLogado,
                    (int)_status_solicitacao, //1- Solicitado ou 7 - Solicitado(Complementar) 
                    txtObsGravacao.Text);
            }

            //gravando email
            string titulo = string.Empty;
            string assunto = string.Empty;

            if (_status_solicitacao == Numerarios_Status.Solicitacao)
            {
                titulo = "Solicitação de Autorização de Numerários";
                assunto = "MS2000PLUS - Solicitação de Autorização de Numerários - " + importador.Razao_Social + " CNPJ: " + importador.CNPJ_CPF_COMPLETO + " - MS:" + NumeroProcesso;
            }
            else
                if (_status_solicitacao == Numerarios_Status.SolicitadoComplementar)
                {
                    titulo = "Solicitação(COMPLEMENTAR) de Autorização de Numerários";
                    assunto = "MS2000PLUS - Solicitação(COMPLEMENTAR) de Autorização de Numerários - " + importador.Razao_Social + " CNPJ: " + importador.CNPJ_CPF_COMPLETO + " - MS:" + NumeroProcesso;
                }
                else
                    if (_status_solicitacao == Numerarios_Status.Cancelado)
                    {
                        titulo = "Cancelamento de Solicitação de Autorização de Numerários";
                        assunto = "MS2000PLUS - Cancelamento de Solicitação de Autorização de Numerários - " + importador.Razao_Social + " CNPJ: " + importador.CNPJ_CPF_COMPLETO + " - MS:" + NumeroProcesso;
                    }

            string de = _dados_solicitante.Email;
            string para = string.Empty;
            foreach (var dado in _dados_autorizador)
            {
                para += dado.Email + ";";
            }

            string body = "<br>Prezado(s) Senhor(es),<br><br>";

            if (_status_solicitacao == Numerarios_Status.Cancelado)
            {
                body += "Favor desconsiderar o pedido de autorização para o envio de numerários referente ao processo: " + NumeroProcesso + ", Ref.Cliente:" + importador.Razao_Social + ".";
            }
            else
            {
                body += "Solicitamos autorização para o envio de numerários referentes ao processo: " + NumeroProcesso + ", Ref.Cliente:" + importador.Razao_Social + ".";
            }

            if (string.IsNullOrEmpty(txtObsGravacao.Text))
            {
                body += "<br><br>Observação:<br>";
                body += txtObsGravacao.Text;
            }
            body += "<br><br>Atenciosamente,<br><br>";
            body += _dados_solicitante.NomeCompleto + "<br><br><br>";

            gravarEmail(assunto, titulo, de, para.Remove(para.Trim().Length - 1), body);
            //----
            btnDesistirSolicitacao_Click(null, null);

            if (_status_solicitacao == Numerarios_Status.Cancelado)
            {
                int pk_solicitacao = (int)bindingSource.GetRelatedCurrencyManager("PK_Solicitacao").Current;
                gravarMovimentoCancelamento(FrmPrincipal.UsuarioLogado, (int)_status_solicitacao, pk_solicitacao);
                MessageBox.Show("Cancelamento realizado com sucesso!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                DateTime dataValidade = DateTime.Now.AddDays(1);
                dataValidade = Util.ProximoDiaUtil(dataValidade);
                while (Util.IsFeriado(dataValidade))
                {
                    dataValidade = Util.ProximoDiaUtil(dataValidade.AddDays(1));
                }
                gravarMovimento(FrmPrincipal.UsuarioLogado, dataValidade);
                MessageBox.Show("Solicitação foi gravada com sucesso!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            bindingSource.DataSource = getSolicitacao();
        }

        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            btnSalvarSolicitacao.Enabled = false;
            if (txtProcesso.MaskCompleted)
            {
                PopulaVariaveisUsuario(txtProcesso.Text);
                if (VerificaProcesso(txtProcesso.Text))
                {
                    _dados_autorizador = getDadosDoAutorizadores();

                    if (_dados_autorizador.Count <= 0)
                    {
                        MessageBox.Show("Não será possível prosseguir, pois não existe 'SUPERVISOR' e/ou 'COORDENADOR' configurado na tela de usuários!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        btnDesistirSolicitacao_Click(null, null);
                    }
                    else
                    {
                        if (VerificaSolicitacoesProcesso(txtProcesso.Text, (int)_status_solicitacao))
                        {
                            lblCliente.Text = "CLIENTE: " + importador.Razao_Social + " CNPJ: " + importador.CNPJ_CPF_COMPLETO;
                            _dados_solicitante = getDadosDoSolicitante(FrmPrincipal.UsuarioLogado);
                            txtSolicitante.Text = _dados_solicitante.NomeCompleto;
                            mkdData.Text = DateTime.Now.Date.ToString();
                            mkdHora.Text = DateTime.Now.ToString("hh:mm");
                            NumeroProcesso = txtProcesso.Text;
                            btnSalvarSolicitacao.Enabled = true;
                        }
                        else
                        {
                            btnDesistirSolicitacao_Click(null, null);
                        }
                    }
                }
                else
                {
                    btnDesistirSolicitacao_Click(null, null);
                }
            }
        }

        private void PopulaVariaveisUsuario(string param_processo)
        {
            processo.BuscarPorCodigoStatus(param_processo).TryGetValue("Importador", out codImportador);
        }

        private bool VerificaSolicitacoesProcesso(string processo, int tipo_solicitacao)
        {
            bool GoOn = false;

            string query = "select top 1 Status_Atual from Controle_Numerarios_Solicitacao " +
               "where FK_MsNumero=@processo order by PK_Solicitacao desc";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@processo", processo);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                if ((int)reader["Status_Atual"] == 1)
                                {
                                    GoOn = false;
                                    MessageBox.Show("Processo já possui uma solicitação de autorização de numerários.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                                }
                                else
                                    if ((int)reader["Status_Atual"] == 4)
                                    {
                                        GoOn = false;
                                        MessageBox.Show("Processo já autorização.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                                    }
                                    else
                                        if (((int)reader["Status_Atual"] == 6) && (tipo_solicitacao == 1))
                                        {
                                            GoOn = false;
                                            MessageBox.Show("Processo já foi ENVIADO para cliente. Será necessário CANCELAR a solicitação atual para gerar um nova.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                                        }
                                        else
                                            if (((int)reader["Status_Atual"] == 6) && (tipo_solicitacao == 7))
                                            {
                                                GoOn = true;
                                            }
                                            else
                                            {
                                                GoOn = true;
                                            }
                            }
                        }
                        else
                        {
                            GoOn = true;
                        }
                    }

                }
            }
            return GoOn;
        }

        private bool VerificaProcesso(string param_processo)
        {
            bool GoOn = true;

            if (codImportador != null)
            {
                importador = importador.BuscarPorCodigo(codImportador);

                if (importador.Ativo == 0 && !FrmPrincipal.editaClienteInativo)
                {
                    MessageBox.Show("Este Cliente está Inativo. Somente usuários habilitados para editar clientes inativos poderão alterar as informações do processo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    GoOn = GoOn && false;
                }
                if (importador.Ativo == 0 && FrmPrincipal.editaClienteInativo)
                {
                    MessageBox.Show("Status do Cliente: Este Cliente está Inativo. Porém você tem permissão para edita-lo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    GoOn = GoOn && true;
                }
            }
            if (statusFechado == "1" && !FrmPrincipal.editaProcessoFechado)
            {
                MessageBox.Show("Este Processo está Fechado. Somente usuários habilitados em editar processos fechados poderão alterar as informações do processo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                GoOn = GoOn && false;
            }
            if (statusFechado == "1" && FrmPrincipal.editaProcessoFechado)
            {
                MessageBox.Show("Status do Processo: Este processo esta fechado Porém você tem permissão para edita-lo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                GoOn = GoOn && true;
            }
            processo.BuscarPorCodigoStatus(param_processo).TryGetValue("Fechado", out statusFechado);
            if (processo.BuscarPorCodigoStatus(param_processo).Count == 0)
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

        private void btnCancelarSolicitacao_Click(object sender, EventArgs e)
        {
            string processo = ((DataRowView)bindingSource.Current).Row["FK_msNumero"].ToString();

            PopulaVariaveisUsuario(processo);
            if (VerificaProcesso(processo))
            {
                _dados_autorizador = getDadosDoAutorizadores();

                if (_dados_autorizador.Count <= 0)
                {
                    MessageBox.Show("Não será possível prosseguir, pois não existe 'SUPERVISOR' e/ou 'COORDENADOR' configurado na tela de usuários!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    btnDesistirSolicitacao_Click(null, null);
                }
                else
                {
                    _dados_solicitante = getDadosDoSolicitante(FrmPrincipal.UsuarioLogado);
                    NumeroProcesso = txtProcesso.Text;
                    DialogResult resultado = MessageBox.Show("Deseja realmente cancelar a solicitação selecionada?", "Pergunta", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                    if (resultado == DialogResult.Yes)
                    {
                        btnNovaSolicitacao.Enabled = false;
                        btnCancelarSolicitacao.Enabled = false;
                        btnSolicitacaoComplementar.Enabled = false;
                        btnDesistirSolicitacao.Enabled = true;
                        btnSalvarSolicitacao.Enabled = false;
                        _status_solicitacao = Numerarios_Status.Cancelado;
                        DesabilitarControles(false);
                        pnlObservacao.Show();
                    }

                }
            }
            else
            {
                btnDesistirSolicitacao_Click(null, null);
            }
        }
    }
}
