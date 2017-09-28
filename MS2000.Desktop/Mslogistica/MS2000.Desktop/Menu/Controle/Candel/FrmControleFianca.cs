using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Controle.Candel
{
    public partial class FrmControleFianca : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        private float Impostos_Suspensos;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled   = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled  = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled     = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled   = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            
            btnFechar.Enabled   = (statusCadastro == StatusCadastro.None);                        
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panel1.Controls)
            {
              controle.Enabled = bValue;
            }
            
            VerificaBotoes();            
        }        

        public FrmControleFianca()
        {
            InitializeComponent();
        }

        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {            
            if (txtProcesso.MaskCompleted)
            {
                Impostos_Suspensos = getImpostosSuspensos();

                txtImpostosSuspensos.Text = Impostos_Suspensos.ToString();
            }
        }

        private float getImpostosSuspensos()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " SELECT (TR_VAL_COFINS+TR_VAL_II+TR_VAL_IPI+TR_VAL_PIS) AS Impostos_Suspensos FROM Processos WHERE Codigo = @Codigo ";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Codigo", txtProcesso.Text);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        reader.Read();

                        if (reader.HasRows)
                        {
                            return (float)reader["Impostos_Suspensos"];
                        }
                        else
                        {
                            return 0;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);

                return 0;
            }
        }
    }
}
