namespace MS2000.Desktop.Menu.Ferramenta
{
    partial class FrmMergerDocumentos
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
            this.fontDialog1 = new System.Windows.Forms.FontDialog();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.lblDescricao = new System.Windows.Forms.Label();
            this.btnUnificar = new System.Windows.Forms.Button();
            this.grvDocumento = new System.Windows.Forms.DataGridView();
            this.selecao = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.Tipo_doc = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Sub_tipo_doc = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DescricaoTipo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.descricao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Numero_Doc = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Arquivo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Codigo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pnlLocalizarProcesso = new System.Windows.Forms.Panel();
            this.ckbDocumentos = new System.Windows.Forms.CheckBox();
            this.txtProcesso = new System.Windows.Forms.MaskedTextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnLimpar = new System.Windows.Forms.Button();
            this.label11 = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.grvDocumento)).BeginInit();
            this.pnlLocalizarProcesso.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.groupBox1.Controls.Add(this.lblDescricao);
            this.groupBox1.Location = new System.Drawing.Point(0, 365);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(634, 105);
            this.groupBox1.TabIndex = 44;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Ordem de Unificação";
            // 
            // lblDescricao
            // 
            this.lblDescricao.Location = new System.Drawing.Point(6, 16);
            this.lblDescricao.Name = "lblDescricao";
            this.lblDescricao.Size = new System.Drawing.Size(628, 86);
            this.lblDescricao.TabIndex = 43;
            this.lblDescricao.Text = "xxxxx";
            // 
            // btnUnificar
            // 
            this.btnUnificar.Image = global::MS2000.Desktop.Properties.Resources.PDF;
            this.btnUnificar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnUnificar.Location = new System.Drawing.Point(433, 476);
            this.btnUnificar.Name = "btnUnificar";
            this.btnUnificar.Size = new System.Drawing.Size(112, 26);
            this.btnUnificar.TabIndex = 41;
            this.btnUnificar.Text = "Unificar Arquivos";
            this.btnUnificar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnUnificar.UseVisualStyleBackColor = true;
            this.btnUnificar.Click += new System.EventHandler(this.btnUnificar_Click);
            // 
            // grvDocumento
            // 
            this.grvDocumento.AllowUserToAddRows = false;
            this.grvDocumento.AllowUserToDeleteRows = false;
            this.grvDocumento.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.grvDocumento.BackgroundColor = System.Drawing.SystemColors.ControlLightLight;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.grvDocumento.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.grvDocumento.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grvDocumento.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.selecao,
            this.Tipo_doc,
            this.Sub_tipo_doc,
            this.DescricaoTipo,
            this.descricao,
            this.Numero_Doc,
            this.Arquivo,
            this.Codigo});
            this.grvDocumento.Dock = System.Windows.Forms.DockStyle.Top;
            this.grvDocumento.Location = new System.Drawing.Point(0, 34);
            this.grvDocumento.Name = "grvDocumento";
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.grvDocumento.RowHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.grvDocumento.RowHeadersVisible = false;
            this.grvDocumento.Size = new System.Drawing.Size(634, 308);
            this.grvDocumento.TabIndex = 40;
            this.grvDocumento.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.grvDocumento_CellContentClick);
            this.grvDocumento.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.grvDocumento_CellDoubleClick);
            this.grvDocumento.CellFormatting += new System.Windows.Forms.DataGridViewCellFormattingEventHandler(this.grvDocumento_CellFormatting);
            // 
            // selecao
            // 
            this.selecao.Frozen = true;
            this.selecao.HeaderText = "";
            this.selecao.Name = "selecao";
            this.selecao.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.selecao.Width = 5;
            // 
            // Tipo_doc
            // 
            this.Tipo_doc.DataPropertyName = "Tipo_Doc";
            this.Tipo_doc.HeaderText = "Tipo";
            this.Tipo_doc.Name = "Tipo_doc";
            this.Tipo_doc.Visible = false;
            this.Tipo_doc.Width = 32;
            // 
            // Sub_tipo_doc
            // 
            this.Sub_tipo_doc.DataPropertyName = "Sub_Tipo_Doc";
            this.Sub_tipo_doc.HeaderText = "SubTipo";
            this.Sub_tipo_doc.Name = "Sub_tipo_doc";
            this.Sub_tipo_doc.Visible = false;
            this.Sub_tipo_doc.Width = 51;
            // 
            // DescricaoTipo
            // 
            this.DescricaoTipo.DataPropertyName = "DescricaoTipo";
            this.DescricaoTipo.HeaderText = "Tipo";
            this.DescricaoTipo.Name = "DescricaoTipo";
            this.DescricaoTipo.Width = 51;
            // 
            // descricao
            // 
            this.descricao.DataPropertyName = "Descricao";
            this.descricao.HeaderText = "Descrição";
            this.descricao.Name = "descricao";
            this.descricao.ReadOnly = true;
            this.descricao.Width = 78;
            // 
            // Numero_Doc
            // 
            this.Numero_Doc.DataPropertyName = "Numero_Doc";
            this.Numero_Doc.HeaderText = "Nome Documento";
            this.Numero_Doc.Name = "Numero_Doc";
            this.Numero_Doc.Width = 106;
            // 
            // Arquivo
            // 
            this.Arquivo.DataPropertyName = "Arquivo";
            this.Arquivo.HeaderText = "Arquivo";
            this.Arquivo.Name = "Arquivo";
            this.Arquivo.Visible = false;
            this.Arquivo.Width = 66;
            // 
            // Codigo
            // 
            this.Codigo.DataPropertyName = "Codigo";
            this.Codigo.HeaderText = "Codigo";
            this.Codigo.Name = "Codigo";
            this.Codigo.Visible = false;
            this.Codigo.Width = 63;
            // 
            // pnlLocalizarProcesso
            // 
            this.pnlLocalizarProcesso.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pnlLocalizarProcesso.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlLocalizarProcesso.Controls.Add(this.ckbDocumentos);
            this.pnlLocalizarProcesso.Controls.Add(this.txtProcesso);
            this.pnlLocalizarProcesso.Controls.Add(this.label1);
            this.pnlLocalizarProcesso.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlLocalizarProcesso.Location = new System.Drawing.Point(0, 0);
            this.pnlLocalizarProcesso.Name = "pnlLocalizarProcesso";
            this.pnlLocalizarProcesso.Size = new System.Drawing.Size(634, 34);
            this.pnlLocalizarProcesso.TabIndex = 12;
            // 
            // ckbDocumentos
            // 
            this.ckbDocumentos.AutoSize = true;
            this.ckbDocumentos.ForeColor = System.Drawing.Color.Red;
            this.ckbDocumentos.Location = new System.Drawing.Point(485, 9);
            this.ckbDocumentos.Name = "ckbDocumentos";
            this.ckbDocumentos.Size = new System.Drawing.Size(136, 17);
            this.ckbDocumentos.TabIndex = 1;
            this.ckbDocumentos.Text = "Documentos de Fiança";
            this.ckbDocumentos.UseVisualStyleBackColor = true;
            this.ckbDocumentos.Visible = false;
            this.ckbDocumentos.CheckedChanged += new System.EventHandler(this.ckbDocumentos_CheckedChanged);
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
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(4, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(117, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Digite o nº do processo";
            // 
            // btnLimpar
            // 
            this.btnLimpar.Image = global::MS2000.Desktop.Properties.Resources.borracha;
            this.btnLimpar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnLimpar.Location = new System.Drawing.Point(551, 476);
            this.btnLimpar.Name = "btnLimpar";
            this.btnLimpar.Size = new System.Drawing.Size(71, 26);
            this.btnLimpar.TabIndex = 45;
            this.btnLimpar.Text = "Limpar";
            this.btnLimpar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnLimpar.UseVisualStyleBackColor = true;
            this.btnLimpar.Click += new System.EventHandler(this.btnLimpar_Click);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.ForeColor = System.Drawing.Color.Blue;
            this.label11.Location = new System.Drawing.Point(5, 345);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(208, 13);
            this.label11.TabIndex = 46;
            this.label11.Text = " * Duplo click para visualizar o documento ";
            // 
            // FrmMergerDocumentos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(634, 509);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.btnLimpar);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.btnUnificar);
            this.Controls.Add(this.grvDocumento);
            this.Controls.Add(this.pnlLocalizarProcesso);
            this.Name = "FrmMergerDocumentos";
            this.Tag = "901";
            this.Text = "Ferramenta - Unificar Documentos";
            this.Load += new System.EventHandler(this.FrmMergerDocumentos_Load);
            this.groupBox1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.grvDocumento)).EndInit();
            this.pnlLocalizarProcesso.ResumeLayout(false);
            this.pnlLocalizarProcesso.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel pnlLocalizarProcesso;
        private System.Windows.Forms.MaskedTextBox txtProcesso;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView grvDocumento;
        private System.Windows.Forms.Button btnUnificar;
        private System.Windows.Forms.Label lblDescricao;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.FontDialog fontDialog1;
        private System.Windows.Forms.CheckBox ckbDocumentos;
        private System.Windows.Forms.Button btnLimpar;
        private System.Windows.Forms.DataGridViewCheckBoxColumn selecao;
        private System.Windows.Forms.DataGridViewTextBoxColumn Tipo_doc;
        private System.Windows.Forms.DataGridViewTextBoxColumn Sub_tipo_doc;
        private System.Windows.Forms.DataGridViewTextBoxColumn DescricaoTipo;
        private System.Windows.Forms.DataGridViewTextBoxColumn descricao;
        private System.Windows.Forms.DataGridViewTextBoxColumn Numero_Doc;
        private System.Windows.Forms.DataGridViewTextBoxColumn Arquivo;
        private System.Windows.Forms.DataGridViewTextBoxColumn Codigo;
        private System.Windows.Forms.Label label11;
    }
}
