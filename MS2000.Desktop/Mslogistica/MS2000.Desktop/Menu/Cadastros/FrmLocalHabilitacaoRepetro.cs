using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Cadastros
{
    public partial class FrmLocalHabilitacaoRepetro : MS2000.Desktop.Componentes.MSForm01
    {
        public StatusCadastro statusCadastro;
        public string Contrato { get; set; }
        public string Local { get; set; }
        public string Importador { get; set; }
        string descricao;

        public FrmLocalHabilitacaoRepetro()
        {
            InitializeComponent();
        }

        private void frmLocalHabilitacaoRepetro_Load(object sender, EventArgs e)
        {
            if (statusCadastro == StatusCadastro.Editar)
            {
                DataTable table = getLocaisInventario(Importador, Contrato, Local);
                txtCodigo.Text = Local;
                descricao = table.Rows[0]["Descricao"].ToString();
                txtDescricao.Text = table.Rows[0]["Descricao"].ToString();               
                ckbAtivo.Checked = Convert.ToBoolean(table.Rows[0]["ativo"]);
            }
        }

        private DataTable getLocaisInventario(string importador, string contrato, string local)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Contrato, Descricao, ativo, local " +
                "FROM Locais_Inventario Where importador = @importador and local = @local and contrato = @contrato and Setor = 'JUR'";

            DataTable table;
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Importador", importador);
                cmd.Parameters.AddWithValue("@local", local);
                cmd.Parameters.AddWithValue("@contrato", contrato);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private string getNovoCodigoLocal(string contrato, string importador)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT COALESCE(MAX(CONVERT(float , Local)),0)+1 AS NovoCodigo FROM Locais_Inventario " +
                "WHERE IsNumeric(Local) = 1 and Contrato = @contrato and Importador = @importador and Setor = 'JUR'";
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@importador", importador);
                    cmd.Parameters.AddWithValue("@contrato", contrato);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            reader.Read();
                            return reader[0].ToString();
                        }
                        else
                        {
                            return "1";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return "-1";
            }
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtDescricao.Text))
            {
                MessageBox.Show("A descrição do local é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricao.Focus();
                return;
            }          

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Locais_Inventario set " +
                        "Descricao = @Descricao, ativo = @ativo " +
                        "Where importador = @importador and local = @local and contrato = @contrato and Setor = 'JUR'";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {                        
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@ativo", Convert.ToInt16(ckbAtivo.Checked));                     
                        cmd.Parameters.AddWithValue("@local", Local);
                        cmd.Parameters.AddWithValue("@contrato", Contrato);
                        cmd.Parameters.AddWithValue("@importador", Importador);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De:{0} Para:{1}", descricao, txtDescricao.Text));
                }
                else
                {
                    string novoCodigo;
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into Locais_Inventario " +
                        "(Importador, Contrato, Descricao, ativo, local, setor) " +
                        "values" +
                         "(@Importador, @contrato, @Descricao, @ativo, @local,@setor)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        novoCodigo = getNovoCodigoLocal(Contrato, Importador);                        
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@ativo", Convert.ToInt16(ckbAtivo.Checked));                       
                        cmd.Parameters.AddWithValue("@local", novoCodigo);
                        cmd.Parameters.AddWithValue("@contrato", Contrato);
                        cmd.Parameters.AddWithValue("@importador", Importador);
                        cmd.Parameters.AddWithValue("@setor", "JUR");
                        cmd.ExecuteNonQuery();
                    }
                    txtCodigo.Text = novoCodigo;
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Descricao:{0}", txtDescricao.Text));
                }

                if (statusCadastro == StatusCadastro.Editar)
                {
                    MessageBox.Show("Registro alterado com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }

                this.DialogResult = DialogResult.OK;
                Close();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.Close();
            this.DialogResult = DialogResult.Cancel;
        }      
    }
}
