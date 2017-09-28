namespace MS2000.Desktop.Menu.Sistema
{
    partial class FrmUsuarioCopiarPerfil
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
            this.cbbCopia = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txtPara = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.ckbMenu = new System.Windows.Forms.CheckBox();
            this.ckbAcesso = new System.Windows.Forms.CheckBox();
            this.btnCopiar = new System.Windows.Forms.Button();
            this.btnFechar = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // cbbCopia
            // 
            this.cbbCopia.AutoComplete = true;
            this.cbbCopia.AutoDropdown = true;
            this.cbbCopia.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.cbbCopia.FormattingEnabled = true;
            this.cbbCopia.Location = new System.Drawing.Point(12, 25);
            this.cbbCopia.Name = "cbbCopia";
            this.cbbCopia.NumberColumnsDisplay = 0;
            this.cbbCopia.Size = new System.Drawing.Size(208, 21);
            this.cbbCopia.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(9, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(80, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Copiar perfil de:";
            // 
            // txtPara
            // 
            this.txtPara.Enabled = false;
            this.txtPara.Location = new System.Drawing.Point(12, 63);
            this.txtPara.Name = "txtPara";
            this.txtPara.Size = new System.Drawing.Size(208, 20);
            this.txtPara.TabIndex = 2;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(9, 47);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(32, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Para:";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.ckbMenu);
            this.groupBox1.Controls.Add(this.ckbAcesso);
            this.groupBox1.Location = new System.Drawing.Point(12, 89);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(208, 48);
            this.groupBox1.TabIndex = 4;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Opções";
            // 
            // ckbMenu
            // 
            this.ckbMenu.AutoSize = true;
            this.ckbMenu.Checked = true;
            this.ckbMenu.CheckState = System.Windows.Forms.CheckState.Checked;
            this.ckbMenu.Location = new System.Drawing.Point(133, 19);
            this.ckbMenu.Name = "ckbMenu";
            this.ckbMenu.Size = new System.Drawing.Size(53, 17);
            this.ckbMenu.TabIndex = 1;
            this.ckbMenu.Text = "Menu";
            this.ckbMenu.UseVisualStyleBackColor = true;
            // 
            // ckbAcesso
            // 
            this.ckbAcesso.AutoSize = true;
            this.ckbAcesso.Checked = true;
            this.ckbAcesso.CheckState = System.Windows.Forms.CheckState.Checked;
            this.ckbAcesso.Location = new System.Drawing.Point(6, 19);
            this.ckbAcesso.Name = "ckbAcesso";
            this.ckbAcesso.Size = new System.Drawing.Size(61, 17);
            this.ckbAcesso.TabIndex = 0;
            this.ckbAcesso.Text = "Acesso";
            this.ckbAcesso.UseVisualStyleBackColor = true;
            // 
            // btnCopiar
            // 
            this.btnCopiar.Image = global::MS2000.Desktop.Properties.Resources._1456449281_Copy;
            this.btnCopiar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCopiar.Location = new System.Drawing.Point(12, 148);
            this.btnCopiar.Name = "btnCopiar";
            this.btnCopiar.Size = new System.Drawing.Size(60, 24);
            this.btnCopiar.TabIndex = 5;
            this.btnCopiar.Text = "Copiar";
            this.btnCopiar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnCopiar.UseVisualStyleBackColor = true;
            this.btnCopiar.Click += new System.EventHandler(this.btnCopiar_Click);
            // 
            // btnFechar
            // 
            this.btnFechar.Image = global::MS2000.Desktop.Properties.Resources.sair;
            this.btnFechar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnFechar.Location = new System.Drawing.Point(156, 148);
            this.btnFechar.Name = "btnFechar";
            this.btnFechar.Size = new System.Drawing.Size(64, 24);
            this.btnFechar.TabIndex = 6;
            this.btnFechar.Text = "Fechar";
            this.btnFechar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnFechar.UseVisualStyleBackColor = true;
            this.btnFechar.Click += new System.EventHandler(this.btnFechar_Click);
            // 
            // FrmCopiarPerfil
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(231, 175);
            this.ControlBox = false;
            this.Controls.Add(this.btnFechar);
            this.Controls.Add(this.btnCopiar);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtPara);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cbbCopia);
            this.Name = "FrmCopiarPerfil";
            this.Tag = "603";
            this.Text = "Copiar Perfil";
            this.Load += new System.EventHandler(this.FrmCopiarPerfil_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Componentes.MultiColumnComboBox cbbCopia;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtPara;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.CheckBox ckbMenu;
        private System.Windows.Forms.CheckBox ckbAcesso;
        private System.Windows.Forms.Button btnCopiar;
        private System.Windows.Forms.Button btnFechar;
    }
}
