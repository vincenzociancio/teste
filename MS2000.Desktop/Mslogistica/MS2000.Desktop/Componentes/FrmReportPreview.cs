using System;

namespace MS2000.Desktop.Componentes
{
    public partial class FrmReportPreview : MSForm01
    {
        public FrmReportPreview()
        {
            InitializeComponent();
        }

        private void FrmReportPreview_Load(object sender, EventArgs e)
        {
            this.rptView.RefreshReport();            
        }
    }
}
