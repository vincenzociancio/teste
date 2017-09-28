using System;
using System.Windows.Forms;

namespace MS2000.Desktop.Componentes
{
    public partial class MSForm01 : Form
    {
        public MSForm01()
        {
            InitializeComponent();
        }

        private void MSForm01_Load(object sender, EventArgs e)
        {
            #if DEBUG
                this.Text += " (***DESENVOLVIMENTO***)";
            #else
                //this.Text += " (***PRODUÇÃO***)";
            #endif
        }       
    }
}
