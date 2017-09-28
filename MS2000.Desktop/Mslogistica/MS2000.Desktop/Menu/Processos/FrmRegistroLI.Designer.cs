namespace MS2000.Desktop.Menu.Processos
{
    partial class FrmRegistroLI
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
            this.tabControl = new System.Windows.Forms.TabControl();
            this.tabFormulario = new System.Windows.Forms.TabPage();
            this.panelControl = new System.Windows.Forms.Panel();
            this.grvItens = new System.Windows.Forms.DataGridView();
            this.NCM = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Descricao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Sequencial = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Valor = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Rateio = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.rdbIE = new System.Windows.Forms.RadioButton();
            this.rdbChorme = new System.Windows.Forms.RadioButton();
            this.groupBox22 = new System.Windows.Forms.GroupBox();
            this.btnEnviar = new System.Windows.Forms.Button();
            this.label50 = new System.Windows.Forms.Label();
            this.cbbAdicoes = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.label19 = new System.Windows.Forms.Label();
            this.pnlLocalizarProcesso = new System.Windows.Forms.Panel();
            this.lblNomeEmpresa = new System.Windows.Forms.Label();
            this.txtProcesso = new System.Windows.Forms.MaskedTextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.tabControl.SuspendLayout();
            this.tabFormulario.SuspendLayout();
            this.panelControl.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.grvItens)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.groupBox22.SuspendLayout();
            this.pnlLocalizarProcesso.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabControl
            // 
            this.tabControl.Controls.Add(this.tabFormulario);
            this.tabControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl.Location = new System.Drawing.Point(0, 0);
            this.tabControl.Name = "tabControl";
            this.tabControl.SelectedIndex = 0;
            this.tabControl.Size = new System.Drawing.Size(687, 398);
            this.tabControl.TabIndex = 18;
            // 
            // tabFormulario
            // 
            this.tabFormulario.Controls.Add(this.panelControl);
            this.tabFormulario.Controls.Add(this.pnlLocalizarProcesso);
            this.tabFormulario.Location = new System.Drawing.Point(4, 22);
            this.tabFormulario.Name = "tabFormulario";
            this.tabFormulario.Padding = new System.Windows.Forms.Padding(3);
            this.tabFormulario.Size = new System.Drawing.Size(679, 372);
            this.tabFormulario.TabIndex = 0;
            this.tabFormulario.Text = "Registro de LI";
            this.tabFormulario.UseVisualStyleBackColor = true;
            // 
            // panelControl
            // 
            this.panelControl.Controls.Add(this.grvItens);
            this.panelControl.Controls.Add(this.groupBox1);
            this.panelControl.Controls.Add(this.groupBox22);
            this.panelControl.Controls.Add(this.label19);
            this.panelControl.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl.Location = new System.Drawing.Point(3, 37);
            this.panelControl.Name = "panelControl";
            this.panelControl.Size = new System.Drawing.Size(673, 330);
            this.panelControl.TabIndex = 6;
            // 
            // grvItens
            // 
            this.grvItens.AllowUserToAddRows = false;
            this.grvItens.AllowUserToDeleteRows = false;
            this.grvItens.BackgroundColor = System.Drawing.SystemColors.ControlLightLight;
            this.grvItens.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grvItens.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.NCM,
            this.Descricao,
            this.Sequencial,
            this.Valor,
            this.Rateio});
            this.grvItens.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.grvItens.Location = new System.Drawing.Point(0, 128);
            this.grvItens.Name = "grvItens";
            this.grvItens.ReadOnly = true;
            this.grvItens.RowHeadersVisible = false;
            this.grvItens.Size = new System.Drawing.Size(673, 202);
            this.grvItens.TabIndex = 44;
            // 
            // NCM
            // 
            this.NCM.DataPropertyName = "NCM";
            this.NCM.HeaderText = "NCM";
            this.NCM.Name = "NCM";
            this.NCM.ReadOnly = true;
            // 
            // Descricao
            // 
            this.Descricao.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.Descricao.DataPropertyName = "Descricao_Produto";
            this.Descricao.HeaderText = "Descrição";
            this.Descricao.Name = "Descricao";
            this.Descricao.ReadOnly = true;
            // 
            // Sequencial
            // 
            this.Sequencial.DataPropertyName = "Sequencial";
            this.Sequencial.HeaderText = "Sequencial";
            this.Sequencial.Name = "Sequencial";
            this.Sequencial.ReadOnly = true;
            // 
            // Valor
            // 
            this.Valor.DataPropertyName = "Valor_Unitario";
            this.Valor.HeaderText = "Valor Unitário";
            this.Valor.Name = "Valor";
            this.Valor.ReadOnly = true;
            // 
            // Rateio
            // 
            this.Rateio.DataPropertyName = "Rateio_frete_fatura";
            this.Rateio.HeaderText = "Rateio Frete";
            this.Rateio.Name = "Rateio";
            this.Rateio.ReadOnly = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.rdbIE);
            this.groupBox1.Controls.Add(this.rdbChorme);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox1.Location = new System.Drawing.Point(0, 0);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(673, 44);
            this.groupBox1.TabIndex = 44;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Selecione o Browser";
            // 
            // rdbIE
            // 
            this.rdbIE.AutoSize = true;
            this.rdbIE.Location = new System.Drawing.Point(270, 19);
            this.rdbIE.Name = "rdbIE";
            this.rdbIE.Size = new System.Drawing.Size(102, 17);
            this.rdbIE.TabIndex = 1;
            this.rdbIE.Text = "Internet Explorer";
            this.rdbIE.UseVisualStyleBackColor = true;
            // 
            // rdbChorme
            // 
            this.rdbChorme.AutoSize = true;
            this.rdbChorme.Checked = true;
            this.rdbChorme.Location = new System.Drawing.Point(18, 19);
            this.rdbChorme.Name = "rdbChorme";
            this.rdbChorme.Size = new System.Drawing.Size(98, 17);
            this.rdbChorme.TabIndex = 0;
            this.rdbChorme.TabStop = true;
            this.rdbChorme.Text = "Google Chrome";
            this.rdbChorme.UseVisualStyleBackColor = true;
            // 
            // groupBox22
            // 
            this.groupBox22.Controls.Add(this.btnEnviar);
            this.groupBox22.Controls.Add(this.label50);
            this.groupBox22.Controls.Add(this.cbbAdicoes);
            this.groupBox22.Location = new System.Drawing.Point(8, 56);
            this.groupBox22.Name = "groupBox22";
            this.groupBox22.Size = new System.Drawing.Size(661, 61);
            this.groupBox22.TabIndex = 43;
            this.groupBox22.TabStop = false;
            this.groupBox22.Text = "Selecione a adição desejada";
            // 
            // btnEnviar
            // 
            this.btnEnviar.Location = new System.Drawing.Point(475, 19);
            this.btnEnviar.Name = "btnEnviar";
            this.btnEnviar.Size = new System.Drawing.Size(179, 23);
            this.btnEnviar.TabIndex = 43;
            this.btnEnviar.Text = "Enviar LI para Registro";
            this.btnEnviar.UseVisualStyleBackColor = true;
            this.btnEnviar.Click += new System.EventHandler(this.btnEnviar_Click);
            // 
            // label50
            // 
            this.label50.AutoSize = true;
            this.label50.Location = new System.Drawing.Point(6, 26);
            this.label50.Name = "label50";
            this.label50.Size = new System.Drawing.Size(72, 13);
            this.label50.TabIndex = 6;
            this.label50.Text = "Adição/ NCM";
            // 
            // cbbAdicoes
            // 
            this.cbbAdicoes.AutoComplete = true;
            this.cbbAdicoes.AutoDropdown = true;
            this.cbbAdicoes.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.cbbAdicoes.FormattingEnabled = true;
            this.cbbAdicoes.Location = new System.Drawing.Point(88, 23);
            this.cbbAdicoes.Name = "cbbAdicoes";
            this.cbbAdicoes.NumberColumnsDisplay = 3;
            this.cbbAdicoes.Size = new System.Drawing.Size(297, 21);
            this.cbbAdicoes.TabIndex = 5;
            this.cbbAdicoes.SelectedIndexChanged += new System.EventHandler(this.cbbAdicoes_SelectedIndexChanged);
            // 
            // label19
            // 
            this.label19.AutoSize = true;
            this.label19.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label19.ForeColor = System.Drawing.Color.White;
            this.label19.Location = new System.Drawing.Point(307, -344);
            this.label19.Name = "label19";
            this.label19.Size = new System.Drawing.Size(127, 15);
            this.label19.TabIndex = 40;
            this.label19.Text = "Selecione o(s) Item(s)";
            // 
            // pnlLocalizarProcesso
            // 
            this.pnlLocalizarProcesso.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pnlLocalizarProcesso.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlLocalizarProcesso.Controls.Add(this.lblNomeEmpresa);
            this.pnlLocalizarProcesso.Controls.Add(this.txtProcesso);
            this.pnlLocalizarProcesso.Controls.Add(this.label3);
            this.pnlLocalizarProcesso.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlLocalizarProcesso.Location = new System.Drawing.Point(3, 3);
            this.pnlLocalizarProcesso.Name = "pnlLocalizarProcesso";
            this.pnlLocalizarProcesso.Size = new System.Drawing.Size(673, 34);
            this.pnlLocalizarProcesso.TabIndex = 13;
            // 
            // lblNomeEmpresa
            // 
            this.lblNomeEmpresa.AutoSize = true;
            this.lblNomeEmpresa.Location = new System.Drawing.Point(266, 6);
            this.lblNomeEmpresa.Name = "lblNomeEmpresa";
            this.lblNomeEmpresa.Size = new System.Drawing.Size(0, 13);
            this.lblNomeEmpresa.TabIndex = 1;
            // 
            // txtProcesso
            // 
            this.txtProcesso.Location = new System.Drawing.Point(128, 6);
            this.txtProcesso.Mask = "00000/00";
            this.txtProcesso.Name = "txtProcesso";
            this.txtProcesso.Size = new System.Drawing.Size(100, 20);
            this.txtProcesso.TabIndex = 0;
            this.txtProcesso.TextChanged += new System.EventHandler(this.txtProcesso_TextChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(4, 9);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(117, 13);
            this.label3.TabIndex = 0;
            this.label3.Text = "Digite o nº do processo";
            // 
            // FrmRegistroLI
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(687, 398);
            this.Controls.Add(this.tabControl);
            this.Name = "FrmRegistroLI";
            this.Text = "Processos - Registro de Licenciamento  de Importação";
            this.Load += new System.EventHandler(this.FrmRegistroLI_Load);
            this.tabControl.ResumeLayout(false);
            this.tabFormulario.ResumeLayout(false);
            this.panelControl.ResumeLayout(false);
            this.panelControl.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.grvItens)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox22.ResumeLayout(false);
            this.groupBox22.PerformLayout();
            this.pnlLocalizarProcesso.ResumeLayout(false);
            this.pnlLocalizarProcesso.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl;
        private System.Windows.Forms.TabPage tabFormulario;
        private System.Windows.Forms.Panel panelControl;
        private System.Windows.Forms.Panel pnlLocalizarProcesso;
        private System.Windows.Forms.Label lblNomeEmpresa;
        private System.Windows.Forms.MaskedTextBox txtProcesso;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label19;
        private System.Windows.Forms.GroupBox groupBox22;
        private System.Windows.Forms.Button btnEnviar;
        private System.Windows.Forms.Label label50;
        private Componentes.MultiColumnComboBox cbbAdicoes;
        private System.Windows.Forms.DataGridView grvItens;
        private System.Windows.Forms.DataGridViewTextBoxColumn NCM;
        private System.Windows.Forms.DataGridViewTextBoxColumn Descricao;
        private System.Windows.Forms.DataGridViewTextBoxColumn Sequencial;
        private System.Windows.Forms.DataGridViewTextBoxColumn Valor;
        private System.Windows.Forms.DataGridViewTextBoxColumn Rateio;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.RadioButton rdbIE;
        private System.Windows.Forms.RadioButton rdbChorme;
    }
}
