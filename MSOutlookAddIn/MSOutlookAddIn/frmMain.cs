using System;
using System.Text.RegularExpressions;
using Outlook = Microsoft.Office.Interop.Outlook;
using System.Windows.Forms;
using System.IO;
using System.Reflection;
using System.Collections;
using MSOutlookAddIn.Classes;

namespace MSOutlookAddIn
{
    partial class frmMain
    {
        #region Form Region Factory

        [Microsoft.Office.Tools.Outlook.FormRegionMessageClass(Microsoft.Office.Tools.Outlook.FormRegionMessageClassAttribute.Note)]
        [Microsoft.Office.Tools.Outlook.FormRegionName("MSOutlookAddIn.FormRegion1")]
        public partial class FormRegion1Factory
        {
            // Occurs before the form region is initialized.
            // To prevent the form region from appearing, set e.Cancel to true.
            // Use e.OutlookItem to get a reference to the current Outlook item.
            private void FormRegion1Factory_FormRegionInitializing(object sender, Microsoft.Office.Tools.Outlook.FormRegionInitializingEventArgs e)
            {

            }
        }

        #endregion

        // Occurs before the form region is displayed.
        // Use this.OutlookItem to get a reference to the current Outlook item.
        // Use this.OutlookFormRegion to get a reference to the form region.
        private void FormRegion1_FormRegionShowing(object sender, System.EventArgs e)
        {
            if (!string.IsNullOrEmpty(ThisAddIn.UsuarioLogado))
            {
                //lblVersao.Visible = true;
                pnlTop.Visible = true;
                pnlTop.Dock = DockStyle.Top;
                Application.DoEvents();
                pnlUsuarioSenha.Visible = false;
                pnlLogo.Dock = DockStyle.Fill;
                Application.DoEvents();
            }
            else
            {
                pnlTop.Visible = false;
                pnlTop.Dock = DockStyle.None;
                pnlLogo.Dock = DockStyle.Fill;
                pnlUsuarioSenha.Visible = true;
                txtSenha.Clear();
                txtUsuario.Focus();
            }


            lblVersao.Text = String.Format("Version {0}", AssemblyVersion);
        }

        public string AssemblyVersion
        {
            get
            {
                return Assembly.GetExecutingAssembly().GetName().Version.ToString();
            }
        }

        // Occurs when the form region is closed.
        // Use this.OutlookItem to get a reference to the current Outlook item.
        // Use this.OutlookFormRegion to get a reference to the form region.
        private void FormRegion1_FormRegionClosed(object sender, System.EventArgs e)
        {

        }

