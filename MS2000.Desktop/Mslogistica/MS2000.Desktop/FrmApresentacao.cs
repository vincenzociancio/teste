using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop
{
    public partial class FrmApresentacao : MS2000.Desktop.Componentes.MSForm01
    {
        public FrmApresentacao()
        {
            InitializeComponent();
           
        }

        //FormWindowState statePrevious;
        //bool showing = false;

        private void FrmApresentacao_SizeChanged(object sender, EventArgs e)
        {
           
            //if (this.WindowState == FormWindowState.Maximized && !showing)
            //{
            //    if (this.MdiParent.Tag != null && this.MdiParent.Tag.ToString() == "hack")
            //    {
            //        this.MdiParent.Tag = null;
            //        this.WindowState = statePrevious;
            //    }
            //}
            //else if (this.WindowState == FormWindowState.Maximized && showing)
            //{
            //    statePrevious = this.WindowState;
            //}
        }

        private void FrmApresentacao_Deactivate(object sender, EventArgs e)
        {
            //showing = false;
            //if (ChildMaximizedExist())
            //{
            //    this.MdiParent.Tag = "hack";
            //}
        }

        private void FrmApresentacao_Activated(object sender, EventArgs e)
        {
            //statePrevious = this.WindowState;
            //showing = true;
        }

        private void FrmApresentacao_Enter(object sender, EventArgs e)
        {

        }

        private void FrmApresentacao_Click(object sender, EventArgs e)
        {          
            
        }

        private void FrmApresentacao_Load(object sender, EventArgs e)
        {
            this.Enabled = false;            
        }

        //private bool ChildMaximizedExist()
        //{
        //    //bool exist = false;
        //    //foreach (Form f in this.MdiParent.MdiChildren)
        //    //{
        //    //    exist = exist | (f.WindowState == FormWindowState.Maximized);
        //    //    if (exist) break;
        //    //}
        //    //return exist;
        //}
    }
}
