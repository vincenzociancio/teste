using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Componentes
{
    public partial class FrmLocalizarProcesso : MS2000.Desktop.Componentes.MSForm01
    {
        class ViewResult
        {
            public ViewResult()
            {

            }
            public ViewResult(SqlDataReader reader)
            {
                ID = (int)reader["ID"];
                Processo = reader["Codigo"].ToString();
                RazaoSocialCliente = reader["Razao_Social"].ToString();
            }
            public int ID { get; set; }
            public string Processo { get; set; }
            public string RazaoSocialCliente { get; set; }

            public List<ViewResult> Buscar(string paramSQL, string param)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    using (var cmd = new SqlCommand(paramSQL, conn))
                    {
                        cmd.Parameters.AddWithValue("@param", string.Format("%{0}%", param));
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            List<ViewResult> lista = new List<ViewResult>();
                            if (dr.HasRows)
                            {
                                while (dr.Read())
                                {
                                    lista.Add(new ViewResult(dr));
                                }
                            }
                            return lista;
                        }
                    }
                }
                catch (Exception ex)
                {
                    throw;
                }
            }

            public List<ViewResult> Buscar(string paramSQL, DateTime param)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    using (var cmd = new SqlCommand(paramSQL, conn))
                    {
                        cmd.Parameters.AddWithValue("@param", param);
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            List<ViewResult> lista = new List<ViewResult>();
                            if (dr.HasRows)
                            {
                                while (dr.Read())
                                {
                                    lista.Add(new ViewResult(dr));
                                }
                            }
                            return lista;
                        }
                    }
                }
                catch (Exception ex)
                {
                    throw;
                }
            }
        }

        public FrmLocalizarProcesso()
        {
            InitializeComponent();
        }

        private void FrmLocalizarProcesso_Load(object sender, EventArgs e)
        {
            dataGridView.AutoGenerateColumns = false;
        }

        private void btnLocalizar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtParam.Text.Trim()))
            {
                txtParam.Focus();
                return;
            }
            //dataGridView.DataSource = null;
            string sql = string.Empty;

            foreach (Control control in flpOpcoes.Controls)
            {
                if (((RadioButton)control).Checked)
                {
                    switch (Convert.ToInt16(control.Tag))
                    {
                        case 0: sql = "SELECT P.ID, P.Codigo, I.Razao_Social " +
                                      "FROM Processos P " +
                                      "INNER JOIN Importadores I ON (P.Importador = I.Codigo)" +
                                      "WHERE P.Codigo like @param ";
                            break;

                        case 1: sql = "SELECT P.ID, P.Codigo, I.Razao_Social " +
                                      "FROM Processos P " +
                                      "INNER JOIN Importadores I ON (P.Importador = I.Codigo)" +
                                      "WHERE P.Codigo_Cliente like @param ";
                            break;

                        case 2: sql = "SELECT P.ID, P.Codigo, I.Razao_Social " +
                                      "FROM Processos P " +
                                      "INNER JOIN Importadores I ON (P.Importador = I.Codigo)" +
                                      "WHERE P.NR_DECLARACAO_IMP like @param ";
                            break;

                        case 3: sql = "SELECT P.ID, P.Codigo, I.Razao_Social " +
                                       "FROM Processos P " +
                                       "INNER JOIN Importadores I ON (P.Importador = I.Codigo) " +
                                       "LEFT JOIN RAT R ON R.Fk_Processo = P.Codigo " +
                                       "LEFT JOIN RAT_Repetro RR ON RR.FK_Processo = P.Codigo " +
                                       "WHERE P.Numero_RCR like @param OR R.Numero_Rat like @param OR RR.Num_Rat like @param ";
                            break;

                        case 4: sql = "SELECT P.ID, P.Codigo, I.Razao_Social " +
                                      "FROM Processos P " +
                                      "INNER JOIN Importadores I ON (P.Importador = I.Codigo)" +
                                      "WHERE P.Numero_TR like @param ";
                            break;

                        case 5: sql = "SELECT P.ID, P.Codigo, I.Razao_Social " +
                                      "FROM Processos P " +
                                      "INNER JOIN Importadores I ON (P.Importador = I.Codigo)" +
                                      "INNER JOIN Conhecimento_Processo C ON (P.Codigo = C.Processo)" +
                                      "WHERE C.Numerodoccarga like @param ";
                            break;

                        case 6: sql = "SELECT P.ID, P.Codigo, I.Razao_Social " +
                                      "FROM Processos P " +
                                      "INNER JOIN Importadores I ON (P.Importador = I.Codigo)" +
                                      "INNER JOIN Conhecimento_Processo C ON (P.Codigo = C.Processo)" +
                                      "WHERE C.Numeromaster like @param ";
                            break;

                        case 7: sql = "SELECT P.ID, P.Codigo, I.Razao_Social " +
                                      "FROM Processos P " +
                                      "INNER JOIN Importadores I ON (P.Importador = I.Codigo)" +
                                      "INNER JOIN Conhecimento_Processo C ON (P.Codigo = C.Processo)" +
                                      "WHERE C.Numeromanifesto like @param ";
                            break;

                        case 8: sql = "SELECT P.ID, P.Codigo, I.Razao_Social " +
                                      "FROM Processos P " +
                                      "INNER JOIN Importadores I ON (P.Importador = I.Codigo)" +
                                      "INNER JOIN Conhecimento_Processo C ON (P.Codigo = C.Processo)" +
                                      "WHERE C.codigo_presenca_carga like @param ";
                            break;

                        case 9: sql = "SELECT P.ID, P.Codigo, I.Razao_Social " +
                                      "FROM Processos P " +
                                      "INNER JOIN Importadores I ON (P.Importador = I.Codigo)" +
                                      "INNER JOIN Faturas F ON (P.Codigo = F.Processo)" +
                                      "WHERE F.Codigo like @param ";
                            break;

                        case 10: sql = "SELECT P.ID, P.Codigo, I.Razao_Social " +
                                       "FROM Processos P " +
                                       "INNER JOIN Importadores I ON (P.Importador = I.Codigo)" +
                                       "WHERE P.Data >= @param ";
                            break;

                        case 11: sql = "SELECT P.ID, P.Codigo, I.Razao_Social " +
                                       "FROM Processos P " +
                                       "INNER JOIN Importadores I ON (P.Importador = I.Codigo) " +
                                       "INNER JOIN Faturas F ON (F.Processo = P.Codigo) " +
                                       "INNER JOIN ItensFaturas IFAT ON (IFAT.Fatura_Id = F.Fatura_Id) " +
                                       "WHERE IFAT.PO like @param ";
                            break;

                        case 12: sql = "SELECT P.ID, P.Codigo, I.Razao_Social " +
                                       "FROM Processos P " +
                                       "INNER JOIN Importadores I ON (P.Importador = I.Codigo)" +
                                       "WHERE P.DDE like @param ";
                            break;

                        case 13: sql = "SELECT P.ID, P.Codigo, I.Razao_Social " +
                                       "FROM Processos P " +
                                       "INNER JOIN Importadores I ON (P.Importador = I.Codigo)" +
                                       "INNER JOIN Processos_REs R ON (P.Codigo = R.Processo) " +
                                       "WHERE R.RE like @param ";
                            break;
                        // default:

                    }
                }
            }

            var retorno = rdbDataProcesso.Checked ?
                (new ViewResult()).Buscar(sql, Convert.ToDateTime(txtParam.Text)) :
                (new ViewResult()).Buscar(sql, txtParam.Text);

            dataGridView.DataSource = retorno;
            txtParam.Focus();

            if (retorno.Count <= 0)
            {
                MessageBox.Show("Não existe nenhum registro para parâmentro especificado!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtParam.Focus();
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void dataGridView_DataBindingComplete(object sender, DataGridViewBindingCompleteEventArgs e)
        {
            foreach (DataGridViewRow row in dataGridView.Rows)
            {
                row.Cells[2].Value = BuscarUsuario(Convert.ToInt32(row.Cells[3].Value));
            }
        }

        public string BuscarUsuario(int pk_processo)
        {
            string sql = "SELECT u.Nome_Completo FROM Controle_Pastas c " +
                "inner join Usuarios u on (c.FK_Usuario = u.PK_USUARIO)" +
                "where c.FK_Processo = @PK_Processo";
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@PK_Processo", pk_processo);
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        string nome_completo = string.Empty;
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                nome_completo = dr["Nome_Completo"].ToString();
                            }
                        }
                        return nome_completo;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