        private void Read_Mails()
        {
            try
            {
                Outlook.Application app = new Outlook.Application();
                Outlook.MailItem objMail;

                for (int i = 1; i <= app.ActiveExplorer().Selection.Count; i++)
                {
                    objMail = (Microsoft.Office.Interop.Outlook.MailItem)app.ActiveExplorer().Selection[i];
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        // 13/08/2013
        // Alterado para pré-processo
        // 

        int Id_Pre_Processo = 0;

        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            if (txtProcesso.Text.Length >= 8)
            {
                bool Existe = false;
                string Codigo_Importador = string.Empty;
                //int Id_Pre_Processo = 0;

                //0 - Tipo Processo
                if (cbbTipo.SelectedIndex == 0)
                {
                    Processos pr = new Processos();
                    pr.ProcessoExiste(txtProcesso.Text, out Codigo_Importador, out Existe);
                }
                else//1 - Tipo Pré-Processo
                    if (cbbTipo.SelectedIndex == 1)
                    {
                        Pre_Processos pr = new Pre_Processos();
                        pr.ProcessoExiste(txtProcesso.Text, out Codigo_Importador, out Existe, out Id_Pre_Processo);
                    }


                if (Existe)
                {
                    Importadores imp = new Importadores();
                    imp.SelectImportador(Codigo_Importador);
                    txtNome.Text = imp.Razao_Social;
                    txtCNPJ.Text = imp.CNPJ;
                    pnlErro.Visible = false;
                    pnlLogo.Visible = false;
                    pnlVincular.Dock = DockStyle.Fill;
                    pnlVincular.Visible = true;
                    btnVincular.Enabled = true;
                    Read_Mails();
                    //0 - Tipo Processo
                    if (cbbTipo.SelectedIndex == 0)
                    {
                        Processos_Emails pre = new Processos_Emails();
                        dgrdMain.DataSource = pre.SelectViculados(txtProcesso.Text);
                    }
                    else//1 - Tipo Pré-Processo
                        if (cbbTipo.SelectedIndex == 1)
                        {
                            Pre_Processos_Emails pre = new Pre_Processos_Emails();
                            dgrdMain.DataSource = pre.SelectViculados(Id_Pre_Processo);
                        }

                    dgrdMain.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
                    dgrdMain.Columns[4].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
                    dgrdMain.Refresh();
                    //
                }
                else
                {
                    pnlErro.Dock = DockStyle.Fill;
                    pnlErro.Visible = true;
                    Application.DoEvents();
                    pnlLogo.Visible = false;
                    pnlVincular.Visible = false;
                    btnVincular.Enabled = false;
                    txtProcesso.Focus();
                }
            }
            else
            {
                if (string.IsNullOrEmpty(txtProcesso.Text.Replace("/", "").Trim()))
                {
                    pnlVincular.Visible = false;
                    pnlErro.Visible = false;
                    pnlLogo.Visible = true;
                    txtNome.Clear();
                    txtCNPJ.Clear();
                    btnVincular.Enabled = false;
                    txtProcesso.Focus();
                }
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            txtProcesso.Clear();
        }

        private DialogResult ConfirmaVinculacao(int param)
        {
            CustomMsg msg = new CustomMsg();
            var label = msg.Controls.Find("label1", false);
            if (param == 0)
            {
                
                label[0].Text = "Tem certeza que deseja vincular este e-mail a um Processo?";
                msg.BackColor = System.Drawing.Color.LimeGreen;
            }
            else
            {
                label[0].Text = "Tem certeza que deseja vincular este e-mail a um Pré-Processo?";
                msg.BackColor = System.Drawing.Color.Yellow;
            }            
            return msg.ShowDialog();
        }

        private void btnVincular_Click(object sender, EventArgs e)
        {
            if (ConfirmaVinculacao(cbbTipo.SelectedIndex) == DialogResult.Cancel)
            {
                return;
            }

            try
            {
                Outlook.Application app = new Outlook.Application();
                Outlook.MailItem objMail;
                string Para = null;
                string CC = null;
                string CCO = null;

                for (int i = 1; i <= app.ActiveExplorer().Selection.Count; i++)
                {
                    objMail = (Microsoft.Office.Interop.Outlook.MailItem)app.ActiveExplorer().Selection[i];

                    //0 - Tipo Processo                                     
                    if (cbbTipo.SelectedIndex == 0)
                    {
                        #region ***************************** Processo *******************************************
                        Processos_Emails pr = new Processos_Emails();
                        pr.FK_Processo = txtProcesso.Text;

                        pr.Email_ID = objMail.EntryID;
                        pr.Email_De = ResolveEmail(objMail.SenderEmailAddress);

                        foreach (Outlook.Recipient myCurrRec in objMail.Recipients)
                        {
                            switch (myCurrRec.Type)
                            {
                                case (int)Outlook.OlMailRecipientType.olTo:
                                    Para += ResolveEmail(myCurrRec.Address) + ";";
                                    break;
                                case (int)Outlook.OlMailRecipientType.olCC:
                                    CC += ResolveEmail(myCurrRec.Address) + ";";
                                    break;
                                case (int)Outlook.OlMailRecipientType.olBCC:
                                    CCO += ResolveEmail(myCurrRec.Address) + ";";
                                    break;
                            }
                        }

                        if (string.IsNullOrEmpty(Para))
                        {
                            pr.Email_Para = "";
                        }
                        else
                        {
                            pr.Email_Para = Para.TrimEnd(';');
                        }

                        if (string.IsNullOrEmpty(CC))
                        {
                            pr.Email_CC = "";
                        }
                        else
                        {
                            pr.Email_CC = CC.TrimEnd(';');
                        }

                        if (string.IsNullOrEmpty(CCO))
                        {
                            pr.Email_CCO = "";
                        }
                        else
                        {
                            pr.Email_CCO = CCO.TrimEnd(';');
                        }

                        if (string.IsNullOrEmpty(objMail.Subject))
                        {
                            pr.Email_Assunto = "";
                        }
                        else
                        {
                            pr.Email_Assunto = objMail.Subject.Replace("'", " ");
                        }
                        pr.Email_BodyHTML = objMail.HTMLBody;
                        pr.Email_BodyHTMLOriginal = objMail.HTMLBody;
                        pr.Email_BodyTXT = objMail.Body;

                        switch (objMail.Importance)
                        {
                            case Outlook.OlImportance.olImportanceHigh:
                                pr.Email_Importancia = Importancia.Alto;
                                break;
                            case Outlook.OlImportance.olImportanceLow:
                                pr.Email_Importancia = Importancia.Baixo;
                                break;
                            case Outlook.OlImportance.olImportanceNormal:
                                pr.Email_Importancia = Importancia.Normal;
                                break;
                        }

                        pr.DT_Email = Convert.ToDateTime(objMail.ReceivedTime.ToString());
                        pr.DT_Cadastro = Convert.ToDateTime(DateTime.Now.ToString());
                        pr.FK_Usuario = ThisAddIn.UsuarioLogado;

                        if (pr.InsertProcessos_Emails())
                        {
                            Application.DoEvents();
                            int ID = pr.GetIDProcessosEmails(ThisAddIn.UsuarioLogado);

                            if (ID > 0)
                            {
                                try
                                {
                                    #region Gravando anexos
                                    Processos_Emails_Anexos pea = new Processos_Emails_Anexos();
                                    Processos_Emails_Tipo_Anexos peta = new Processos_Emails_Tipo_Anexos();
                                    string NewBodyHTML = null;

                                    for (int x = 1; x <= objMail.Attachments.Count; x++)
                                    {
                                        string Path = null;

                                        Path = @"\\msserver01\MSOutlook_Anexos\";
                                        Path += DateTime.Now.Year.ToString();
                                        if (!Directory.Exists(Path))
                                        {
                                            Directory.CreateDirectory(Path);
                                        }

                                        Path += @"\" + DateTime.Now.Day.ToString() + "_" +
                                                DateTime.Now.Month.ToString() + "_" +
                                                DateTime.Now.Year.ToString();
                                        if (!Directory.Exists(Path))
                                        {
                                            Directory.CreateDirectory(Path);
                                        }

                                        Path += @"\" + ID;
                                        if (!Directory.Exists(Path))
                                        {
                                            Directory.CreateDirectory(Path);
                                        }

                                        objMail.Attachments[x].SaveAsFile
                                                            (Path + @"\" +
                                                             objMail.Attachments[x].FileName);

                                        // Gravando Anexos
                                        string pathVirtual = Path.Replace(@"\\msserver01", "f:");

                                        pea.FK_Email = ID;
                                        pea.Descricao = objMail.Attachments[x].FileName;
                                        pea.Caminho = pathVirtual;
                                        pea.Tamanho = objMail.Attachments[x].Size;
                                        pea.Tipo_Anexo = peta.GetPKTipoAnexo(System.IO.Path.GetExtension(objMail.Attachments[x].FileName));
                                        pea.CID = "";

                                        int a = 1;
                                        for (a = 1; a <= objMail.Attachments.Count; a++)
                                        {
                                            string patt = objMail.Attachments[a].FileName + "(.|\n)+?[\'|\"]";
                                            Regex re = new System.Text.RegularExpressions.Regex(patt,
                                            RegexOptions.IgnoreCase | System.Text.RegularExpressions.RegexOptions.Multiline);
                                            Match sr = re.Match(objMail.HTMLBody);
                                            if (sr.Success)
                                            {
                                                if (sr.ToString().Contains(objMail.Attachments[x].FileName))
                                                {
                                                    pea.CID = sr.ToString().TrimEnd('"');
                                                }
                                            }
                                        }

                                        pea.GravarAnexo();

                                        if (string.IsNullOrEmpty(NewBodyHTML))
                                        {
                                            NewBodyHTML = objMail.HTMLBody;
                                        }

                                        string CidImg = "cid:";
                                        CidImg += objMail.Attachments[x].FileName;
                                        //string pattern = "src=\""+ CidImg +"(.|\n)+?\""; <-- OK
                                        string pattern = "src=[\'|\"]" + CidImg + "(.|\n)+?[\'|\"]";
                                        Regex reImg = new System.Text.RegularExpressions.Regex(pattern,
                                        RegexOptions.IgnoreCase | System.Text.RegularExpressions.RegexOptions.Multiline);
                                        Match src = reImg.Match(NewBodyHTML);

                                        if (src.Success)
                                        {
                                            NewBodyHTML = Regex.Replace(NewBodyHTML, pattern, "src=\"" + pathVirtual.Replace("MSOutlook_Anexos", "msoutlook").Replace(@"\", "/") + @"/" + objMail.Attachments[x].FileName + "\"", RegexOptions.IgnoreCase | RegexOptions.Singleline);
                                        }

                                    }
                                    // Update Body HTML
                                    if (objMail.Attachments.Count > 0)
                                    {
                                        pr.PK_ID = ID;
                                        pr.Email_BodyHTML = NewBodyHTML;
                                        pr.UpdateBody();
                                    }
                                    //---
                                    #endregion
                                }
                                catch (Exception ex)
                                {
                                    MessageBox.Show("2 - Erro: " + ex.Message);
                                }

                                // Atualiza GriView
                                dgrdMain.DataSource = pr.SelectViculados(txtProcesso.Text);
                                Application.DoEvents();
                                dgrdMain.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
                                dgrdMain.Columns[4].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
                                dgrdMain.Refresh();
                                //
                                MessageBox.Show("Vinculação realizada com sucesso", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                            }
                        }
                        else
                        {
                            // Atualiza GriView
                            dgrdMain.DataSource = pr.SelectViculados(txtProcesso.Text);
                            Application.DoEvents();
                            dgrdMain.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
                            dgrdMain.Columns[4].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
                            dgrdMain.Refresh();
                            //
                        }

                    }

                        #endregion ********************************** fim processo ********************************

                    else//1 - Tipo Pré-Processo                        
                    {
                        #region ***************************** Pré-Processo *******************************************
                        Pre_Processos_Emails pr = new Pre_Processos_Emails();
                        pr.FK_Processo = Id_Pre_Processo.ToString();

                        pr.Email_ID = objMail.EntryID;
                        pr.Email_De = ResolveEmail(objMail.SenderEmailAddress);

                        foreach (Outlook.Recipient myCurrRec in objMail.Recipients)
                        {
                            switch (myCurrRec.Type)
                            {
                                case (int)Outlook.OlMailRecipientType.olTo:
                                    Para += ResolveEmail(myCurrRec.Address) + ";";
                                    break;
                                case (int)Outlook.OlMailRecipientType.olCC:
                                    CC += ResolveEmail(myCurrRec.Address) + ";";
                                    break;
                                case (int)Outlook.OlMailRecipientType.olBCC:
                                    CCO += ResolveEmail(myCurrRec.Address) + ";";
                                    break;
                            }
                        }

                        if (string.IsNullOrEmpty(Para))
                        {
                            pr.Email_Para = "";
                        }
                        else
                        {
                            pr.Email_Para = Para.TrimEnd(';');
                        }

                        if (string.IsNullOrEmpty(CC))
                        {
                            pr.Email_CC = "";
                        }
                        else
                        {
                            pr.Email_CC = CC.TrimEnd(';');
                        }

                        if (string.IsNullOrEmpty(CCO))
                        {
                            pr.Email_CCO = "";
                        }
                        else
                        {
                            pr.Email_CCO = CCO.TrimEnd(';');
                        }

                        if (string.IsNullOrEmpty(objMail.Subject))
                        {
                            pr.Email_Assunto = "";
                        }
                        else
                        {
                            pr.Email_Assunto = objMail.Subject.Replace("'", " ");
                        }
                        pr.Email_BodyHTML = objMail.HTMLBody;
                        pr.Email_BodyHTMLOriginal = objMail.HTMLBody;
                        pr.Email_BodyTXT = objMail.Body;

                        switch (objMail.Importance)
                        {
                            case Outlook.OlImportance.olImportanceHigh:
                                pr.Email_Importancia = Importancia.Alto;
                                break;
                            case Outlook.OlImportance.olImportanceLow:
                                pr.Email_Importancia = Importancia.Baixo;
                                break;
                            case Outlook.OlImportance.olImportanceNormal:
                                pr.Email_Importancia = Importancia.Normal;
                                break;
                        }

                        pr.DT_Email = Convert.ToDateTime(objMail.ReceivedTime.ToString());
                        pr.DT_Cadastro = Convert.ToDateTime(DateTime.Now.ToString());
                        pr.FK_Usuario = ThisAddIn.UsuarioLogado;

                        if (pr.InsertProcessos_Emails())
                        {
                            Application.DoEvents();
                            int ID = pr.GetIDProcessosEmails(ThisAddIn.UsuarioLogado);

                            if (ID > 0)
                            {
                                try
                                {
                                    #region Gravando anexos
                                    Pre_Processos_Emails_Anexos pea = new Pre_Processos_Emails_Anexos();
                                    Processos_Emails_Tipo_Anexos peta = new Processos_Emails_Tipo_Anexos();
                                    string NewBodyHTML = null;

                                    for (int x = 1; x <= objMail.Attachments.Count; x++)
                                    {
                                        string Path = null;

                                        Path = @"\\msserver01\MSOutlook_Anexos\Pre_Processo\";
                                        Path += DateTime.Now.Year.ToString();
                                        if (!Directory.Exists(Path))
                                        {
                                            Directory.CreateDirectory(Path);
                                        }

                                        Path += @"\" + DateTime.Now.Day.ToString() + "_" +
                                                DateTime.Now.Month.ToString() + "_" +
                                                DateTime.Now.Year.ToString();
                                        if (!Directory.Exists(Path))
                                        {
                                            Directory.CreateDirectory(Path);
                                        }

                                        Path += @"\" + ID;
                                        if (!Directory.Exists(Path))
                                        {
                                            Directory.CreateDirectory(Path);
                                        }

                                        objMail.Attachments[x].SaveAsFile
                                                            (Path + @"\" +
                                                             objMail.Attachments[x].FileName);

                                        // Gravando Anexos
                                        string pathVirtual = Path.Replace(@"\\msserver01", "f:");

                                        pea.FK_Email = ID;
                                        pea.Descricao = objMail.Attachments[x].FileName;
                                        pea.Caminho = pathVirtual;
                                        pea.Tamanho = objMail.Attachments[x].Size;
                                        pea.Tipo_Anexo = peta.GetPKTipoAnexo(System.IO.Path.GetExtension(objMail.Attachments[x].FileName));
                                        pea.CID = "";

                                        int a = 1;
                                        for (a = 1; a <= objMail.Attachments.Count; a++)
                                        {
                                            string patt = objMail.Attachments[a].FileName + "(.|\n)+?[\'|\"]";
                                            Regex re = new System.Text.RegularExpressions.Regex(patt,
                                            RegexOptions.IgnoreCase | System.Text.RegularExpressions.RegexOptions.Multiline);
                                            Match sr = re.Match(objMail.HTMLBody);
                                            if (sr.Success)
                                            {
                                                if (sr.ToString().Contains(objMail.Attachments[x].FileName))
                                                {
                                                    pea.CID = sr.ToString().TrimEnd('"');
                                                }
                                            }
                                        }

                                        pea.GravarAnexo();

                                        if (string.IsNullOrEmpty(NewBodyHTML))
                                        {
                                            NewBodyHTML = objMail.HTMLBody;
                                        }

                                        string CidImg = "cid:";
                                        CidImg += objMail.Attachments[x].FileName;
                                        //string pattern = "src=\""+ CidImg +"(.|\n)+?\""; <-- OK
                                        string pattern = "src=[\'|\"]" + CidImg + "(.|\n)+?[\'|\"]";
                                        Regex reImg = new System.Text.RegularExpressions.Regex(pattern,
                                        RegexOptions.IgnoreCase | System.Text.RegularExpressions.RegexOptions.Multiline);
                                        Match src = reImg.Match(NewBodyHTML);

                                        if (src.Success)
                                        {
                                            NewBodyHTML = Regex.Replace(NewBodyHTML, pattern, "src=\"" + pathVirtual.Replace("MSOutlook_Anexos", "msoutlook").Replace(@"\", "/") + @"/" + objMail.Attachments[x].FileName + "\"", RegexOptions.IgnoreCase | RegexOptions.Singleline);
                                        }

                                    }
                                    // Update Body HTML
                                    if (objMail.Attachments.Count > 0)
                                    {
                                        pr.PK_ID = ID;
                                        pr.Email_BodyHTML = NewBodyHTML;
                                        pr.UpdateBody();
                                    }
                                    //---
                                    #endregion
                                }
                                catch (Exception ex)
                                {
                                    MessageBox.Show("2 - Erro: " + ex.Message);
                                }

                                // Atualiza GriView
                                dgrdMain.DataSource = pr.SelectViculados(Id_Pre_Processo);
                                Application.DoEvents();
                                dgrdMain.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
                                dgrdMain.Columns[4].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
                                dgrdMain.Refresh();
                                //
                                MessageBox.Show("Vinculação realizada com sucesso", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                            }
                        }
                        else
                        {
                            // Atualiza GriView
                            dgrdMain.DataSource = pr.SelectViculados(Id_Pre_Processo);
                            Application.DoEvents();
                            dgrdMain.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
                            dgrdMain.Columns[4].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
                            dgrdMain.Refresh();
                            //
                        }
                        #endregion ******************************* fim Pré-Processo *******************************************
                    }
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show("1 - Erro: " + ex.Message);
            }
        }

        private void btnCancelarLogin_Click(object sender, EventArgs e)
        {
            txtUsuario.Clear();
            txtSenha.Clear();
        }

        private void btnConfirmar_Click(object sender, EventArgs e)
        {
            Usuarios usu = new Usuarios();
            usu.Usuario = txtUsuario.Text;
            usu.Senha = txtSenha.Text;

            if (usu.ValidaUsuario())
            {
                pnlTop.Visible = true;
                pnlTop.Dock = DockStyle.Top;
                Application.DoEvents();
                pnlUsuarioSenha.Visible = false;
                pnlLogo.Dock = DockStyle.Fill;
                Application.DoEvents();
                ThisAddIn.UsuarioLogado = usu.Usuario;
            }
            else
            {
                pnlTop.Visible = false;
                pnlTop.Dock = DockStyle.None;
                pnlLogo.Dock = DockStyle.Fill;
                pnlUsuarioSenha.Visible = true;
                MessageBox.Show("Usuário e/ou senha inválidos", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtSenha.Clear();
                txtUsuario.Focus();
            }
        }

        private void txtSenha_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                Application.DoEvents();
                btnConfirmar.PerformClick();
            }
        }

        public string ArrayListToString(System.Collections.ArrayList array, string delimiter)
        {
            return string.Join(delimiter, (string[])array.ToArray(typeof(string)));
        }

        private string ResolveEmail(string emails)
        {
            Outlook.Application app = new Outlook.Application();
            Outlook.MailItem objMail;
            Outlook.ExchangeUser usuario;
            Outlook.ExchangeDistributionList grupo;
            ArrayList lista = new ArrayList();
            string Retorno = string.Empty;

            objMail = app.CreateItem(0);

            objMail.To = emails.Replace(',', ';');
            objMail.Recipients.ResolveAll();

            foreach (Outlook.Recipient myCurrRec in objMail.Recipients)
            {
                try
                {
                    usuario = myCurrRec.AddressEntry.GetExchangeUser();
                }
                catch
                {

                    usuario = null;
                }


                if (usuario != null)
                {
                    lista.Add(usuario.PrimarySmtpAddress);
                }
                else
                {
                    try
                    {
                        grupo = myCurrRec.AddressEntry.GetExchangeDistributionList();
                    }
                    catch
                    {
                        grupo = null;
                    }
                    if (grupo != null)
                    {
                        lista.Add(grupo.PrimarySmtpAddress);
                    }
                    else
                    {
                        if (!string.IsNullOrEmpty(myCurrRec.Address))
                        {
                            lista.Add(myCurrRec.Address);
                        }
                    }
                }

            }
            Retorno = ArrayListToString(lista, ";");

            return string.IsNullOrEmpty(Retorno) ? emails : Retorno;
        }

        private void cbbTipo_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtProcesso.Clear();

            if (cbbTipo.SelectedIndex >= 0)
            {
                txtProcesso.Enabled = true;
            }
            else { txtProcesso.Enabled = false; }
        }
    }
}
