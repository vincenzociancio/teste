using MS2000.Desktop.Classes;
using System;
using System.Windows.Forms;

namespace MS2000.Desktop
{
    public partial class FrmAvisoAtualizacaoTabelas : Form
    {
        FormImmobiliser immobiliser;

        public FrmAvisoAtualizacaoTabelas()
        {
            InitializeComponent();
            this.immobiliser = new FormImmobiliser(this);
        }

        private void FrmAvisoAtualizacaoTabelas_Load(object sender, EventArgs e)
        {
            int screenWidth = Screen.PrimaryScreen.WorkingArea.Width;
            int screenHeight = Screen.PrimaryScreen.WorkingArea.Height;
            this.Left = screenWidth - this.Width;
            this.Top = screenHeight - this.Height;
        }

        private void FrmAvisoAtualizacaoTabelas_FormClosing(object sender, FormClosingEventArgs e)
        {
            e.Cancel = e.CloseReason == CloseReason.UserClosing;
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            this.Hide();
            this.Dispose();
        }
    }
}
