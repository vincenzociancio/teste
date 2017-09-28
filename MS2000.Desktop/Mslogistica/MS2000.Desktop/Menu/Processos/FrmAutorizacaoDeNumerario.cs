using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Processos
{
    public partial class FrmAutorizacaoDeNumerario : MS2000.Desktop.Componentes.MSForm01
    {
        public FrmAutorizacaoDeNumerario()
        {
            InitializeComponent();
        }

        private void FrmAutorizacaoDeNumerario_Load(object sender, EventArgs e)
        {
            dgvSolicitacao.AutoGenerateColumns = false;

            if (getAutorizador())
            {
                bindingSource.DataSource = getSolicitacao();

                dgvSolicitacao.DataSource = bindingSource;
                bindingNavigator.BindingSource = bindingSource;

                txtProcesso.DataBindings.Add(new Binding("Text", bindingSource, "FK_msNumero", true));
                txtCliente.DataBindings.Add(new Binding("Text", bindingSource, "Razao_Social", true));
                txtCNPJ.DataBindings.Add(new Binding("Text", bindingSource, "CNPJ_CPF_COMPLETO", true));
                mkdData.DataBindings.Add(new Binding("Text", bindingSource, "Data_Solicitacao", true, DataSourceUpdateMode.OnValidation, "  /  /"));
                mkdHora.DataBindings.Add(new Binding("Text", bindingSource, "Hora_Solicitacao", true, DataSourceUpdateMode.OnValidation, "  :"));
                txtSolicitante.DataBindings.Add(new Binding("Text", bindingSource, "Solicitante", true));
                txtStatus.DataBindings.Add(new Binding("Text", bindingSource, "Status_Atual", true));
                txtObs.DataBindings.Add(new Binding("Text", bindingSource, "OBS_Solicitacao", true));
            }
        }

        private bool getAutorizador()
        {
            //Eduardo - 14/12/2015 - Mudança, agora são todos os sup. e coord.     

            string query = "select Nome_Completo, Email from Usuarios " +
                "where Hierarquia in (2,3) and Ativo = 1 and Setor in('OPN','VIT') and PK_USUARIO = @PK_USUARIO";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@PK_USUARIO", FrmPrincipal.PK_UsuarioLogado);
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

        private DataTable getSolicitacao()
        {
            string query = "SELECT PK_Solicitacao,FK_msNumero,Data_Solicitacao, " +
                        "convert(varchar(5), Hora_Solicitacao, 108) as 'Hora_Solicitacao', " +
                        "st.Status as 'Status_Atual', u1.Nome_Completo as 'Solicitante', " +
                        "u1.Email as 'EmailSolicitante', autorizador_atual, i.Razao_Social, " +
                        "i.CNPJ_CPF_COMPLETO, u2.Nome_Completo as 'Autorizador', u2.Email as 'EmailAutorizador', OBS_Solicitacao " +
                        "FROM " +
                        "Controle_Numerarios_Solicitacao " +
                        "inner join usuarios u1 on u1.Usuario = Solicitante " +
                        "left join usuarios u2 on u2.Usuario = autorizador_atual " +
                        "inner join Processos p on p.Codigo = FK_MsNumero " +
                        "inner join Importadores i on i.Codigo = p.Importador " +
                        "inner join Controle_Numerarios_Status st on st.PK_Status = Status_Atual " +
                        "WHERE Status_Atual in(1,7) " +
                        "ORDER BY Data_Solicitacao desc";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    //cmd.Parameters.AddWithValue("@Autorizador", FrmPrincipal.UsuarioLogado);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        DataTable table = new DataTable();
                        table.Load(reader);
                        return table;
                    }
                }
            }
        }

        private void gravarNaoAutorizacao(int pk_solicitacao, string obs)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "update Controle_Numerarios_Solicitacao set " +
                    "Status_Atual = 5, OBS_NaoAutorizado = @OBS_NaoAutorizado, Autorizador_Atual = @Autorizador_Atual " +
                    "where PK_Solicitacao = @PK_Solicitacao";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@OBS_NaoAutorizado", obs);
                cmd.Parameters.AddWithValue("@PK_Solicitacao", pk_solicitacao);
                cmd.Parameters.AddWithValue("@Autorizador_Atual", FrmPrincipal.UsuarioLogado);
                cmd.ExecuteNonQuery();
            }
        }

        private void gravarAutorizacao(int pk_solicitacao)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "update Controle_Numerarios_Solicitacao set " +
                    "Status_Atual = 4, Autorizador_Atual = @Autorizador_Atual " +
                    "where PK_Solicitacao = @PK_Solicitacao";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@PK_Solicitacao", pk_solicitacao);
                cmd.Parameters.AddWithValue("@Autorizador_Atual", FrmPrincipal.UsuarioLogado);
                cmd.ExecuteNonQuery();
            }
        }

        private void gravarMovimento(int pk_solicitacao, string autorizador, int status)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "insert into Controle_Numerarios_Movimentos " +
                        "(FK_Solicitacao,Data_Movimento,Hora_Movimento,[Status],Autorizador)" +
                        "values " +
                        "(@FK_Solicitacao,GETDATE(),Convert(Time, GETDATE()),@Status,@Autorizador)";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@FK_Solicitacao", pk_solicitacao);
                cmd.Parameters.AddWithValue("@Status", status);
                cmd.Parameters.AddWithValue("@Autorizador", autorizador);
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
                cmd.Parameters.AddWithValue("@Assunto", assunto);
                cmd.Parameters.AddWithValue("@Titulo", titulo);
                cmd.Parameters.AddWithValue("@De", de);
                cmd.Parameters.AddWithValue("@Para", para);
                cmd.Parameters.AddWithValue("@Body", body);
                cmd.ExecuteNonQuery();
            }
        }


        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnAutorizar_Click(object sender, EventArgs e)
        {
            if (bindingSource.Count > 0)
            {
                string assunto = "MS2000PLUS - Envio de Numerários Autorizado - " + txtCliente.Text + " CNPJ: " + txtCNPJ.Text + " - Processo: " + txtProcesso.Text;
                string titulo = "Envio de Numerários Autorizado";
                string de = FrmPrincipal.Email;
                string para = ((DataRowView)bindingSource.Current).Row["EmailSolicitante"].ToString();
                string autorizador = FrmPrincipal.UsuarioNomeCompleto;

                string body = "<br>Prezado(s) Senhor(es),<br><br>";
                body += "Envio de numerários autorizado, processo: " + txtProcesso.Text + ", Ref.Cliente:" + txtCliente.Text + ".";
                body += "<br><br>Atenciosamente,<br><br>";
                body += autorizador + "<br><br><br>";

                int pk_solicitacao = (int)((DataRowView)bindingSource.Current).Row["PK_Solicitacao"];

                gravarAutorizacao(pk_solicitacao);

                gravarMovimento(pk_solicitacao, FrmPrincipal.UsuarioLogado, 4);

                gravarEmail(assunto, titulo, de, para, body);

                btnDesistir_Click(null, null);
                bindingSource.RemoveCurrent();
                MessageBox.Show("Registro gravado com sucesso!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void btnNaoAutorizar_Click(object sender, EventArgs e)
        {
            if (bindingSource.Count > 0)
            {
                pnlObservacao.Show();
            }
        }

        private void btnDesistir_Click(object sender, EventArgs e)
        {
            pnlObservacao.Hide();
            txtObsGravacao.Clear();
        }

        private void btnConfirmar_Click(object sender, EventArgs e)
        {
            string assunto = "MS2000PLUS - Envio de Numerários Não Autorizado - " + txtCliente.Text + " CNPJ: " + txtCNPJ.Text + " - Processo: " + txtProcesso.Text;
            string titulo = "Envio de Numerários Não Autorizado";            
            string de = FrmPrincipal.Email;
            string para = ((DataRowView)bindingSource.Current).Row["EmailSolicitante"].ToString();
            string autorizador = FrmPrincipal.UsuarioNomeCompleto;

            string body = "<br>Prezado(s) Senhor(es),<br><br>";
            body += "Envio de numerários não foi autorizado, processo: " + txtProcesso.Text + ", Ref.Cliente:" + txtCliente.Text + ".";
            if (!string.IsNullOrEmpty(txtObsGravacao.Text))
            {
                body += "<br><br>Observação:<br>";
                body += txtObsGravacao.Text;
            }
            body += "<br><br>Atenciosamente,<br><br>";
            body += autorizador + "<br><br><br>";

            int pk_solicitacao = (int)((DataRowView)bindingSource.Current).Row["PK_Solicitacao"];

            gravarNaoAutorizacao(pk_solicitacao, txtObsGravacao.Text);

            gravarMovimento(pk_solicitacao, FrmPrincipal.UsuarioLogado, 5);

            gravarEmail(assunto, titulo, de, para, body);

            btnDesistir_Click(null, null);
            bindingSource.RemoveCurrent();
            MessageBox.Show("Registro gravado com sucesso!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
    }
}
