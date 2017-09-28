using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Ferramenta
{
    public partial class FrmVerificaAPENC : MS2000.Desktop.Componentes.MSForm01
    {
        public FrmVerificaAPENC()
        {
            InitializeComponent();
        }

        private void FrmVerificaAPENC_Load(object sender, EventArgs e)
        {
            ActiveControl = txtProcesso;
        }

        private void btnVerificar_Click(object sender, EventArgs e)
        {
            if (txtProcesso.MaskCompleted)
            {
                var processo = (new Processo()).BuscarPorCodigo(txtProcesso.Text);
                if (processo != null)
                {
                    ProcessStartInfo startInfo = new ProcessStartInfo();                    
                    startInfo.UseShellExecute = false;
                    startInfo.CreateNoWindow = true;
                    startInfo.WorkingDirectory = @"\\msapp01\SISTEMAS\MS2000";
                    startInfo.FileName = @"\\msapp01\SISTEMAS\MS2000\APenC_DiaAnterior.exe";
                    startInfo.WindowStyle = ProcessWindowStyle.Hidden;                   
                    startInfo.Arguments = string.Format("{0} {1}", processo.Importador, processo.Codigo);

                    try
                    {                        
                        using (Process exeProcess = Process.Start(startInfo))
                        {
                            exeProcess.WaitForExit();
                        }
                        MessageBox.Show("Fim da verificação!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    catch
                    {
                        // Log error.
                    }

                }
                else
                {
                    MessageBox.Show("Processo não encontrado!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                }
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
