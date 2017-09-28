using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Sistema
{
    public partial class FrmUsuarios : MS2000.Desktop.Componentes.MSForm01
    {

        bool Ferias;

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

        public FrmUsuarios()
        {
            InitializeComponent();
        }

        private void FrmUsuarios_Load(object sender, EventArgs e)
        {
            // 0 - Vazio
            // 1 - Gerência
            // 2 - Coordenação
            // 3 - Supervisor
            // 4 - Analista
            Dictionary<int, string> itens = new Dictionary<int, string>();
            itens.Add(0, "");
            itens.Add(1, "Gerência");
            itens.Add(2, "Coordenação");
            itens.Add(3, "Supervisor");
            itens.Add(4, "Analista");
            cbbHierarquia.DisplayMember = "Value";
            cbbHierarquia.ValueMember = "Key";
            cbbHierarquia.DataSource = new BindingSource(itens, null);

            getSupervisores();
            getSetores();

            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getUsuarios();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtNome.DataBindings.Add(new Binding("Text", bindingSource, "Nome_Completo", true));
            txtRamal.DataBindings.Add(new Binding("Text", bindingSource, "Ramal", true));
            txtCelular.DataBindings.Add(new Binding("Text", bindingSource, "Celular", true));
            txtEmail.DataBindings.Add(new Binding("Text", bindingSource, "Email", true));
            txtUsuario.DataBindings.Add(new Binding("Text", bindingSource, "Usuario", true));
            txtSenha.DataBindings.Add(new Binding("Text", bindingSource, "Senha", true));
            cbbHierarquia.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Hierarquia"));
            cbbSupervisor.DataBindings.Add(new Binding("SelectedValue", bindingSource, "FK_Supervisor"));
            cbbSetor.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Setor"));
            ckbAtivo.DataBindings.Add(new Binding("Checked", bindingSource, "Ativo", true));
            ckbOperacional.DataBindings.Add(new Binding("Checked", bindingSource, "Email_aviso_oper", true));
            ckbFinanceiro.DataBindings.Add(new Binding("Checked", bindingSource, "Email_aviso_finan", true));
            ckbDiretoria.DataBindings.Add(new Binding("Checked", bindingSource, "Email_aviso_sistema", true));
            ckbSistema.DataBindings.Add(new Binding("Checked", bindingSource, "Email_aviso_diretoria", true));
            ckbNumerario.DataBindings.Add(new Binding("Checked", bindingSource, "Email_Sol_Num", true));
            ckbSolRegistro.DataBindings.Add(new Binding("Checked", bindingSource, "Email_Sol_Reg", true));
            ckbSolCheque.DataBindings.Add(new Binding("Checked", bindingSource, "Email_Sol_Cheque", true));
            ckbDigitaliza.DataBindings.Add(new Binding("Checked", bindingSource, "Digitalizador", true));
            ckbRespOperProcessos.DataBindings.Add(new Binding("Checked", bindingSource, "Responsavel", true));
            ckbRegistraDI.DataBindings.Add(new Binding("Checked", bindingSource, "Registra_Di", true));
            ckbAuditaDI.DataBindings.Add(new Binding("Checked", bindingSource, "Audita_Di", true));
            ckbEscaneador.DataBindings.Add(new Binding("Checked", bindingSource, "Scanner", true));
            ckbCadastrador.DataBindings.Add(new Binding("Checked", bindingSource, "Cadastrador", true));
            ckbAnalistaDocumental.DataBindings.Add(new Binding("Checked", bindingSource, "Analista_Documental", true));
            ckbMontador.DataBindings.Add(new Binding("Checked", bindingSource, "Montador", true));
            ckbFaturista.DataBindings.Add(new Binding("Checked", bindingSource, "Faturista", true));
            ckbExportador.DataBindings.Add(new Binding("Checked", bindingSource, "Exportador", true));
            ckbAbertura.DataBindings.Add(new Binding("Checked", bindingSource, "Abre_processos", true));
            ckbDistribuiProcessos.DataBindings.Add(new Binding("Checked", bindingSource, "Distribui_processo", true));
            rdbAtivos_CheckedChanged(null, null);
        }

        private DataTable getUsuarios()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select PK_Usuario, Usuario, Nome_Completo, Ativo, Senha, Email, FK_Supervisor, Setor, Ramal, Celular, Hierarquia,Ferias, " +
                           "Scanner, Cadastrador, Montador, Faturista, Exportador, Analista_Documental, Responsavel, Registra_DI, Audita_DI, Digitalizador, Email_aviso_oper, Email_aviso_finan, Email_aviso_sistema, Email_aviso_diretoria, Email_Sol_Num, Email_Sol_Reg, Email_Sol_Cheque, " +
                           "Abre_processos,Distribui_processo  " +
                           "from Usuarios order by Nome_Completo";
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

        private void getSupervisores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = query = "SELECT PK_Usuario, Nome_Completo FROM Usuarios WHERE Hierarquia IN ('3','2','1') AND ((Ativo = 1) OR (Ativo = 0 AND Ferias = 1)) ORDER BY Nome_Completo";

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

                cbbSupervisor.DataSource = table;
                cbbSupervisor.DisplayMember = "Nome_Completo";
                cbbSupervisor.ValueMember = "PK_Usuario";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getSetores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT codigo, descricao FROM Setores where Excluido <> 1 ORDER BY descricao";

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
                cbbSetor.DisplayMember = "descricao";
                cbbSetor.ValueMember = "codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
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
            if (string.IsNullOrEmpty(txtUsuario.Text))
            {
                MessageBox.Show("O usuário é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtUsuario.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtSenha.Text))
            {
                MessageBox.Show("O senha é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtSenha.Focus();
                return;
            }

            if (txtSenha.Text.Contains(txtUsuario.Text))
            {
                MessageBox.Show("A Senha não pode ser igual a identificação do Usuário!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtSenha.Focus();
                return;
            }

            if (!Util.IsPasswordStrong(txtSenha.Text))
            {
                MessageBox.Show("Senha inválida \n\r\n\r Sua Senha deverá: \n\r\n\r - Mínimo 6 Caracteres; \n\r - Números e Letras Distintos; \n\r\n\r Favor informar uma NOVA senha!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtSenha.Clear();
                txtSenha.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtNome.Text))
            {
                MessageBox.Show("O nome é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtNome.Focus();
                return;
            }

            string PK_Usuario = bindingSource.GetRelatedCurrencyManager("PK_Usuario").Current.ToString();

            if (string.IsNullOrEmpty(PK_Usuario))
            {
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query = "   UPDATE USUARIOS " +
                                   "   SET Usuario               = @Usuario,               " +
                                   "       Nome_Completo         = @Nome_Completo,         " +
                                   "       Ativo                 = @Ativo,                 " +
                                   "       Senha                 = @Senha,                 " +
                                   "       Email                 = @Email,                 " +
                                   "       FK_Supervisor         = @FK_Supervisor,         " +
                                   "       Setor                 = @Setor,                 " +
                                   "       Ramal                 = @Ramal,                 " +
                                   "       Celular               = @Celular,               " +
                                   "       Hierarquia            = @Hierarquia,            " +
                                   "       Scanner               = @Scanner,               " +
                                   "       Cadastrador           = @Cadastrador,           " +
                                   "       Montador              = @Montador,              " +
                                   "       Faturista             = @Faturista,             " +
                                   "       Exportador            = @Exportador,            " +
                                   "       Analista_Documental   = @Analista_Documental,   " +
                                   "       Responsavel           = @Responsavel,           " +
                                   "       Registra_Di           = @Registra_Di,           " +
                                   "       Audita_Di             = @Audita_Di,             " +
                                   "       Digitalizador         = @Digitalizador,         " +
                                   "       Email_aviso_oper      = @Email_aviso_oper,      " +
                                   "       Email_aviso_finan     = @Email_aviso_finan,     " +
                                   "       Email_aviso_sistema   = @Email_aviso_sistema,   " +
                                   "       Email_aviso_diretoria = @Email_aviso_diretoria, " +
                                   "       Email_Sol_Num         = @Email_Sol_Num,         " +
                                   "       Email_Sol_Reg         = @Email_Sol_Reg,         " +
                                   "       Email_Sol_Cheque      = @Email_Sol_Cheque,      " +
                                   "       Abre_processos        = @Abre_processos,        " +
                                   "       Distribui_processo    = @Distribui_processo     " +
                                   " WHERE PK_Usuario = @PK_Usuario                        ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("Usuario", txtUsuario.Text);
                        cmd.Parameters.AddWithValue("Nome_Completo", txtNome.Text);
                        cmd.Parameters.AddWithValue("Ativo", Convert.ToInt16(ckbAtivo.Checked));
                        cmd.Parameters.AddWithValue("Senha", txtSenha.Text);
                        cmd.Parameters.AddWithValue("Email", txtEmail.Text);
                        cmd.Parameters.AddWithValue("FK_Supervisor", (cbbSupervisor.SelectedValue == null ? 0 : cbbSupervisor.SelectedValue));
                        cmd.Parameters.AddWithValue("Setor", cbbSetor.SelectedValue);
                        cmd.Parameters.AddWithValue("Ramal", txtRamal.Text);
                        cmd.Parameters.AddWithValue("Celular", txtCelular.Text);
                        cmd.Parameters.AddWithValue("Hierarquia", (cbbHierarquia.SelectedValue == null ? 0 : cbbHierarquia.SelectedValue));
                        cmd.Parameters.AddWithValue("Scanner", Convert.ToInt16(ckbEscaneador.Checked));
                        cmd.Parameters.AddWithValue("Cadastrador", Convert.ToInt16(ckbCadastrador.Checked));
                        cmd.Parameters.AddWithValue("Montador", Convert.ToInt16(ckbMontador.Checked));
                        cmd.Parameters.AddWithValue("Faturista", Convert.ToInt16(ckbFaturista.Checked));
                        cmd.Parameters.AddWithValue("Exportador", Convert.ToInt16(ckbExportador.Checked));
                        cmd.Parameters.AddWithValue("Analista_Documental", Convert.ToInt16(ckbAnalistaDocumental.Checked));
                        cmd.Parameters.AddWithValue("Responsavel", Convert.ToInt16(ckbRespOperProcessos.Checked));
                        cmd.Parameters.AddWithValue("Registra_DI", Convert.ToInt16(ckbRegistraDI.Checked));
                        cmd.Parameters.AddWithValue("Audita_DI", Convert.ToInt16(ckbAuditaDI.Checked));
                        cmd.Parameters.AddWithValue("Digitalizador", Convert.ToInt16(ckbDigitaliza.Checked));
                        cmd.Parameters.AddWithValue("Email_aviso_oper", Convert.ToInt16(ckbOperacional.Checked));
                        cmd.Parameters.AddWithValue("Email_aviso_finan", Convert.ToInt16(ckbFinanceiro.Checked));
                        cmd.Parameters.AddWithValue("Email_aviso_sistema", Convert.ToInt16(ckbSistema.Checked));
                        cmd.Parameters.AddWithValue("Email_aviso_diretoria", Convert.ToInt16(ckbDiretoria.Checked));
                        cmd.Parameters.AddWithValue("Email_Sol_Num", Convert.ToInt16(ckbNumerario.Checked));
                        cmd.Parameters.AddWithValue("Email_Sol_Reg", Convert.ToInt16(ckbSolRegistro.Checked));
                        cmd.Parameters.AddWithValue("Email_Sol_Cheque", Convert.ToInt16(ckbSolCheque.Checked));
                        cmd.Parameters.AddWithValue("Abre_processos", Convert.ToInt16(ckbAbertura.Checked));
                        cmd.Parameters.AddWithValue("Distribui_processo", Convert.ToInt16(ckbDistribuiProcessos.Checked));
                        cmd.Parameters.AddWithValue("PK_Usuario", PK_Usuario);
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(txtNome.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Pk_Usuario:{0} - Nome Completo:{1} - Setor:{2} - Celular:{3} - Supervisor:{4} - Ramal:{5}" +
                                  "- Email:{6} - Hierarquia:{7} ", PK_Usuario, txtNome.Text, cbbSetor.Text, txtCelular.Text, cbbSupervisor.Text,
                                   txtRamal.Text, txtEmail.Text, cbbHierarquia.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query = "   INSERT INTO USUARIOS       " +
                                   "      (Usuario, Nome_Completo, Ativo, Senha, Email, FK_Supervisor, Setor, Ramal, Celular, Hierarquia,                                                  " +
                                   "       Scanner, Cadastrador, Montador, Faturista, Exportador, Analista_Documental, Responsavel, Registra_DI, Audita_DI,                                " +
                                   "       Digitalizador, Email_aviso_oper, Email_aviso_finan, Email_aviso_sistema, Email_aviso_diretoria, Email_Sol_Num, Email_Sol_Reg, Email_Sol_Cheque,Abre_processos,Distribui_processo) " +
                                   " VALUES " +
                                   "      (@Usuario, @Nome_Completo, @Ativo, @Senha, @Email, @FK_Supervisor, @Setor, @Ramal, @Celular, @Hierarquia,                                        " +
                                   "       @Scanner, @Cadastrador, @Montador, @Faturista, @Exportador, @Analista_Documental, @Responsavel, @Registra_DI, @Audita_DI,                       " +
                                   "       @Digitalizador, @Email_aviso_oper, @Email_aviso_finan, @Email_aviso_sistema, @Email_aviso_diretoria, @Email_Sol_Num, @Email_Sol_Reg, @Email_Sol_Cheque, @Abre_processos, @Distribui_processo) ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("Usuario", txtUsuario.Text);
                        cmd.Parameters.AddWithValue("Nome_Completo", txtNome.Text);
                        cmd.Parameters.AddWithValue("Ativo", Convert.ToInt16(ckbAtivo.Checked));
                        cmd.Parameters.AddWithValue("Senha", txtSenha.Text);
                        cmd.Parameters.AddWithValue("Email", txtEmail.Text);
                        cmd.Parameters.AddWithValue("FK_Supervisor", (cbbSupervisor.SelectedValue == null ? 0 : cbbSupervisor.SelectedValue));
                        cmd.Parameters.AddWithValue("Setor", cbbSetor.SelectedValue);
                        cmd.Parameters.AddWithValue("Ramal", txtRamal.Text);
                        cmd.Parameters.AddWithValue("Celular", txtCelular.Text);
                        cmd.Parameters.AddWithValue("Hierarquia", (cbbHierarquia.SelectedValue == null ? 0 : cbbHierarquia.SelectedValue));
                        cmd.Parameters.AddWithValue("Scanner", Convert.ToInt16(ckbEscaneador.Checked));
                        cmd.Parameters.AddWithValue("Cadastrador", Convert.ToInt16(ckbCadastrador.Checked));
                        cmd.Parameters.AddWithValue("Montador", Convert.ToInt16(ckbMontador.Checked));
                        cmd.Parameters.AddWithValue("Faturista", Convert.ToInt16(ckbFaturista.Checked));
                        cmd.Parameters.AddWithValue("Exportador", Convert.ToInt16(ckbExportador.Checked));
                        cmd.Parameters.AddWithValue("Analista_Documental", Convert.ToInt16(ckbAnalistaDocumental.Checked));
                        cmd.Parameters.AddWithValue("Responsavel", Convert.ToInt16(ckbRespOperProcessos.Checked));
                        cmd.Parameters.AddWithValue("Digitalizador", Convert.ToInt16(ckbDigitaliza.Checked));
                        cmd.Parameters.AddWithValue("Registra_DI", Convert.ToInt16(ckbRegistraDI.Checked));
                        cmd.Parameters.AddWithValue("Audita_DI", Convert.ToInt16(ckbAuditaDI.Checked));
                        cmd.Parameters.AddWithValue("Email_aviso_oper", Convert.ToInt16(ckbOperacional.Checked));
                        cmd.Parameters.AddWithValue("Email_aviso_finan", Convert.ToInt16(ckbFinanceiro.Checked));
                        cmd.Parameters.AddWithValue("Email_aviso_sistema", Convert.ToInt16(ckbSistema.Checked));
                        cmd.Parameters.AddWithValue("Email_aviso_diretoria", Convert.ToInt16(ckbDiretoria.Checked));
                        cmd.Parameters.AddWithValue("Email_Sol_Num", Convert.ToInt16(ckbNumerario.Checked));
                        cmd.Parameters.AddWithValue("Email_Sol_Reg", Convert.ToInt16(ckbSolRegistro.Checked));
                        cmd.Parameters.AddWithValue("Email_Sol_Cheque", Convert.ToInt16(ckbSolCheque.Checked));
                        cmd.Parameters.AddWithValue("Abre_processos", Convert.ToInt16(ckbAbertura.Checked));
                        cmd.Parameters.AddWithValue("Distribui_processo", Convert.ToInt16(ckbDistribuiProcessos.Checked));

                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(txtNome.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), 
                    string.Format("Pk_Usuario:{0} - Nome Completo:{1} - Setor:{2} - Celular:{3} - Supervisor:{4} - Ramal:{5}"+
                                  "- Email:{6} - Hierarquia:{7} " , PK_Usuario,txtNome.Text,cbbSetor.Text,txtCelular.Text,cbbSupervisor.Text,
                                   txtRamal.Text,txtEmail.Text,cbbHierarquia.Text));
                }

                if (!ckbAtivo.Checked)
                {
                    DesativarEmailsAvisos();
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

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Confirma exclusão deste Usuário?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                ExcluirMenuUsuario();
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void txtLocalizar_TextChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtLocalizar.Text))
            {
                bindingSource.RemoveFilter();
            }
            else
            {
                try
                {
                    bindingSource.Filter = "Nome_Completo LIKE '" + txtLocalizar.Text + "%'";
                }
                catch (Exception)
                {
                }
            }
        }

        private void btnAutorizacoes_Click(object sender, EventArgs e)
        {
            FrmUsuariosAutorizacoes frmUsuariosAutorizacoes = new FrmUsuariosAutorizacoes();
            frmUsuariosAutorizacoes.PK_Usuario = Convert.ToInt32(((DataRowView)this.bindingSource.Current).Row["PK_USUARIO"].ToString());
            frmUsuariosAutorizacoes.Usuario = ((DataRowView)this.bindingSource.Current).Row["Usuario"].ToString();
            FrmPrincipal.ShowModalMdiChildren(frmUsuariosAutorizacoes);
        }

        private void btnCopiarPerfil_Click(object sender, EventArgs e)
        {
            FrmUsuarioCopiarPerfil frmCopiarPerfil = new FrmUsuarioCopiarPerfil();
            frmCopiarPerfil.Pk_Usuario = Convert.ToInt32(((DataRowView)this.bindingSource.Current).Row["PK_USUARIO"].ToString());
            frmCopiarPerfil.Usuario = ((DataRowView)this.bindingSource.Current).Row["Usuario"].ToString();
            frmCopiarPerfil.Nome_Completo = ((DataRowView)this.bindingSource.Current).Row["Nome_Completo"].ToString();
            FrmPrincipal.ShowModalMdiChildren(frmCopiarPerfil);
        }

        private void cbbSetor_SelectedValueChanged(object sender, EventArgs e)
        {
            if ((bindingSource.Count > 0) && (!string.IsNullOrEmpty(cbbSetor.Text)))
            {
                gpbAvisosFinanceiro.Visible = (cbbSetor.SelectedValue.ToString() == "ADFI");
            }
        }

        private void btnCheckIn_Click(object sender, EventArgs e)
        {
            FrmUsuarioCheck frmUsuarioCheck = new FrmUsuarioCheck();
            frmUsuarioCheck.usuario = ((DataRowView)this.bindingSource.Current).Row["Usuario"].ToString();
            frmUsuarioCheck.PK_Usuario = Convert.ToInt32(((DataRowView)this.bindingSource.Current).Row["PK_USUARIO"].ToString());
            FrmPrincipal.ShowModalMdiChildren(frmUsuarioCheck);
        }

        private bool TemSolicitacaoNumerario()
        {
            var query = "select Solicitante from Controle_Numerarios_Solicitacao " +
                         "where Solicitante=@Usuario and Status_Atual = 1";
            var GoOn = false;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Usuario", ((DataRowView)this.bindingSource.Current).Row["Usuario"].ToString());

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            GoOn = true;
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

        private void ExcluirMenuUsuario()
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "delete from UsuariosMenus WHERE Usuario = @Usuario " +
                               "delete from usuarios where usuario = @Usuario " +
                               "delete from MSLOGIN_Usuarios where LOGIN = @Usuario " +
                               "delete from UsuariosClientes WHERE Usuario = @Usuario";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Usuario", ((DataRowView)this.bindingSource.Current).Row["Usuario"].ToString());
                    cmd.ExecuteNonQuery();
                }
                LogSistemas.AddLogSistema(txtNome.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Menus do Usuário:{0} excluídos do sistema", ((DataRowView)this.bindingSource.Current).Row["Nome_Completo"].ToString()));
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void ExcluirEmailsAvisos()
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "DELETE FROM Emails_avisos WHERE Email = @Email ";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                    cmd.ExecuteNonQuery();
                }
                LogSistemas.AddLogSistema(txtNome.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Avisos do Usuário:{0} excluídos do sistema", ((DataRowView)this.bindingSource.Current).Row["Nome_Completo"].ToString()));
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void DesativarDaAutorizacaoDosNumerarios()
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "UPDATE Controle_Hierarquico_Celulas SET FK_Supervisor  = '' WHERE EXCLUIDO = 0 AND FK_Supervisor = @UsuarioDesativado " +
                               "UPDATE Controle_Hierarquico_Celulas SET FK_Coordenador = '' WHERE EXCLUIDO = 0 AND FK_Coordenador = @UsuarioDesativado " +
                               "UPDATE Controle_Hierarquico_Celulas SET FK_Colaborador_Independente = '' WHERE EXCLUIDO = 0 AND FK_Colaborador_Independente = @UsuarioDesativado ";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@UsuarioDesativado", ((DataRowView)this.bindingSource.Current).Row["Usuario"].ToString());
                    cmd.ExecuteNonQuery();
                }
                LogSistemas.AddLogSistema(txtNome.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Usuário {0} desativado das autorizações de numerário", ((DataRowView)this.bindingSource.Current).Row["Nome_Completo"].ToString()));
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void ReativarEmailsAvisos()
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "UPDATE Emails_avisos SET Ativo = 1 WHERE Email = @Email ";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                    cmd.ExecuteNonQuery();
                }
                LogSistemas.AddLogSistema(txtNome.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Avisos do Usuário:{0} reativados.", ((DataRowView)this.bindingSource.Current).Row["Nome_Completo"].ToString()));
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnAtivar_Click(object sender, EventArgs e)
        {
            Ferias = false;
            if (Convert.ToBoolean(((DataRowView)this.bindingSource.Current).Row["Ativo"].ToString()) == false)
            {
                Usuario.AtivaColaborador(true, Ferias, ((DataRowView)this.bindingSource.Current).Row["Usuario"].ToString());

                ReativarEmailsAvisos();
                AtualizaGrid();
                MessageBox.Show("Usuario Ativado com sucesso.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                if (TemSolicitacaoNumerario())
                {
                    MessageBox.Show("Usuário possui solicitação(ões) de autorização de numerários em aberto, não será possível desativá-lo.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    return;
                }

                if (MessageBox.Show("Deseja realmente desativar o colaborador? Os processos serão encaminhados para outro responsável.", "Informação", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                {
                    ExcluirEmailsAvisos();

                    FrmUsuarioDistribuicao frmUsuarioDistribuicao = new FrmUsuarioDistribuicao();
                    frmUsuarioDistribuicao.usuario = ((DataRowView)this.bindingSource.Current).Row["Usuario"].ToString();
                    frmUsuarioDistribuicao.email = txtEmail.Text;
                    frmUsuarioDistribuicao.ferias = Ferias;
                    FrmPrincipal.ShowModalMdiChildren(frmUsuarioDistribuicao);

                    DesativarDaAutorizacaoDosNumerarios();

                    AtualizaGrid();
                    MessageBox.Show("Usuario Desativado com sucesso.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
        }

        private void dataGridView_SelectionChanged(object sender, EventArgs e)
        {
            if (dataGridView.RowCount > 0)
            {
                if (Convert.ToBoolean(((DataRowView)this.bindingSource.Current).Row["Ativo"].ToString()) == true)
                {
                    btnAtivar.Text = "Desativar";
                }
                else
                {
                    btnAtivar.Text = "Ativar";
                }

                btnFerias.Enabled = ((!Convert.ToBoolean(((DataRowView)this.bindingSource.Current).Row["Ferias"].ToString())) && Convert.ToBoolean(((DataRowView)this.bindingSource.Current).Row["Ativo"].ToString()));
            }
        }

        private void btnFerias_Click(object sender, EventArgs e)
        {
            Ferias = true;

            if (TemSolicitacaoNumerario())
            {
                MessageBox.Show("Usuário possui solicitação(ões) de autorização de numerários em aberto, não será possível desativá-lo.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (MessageBox.Show("Os processos serão encaminhados para outro responsável, deseja prosseguir?", "Informação", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                FrmUsuarioDistribuicao frmUsuarioDistribuicao = new FrmUsuarioDistribuicao();
                frmUsuarioDistribuicao.usuario = ((DataRowView)this.bindingSource.Current).Row["Usuario"].ToString();
                frmUsuarioDistribuicao.email = txtEmail.Text;
                frmUsuarioDistribuicao.ferias = Ferias;
                FrmPrincipal.ShowModalMdiChildren(frmUsuarioDistribuicao);
            }
            AtualizaGrid();
        }

        private void AtualizaGrid()
        {
            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getUsuarios();
            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;
        }

        private void DesativarEmailsAvisos()
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "UPDATE Emails_avisos SET Ativo = 0 WHERE Email = @Email";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                    cmd.ExecuteNonQuery();
                }

                LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Avisos do Usuário:{0} desativados ", txtUsuario.Text));

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void rdbAtivos_CheckedChanged(object sender, EventArgs e)
        {
            bindingSource.Filter = "Ativo = true";
        }

        private void rdbInativos_CheckedChanged(object sender, EventArgs e)
        {
            bindingSource.Filter = "Ativo = false";
        }

        private void rdbTodos_CheckedChanged(object sender, EventArgs e)
        {
            bindingSource.RemoveFilter();
        }
    }
}
