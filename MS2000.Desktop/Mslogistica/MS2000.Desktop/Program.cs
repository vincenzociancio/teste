using System;
using System.Diagnostics;
using System.IO;
using System.Windows.Forms;

namespace MS2000.Desktop
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            //Pega o nome do processo deste programa
            string nomeProcesso = Process.GetCurrentProcess().ProcessName;
            //Busca os processos com este nome que estão em execução
            Process[] processos = Process.GetProcessesByName(nomeProcesso);
            //Se já houver um aberto
            if (processos.Length > 1)
            {
                //Mostra mensagem de erro e finaliza
                MessageBox.Show("Não é possível abrir mais de um instâncias deste sistema.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                Application.Exit();
            }
            //Caso contrário continue normalmente
            else
            {
                Application.EnableVisualStyles();
                Application.SetCompatibleTextRenderingDefault(false);

#if DEBUG
                    Application.Run(new Menu.Processos.Fatura.FrmItensFatura()); 
#else
                Application.Run(new FrmPrincipal());
                //Application.Run(new Menu.Processos.FrmRegistroLI());
#endif
            }
        }
    }
}
