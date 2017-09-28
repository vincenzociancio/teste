using Outlook = Microsoft.Office.Interop.Outlook;

namespace MSOutlookAddIn
{
    public partial class ThisAddIn
    {
        private Outlook.Explorer expl;
        public static string UsuarioLogado = null;      


        private void ThisAddIn_Startup(object sender, System.EventArgs e)
        {
            expl = this.Application.ActiveExplorer();
            ((Outlook.ExplorerEvents_10_Event)expl).Close += new Microsoft.Office.Interop.Outlook.ExplorerEvents_10_CloseEventHandler(ThisAddIn_Close);
            //this.Application.ItemLoad += new ApplicationEvents_11_ItemLoadEventHandler(CurrentExplorer_Event);
            //this.Application.AdvancedSearchStopped += new (CurrentExplorer_Event);

       }

        private void ThisAddIn_Close()
        {
            UsuarioLogado = null;
        }

        private void ThisAddIn_Shutdown(object sender, System.EventArgs e)
        {

        }

        #region VSTO generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InternalStartup()
        {
            this.Startup += new System.EventHandler(ThisAddIn_Startup);
            this.Shutdown += new System.EventHandler(ThisAddIn_Shutdown);
        }

        #endregion
    }
}
