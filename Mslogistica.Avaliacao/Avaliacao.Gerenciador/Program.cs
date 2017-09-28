using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;

namespace Avaliacao.Gerenciador
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main(string[] args)
        {
            if (args.Length == 0)
            {                
                MessageBox.Show("Acesso negado!", "Acesso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            else
            {
                if (args[0] == "xyz")
                {
                    Application.EnableVisualStyles();
                    Application.SetCompatibleTextRenderingDefault(false);
                    Application.Run(new FrmMain());
                }
                else
                {
                    MessageBox.Show("Acesso negado!", "Acesso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }

            }

            //Application.EnableVisualStyles();
            //Application.SetCompatibleTextRenderingDefault(false);
            //Application.Run(new FrmMain());
        }
    }
}
