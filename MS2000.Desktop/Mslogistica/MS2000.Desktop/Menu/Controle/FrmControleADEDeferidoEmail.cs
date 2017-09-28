using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmControleADEDeferidoEmail : MS2000.Desktop.Componentes.MSForm01
    {
        public string importador { get; set; }
        public string dataPublicacao { get; set; }
        public string numADE { get; set; }
        public string cnpj { get; set; }
        public string embarcacao { get; set; }
        public string anexo { get; set; }
        
        public FrmControleADEDeferidoEmail()
        {
            InitializeComponent();
        }

        private void EnviaEmail()
        {
            try
            {
                EmailAuto.incluir("MS2000",txtAssunto.Text,txtAssunto.Text,txtDE.Text,txtPara.Text,txtCC.Text,"",rtxtCorpoEmail.Text,
                                    string.IsNullOrEmpty(txtAnexo.Text) ? "" : txtAnexo.Text, 1);
                MessageBox.Show("Email Enviado com Sucesso!", "Enviado", MessageBoxButtons.OK,
                   MessageBoxIcon.None);
                Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnEnviar_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(txtPara.Text))
                {
                    MessageBox.Show("O Campo PARA é obrigatório", "Aviso", MessageBoxButtons.OK,
                        MessageBoxIcon.Exclamation);
                    return;
                }
                if (MessageBox.Show("Tem Certeza que deseja enviar este e-mail?", "Confirmação", MessageBoxButtons.OKCancel,MessageBoxIcon.Question) == DialogResult.OK)
                {
                    EnviaEmail();
                }
            }
            catch (Exception ex )
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void chkAnexo_CheckedChanged(object sender, EventArgs e)
        {
            if (chkAnexo.Checked)
                txtAnexo.Text = anexo;
            else
                txtAnexo.Clear();
        }

        private void FrmControleADEDeferidoEmail_Load(object sender, EventArgs e)
        {
            lblCNPJ.Text = cnpj;
            lblDataPublicacao.Text = dataPublicacao;
            lblEmbarcacao.Text = embarcacao;
            lblImportador.Text = importador;
            lblNumeroADE.Text = numADE;
            txtAnexo.Enabled = false;
            if (string.IsNullOrEmpty(anexo))
            {
                chkAnexo.Enabled = false;
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
