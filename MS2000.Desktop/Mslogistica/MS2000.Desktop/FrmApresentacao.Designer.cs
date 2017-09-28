namespace MS2000.Desktop
{
    partial class FrmApresentacao
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.SuspendLayout();
            // 
            // FrmApresentacao
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoValidate = System.Windows.Forms.AutoValidate.EnablePreventFocusChange;
            this.BackColor = System.Drawing.Color.White;
            this.BackgroundImage = global::MS2000.Desktop.Properties.Resources.apresentacao;
            this.ClientSize = new System.Drawing.Size(1256, 669);
            this.Enabled = false;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "FrmApresentacao";
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.Activated += new System.EventHandler(this.FrmApresentacao_Activated);
            this.Deactivate += new System.EventHandler(this.FrmApresentacao_Deactivate);
            this.Load += new System.EventHandler(this.FrmApresentacao_Load);
            this.SizeChanged += new System.EventHandler(this.FrmApresentacao_SizeChanged);
            this.Click += new System.EventHandler(this.FrmApresentacao_Click);
            this.Enter += new System.EventHandler(this.FrmApresentacao_Enter);
            this.ResumeLayout(false);

        }

        #endregion



    }
}
