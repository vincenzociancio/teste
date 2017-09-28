namespace MS2000.Desktop.Menu.Sistema
{
    partial class FrmUsuarioDistribuicao
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.cbbUsuario = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.btnEnviar = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.cbbUsuario);
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(282, 53);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Enviar Processos para";
            // 
            // cbbUsuario
            // 
            this.cbbUsuario.AutoComplete = true;
            this.cbbUsuario.AutoDropdown = true;
            this.cbbUsuario.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.cbbUsuario.FormattingEnabled = true;
            this.cbbUsuario.Location = new System.Drawing.Point(6, 25);
            this.cbbUsuario.Name = "cbbUsuario";
            this.cbbUsuario.NumberColumnsDisplay = 0;
            this.cbbUsuario.Size = new System.Drawing.Size(270, 21);
            this.cbbUsuario.TabIndex = 0;
            // 
            // btnEnviar
            // 
            this.btnEnviar.Image = global::MS2000.Desktop.Properties.Resources.Declaração;
            this.btnEnviar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnEnviar.Location = new System.Drawing.Point(230, 70);
            this.btnEnviar.Name = "btnEnviar";
            this.btnEnviar.Size = new System.Drawing.Size(64, 25);
            this.btnEnviar.TabIndex = 1;
            this.btnEnviar.Text = "Enviar";
            this.btnEnviar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnEnviar.UseVisualStyleBackColor = true;
            this.btnEnviar.Click += new System.EventHandler(this.btnEnviar_Click);
            // 
            // FrmUsuarioDistribuicao
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(305, 103);
            this.ControlBox = false;
            this.Controls.Add(this.btnEnviar);
            this.Controls.Add(this.groupBox1);
            this.Name = "FrmUsuarioDistribuicao";
            this.Tag = "603";
            this.Text = "Distribuição de Processos";
            this.Load += new System.EventHandler(this.FrmUsuarioDistribuicao_Load);
            this.groupBox1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private Componentes.MultiColumnComboBox cbbUsuario;
        private System.Windows.Forms.Button btnEnviar;
    }
}
