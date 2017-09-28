using System;
using System.Windows.Forms;
using System.Runtime.InteropServices;
using MS2000.Desktop.Classes;
using System.Diagnostics;

namespace MS2000.Desktop
{
    public partial class FrmSuporte : Form
    {
        FormImmobiliser immobiliser;

        public FrmSuporte()
        {
            InitializeComponent();
            this.immobiliser = new FormImmobiliser(this);
        }

        private void frmSuporte_Load(object sender, EventArgs e)
        {
            int screenWidth = Screen.PrimaryScreen.WorkingArea.Width;
            int screenHeight = Screen.PrimaryScreen.WorkingArea.Height;
            this.Left = screenWidth - this.Width;
            this.Top = screenHeight - this.Height;
        }

        private int _acumular = 20;

        private void timer1_Tick(object sender, EventArgs e)
        {
            _acumular -= 1;
            lblSeg.Text = _acumular.ToString() + " segundos...";

            Application.DoEvents();
            if (_acumular == 0)
            {
                timer1.Enabled = false;

                //Esouza 24/11/2015
                //Pega o nome do processo deste programa
                string nomeProcesso = Process.GetCurrentProcess().ProcessName;
                //Busca os processos com este nome que estão em execução
                Process[] processos = Process.GetProcessesByName(nomeProcesso);
                foreach (var processo in processos)
                {
                    processo.Kill();
                    processo.WaitForExit();
                }
                //Esouza 24/11/2015
                //Application.Exit();
            }
        }

        private void FrmSuporte_FormClosing(object sender, FormClosingEventArgs e)
        {
            e.Cancel = e.CloseReason == CloseReason.UserClosing;
        }     
    }
}
