using Microsoft.Reporting.WinForms;
using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Sistema
{
    public partial class FrmPrintSenha : Form
    {
        public string ID { get; set; }
        public int TipoRelatorio { get; set; }
      

        public class ControleSenha
        {
            public string Usuario { get; set; }
            public string Email { get; set; }
            public string Senha_Rede { get; set; }
            public string Senha_MS2000 { get; set; }

        }

        public FrmPrintSenha()
        {
            InitializeComponent();
        }

        private List<ControleSenha> getUsuario()
        {
            string query ="";

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            if (TipoRelatorio == 1)
            {
                query = "SELECT U.Nome_Completo as Usuario, C.Senha_MS2000, C.Senha_Rede,U.Email " +
                        "FROM Usuarios U INNER JOIN Controle_Usuarios_Senhas C ON U.Usuario = C.Usuario " +
                        "ORDER BY U.Nome_Completo";
            }
            else
            {
                query = "SELECT U.Nome_Completo as Usuario, C.Senha_MS2000, C.Senha_Rede,U.Email " +
                        "FROM Usuarios U INNER JOIN Controle_Usuarios_Senhas C ON U.Usuario = C.Usuario " +
                        "WHERE C.ID = @Usuario " +
                        "ORDER BY U.Nome_Completo";
            }
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                if (TipoRelatorio == 2)
                {
                    cmd.Parameters.AddWithValue("@Usuario", ID);
                }
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    List<ControleSenha> lista = new List<ControleSenha>();
                    while (reader.Read())
                    {
                        lista.Add(new ControleSenha
                        {
                            Usuario = reader["Usuario"].ToString(),
                            Email = reader["Email"].ToString(),
                            Senha_Rede = reader["Senha_Rede"].ToString(),
                            Senha_MS2000 = reader["Senha_MS2000"].ToString(),
                        });
                    }
                    return lista;
                }
            }
        }

        private void FrmPrintSenha_Load(object sender, EventArgs e)
        {
            reportViewer1.SetDisplayMode(DisplayMode.PrintLayout);
            reportViewer1.ZoomMode = ZoomMode.Percent;
            reportViewer1.ZoomPercent = 100;
            try
            {               
                reportViewer1.LocalReport.DataSources.Clear();
                reportViewer1.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Sistema.rptControleSenhas.rdlc";
                List<ControleSenha> lista = getUsuario();

                ReportDataSource rps = new ReportDataSource("ds", lista);

                reportViewer1.LocalReport.DataSources.Add(rps);
                reportViewer1.LocalReport.Refresh();
                reportViewer1.RefreshReport();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
