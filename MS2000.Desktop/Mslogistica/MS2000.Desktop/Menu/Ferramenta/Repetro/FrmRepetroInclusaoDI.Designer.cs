namespace MS2000.Desktop.Menu.Ferramenta.Repetro
{
    partial class FrmRepetroInclusaoDI
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtArquivo = new System.Windows.Forms.TextBox();
            this.btnLocaliza = new System.Windows.Forms.Button();
            this.dataGridView = new System.Windows.Forms.DataGridView();
            this.DI = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.CNPJ = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Descricao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NCM = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Quantidade = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.mcbbContrato = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtDataDesembaraco = new System.Windows.Forms.MaskedTextBox();
            this.btnIncluir = new System.Windows.Forms.Button();
            this.txtTaxaConversao = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtProcessoADM = new System.Windows.Forms.MaskedTextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.rdbDIReimportacao = new System.Windows.Forms.RadioButton();
            this.rdbDSI = new System.Windows.Forms.RadioButton();
            this.rdbDI = new System.Windows.Forms.RadioButton();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).BeginInit();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtArquivo);
            this.groupBox1.Controls.Add(this.btnLocaliza);
            this.groupBox1.Location = new System.Drawing.Point(12, 61);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(595, 51);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Localizar DI do Siscomex";
            // 
            // txtArquivo
            // 
            this.txtArquivo.Enabled = false;
            this.txtArquivo.Location = new System.Drawing.Point(9, 18);
            this.txtArquivo.Name = "txtArquivo";
            this.txtArquivo.Size = new System.Drawing.Size(478, 20);
            this.txtArquivo.TabIndex = 0;
            // 
            // btnLocaliza
            // 
            this.btnLocaliza.Image = global::MS2000.Desktop.Properties.Resources.search_zoom;
            this.btnLocaliza.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnLocaliza.Location = new System.Drawing.Point(493, 18);
            this.btnLocaliza.Name = "btnLocaliza";
            this.btnLocaliza.Size = new System.Drawing.Size(96, 23);
            this.btnLocaliza.TabIndex = 1;
            this.btnLocaliza.Text = "Localizar";
            this.btnLocaliza.UseVisualStyleBackColor = true;
            this.btnLocaliza.Click += new System.EventHandler(this.btnLocaliza_Click);
            // 
            // dataGridView
            // 
            this.dataGridView.AllowUserToAddRows = false;
            this.dataGridView.AllowUserToDeleteRows = false;
            this.dataGridView.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dataGridView.BackgroundColor = System.Drawing.SystemColors.ButtonHighlight;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.dataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.DI,
            this.CNPJ,
            this.Descricao,
            this.NCM,
            this.Quantidade});
            this.dataGridView.Location = new System.Drawing.Point(12, 118);
            this.dataGridView.Name = "dataGridView";
            this.dataGridView.ReadOnly = true;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView.RowHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.dataGridView.RowHeadersVisible = false;
            this.dataGridView.Size = new System.Drawing.Size(595, 149);
            this.dataGridView.TabIndex = 3;
            this.dataGridView.RowEnter += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView_RowEnter);
            // 
            // DI
            // 
            this.DI.DataPropertyName = "DI";
            this.DI.HeaderText = "DI";
            this.DI.Name = "DI";
            this.DI.ReadOnly = true;
            this.DI.Width = 41;
            // 
            // CNPJ
            // 
            this.CNPJ.DataPropertyName = "CNPJ";
            this.CNPJ.HeaderText = "CNPJ";
            this.CNPJ.Name = "CNPJ";
            this.CNPJ.ReadOnly = true;
            this.CNPJ.Visible = false;
            this.CNPJ.Width = 57;
            // 
            // Descricao
            // 
            this.Descricao.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.Descricao.DataPropertyName = "Descricao";
            this.Descricao.HeaderText = "Descrição";
            this.Descricao.Name = "Descricao";
            this.Descricao.ReadOnly = true;
            // 
            // NCM
            // 
            this.NCM.DataPropertyName = "NCM";
            this.NCM.HeaderText = "NCM";
            this.NCM.Name = "NCM";
            this.NCM.ReadOnly = true;
            this.NCM.Width = 54;
            // 
            // Quantidade
            // 
            this.Quantidade.DataPropertyName = "Quantidade";
            this.Quantidade.HeaderText = "Quantidade";
            this.Quantidade.Name = "Quantidade";
            this.Quantidade.ReadOnly = true;
            this.Quantidade.Width = 85;
            // 
            // mcbbContrato
            // 
            this.mcbbContrato.AutoComplete = true;
            this.mcbbContrato.AutoDropdown = true;
            this.mcbbContrato.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbbContrato.FormattingEnabled = true;
            this.mcbbContrato.Location = new System.Drawing.Point(6, 32);
            this.mcbbContrato.Name = "mcbbContrato";
            this.mcbbContrato.NumberColumnsDisplay = 0;
            this.mcbbContrato.Size = new System.Drawing.Size(583, 21);
            this.mcbbContrato.TabIndex = 0;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.txtDataDesembaraco);
            this.groupBox2.Controls.Add(this.btnIncluir);
            this.groupBox2.Controls.Add(this.txtTaxaConversao);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Controls.Add(this.txtProcessoADM);
            this.groupBox2.Controls.Add(this.label2);
            this.groupBox2.Controls.Add(this.label1);
            this.groupBox2.Controls.Add(this.mcbbContrato);
            this.groupBox2.Location = new System.Drawing.Point(12, 273);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(595, 100);
            this.groupBox2.TabIndex = 0;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Informar Dados ";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(249, 56);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(114, 13);
            this.label3.TabIndex = 77;
            this.label3.Text = "Data de Desembaraço";
            // 
            // txtDataDesembaraco
            // 
            this.txtDataDesembaraco.Location = new System.Drawing.Point(252, 71);
            this.txtDataDesembaraco.Mask = "00/00/0000";
            this.txtDataDesembaraco.Name = "txtDataDesembaraco";
            this.txtDataDesembaraco.Size = new System.Drawing.Size(111, 20);
            this.txtDataDesembaraco.TabIndex = 3;
            this.txtDataDesembaraco.ValidatingType = typeof(System.DateTime);
            // 
            // btnIncluir
            // 
            this.btnIncluir.Enabled = false;
            this.btnIncluir.Image = global::MS2000.Desktop.Properties.Resources.filter_add;
            this.btnIncluir.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnIncluir.Location = new System.Drawing.Point(369, 68);
            this.btnIncluir.Name = "btnIncluir";
            this.btnIncluir.Size = new System.Drawing.Size(153, 23);
            this.btnIncluir.TabIndex = 4;
            this.btnIncluir.Text = "Incluir DI/ DSI";
            this.btnIncluir.UseVisualStyleBackColor = true;
            this.btnIncluir.Click += new System.EventHandler(this.btnIncluir_Click);
            // 
            // txtTaxaConversao
            // 
            this.txtTaxaConversao.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtTaxaConversao.Location = new System.Drawing.Point(143, 72);
            this.txtTaxaConversao.MaxLength = 50;
            this.txtTaxaConversao.Name = "txtTaxaConversao";
            this.txtTaxaConversao.Size = new System.Drawing.Size(103, 20);
            this.txtTaxaConversao.TabIndex = 2;
            this.txtTaxaConversao.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(140, 56);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(100, 13);
            this.label4.TabIndex = 74;
            this.label4.Text = "Taxa de Conversão";
            // 
            // txtProcessoADM
            // 
            this.txtProcessoADM.Location = new System.Drawing.Point(6, 72);
            this.txtProcessoADM.Mask = "00000,000000/00-00-00";
            this.txtProcessoADM.Name = "txtProcessoADM";
            this.txtProcessoADM.Size = new System.Drawing.Size(132, 20);
            this.txtProcessoADM.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 56);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(119, 13);
            this.label2.TabIndex = 28;
            this.label2.Text = "Processo Administrativo";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 16);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(47, 13);
            this.label1.TabIndex = 27;
            this.label1.Text = "Contrato";
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.rdbDIReimportacao);
            this.groupBox3.Controls.Add(this.rdbDSI);
            this.groupBox3.Controls.Add(this.rdbDI);
            this.groupBox3.Location = new System.Drawing.Point(12, 8);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(595, 47);
            this.groupBox3.TabIndex = 0;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Escolha o tipo de arquivo XML";
            // 
            // rdbDIReimportacao
            // 
            this.rdbDIReimportacao.AutoSize = true;
            this.rdbDIReimportacao.Location = new System.Drawing.Point(281, 19);
            this.rdbDIReimportacao.Name = "rdbDIReimportacao";
            this.rdbDIReimportacao.Size = new System.Drawing.Size(117, 17);
            this.rdbDIReimportacao.TabIndex = 2;
            this.rdbDIReimportacao.TabStop = true;
            this.rdbDIReimportacao.Text = "DI ( Reimportação )";
            this.rdbDIReimportacao.UseVisualStyleBackColor = true;
            // 
            // rdbDSI
            // 
            this.rdbDSI.AutoSize = true;
            this.rdbDSI.Location = new System.Drawing.Point(143, 19);
            this.rdbDSI.Name = "rdbDSI";
            this.rdbDSI.Size = new System.Drawing.Size(43, 17);
            this.rdbDSI.TabIndex = 1;
            this.rdbDSI.TabStop = true;
            this.rdbDSI.Text = "DSI";
            this.rdbDSI.UseVisualStyleBackColor = true;
            // 
            // rdbDI
            // 
            this.rdbDI.AutoSize = true;
            this.rdbDI.Location = new System.Drawing.Point(17, 19);
            this.rdbDI.Name = "rdbDI";
            this.rdbDI.Size = new System.Drawing.Size(36, 17);
            this.rdbDI.TabIndex = 0;
            this.rdbDI.TabStop = true;
            this.rdbDI.Text = "DI";
            this.rdbDI.UseVisualStyleBackColor = true;
            // 
            // FrmRepetroInclusaoDI
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(614, 385);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.dataGridView);
            this.Controls.Add(this.groupBox1);
            this.Name = "FrmRepetroInclusaoDI";
            this.Tag = "90302";
            this.Text = "Ferramenta - Repetro - Inclusão de DI de Outro Despachante";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).EndInit();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView dataGridView;
        private System.Windows.Forms.Button btnLocaliza;
        private Componentes.MultiColumnComboBox mcbbContrato;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.MaskedTextBox txtProcessoADM;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnIncluir;
        private System.Windows.Forms.TextBox txtTaxaConversao;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DataGridViewTextBoxColumn DI;
        private System.Windows.Forms.DataGridViewTextBoxColumn CNPJ;
        private System.Windows.Forms.DataGridViewTextBoxColumn Descricao;
        private System.Windows.Forms.DataGridViewTextBoxColumn NCM;
        private System.Windows.Forms.DataGridViewTextBoxColumn Quantidade;
        private System.Windows.Forms.TextBox txtArquivo;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.RadioButton rdbDSI;
        private System.Windows.Forms.RadioButton rdbDI;
        private System.Windows.Forms.MaskedTextBox txtDataDesembaraco;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.RadioButton rdbDIReimportacao;
    }
}
