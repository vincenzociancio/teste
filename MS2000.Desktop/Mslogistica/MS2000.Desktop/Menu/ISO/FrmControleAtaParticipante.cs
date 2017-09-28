using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmControleAtaParticipante : MS2000.Desktop.Componentes.MSForm01
    {
        public string ID { get; set; }
        public string NomeUsuarioLogin { get; set; }
        public FrmControleAtaParticipante()
        {
            InitializeComponent();
        } 

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnIncluiParticipante_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(mcbUsuario.SelectedValue.ToString()))
            {
                PegaUsuarioLogin();
                bindingSource1.Filter = "fk_usuario = '" + NomeUsuarioLogin + "'";
                if (bindingSource1.Count > 0)
                {
                    MessageBox.Show("Este participante ja esta na lista!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    mcbUsuario.Focus();
                    bindingSource1.RemoveFilter();
                    return;
                }
                else
                {
                    bindingSource1.RemoveFilter();
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Controle_Atas_Participantes " +
                                   "(fk_ata,fk_usuario)" +
                                   " VALUES " +
                                   "(@fk_ata,@fk_usuario)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@fk_ata", ID);
                        cmd.Parameters.AddWithValue("@fk_usuario", NomeUsuarioLogin);
                        // cmd.Parameters.AddWithValue("@Observacao", rtxtObservacao.Text);
                        cmd.ExecuteNonQuery();
                    }
                    bindingSource1.DataSource = GetParticipantes();
                }
            }
            else
            {
                MessageBox.Show("Por favor selecione um Participante.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            
        }

        private void getUsuarios()
        {
            Usuario Usuarios = new Usuario();
            mcbUsuario.DataSource = null;
            mcbUsuario.DataSource = Usuarios.getUsuarios();
            mcbUsuario.DisplayMember = "Nome_Completo";
            mcbUsuario.ValueMember = "PK_USUARIO";
            mcbUsuario.SelectedIndex = -1;
        }

        public DataTable GetParticipantes()
        {
            string query = "Select pk_atas_participante, fk_usuario, fk_ata, U.Nome_Completo, U.Email " +
                "from Controle_Atas_Participantes C inner join "+
                "Usuarios U on U.Usuario = C.fk_usuario where fk_ata = @fk_ata order by pk_atas_participante";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@fk_ata", ID);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        DataTable table = new DataTable();
                        table.Load(reader);
                        return table;
                    }
                }
            }

        }

        private void PegaUsuarioLogin()
        {
            string query = "Select Usuario " +
                   "from Usuarios where PK_USUARIO = " + mcbUsuario.SelectedValue;
            try
            {
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                                NomeUsuarioLogin = reader["Usuario"].ToString();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void FrmControleAtaParticipante_Load(object sender, EventArgs e)
        {
            
            bindingNavigator.DeleteItem = null;
            getUsuarios();
            bindingSource1.DataSource = GetParticipantes();
            bindingNavigator.BindingSource = bindingSource1;
            if (bindingSource1.Count > 0)
            {
                btnExcluir.Enabled = true;
            }
            else
            {
                btnExcluir.Enabled = false;
            }
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir este Participante?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "DELETE FROM Controle_atas_Participantes where pk_atas_participante = @pk_atas_participante";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@pk_atas_participante", Convert.ToInt32(bindingSource1.GetRelatedCurrencyManager("pk_atas_participante").Current));
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(((DataRowView)this.bindingSource1.Current).Row["pk_atas_participante"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Participante Deletado: {0}", ((DataRowView)this.bindingSource1.Current).Row["Nome_Completo"].ToString()));
                    bindingSource1.RemoveCurrent();
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
