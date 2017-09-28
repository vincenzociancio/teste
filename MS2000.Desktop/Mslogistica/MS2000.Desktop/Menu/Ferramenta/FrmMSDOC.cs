using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Ferramenta
{
    public partial class FrmMSDOC : MS2000.Desktop.Componentes.MSForm01
    {
        string Processo;
        public FrmMSDOC()
        {
            InitializeComponent();
        }

        private void FrmMSDOC_Load(object sender, EventArgs e)
        {

        }

        private void btnLocalizar_Click(object sender, EventArgs e)
        {
            using (var form = new FrmLocalizaMSDOC())
            {
               // form.Processo  
                if (FrmPrincipal.ShowModalMdiChildren(form) == DialogResult.OK)
                {
                    Processo = form.Processo;
                }
            }
        }
    }
}
