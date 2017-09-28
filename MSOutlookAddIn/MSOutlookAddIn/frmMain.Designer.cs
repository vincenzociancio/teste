namespace MSOutlookAddIn
{
    [System.ComponentModel.ToolboxItemAttribute(false)]
    partial class frmMain : Microsoft.Office.Tools.Outlook.FormRegionBase
    {
        public frmMain(Microsoft.Office.Interop.Outlook.FormRegion formRegion)
            : base(Globals.Factory, formRegion)
        {
            this.InitializeComponent();
        }

        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmMain));
            this.pnlTop = new System.Windows.Forms.Panel();
            this.panel4 = new System.Windows.Forms.Panel();
            this.label2 = new System.Windows.Forms.Label();
            this.cbbTipo = new System.Windows.Forms.ComboBox();
            this.txtProcesso = new System.Windows.Forms.MaskedTextBox();
            this.btnVincular = new System.Windows.Forms.Button();
            this.btnCancel = new System.Windows.Forms.Button();
            this.txtCNPJ = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtNome = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.pnlErro = new System.Windows.Forms.Panel();
            this.label6 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.label5 = new System.Windows.Forms.Label();
            this.pnlVincular = new System.Windows.Forms.Panel();
            this.dgrdMain = new System.Windows.Forms.DataGridView();
            this.panel3 = new System.Windows.Forms.Panel();
            this.label9 = new System.Windows.Forms.Label();
            this.pnlLogo = new System.Windows.Forms.Panel();
            this.lblVersao = new System.Windows.Forms.Label();
            this.pnlUsuarioSenha = new System.Windows.Forms.Panel();
            this.label10 = new System.Windows.Forms.Label();
            this.btnCancelarLogin = new System.Windows.Forms.Button();
            this.btnConfirmar = new System.Windows.Forms.Button();
            this.txtSenha = new System.Windows.Forms.TextBox();
            this.txtUsuario = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.imgMS = new System.Windows.Forms.PictureBox();
            this.pnlTop.SuspendLayout();
            this.panel4.SuspendLayout();
            this.panel2.SuspendLayout();
            this.pnlErro.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.pnlVincular.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgrdMain)).BeginInit();
            this.panel3.SuspendLayout();
            this.pnlLogo.SuspendLayout();
            this.pnlUsuarioSenha.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.imgMS)).BeginInit();
            this.SuspendLayout();
            // 
            // pnlTop
            // 
            this.pnlTop.Controls.Add(this.panel4);
            this.pnlTop.Controls.Add(this.btnVincular);
            this.pnlTop.Controls.Add(this.btnCancel);
            this.pnlTop.Controls.Add(this.txtCNPJ);
            this.pnlTop.Controls.Add(this.label4);
            this.pnlTop.Controls.Add(this.txtNome);
            this.pnlTop.Controls.Add(this.label3);
            this.pnlTop.Controls.Add(this.panel2);
            this.pnlTop.Location = new System.Drawing.Point(3, 3);
            this.pnlTop.Name = "pnlTop";
            this.pnlTop.Size = new System.Drawing.Size(975, 58);
            this.pnlTop.TabIndex = 6;
            // 
            // panel4
            // 
            this.panel4.BackColor = System.Drawing.Color.DarkBlue;
            this.panel4.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel4.Controls.Add(this.label2);
            this.panel4.Controls.Add(this.cbbTipo);
            this.panel4.Controls.Add(this.txtProcesso);
            this.panel4.Location = new System.Drawing.Point(5, 22);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(251, 27);
            this.panel4.TabIndex = 19;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.DarkBlue;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.SystemColors.Window;
            this.label2.Location = new System.Drawing.Point(3, 6);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(53, 13);
            this.label2.TabIndex = 11;
            this.label2.Text = "Vincular";
            // 
            // cbbTipo
            // 
            this.cbbTipo.BackColor = System.Drawing.SystemColors.Window;
            this.cbbTipo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbbTipo.FormattingEnabled = true;
            this.cbbTipo.Items.AddRange(new object[] {
            "Processo",
            "Pré-Processo"});
            this.cbbTipo.Location = new System.Drawing.Point(59, 2);
            this.cbbTipo.Name = "cbbTipo";
            this.cbbTipo.Size = new System.Drawing.Size(118, 21);
            this.cbbTipo.TabIndex = 0;
            this.cbbTipo.SelectedIndexChanged += new System.EventHandler(this.cbbTipo_SelectedIndexChanged);
            // 
            // txtProcesso
            // 
            this.txtProcesso.Enabled = false;
            this.txtProcesso.Location = new System.Drawing.Point(180, 2);
            this.txtProcesso.Mask = "00000/00";
            this.txtProcesso.Name = "txtProcesso";
            this.txtProcesso.Size = new System.Drawing.Size(67, 20);
            this.txtProcesso.TabIndex = 10;
            this.txtProcesso.TextChanged += new System.EventHandler(this.txtProcesso_TextChanged);
            // 
            // btnVincular
            // 
            this.btnVincular.Enabled = false;
            this.btnVincular.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnVincular.Image = ((System.Drawing.Image)(resources.GetObject("btnVincular.Image")));
            this.btnVincular.ImageAlign = System.Drawing.ContentAlignment.TopLeft;
            this.btnVincular.Location = new System.Drawing.Point(807, 22);
            this.btnVincular.Name = "btnVincular";
            this.btnVincular.Size = new System.Drawing.Size(80, 30);
            this.btnVincular.TabIndex = 17;
            this.btnVincular.Text = "Vincular";
            this.btnVincular.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnVincular.UseVisualStyleBackColor = true;
            this.btnVincular.Click += new System.EventHandler(this.btnVincular_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnCancel.Image = global::MSOutlookAddIn.Properties.Resources.ico24_cancelar;
            this.btnCancel.ImageAlign = System.Drawing.ContentAlignment.BottomLeft;
            this.btnCancel.Location = new System.Drawing.Point(889, 22);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(80, 30);
            this.btnCancel.TabIndex = 16;
            this.btnCancel.Text = "Cancelar";
            this.btnCancel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // txtCNPJ
            // 
            this.txtCNPJ.BackColor = System.Drawing.SystemColors.Window;
            this.txtCNPJ.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtCNPJ.Location = new System.Drawing.Point(677, 27);
            this.txtCNPJ.Name = "txtCNPJ";
            this.txtCNPJ.ReadOnly = true;
            this.txtCNPJ.Size = new System.Drawing.Size(123, 20);
            this.txtCNPJ.TabIndex = 15;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(637, 30);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(37, 13);
            this.label4.TabIndex = 14;
            this.label4.Text = "CNPJ:";
            // 
            // txtNome
            // 
            this.txtNome.BackColor = System.Drawing.SystemColors.Window;
            this.txtNome.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtNome.Location = new System.Drawing.Point(333, 26);
            this.txtNome.Name = "txtNome";
            this.txtNome.ReadOnly = true;
            this.txtNome.Size = new System.Drawing.Size(298, 20);
            this.txtNome.TabIndex = 13;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(257, 29);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(73, 13);
            this.label3.TabIndex = 12;
            this.label3.Text = "Razão Social:";
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.Navy;
            this.panel2.Controls.Add(this.label1);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(975, 16);
            this.panel2.TabIndex = 10;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.Window;
            this.label1.Location = new System.Drawing.Point(0, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(458, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Entre com o número do processo ou pré-processo que deseja vincular ao e-mail";
            // 
            // pnlErro
            // 
            this.pnlErro.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pnlErro.Controls.Add(this.label6);
            this.pnlErro.Controls.Add(this.panel1);
            this.pnlErro.Controls.Add(this.pictureBox1);
            this.pnlErro.Controls.Add(this.label5);
            this.pnlErro.Location = new System.Drawing.Point(6, 146);
            this.pnlErro.Name = "pnlErro";
            this.pnlErro.Size = new System.Drawing.Size(328, 134);
            this.pnlErro.TabIndex = 10;
            this.pnlErro.Visible = false;
            // 
            // label6
            // 
            this.label6.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 21.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.ForeColor = System.Drawing.Color.Red;
            this.label6.Location = new System.Drawing.Point(118, 27);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(92, 33);
            this.label6.TabIndex = 12;
            this.label6.Text = "Aviso";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.Window;
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(328, 16);
            this.panel1.TabIndex = 11;
            // 
            // pictureBox1
            // 
            this.pictureBox1.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.pictureBox1.Image = global::MSOutlookAddIn.Properties.Resources.aviso;
            this.pictureBox1.Location = new System.Drawing.Point(-163, 19);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(101, 97);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 1;
            this.pictureBox1.TabStop = false;
            // 
            // label5
            // 
            this.label5.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.Color.Red;
            this.label5.Location = new System.Drawing.Point(-27, 61);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(394, 24);
            this.label5.TabIndex = 0;
            this.label5.Text = "Número de processo não foi encontrado!";
            // 
            // pnlVincular
            // 
            this.pnlVincular.Controls.Add(this.dgrdMain);
            this.pnlVincular.Controls.Add(this.panel3);
            this.pnlVincular.Location = new System.Drawing.Point(710, 72);
            this.pnlVincular.Name = "pnlVincular";
            this.pnlVincular.Size = new System.Drawing.Size(226, 101);
            this.pnlVincular.TabIndex = 12;
            this.pnlVincular.Visible = false;
            // 
            // dgrdMain
            // 
            this.dgrdMain.BackgroundColor = System.Drawing.SystemColors.Window;
            this.dgrdMain.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dgrdMain.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgrdMain.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgrdMain.EditMode = System.Windows.Forms.DataGridViewEditMode.EditOnEnter;
            this.dgrdMain.Location = new System.Drawing.Point(0, 13);
            this.dgrdMain.MultiSelect = false;
            this.dgrdMain.Name = "dgrdMain";
            this.dgrdMain.ReadOnly = true;
            this.dgrdMain.Size = new System.Drawing.Size(226, 88);
            this.dgrdMain.TabIndex = 11;
            // 
            // panel3
            // 
            this.panel3.BackColor = System.Drawing.Color.Navy;
            this.panel3.Controls.Add(this.label9);
            this.panel3.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel3.Location = new System.Drawing.Point(0, 0);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(226, 13);
            this.panel3.TabIndex = 10;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Dock = System.Windows.Forms.DockStyle.Fill;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.ForeColor = System.Drawing.SystemColors.Window;
            this.label9.Location = new System.Drawing.Point(0, 0);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(112, 13);
            this.label9.TabIndex = 0;
            this.label9.Text = "E-mails vinculados";
            // 
            // pnlLogo
            // 
            this.pnlLogo.Controls.Add(this.lblVersao);
            this.pnlLogo.Controls.Add(this.pnlUsuarioSenha);
            this.pnlLogo.Controls.Add(this.imgMS);
            this.pnlLogo.Location = new System.Drawing.Point(197, 56);
            this.pnlLogo.Name = "pnlLogo";
            this.pnlLogo.Size = new System.Drawing.Size(449, 124);
            this.pnlLogo.TabIndex = 13;
            // 
            // lblVersao
            // 
            this.lblVersao.BackColor = System.Drawing.SystemColors.Window;
            this.lblVersao.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.lblVersao.ForeColor = System.Drawing.SystemColors.AppWorkspace;
            this.lblVersao.Location = new System.Drawing.Point(0, 111);
            this.lblVersao.Name = "lblVersao";
            this.lblVersao.Size = new System.Drawing.Size(449, 13);
            this.lblVersao.TabIndex = 12;
            this.lblVersao.Text = "versão:";
            this.lblVersao.TextAlign = System.Drawing.ContentAlignment.BottomRight;
            // 
            // pnlUsuarioSenha
            // 
            this.pnlUsuarioSenha.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.pnlUsuarioSenha.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlUsuarioSenha.Controls.Add(this.label10);
            this.pnlUsuarioSenha.Controls.Add(this.btnCancelarLogin);
            this.pnlUsuarioSenha.Controls.Add(this.btnConfirmar);
            this.pnlUsuarioSenha.Controls.Add(this.txtSenha);
            this.pnlUsuarioSenha.Controls.Add(this.txtUsuario);
            this.pnlUsuarioSenha.Controls.Add(this.label8);
            this.pnlUsuarioSenha.Controls.Add(this.label7);
            this.pnlUsuarioSenha.Location = new System.Drawing.Point(94, 33);
            this.pnlUsuarioSenha.Name = "pnlUsuarioSenha";
            this.pnlUsuarioSenha.Size = new System.Drawing.Size(261, 110);
            this.pnlUsuarioSenha.TabIndex = 10;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(16, 8);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(226, 13);
            this.label10.TabIndex = 6;
            this.label10.Text = "Entre com usuário e senha do MS2000";
            // 
            // btnCancelarLogin
            // 
            this.btnCancelarLogin.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnCancelarLogin.Location = new System.Drawing.Point(145, 75);
            this.btnCancelarLogin.Name = "btnCancelarLogin";
            this.btnCancelarLogin.Size = new System.Drawing.Size(75, 23);
            this.btnCancelarLogin.TabIndex = 5;
            this.btnCancelarLogin.Text = "Cancelar";
            this.btnCancelarLogin.UseVisualStyleBackColor = true;
            this.btnCancelarLogin.Click += new System.EventHandler(this.btnCancelarLogin_Click);
            // 
            // btnConfirmar
            // 
            this.btnConfirmar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnConfirmar.Location = new System.Drawing.Point(64, 75);
            this.btnConfirmar.Name = "btnConfirmar";
            this.btnConfirmar.Size = new System.Drawing.Size(75, 23);
            this.btnConfirmar.TabIndex = 4;
            this.btnConfirmar.Text = "Confirmar";
            this.btnConfirmar.UseVisualStyleBackColor = true;
            this.btnConfirmar.Click += new System.EventHandler(this.btnConfirmar_Click);
            // 
            // txtSenha
            // 
            this.txtSenha.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtSenha.Location = new System.Drawing.Point(64, 49);
            this.txtSenha.Name = "txtSenha";
            this.txtSenha.PasswordChar = '*';
            this.txtSenha.Size = new System.Drawing.Size(156, 20);
            this.txtSenha.TabIndex = 3;
            this.txtSenha.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtSenha_KeyDown);
            // 
            // txtUsuario
            // 
            this.txtUsuario.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtUsuario.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtUsuario.Location = new System.Drawing.Point(64, 26);
            this.txtUsuario.Name = "txtUsuario";
            this.txtUsuario.Size = new System.Drawing.Size(156, 20);
            this.txtUsuario.TabIndex = 2;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(17, 33);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(46, 13);
            this.label8.TabIndex = 1;
            this.label8.Text = "Usuário:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(17, 56);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(41, 13);
            this.label7.TabIndex = 0;
            this.label7.Text = "Senha:";
            // 
            // imgMS
            // 
            this.imgMS.Dock = System.Windows.Forms.DockStyle.Fill;
            this.imgMS.Image = ((System.Drawing.Image)(resources.GetObject("imgMS.Image")));
            this.imgMS.Location = new System.Drawing.Point(0, 0);
            this.imgMS.Name = "imgMS";
            this.imgMS.Size = new System.Drawing.Size(449, 124);
            this.imgMS.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.imgMS.TabIndex = 9;
            this.imgMS.TabStop = false;
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.pnlLogo);
            this.Controls.Add(this.pnlVincular);
            this.Controls.Add(this.pnlErro);
            this.Controls.Add(this.pnlTop);
            this.Name = "frmMain";
            this.Size = new System.Drawing.Size(981, 176);
            this.FormRegionShowing += new System.EventHandler(this.FormRegion1_FormRegionShowing);
            this.FormRegionClosed += new System.EventHandler(this.FormRegion1_FormRegionClosed);
            this.pnlTop.ResumeLayout(false);
            this.pnlTop.PerformLayout();
            this.panel4.ResumeLayout(false);
            this.panel4.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.pnlErro.ResumeLayout(false);
            this.pnlErro.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.pnlVincular.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgrdMain)).EndInit();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.pnlLogo.ResumeLayout(false);
            this.pnlUsuarioSenha.ResumeLayout(false);
            this.pnlUsuarioSenha.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.imgMS)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        #region Form Region Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private static void InitializeManifest(Microsoft.Office.Tools.Outlook.FormRegionManifest manifest, Microsoft.Office.Tools.Outlook.Factory factory)
        {
            manifest.Description = "Ms Outlook add-in";
            manifest.FormRegionName = "MS Logística LTDA";
            manifest.FormRegionType = Microsoft.Office.Tools.Outlook.FormRegionType.Adjoining;
            manifest.ShowReadingPane = false;
            manifest.Version = "2011.10.0.0";

        }

        #endregion

        private System.Windows.Forms.Panel pnlTop;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtCNPJ;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtNome;
        private System.Windows.Forms.PictureBox imgMS;
        private System.Windows.Forms.Panel pnlErro;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Panel pnlVincular;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button btnVincular;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.DataGridView dgrdMain;
        private System.Windows.Forms.Panel pnlUsuarioSenha;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtSenha;
        private System.Windows.Forms.TextBox txtUsuario;
        private System.Windows.Forms.Button btnCancelarLogin;
        private System.Windows.Forms.Button btnConfirmar;
        private System.Windows.Forms.Label label10;
        public System.Windows.Forms.Panel pnlLogo;
        private System.Windows.Forms.Label lblVersao;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.ComboBox cbbTipo;
        private System.Windows.Forms.MaskedTextBox txtProcesso;
        private System.Windows.Forms.Label label2;


        public partial class FormRegion1Factory : Microsoft.Office.Tools.Outlook.IFormRegionFactory
        {
            public event Microsoft.Office.Tools.Outlook.FormRegionInitializingEventHandler FormRegionInitializing;

            private Microsoft.Office.Tools.Outlook.FormRegionManifest _Manifest;

            [System.Diagnostics.DebuggerNonUserCodeAttribute()]
            public FormRegion1Factory()
            {
                this._Manifest = Globals.Factory.CreateFormRegionManifest();
                frmMain.InitializeManifest(this._Manifest, Globals.Factory);
                this.FormRegionInitializing += new Microsoft.Office.Tools.Outlook.FormRegionInitializingEventHandler(this.FormRegion1Factory_FormRegionInitializing);
            }

            [System.Diagnostics.DebuggerNonUserCodeAttribute()]
            public Microsoft.Office.Tools.Outlook.FormRegionManifest Manifest
            {
                get
                {
                    return this._Manifest;
                }
            }

            [System.Diagnostics.DebuggerNonUserCodeAttribute()]
            Microsoft.Office.Tools.Outlook.IFormRegion Microsoft.Office.Tools.Outlook.IFormRegionFactory.CreateFormRegion(Microsoft.Office.Interop.Outlook.FormRegion formRegion)
            {
                frmMain form = new frmMain(formRegion);
                form.Factory = this;
                return form;
            }

            [System.Diagnostics.DebuggerNonUserCodeAttribute()]
            byte[] Microsoft.Office.Tools.Outlook.IFormRegionFactory.GetFormRegionStorage(object outlookItem, Microsoft.Office.Interop.Outlook.OlFormRegionMode formRegionMode, Microsoft.Office.Interop.Outlook.OlFormRegionSize formRegionSize)
            {
                throw new System.NotSupportedException();
            }

            [System.Diagnostics.DebuggerNonUserCodeAttribute()]
            bool Microsoft.Office.Tools.Outlook.IFormRegionFactory.IsDisplayedForItem(object outlookItem, Microsoft.Office.Interop.Outlook.OlFormRegionMode formRegionMode, Microsoft.Office.Interop.Outlook.OlFormRegionSize formRegionSize)
            {
                if (this.FormRegionInitializing != null)
                {
                    Microsoft.Office.Tools.Outlook.FormRegionInitializingEventArgs cancelArgs = Globals.Factory.CreateFormRegionInitializingEventArgs(outlookItem, formRegionMode, formRegionSize, false);
                    this.FormRegionInitializing(this, cancelArgs);
                    return !cancelArgs.Cancel;
                }
                else
                {
                    return true;
                }
            }

            [System.Diagnostics.DebuggerNonUserCodeAttribute()]
            Microsoft.Office.Tools.Outlook.FormRegionKindConstants Microsoft.Office.Tools.Outlook.IFormRegionFactory.Kind
            {
                get
                {
                    return Microsoft.Office.Tools.Outlook.FormRegionKindConstants.WindowsForms;
                }
            }
        }
    }

    partial class WindowFormRegionCollection
    {
        internal frmMain FormRegion1
        {
            get
            {
                foreach (var item in this)
                {
                    if (item.GetType() == typeof(frmMain))
                        return (frmMain)item;
                }
                return null;
            }
        }
    }
}
