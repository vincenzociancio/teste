using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Linq;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmControlePastas : MS2000.Desktop.Componentes.MSForm01
    {
        string Operador;
        string De_Usuario;
        string De_Pk_Usuario;
        string Email_De_Usuario;
        string vPara;
        bool _canTransferenciaDireta;

        //US - Utilização do Sistema
        //AA - Assessoria Aduaneira
        //44 - RADAR
        //AD - Ato Declaratório
        //CO - Consultoria
        //MR - Movimentação de Repetro
        readonly string[] _arrayBloqueioDocumentoAbertura = { "US", "AA", "44", "AD", "CO", "MR" };
        protected class ControlePastas
        {
            public string Processo { get; set; }
            public string Usuario { get; set; }
            public int Aceite { get; set; }
        }
        private List<ControlePastas> _controlepastas;

        protected class Usuarios
        {
            public string Usuario { get; set; }
            public string NomeCompleto { get; set; }
            public string Setor { get; set; }
            public int Pk_Usuario { get; set; }
            public string Email { get; set; }
        }
        Processo processo = new Processo();
        public FrmControlePastas()
        {
            InitializeComponent();
            _canTransferenciaDireta = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Controle - Controle de Pasta - Transferência de Pasta Direta ",
                Chave_Busca = "transferenciadireta"
            });

        }

        private DataTable GetProcessoControle()
        {
            string query = "SELECT CP.*, I.Razao_Social " +
                           "FROM Controle_Pastas CP INNER JOIN Processos P " +
                           "  ON CP.Processo = P.Codigo INNER JOIN Importadores I " +
                           "  ON P.Importador = I.Codigo " +
                           "WHERE CP.Usuario =@Usuario and CP.Aceite = 1 " +
                           "ORDER BY CP.processo";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Usuario", FrmPrincipal.UsuarioLogado);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        DataTable table = new DataTable();
                        table.Load(reader);
                        lblTotalPastas.Text = table.Rows.Count.ToString() + " processo(s)";
                        return table;
                    }
                }
            }
        }

        private DataTable GetProcessoPendente()
        {
            string query = "SELECT CP.Processo, I.Razao_Social " +
                           "FROM Controle_Pastas CP INNER JOIN Processos P " +
                           "  ON CP.Processo = P.Codigo INNER JOIN Importadores I " +
                           "  ON P.Importador = I.Codigo " +
                           "WHERE CP.Usuario =@Usuario and CP.Aceite = 2 " +
                           "ORDER BY CP.processo";

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

        protected virtual List<ControlePastas> GetControlePasta()
        {
            string query = " select Processo,Usuario,Aceite from Controle_Pastas ";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Usuario", FrmPrincipal.UsuarioLogado);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {

                        var controlepasta = new List<ControlePastas>();
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                controlepasta.Add(new ControlePastas
                                {
                                    Processo = reader["Processo"].ToString(),
                                    Usuario = reader["Usuario"].ToString(),
                                    Aceite = Convert.ToInt32(reader["Aceite"].ToString())
                                });

                            }
                        }
                        return controlepasta;
                    }

                }
            }

        }

        private void GetUsuario()
        {
            string query = "  SELECT USUARIO, NOME_COMPLETO, SETOR, Pk_Usuario,Email " +
                           "    FROM USUARIOS                                        " +
                           "   WHERE USUARIO <> @Usuario                             " +
                           "     AND ATIVO   = 1                                     " +
                           "     AND Setor NOT IN ('INF','DIRE','REU5','COP')        ";

            //Se o setor for operacional ou vitória não trazer montadores do financeiro
            if ((!FrmPrincipal.Arquivista) && (!FrmPrincipal.Documentador) &&
               ((FrmPrincipal.FK_SetorUsuario == "OPN") || (FrmPrincipal.FK_SetorUsuario == "VIT")))
            {
                query = query + " AND MONTADOR = 0 ";
            }

            if (!FrmPrincipal.Arquivista)
            {
                query = query + " AND Setor NOT IN ('ARQ') ";
            }

            query = query + " ORDER BY NOME_COMPLETO ";


            try
            {
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    List<Usuarios> dados = new List<Usuarios>();

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        //GAMBIARRA PARA ODILMA
                        if (FrmPrincipal.UsuarioLogado == "ODILMA")
                        {
                            cmd.Parameters.AddWithValue("@Usuario", "");
                        }
                        else
                        {
                            cmd.Parameters.AddWithValue("@Usuario", FrmPrincipal.UsuarioLogado);
                        }

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                dados.Add(new Usuarios
                                {
                                    Usuario = reader["USUARIO"].ToString(),
                                    NomeCompleto = reader["NOME_COMPLETO"].ToString(),
                                    Setor = reader["SETOR"].ToString(),
                                    Pk_Usuario = (int)reader["Pk_Usuario"],
                                    Email = reader["Email"].ToString()
                                });
                            }
                        }
                        cbbUsuario.DataSource = null;
                        cbbUsuario.DataSource = dados;
                        cbbUsuario.DisplayMember = "NomeCompleto";
                        cbbUsuario.ValueMember = "USUARIO";
                        cbbUsuario.SelectedIndex = -1;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void FrmControlePastas_Load(object sender, EventArgs e)
        {
            ActiveControl = txtProcesso;
            AtualizaGrid();

            if ((FrmPrincipal.UsuarioLogado != "ODILMA") && (dgvProcessosPendentes.RowCount < 1))
            {
                MessageBox.Show("Não existe pasta disponível para aceitar ou rejeitar. ", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                btnAceita.Enabled = false;
                btnRejeita.Enabled = false;
            }
            else
            {
                btnAceita.Enabled = true;
                btnRejeita.Enabled = true;
            }

            GetUsuario();
            _controlepastas = GetControlePasta();

            if (FrmPrincipal.Arquivista)
            {
                btnRecuperar.Enabled = true;
            }
            else
            {
                btnRecuperar.Enabled = false;
            }
        }

        private bool ProcessoEstaNoFinanceiro()
        {
            string query = " SELECT CP.USUARIO      " +
                         "  FROM Controle_Pastas CP INNER JOIN Usuarios U         " +
                         "  ON CP.Usuario = U.Usuario                                  " +
                         "  WHERE U.Ativo = 1 AND U.Setor = 'ADFI' AND CP.Processo = @processo ";

            try
            {
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@processo", txtProcesso.Text);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                return true;
                            }

                            return false;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
        }

        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            if (txtProcesso.MaskCompleted)
            {
                //AtualizaGrid();
                _controlepastas = GetControlePasta();
                //if ((FrmPrincipal.UsuarioLogado == "ODILMA") || (FrmPrincipal.UsuarioLogado == "FERREIRA") || (FrmPrincipal.UsuarioLogado == "SFREIRE"))
                if (_canTransferenciaDireta)
                {
                    if (ProcessoEstaNoFinanceiro())
                    {
                        MessageBox.Show("Processo sob o controle do Financeiro!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return;
                    }

                    btnTransferir.Enabled = true;

                    btnTransferir.Focus();
                }
                else
                {
                    _controlepastas = _controlepastas.Where(c => c.Usuario.ToString() == FrmPrincipal.UsuarioLogado && c.Processo.ToString() == txtProcesso.Text).ToList();

                    if (!FrmPrincipal.Arquivista)
                    {
                        if (_controlepastas.Count > 0)
                        {
                            //  _controlepastas.Where(c => c.Processo.ToString() == txtProcesso.Text).ToList();
                            if (string.Join(" ", _controlepastas.Select(x => x.Aceite.ToString())) != "1")
                            {
                                MessageBox.Show("Para realizar a transferência de pasta para outro colaborador, você precisa aceitar esta pasta.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                btnTransferir.Enabled = false;
                                txtProcesso.Clear();
                                return;
                            }
                        }
                        else
                        {
                            MessageBox.Show("Pasta não localizada!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            btnTransferir.Enabled = false;
                            txtProcesso.Clear();
                            return;
                        }

                        btnTransferir.Enabled = true;

                        btnTransferir.Focus();
                    }

                    if (string.Join(" ", _controlepastas.Select(x => x.Usuario.ToString())) == "ARQUIVO")
                    {
                        MessageBox.Show("Para realizar a transferência de pasta para outro colaborador, você precisa aceitar esta pasta.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        btnTransferir.Enabled = false;
                        txtProcesso.Clear();
                        return;
                    }
                }
            }
            else
            {
                btnTransferir.Enabled = false;
                //  cbbUsuario.SelectedIndex = -1;
            }

        }

        private void btnTransferir_Click(object sender, EventArgs e)
        {
            try
            {
                string paraUsuario = "";
                int setor;

                if (txtProcesso.MaskCompleted)
                {
                    if (string.IsNullOrEmpty(cbbUsuario.Text))
                    {
                        MessageBox.Show("Informe o usuário para transferir a pasta, por favor. ", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        cbbUsuario.Focus();
                        return;
                    }

                    string query = "select top 1 De_usuario, Para_usuario from Movimentacao_pastas where Processo = @processo order by movimento desc ";

                    using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@processo", txtProcesso.Text);
                            using (SqlDataReader reader = cmd.ExecuteReader())
                            {
                                if (reader.HasRows)
                                {
                                    while (reader.Read())
                                    {
                                        paraUsuario = reader["Para_usuario"].ToString();
                                    }
                                }
                            }
                        }
                    }

                    processo = processo.BuscarPorCodigo(txtProcesso.Text);

                    if (((FrmPrincipal.AbreProcesso) && (!DocumentoAbertura())) && (processo.Data >= Convert.ToDateTime("11/01/2017")) && (!_arrayBloqueioDocumentoAbertura.Contains(processo.Tipo)))
                    {
                        MessageBox.Show("Favor realizar o upload de Evidência para Abertura de Processo!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return;
                    }
                    
                    if (_canTransferenciaDireta)
                    {
                        Operador = "E";

                        insertMovimentacaoPasta(txtProcesso.Text, paraUsuario, FrmPrincipal.UsuarioLogado);
                        insertMovimentacaoPasta(txtProcesso.Text, FrmPrincipal.UsuarioLogado, cbbUsuario.SelectedValue.ToString());

                        if (((Usuarios)cbbUsuario.SelectedItem).Pk_Usuario.ToString() != "ADFI")
                        {
                            setor = 1;
                        }
                        else
                        {
                            setor = 2;
                        }

                        UpdateControlePasta(setor, cbbUsuario.SelectedValue.ToString(), ((Usuarios)cbbUsuario.SelectedItem).Pk_Usuario.ToString(), txtProcesso.Text);
                    }
                    else
                    {
                        Operador = "T";                     

                        if (cbbUsuario.Text.ToString() == "ARQUIVO")  
                        {
                            if (((processo.Tipo == "31") || (processo.Tipo == "34") || (processo.Tipo == "41") || (processo.Tipo == "43") ||
                                (processo.Tipo == "6A") || (processo.Tipo == "DB") || (processo.Tipo == "IB")) && (!FrmPrincipal.Documentador))
                            {
                                MessageBox.Show("Não possivel envio o processo para arquivo. Processo de responsabildade do setor documental!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                return;
                            }
                            
                            UpdateControlePasta(1, cbbUsuario.SelectedValue.ToString(), ((Usuarios)cbbUsuario.SelectedItem).Pk_Usuario.ToString(), txtProcesso.Text);
                        }
                        else
                        {
                            UpdateControlePasta(2, cbbUsuario.SelectedValue.ToString(), ((Usuarios)cbbUsuario.SelectedItem).Pk_Usuario.ToString(), txtProcesso.Text);
                        }

                        insertMovimentacaoPasta(txtProcesso.Text, FrmPrincipal.UsuarioLogado, cbbUsuario.SelectedValue.ToString());
                    }

                    EnviaEmail();
                    MessageBox.Show("Pasta transferida para o usuário " + cbbUsuario.Text, "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.None, Convert.ToInt32(this.Tag), string.Format("{0}, registrou uma movimentação de pasta transferindo o processo {1} para {2}) ", FrmPrincipal.UsuarioNomeCompleto, txtProcesso.Text, cbbUsuario.Text));
                    txtProcesso.Clear();
                    txtProcesso.Focus();
                    AtualizaGrid();
                }
                else
                {
                    MessageBox.Show("Informe o número do processo.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    txtProcesso.Focus();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnRecuperar_Click(object sender, EventArgs e)
        {
            if (txtProcesso.MaskCompleted)
            {
                _controlepastas = GetControlePasta();

                _controlepastas = _controlepastas.Where(c => c.Processo.ToString() == txtProcesso.Text).ToList();
                if (string.Join(" ", _controlepastas.Select(x => x.Usuario.ToString())) == "ARQUIVO")
                {
                    UpdateControlePasta(1, FrmPrincipal.UsuarioLogado, FrmPrincipal.PK_UsuarioLogado.ToString(), txtProcesso.Text);

                    insertMovimentacaoPasta(txtProcesso.Text, "ARQUIVO", FrmPrincipal.UsuarioLogado);

                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.None, Convert.ToInt32(this.Tag), string.Format("inseriu a movimentação de pasta Recuperação no Arquivo, para o processo {0} ", txtProcesso.Text));
                    MessageBox.Show(FrmPrincipal.UsuarioNomeCompleto + ", pasta liberada para transferência.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show(FrmPrincipal.UsuarioNomeCompleto + ", este processo não está sob seu controle para realizar o arquivamento.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    txtProcesso.Clear();
                    txtProcesso.Focus();
                }
                AtualizaGrid();
            }
            else
            {
                MessageBox.Show("Para realizar a transferência de pasta para outro colaborador, você precisa aceitar esta pasta.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtProcesso.Focus();
                return;
            }
        }

        private void btnAceita_Click(object sender, EventArgs e)
        {
            if (dgvProcessosPendentes.RowCount > 0)
            {
                Operador = "A";
                string processo = dgvProcessosPendentes.SelectedRows[0].Cells["Processo"].Value.ToString();

                UpdateControlePasta(1, FrmPrincipal.UsuarioLogado, FrmPrincipal.PK_UsuarioLogado.ToString(), processo);

                if (FrmPrincipal.FK_SetorUsuario != "ADFI")
                {
                    if (FrmPrincipal.UsuarioLogado != "CLAUDIA")
                    {
                        UpdateResponsavel(FrmPrincipal.UsuarioLogado, processo);    
                    }                    
                }

                EnviaEmail();
                LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.None, Convert.ToInt32(this.Tag), string.Format("Processo Aceito {0} ", processo));
                MessageBox.Show(FrmPrincipal.UsuarioNomeCompleto + ", agora é possível transferir o processo " + processo + " para outro usuário se desejar.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);

                AtualizaGrid();

                txtProcesso.Text = processo;
            }

        }

        private void btnRejeita_Click(object sender, EventArgs e)
        {
            if (dgvProcessosPendentes.RowCount > 0)
            {
                Operador = "R";
                string processo = dgvProcessosPendentes.SelectedRows[0].Cells["Processo"].Value.ToString();

                TrazUsuario(processo);

                UpdateControlePasta(1, De_Usuario, De_Pk_Usuario, processo);

                insertMovimentacaoPasta(processo, FrmPrincipal.UsuarioLogado, De_Usuario);

                EnviaEmail();
                LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.None, Convert.ToInt32(this.Tag), string.Format("Processo rejeitado {0} ", processo));
                MessageBox.Show(FrmPrincipal.UsuarioNomeCompleto + ", o processo  " + processo + " foi rejeitado", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);

                AtualizaGrid();
            }
        }

        private void UpdateControlePasta(int aceite, string usuario, string fk_usuario, string processo)
        {
            string query = "update Controle_Pastas set Aceite =@Aceite, Data=@Data, Usuario=@Usuario, Fk_usuario=@Fk_usuario " +
                           "where Processo =@Processo ";

            using (var conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Aceite", aceite);
                    cmd.Parameters.AddWithValue("@Data", DateTime.Now);
                    cmd.Parameters.AddWithValue("@Usuario", usuario);
                    cmd.Parameters.AddWithValue("@Fk_usuario", fk_usuario);
                    cmd.Parameters.AddWithValue("@Processo", processo);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        private void UpdateResponsavel(string usuario, string processo)
        {
            string query = "update Processos set Responsavel_Empresa = @Responsavel_Empresa where Codigo = @Codigo ";

            using (var conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Responsavel_Empresa", usuario);
                    cmd.Parameters.AddWithValue("@Codigo", processo);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        private void TrazUsuario(string processo)
        {
            string query = "  select top 1 MP.De_usuario, MP.Para_usuario, U1.PK_USUARIO AS De_Pk_Usuario,U1.Email as Email_De_Usuario, U2.PK_USUARIO AS Para_Pk_Usuario,U2.Email as Email_Para_Usuario " +
                           "	  from Movimentacao_pastas MP INNER JOIN Usuarios U1 " +
                           "	    ON U1.Usuario = MP.De_usuario INNER JOIN Usuarios U2 " +
                           "		ON U2.Usuario = MP.Para_usuario " +
                           "	 where MP.PROCESSO =@processo " +
                           "  order by MP.movimento desc ";

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
                                if ((Operador == "T") || (Operador == "E"))
                                {
                                    De_Usuario = reader["Para_usuario"].ToString();
                                    De_Pk_Usuario = reader["Para_Pk_Usuario"].ToString();
                                    Email_De_Usuario = reader["Email_Para_Usuario"].ToString();
                                }
                                else
                                {
                                    De_Usuario = reader["De_usuario"].ToString();
                                    De_Pk_Usuario = reader["De_Pk_Usuario"].ToString();
                                    Email_De_Usuario = reader["Email_De_Usuario"].ToString();
                                }

                            }
                        }
                    }
                }
            }
        }

        private void insertMovimentacaoPasta(string processo, string deUsuario, string paraUsuario)
        {
            string query = "INSERT INTO Movimentacao_pastas " +
                           "(Processo,De_usuario,Para_usuario,Data,Hora) " +
                           "VALUES " +
                           "(@Processo,@De_usuario,@Para_usuario,@Data,@Hora) ";

            using (var conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", processo);
                    cmd.Parameters.AddWithValue("@De_usuario", deUsuario);
                    cmd.Parameters.AddWithValue("@Para_usuario", paraUsuario);
                    cmd.Parameters.AddWithValue("@Data", DateTime.Now);
                    cmd.Parameters.AddWithValue("@Hora", DateTime.Now);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        private void AtualizaGrid()
        {
            dgvProcessosPendentes.RowsDefaultCellStyle.BackColor = Color.LightCyan;
            dgvProcessosPendentes.AlternatingRowsDefaultCellStyle.BackColor = Color.White;

            dgvProcessosPendentes.AutoGenerateColumns = false;
            dgvProcessosPendentes.DataSource = null;
            dgvProcessosPendentes.DataSource = GetProcessoPendente();

            if (dgvProcessosPendentes.RowCount < 1)
            {
                btnAceita.Enabled = false;
                btnRejeita.Enabled = false;
            }
            else
            {
                btnAceita.Enabled = true;
                btnRejeita.Enabled = true;
            }

            dgvProcessoControle.RowsDefaultCellStyle.BackColor = Color.LightCyan;
            dgvProcessoControle.AlternatingRowsDefaultCellStyle.BackColor = Color.White;

            dgvProcessoControle.AutoGenerateColumns = false;
            dgvProcessoControle.DataSource = null;
            dgvProcessoControle.DataSource = GetProcessoControle();
        }

        private void EnviaEmail()
        {
            EmailAuto email = new EmailAuto();
            string vPara;
            string corpoDoEmail = "";
            if (Operador == "A")
            {
                email.Titulo = "MS2000 - Aviso de Aceite do Controle de Pastas";
                email.Assunto = "Processo " + dgvProcessosPendentes.SelectedRows[0].Cells["Processo"].Value.ToString() + ", aceito pelo usuário " + FrmPrincipal.UsuarioNomeCompleto;
                email.De = "MS2000 <auditoria@logistic-ms.com.br>";
                email.HTML = 1;
                email.Anexo = "";
                corpoDoEmail = "Por meio deste, informamos que o usuário, " + FrmPrincipal.UsuarioNomeCompleto + " , aceitou a posse da pasta " + dgvProcessosPendentes.SelectedRows[0].Cells["Processo"].Value.ToString() + " para você.<BR>";
                TrazUsuario(dgvProcessosPendentes.SelectedRows[0].Cells["Processo"].Value.ToString());
                vPara = Email_De_Usuario;
            }
            else if (Operador == "R")
            {
                email.Titulo = "MS2000 - Aviso de Rejeição do Controle de Pastas";
                email.Assunto = "Processo " + dgvProcessosPendentes.SelectedRows[0].Cells["Processo"].Value.ToString() + ", rejeitado pelo usuário " + FrmPrincipal.UsuarioNomeCompleto;
                email.De = "MS2000 <auditoria@logistic-ms.com.br>";
                email.HTML = 1;
                email.Anexo = "";
                corpoDoEmail = "Por meio deste, informamos que o usuário, " + FrmPrincipal.UsuarioNomeCompleto + " , rejeitou a posse da pasta " + dgvProcessosPendentes.SelectedRows[0].Cells["Processo"].Value.ToString() + " retornando a mesma para você.<BR>";
                vPara = Email_De_Usuario;
            }
            else if (Operador == "E")
            {
                email.Titulo = "MS2000 - Aviso de Transferência de Pastas";
                email.Assunto = "Foi feita a transferência da pasta " + txtProcesso.Text + ", pelo usuário " + FrmPrincipal.UsuarioNomeCompleto + " para você.";
                email.De = "MS2000 <auditoria@logistic-ms.com.br>";
                email.HTML = 1;
                email.Anexo = "";
                corpoDoEmail = "Por meio deste, informamos que a Srª Odilma movimentou a pasta " + txtProcesso.Text + " para você, não há necessidade de aceitar ou rejeitar.";
                vPara = ((Usuarios)cbbUsuario.SelectedItem).Email.ToString();
            }
            else
            {
                email.Titulo = "MS2000 - Aviso de Transferência de Pastas";
                email.Assunto = "Foi feita a transferência da pasta " + txtProcesso.Text + ", pelo usuário " + FrmPrincipal.UsuarioNomeCompleto + " para você.";
                email.De = "MS2000 <auditoria@logistic-ms.com.br>";
                email.HTML = 1;
                email.Anexo = "";
                corpoDoEmail = "Por meio deste, informamos que o usuário, " + FrmPrincipal.UsuarioNomeCompleto + " , Transferiu a posse da pasta " + txtProcesso.Text + " para você.<BR>";
                vPara = ((Usuarios)cbbUsuario.SelectedItem).Email.ToString();
            }


            StringBuilder sb = new StringBuilder();

            sb.Append("<BR> Prezado, <BR>");
            sb.Append("<BR>");
            sb.Append(corpoDoEmail);
            sb.Append("<BR><BR>");
            sb.Append("Este e-mail é automático e não necessita de resposta. <BR>");
            sb.Append("<BR><BR>");
            sb.Append("Atenciosamente,<BR><BR>");
            sb.Append("MS2000 - SISTEMA GERENCIAL ADUANEIRO<BR><BR>");

            EmailAuto.incluir("MS2000", email.Assunto, email.Titulo, email.De, vPara, "", "", sb.ToString(), email.Anexo, email.HTML);
        }

        private void btnAtualizar_Click(object sender, EventArgs e)
        {
            AtualizaGrid();
        }

        private bool DocumentoAbertura()
        {
            var query = "select Arquivo from Documentos where Processo = @Processo and Tipo_Doc = 'PROC' and Sub_Tipo_Doc = '135' ";

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
                return false;
            }
        }

    }
}
