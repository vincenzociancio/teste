using MS2000.Desktop.Classes;
using System;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop
{
    public partial class FrmAcesso : MS2000.Desktop.Componentes.MSForm01
    {
        public int PK_Usuario { get; private set; }
        public string NomeCompleto { get; private set; }
        public string Usuario { get; private set; }
        public string Email { get; private set; }
        public string FK_Setor { get; private set; }
        public bool Distribuidor { get; private set; }
        public bool AbreProcesso { get; private set; }
        public bool Arquivista { get; private set; }
        public bool Digitalizador { get; private set; }
        public bool Registra_DI { get; private set; }
        public bool Audita_DI { get; private set; }
        public bool Scanner { get; private set; }
        public bool Cadastrador { get; private set; }
        public bool Analista_Documental { get; private set; }
        public bool Montador { get; private set; }
        public bool Faturista { get; private set; }
        public int Hierarquia { get; private set; }
        public bool Documentador { get; private set; }
        public bool editaClienteInativo { get; private set; }
        public bool editaProcessoFechado { get; private set; }
        FormImmobiliser immobiliser;

        public FrmAcesso()
        {
            InitializeComponent();
            immobiliser = new FormImmobiliser(this);
        }

        private bool UsuarioExiste(out string senha, out bool ativo, out DateTime? dataValidaDeSenha)
        {
            senha = "";
            ativo = false;
            dataValidaDeSenha = null;

            var query = "SELECT PK_Usuario, Usuario, Senha, Nome_Completo" +
                       ",Data_validade_senha,Email" +
                       ",Distribui_processo, Abre_processos, Edita_eventos, Digitalizador, Registra_DI, Audita_DI" +
                       ",Inativa_Cliente, Edita_cliente_inativo, Fecha_Processo, Edita_Processo_Fechado, Acessa_Patrimonio" +
                       ",Supervisor, Acessa_PARAFAT, Desconto_Faturamento, Responsavel, Distribui_processoC, ResponsavelC" +
                       ",FOLLOW_LIBERADO, Hierarquia, Ativo, Scanner, Montador, Faturista, Analista_Documental" +
                       ",Documentador, Arquivista, AcessoWeb, Registra_Di, Audita_Di, Ferias, Setor,Cadastrador " +
                       "FROM Usuarios " +
                       "Where Usuario = @usuario ";

            var GoOn = false;
            try
            {

                using (var conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@usuario", txtUsuario.Text);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    GoOn = true;
                                    senha = reader["senha"].ToString();
                                    ativo = Convert.ToBoolean(reader["ativo"].ToString());
                                    dataValidaDeSenha = (reader["Data_validade_senha"] == DBNull.Value ? (DateTime?)null : (DateTime?)reader["Data_validade_senha"]);
                                    NomeCompleto = reader["Nome_Completo"].ToString();
                                    Distribuidor = Convert.ToBoolean(reader["Distribui_processo"]);
                                    AbreProcesso = Convert.ToBoolean(reader["Abre_processos"]);
                                    Arquivista = Convert.ToBoolean(reader["Arquivista"]);
                                    Digitalizador = Convert.ToBoolean(reader["Digitalizador"]);
                                    Registra_DI = Convert.ToBoolean(reader["Registra_DI"]);
                                    Audita_DI = Convert.ToBoolean(reader["Audita_DI"]); 
                                    Documentador = Convert.ToBoolean(reader["Documentador"]);
                                    Scanner = Convert.ToBoolean(reader["scanner"]);                                    
                                    Montador = Convert.ToBoolean(reader["Montador"]);
                                    Faturista = Convert.ToBoolean(reader["Faturista"]);
                                    Analista_Documental = Convert.ToBoolean(reader["Analista_Documental"]);
                                    Hierarquia = Convert.ToInt32(reader["Hierarquia"].ToString());
                                    PK_Usuario = Convert.ToInt16(reader["PK_Usuario"].ToString());
                                    editaClienteInativo = Convert.ToBoolean(Convert.ToInt16(reader["Edita_cliente_inativo"].ToString()));
                                    editaProcessoFechado = Convert.ToBoolean(Convert.ToInt16(reader["Edita_Processo_Fechado"].ToString()));
                                    Usuario = reader["Usuario"].ToString();
                                    Email = reader["Email"].ToString();
                                    FK_Setor = (reader["Setor"] == DBNull.Value ? (string)null : (string)reader["Setor"]);
                                    Cadastrador = Convert.ToBoolean(reader["Cadastrador"]);
                                }
                            }
                            return GoOn;
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

        private void btnEntrar_Click(object sender, EventArgs e)
        {
            string senha;
            bool ativo;
            DateTime? dataValidaDeSenha;

            if (UsuarioExiste(out senha, out ativo, out dataValidaDeSenha))
            {
                if (txtSenha.Text == senha)
                {
                    if (ativo)
                    {
                        if (DateTime.Now.Date > dataValidaDeSenha || dataValidaDeSenha == null)
                        {
                            MessageBox.Show("Sua senha expirou! \n\r (a cada 30 dias será necessário informar uma NOVA SENHA ). \n\r\n\r Favor informar um NOVA senha.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            using (var frm = new FrmAlterarSenha())
                            {
                                frm.SenhaAntiga = senha;
                                frm.PK_UsuarioLogado = PK_Usuario;
                                frm.ShowDialog();
                            }
                        }
                        if (Email.Replace("@mslogistica.com.br", "").ToLower() != Environment.UserName.ToLower())
                        {
                            LogUsuarioDiferente.AddLogUsuarioDiferente(PK_Usuario, Environment.UserName,"Novo");
                        }

                        this.DialogResult = DialogResult.OK;
                    }
                    else
                    {
                        MessageBox.Show("Usuário Desativado!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                else
                {
                    MessageBox.Show("Acesso não permitido, a senha foi digitada errada!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            else
            {
                MessageBox.Show("Usuário não Cadastrado!!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }

        }

        private void txtUsuario_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnEntrar_Click(null, null);
            }
        }

        private void txtSenha_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnEntrar_Click(null, null);
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
