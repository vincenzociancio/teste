using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmControleHoraExtraAutorizacao : MS2000.Desktop.Componentes.MSForm01
    {
        public void HabilitarDesabilitaControles(bool bValue)
        {
            btnAutoriza.Enabled = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Controle - Contorle de Hora Extra - Autorizar Hora Extra",
                Chave_Busca = "botaoautorizahoraextra"
            });

            btnNaoAutoriza.Enabled = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Controle - Contorle de Hora Extra - Não Autorizar Hora Extra",
                Chave_Busca = "botaonaoautorizahoraextra"
            });

            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }
        }

        public FrmControleHoraExtraAutorizacao()
        {
            InitializeComponent();
        }

        private DataTable getControleHE()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT ID,C.Usuario,C.Setor,U.Nome_Completo,Data_Solicitacao,Lanche,Suporte_TI,Suporte_Sistemas,Suporte_Financeiro,Tarefa_Executar " +
                           ",Chefia,Autorizacao_Chefia,Gerencia,Autorizacao_Gerencia,Diretor,Autorizacao_Diretor " +
                           "FROM Controle_Hora_Extra C Inner Join Usuarios U on C.Usuario = U.PK_USUARIO ";

            if (FrmPrincipal.PK_UsuarioLogado == 92 || FrmPrincipal.PK_UsuarioLogado == 249)
            {
                query = query + "WHERE (Chefia = '' OR Chefia is null) and U.Setor = 'opn' and NaoAutorizado = '0'";
            }

            if (FrmPrincipal.PK_UsuarioLogado == 207)
            {
                query = query + "WHERE (Gerencia = '' OR Gerencia is null) and U.Setor = 'OPN' and NaoAutorizado = '0'";
            }
            else
                if (FrmPrincipal.PK_UsuarioLogado == 77)
                {
                    query = query + "WHERE (Gerencia = '' OR Gerencia is null) and U.Setor <> 'OPN' and NaoAutorizado = '0' ";
                }

            if (FrmPrincipal.PK_UsuarioLogado == 77 || FrmPrincipal.PK_UsuarioLogado == 174)
            {
                query = query + "WHERE (Diretor = '' OR Diretor is null) and NaoAutorizado = '0' ";
            }

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Usuario", FrmPrincipal.PK_UsuarioLogado);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }
        private void getSetor()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select ID, descricao from Setores where Excluido = '0' order by descricao ";
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
                cbbSetor.SelectedIndex = -1;
                cbbSetor.DataSource = table;
                cbbSetor.DisplayMember = "descricao";
                cbbSetor.ValueMember = "ID";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void FrmControleHoraExtraAutorizacao_Load(object sender, EventArgs e)
        {
            getSetor();
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;

            if (FrmPrincipal.Hierarquia == 1 || FrmPrincipal.Hierarquia == 2)
            {
                bindingSource.DataSource = getControleHE();
                dataGridView.DataSource = bindingSource;

                txtNome.DataBindings.Add(new Binding("Text", bindingSource, "Nome_Completo", true));
                cbbSetor.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Setor"));
                txtData.DataBindings.Add(new Binding("Text", bindingSource, "Data_Solicitacao", true, DataSourceUpdateMode.OnValidation, "  /  /"));
                ckbLanche.DataBindings.Add(new Binding("Checked", bindingSource, "Lanche", true));
                ckbSuporteFinanceiro.DataBindings.Add(new Binding("Checked", bindingSource, "Suporte_Financeiro", true));
                ckbSuporteTI.DataBindings.Add(new Binding("Checked", bindingSource, "Suporte_TI", true));
                ckbSuporteSistemas.DataBindings.Add(new Binding("Checked", bindingSource, "Suporte_Sistemas", true));
                txtTarefa.DataBindings.Add(new Binding("Text", bindingSource, "Tarefa_Executar", true));
            }
            else
            {
                bindingSource.DataSource = null;
            }

            if (dataGridView.RowCount == 0)
            {
                btnNaoAutoriza.Enabled = false;
                btnAutoriza.Enabled = false;
            }

        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnAutoriza_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                if (FrmPrincipal.PK_UsuarioLogado == 92 || FrmPrincipal.PK_UsuarioLogado == 249)
                {
                    string query = "UPDATE Controle_Hora_Extra " +
                                   "SET Chefia = @Chefia " +
                                   ",Autorizacao_Chefia = @Autorizacao_Chefia " +
                                   "WHERE ID = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {

                        cmd.Parameters.AddWithValue("@Chefia", FrmPrincipal.PK_UsuarioLogado);
                        cmd.Parameters.AddWithValue("@Autorizacao_Chefia", DateTime.Now);
                        cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource.Current).Row["ID"].ToString());
                        cmd.ExecuteNonQuery();
                    }
                }

                if (FrmPrincipal.PK_UsuarioLogado == 207)
                {
                    string query = "UPDATE Controle_Hora_Extra " +
                                   " SET Gerencia = @Gerencia " +
                                   ",Autorizacao_Gerencia = @Autorizacao_Gerencia " +
                                   "WHERE ID = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Gerencia", FrmPrincipal.PK_UsuarioLogado);
                        cmd.Parameters.AddWithValue("@Autorizacao_Gerencia", DateTime.Now);
                        cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource.Current).Row["ID"].ToString());
                        cmd.ExecuteNonQuery();
                    }
                }

                if (FrmPrincipal.PK_UsuarioLogado == 77 && FrmPrincipal.FK_SetorUsuario != "OPN")
                {
                    string query = "UPDATE Controle_Hora_Extra " +
                                   " SET Chefia = @Chefia " +
                                   ",Autorizacao_Chefia = @Autorizacao_Chefia " +
                                   ",Gerencia = @Gerencia " +
                                   ",Autorizacao_Gerencia = @Autorizacao_Gerencia " +
                                   "WHERE ID = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Chefia", FrmPrincipal.PK_UsuarioLogado);
                        cmd.Parameters.AddWithValue("@Autorizacao_Chefia", DateTime.Now);
                        cmd.Parameters.AddWithValue("@Gerencia", FrmPrincipal.PK_UsuarioLogado);
                        cmd.Parameters.AddWithValue("@Autorizacao_Gerencia", DateTime.Now);
                        cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource.Current).Row["ID"].ToString());
                        cmd.ExecuteNonQuery();
                    }
                }

                if (FrmPrincipal.PK_UsuarioLogado == 77 || FrmPrincipal.PK_UsuarioLogado == 174)
                {
                    string query = "UPDATE Controle_Hora_Extra " +
                                   " SET Diretor = @Diretor " +
                                   ",Autorizacao_Diretor = @Autorizacao_Diretor " +
                                   "WHERE ID = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Diretor", FrmPrincipal.PK_UsuarioLogado);
                        cmd.Parameters.AddWithValue("@Autorizacao_Diretor", DateTime.Now);
                        cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource.Current).Row["ID"].ToString());
                        cmd.ExecuteNonQuery();
                    }
                }               

                LogSistemas.AddLogSistema(((DataRowView)this.bindingSource.Current).Row["ID"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Autorizador:{0}  - Data Autorizada:{1}", FrmPrincipal.PK_UsuarioLogado, DateTime.Now.Date.ToString()));

                bindingSource.DataSource = getControleHE();
                dataGridView.DataSource = bindingSource;

                MessageBox.Show("Hora extra autorizada com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);

                HabilitarDesabilitaControles(false);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnNaoAutoriza_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "UPDATE Controle_Hora_Extra " +
                               " SET NaoAutorizado = 1 " +
                                "WHERE ID = @ID";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource.Current).Row["ID"].ToString());
                    cmd.ExecuteNonQuery();
                }

                LogSistemas.AddLogSistema(((DataRowView)this.bindingSource.Current).Row["ID"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Autorizador:{0}  - Data não Autorizada:{1}", FrmPrincipal.PK_UsuarioLogado, DateTime.Now.Date.ToString()));

                bindingSource.DataSource = getControleHE();
                dataGridView.DataSource = bindingSource;

                MessageBox.Show("Hora extra não autorizada.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void EnviaEmail()
        {
            string corpo_email;
            string vDe, vPara, vCC, vCCo, vImp;
            string vAssunto;
            string vTitulo;
            string vBody;
            string vAnexo;
            int vHTML;

            vTitulo = "MS2000 - Solicitação de Hora Extra";
            vAssunto = "MS2000 - Solicitação de Hora Extra";
            vHTML = 1;

            vDe = "MS2000 <auditoria@logistic-ms.com.br>";
            vPara = "Leonardo.Alabarce@mslogistica.com.br";
            //if (FrmPrincipal.FK_SetorUsuario == "OPN")
            //{
            //    vPara = "Fabiano.Ferreira@mslogistica.com.br;Odilma.queiroz@mslogistica.com.br;Sandra.Freire@mslogistica.com.br;Maria.Eduarda@mslogistica.com.br";
            //}
            //else
            //{
            //    vPara = "Maria.Eduarda@mslogistica.com.br";
            //}

            vCC = "";
            vCCo = "";

            corpo_email = " Solicito Autorização de Hora extra do dia  " + txtData.Text + " - " + txtNome.Text + "<BR> Tarefa a executar:" + txtTarefa.Text;

            vBody = "<BR>"
                   + "Prezado(a),<BR>"
                   + "<BR>"
                   + corpo_email + "<BR><BR>"
                   + "Este e-mail é automático e não necessita de resposta. <BR>"
                   + "<BR><BR>"
                   + "Atenciosamente,"
                   + "<BR><BR>"
                   + "MS2000 - SISTEMA GERENCIAL ADUANEIRO<BR><BR>";

            EmailAuto.incluir("HE", vAssunto, vTitulo, vDe, vPara, vCC, vCCo, vBody, "", vHTML);

        }
    }
}
