namespace MS2000.Desktop.Componentes
{
    partial class FrmLocalizarProdutos
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
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            this.panel1 = new System.Windows.Forms.Panel();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.cbbFiltro = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txtLocaliza = new System.Windows.Forms.TextBox();
            this.lbTitulo = new System.Windows.Forms.Label();
            this.dataGridView = new System.Windows.Forms.DataGridView();
            this.Importador = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.naladi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.unidade = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.REG = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.CodFab = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Fabricante = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.CodProduto = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.PartNumber = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NCM = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Destaque = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DescricaoPortugues = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DescricaoIngles = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnFechar = new System.Windows.Forms.Button();
            this.btnOK = new System.Windows.Forms.Button();
            this.bindingLocalizar = new System.Windows.Forms.BindingSource(this.components);
            this.label10 = new System.Windows.Forms.Label();
            this.txtDescricaoIngles = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtDescricaoPortugues = new System.Windows.Forms.TextBox();
            this.panel1.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingLocalizar)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.Control;
            this.panel1.Controls.Add(this.groupBox1);
            this.panel1.Controls.Add(this.lbTitulo);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(715, 67);
            this.panel1.TabIndex = 3;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.cbbFiltro);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.txtLocaliza);
            this.groupBox1.Location = new System.Drawing.Point(3, 3);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(708, 45);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Localizar";
            // 
            // cbbFiltro
            // 
            this.cbbFiltro.FormattingEnabled = true;
            this.cbbFiltro.Items.AddRange(new object[] {
            "Código",
            "Código do Produto do Cliente",
            "Part.Number",
            "Descrição Português",
            "Descrição Inglês"});
            this.cbbFiltro.Location = new System.Drawing.Point(9, 19);
            this.cbbFiltro.Name = "cbbFiltro";
            this.cbbFiltro.Size = new System.Drawing.Size(152, 21);
            this.cbbFiltro.TabIndex = 9;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.ForeColor = System.Drawing.Color.Black;
            this.label1.Location = new System.Drawing.Point(572, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(119, 13);
            this.label1.TabIndex = 7;
            this.label1.Text = "Mínimo de 4 caracteres";
            // 
            // txtLocaliza
            // 
            this.txtLocaliza.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtLocaliza.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtLocaliza.Location = new System.Drawing.Point(167, 19);
            this.txtLocaliza.MaxLength = 150;
            this.txtLocaliza.Name = "txtLocaliza";
            this.txtLocaliza.Size = new System.Drawing.Size(399, 20);
            this.txtLocaliza.TabIndex = 6;
            this.txtLocaliza.TextChanged += new System.EventHandler(this.txtLocaliza_TextChanged);
            // 
            // lbTitulo
            // 
            this.lbTitulo.AutoSize = true;
            this.lbTitulo.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbTitulo.ForeColor = System.Drawing.Color.Black;
            this.lbTitulo.Location = new System.Drawing.Point(263, 48);
            this.lbTitulo.Name = "lbTitulo";
            this.lbTitulo.Size = new System.Drawing.Size(137, 15);
            this.lbTitulo.TabIndex = 0;
            this.lbTitulo.Text = "Produto(s) localizado(s)";
            // 
            // dataGridView
            // 
            this.dataGridView.AllowUserToAddRows = false;
            this.dataGridView.AllowUserToDeleteRows = false;
            this.dataGridView.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.DisplayedCells;
            this.dataGridView.BackgroundColor = System.Drawing.Color.White;
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
            this.Importador,
            this.naladi,
            this.unidade,
            this.REG,
            this.CodFab,
            this.Fabricante,
            this.CodProduto,
            this.PartNumber,
            this.NCM,
            this.Destaque,
            this.DescricaoPortugues,
            this.DescricaoIngles});
            this.dataGridView.Location = new System.Drawing.Point(0, 73);
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
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView.RowsDefaultCellStyle = dataGridViewCellStyle3;
            this.dataGridView.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView.Size = new System.Drawing.Size(710, 166);
            this.dataGridView.TabIndex = 18;
            this.dataGridView.SelectionChanged += new System.EventHandler(this.dataGridView_SelectionChanged);
            this.dataGridView.DoubleClick += new System.EventHandler(this.dataGridView_DoubleClick);
            // 
            // Importador
            // 
            this.Importador.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.Importador.DataPropertyName = "Importador";
            this.Importador.HeaderText = "Importador";
            this.Importador.Name = "Importador";
            this.Importador.ReadOnly = true;
            // 
            // naladi
            // 
            this.naladi.DataPropertyName = "naladi";
            this.naladi.HeaderText = "naladi";
            this.naladi.Name = "naladi";
            this.naladi.ReadOnly = true;
            this.naladi.Visible = false;
            // 
            // unidade
            // 
            this.unidade.DataPropertyName = "unidade";
            this.unidade.HeaderText = "Unidade";
            this.unidade.Name = "unidade";
            this.unidade.ReadOnly = true;
            this.unidade.Visible = false;
            // 
            // REG
            // 
            this.REG.DataPropertyName = "REG";
            this.REG.HeaderText = "REG";
            this.REG.Name = "REG";
            this.REG.ReadOnly = true;
            this.REG.Visible = false;
            // 
            // CodFab
            // 
            this.CodFab.DataPropertyName = "codfab";
            this.CodFab.HeaderText = "CodFab";
            this.CodFab.Name = "CodFab";
            this.CodFab.ReadOnly = true;
            this.CodFab.Visible = false;
            // 
            // Fabricante
            // 
            this.Fabricante.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.Fabricante.DataPropertyName = "Fabricante";
            this.Fabricante.HeaderText = "Fabricante";
            this.Fabricante.Name = "Fabricante";
            this.Fabricante.ReadOnly = true;
            this.Fabricante.Width = 90;
            // 
            // CodProduto
            // 
            this.CodProduto.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.CodProduto.DataPropertyName = "CODIGO";
            this.CodProduto.HeaderText = "Cód.Produto";
            this.CodProduto.Name = "CodProduto";
            this.CodProduto.ReadOnly = true;
            this.CodProduto.Width = 160;
            // 
            // PartNumber
            // 
            this.PartNumber.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.PartNumber.DataPropertyName = "PART_NUMBER";
            this.PartNumber.HeaderText = "Part.Number";
            this.PartNumber.Name = "PartNumber";
            this.PartNumber.ReadOnly = true;
            this.PartNumber.Width = 127;
            // 
            // NCM
            // 
            this.NCM.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.ColumnHeader;
            this.NCM.DataPropertyName = "NCM";
            this.NCM.HeaderText = "NCM";
            this.NCM.Name = "NCM";
            this.NCM.ReadOnly = true;
            this.NCM.Width = 54;
            // 
            // Destaque
            // 
            this.Destaque.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.ColumnHeader;
            this.Destaque.DataPropertyName = "Destaque_NCM";
            this.Destaque.HeaderText = "Destaque";
            this.Destaque.Name = "Destaque";
            this.Destaque.ReadOnly = true;
            this.Destaque.Width = 76;
            // 
            // DescricaoPortugues
            // 
            this.DescricaoPortugues.DataPropertyName = "Descricao";
            this.DescricaoPortugues.HeaderText = "Descrição Portugês";
            this.DescricaoPortugues.Name = "DescricaoPortugues";
            this.DescricaoPortugues.ReadOnly = true;
            this.DescricaoPortugues.Visible = false;
            // 
            // DescricaoIngles
            // 
            this.DescricaoIngles.DataPropertyName = "Descricao_ing";
            this.DescricaoIngles.HeaderText = "Descrição Inglês";
            this.DescricaoIngles.Name = "DescricaoIngles";
            this.DescricaoIngles.ReadOnly = true;
            this.DescricaoIngles.Visible = false;
            // 
            // btnFechar
            // 
            this.btnFechar.BackColor = System.Drawing.SystemColors.Control;
            this.btnFechar.DialogResult = System.Windows.Forms.DialogResult.Abort;
            this.btnFechar.Image = global::MS2000.Desktop.Properties.Resources.sair;
            this.btnFechar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnFechar.Location = new System.Drawing.Point(614, 394);
            this.btnFechar.Name = "btnFechar";
            this.btnFechar.Size = new System.Drawing.Size(97, 25);
            this.btnFechar.TabIndex = 20;
            this.btnFechar.Text = "Fechar";
            this.btnFechar.UseVisualStyleBackColor = false;
            this.btnFechar.Click += new System.EventHandler(this.btnFechar_Click);
            // 
            // btnOK
            // 
            this.btnOK.BackColor = System.Drawing.SystemColors.Control;
            this.btnOK.Image = global::MS2000.Desktop.Properties.Resources.OK;
            this.btnOK.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnOK.Location = new System.Drawing.Point(461, 394);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(151, 25);
            this.btnOK.TabIndex = 19;
            this.btnOK.Text = "Selecionar e Voltar";
            this.btnOK.UseVisualStyleBackColor = false;
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(0, 321);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(103, 13);
            this.label10.TabIndex = 37;
            this.label10.Text = "Descrição em Inglês";
            // 
            // txtDescricaoIngles
            // 
            this.txtDescricaoIngles.Location = new System.Drawing.Point(3, 337);
            this.txtDescricaoIngles.Multiline = true;
            this.txtDescricaoIngles.Name = "txtDescricaoIngles";
            this.txtDescricaoIngles.Size = new System.Drawing.Size(609, 51);
            this.txtDescricaoIngles.TabIndex = 36;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(0, 245);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(123, 13);
            this.label3.TabIndex = 35;
            this.label3.Text = "Descrição em Português";
            // 
            // txtDescricaoPortugues
            // 
            this.txtDescricaoPortugues.Location = new System.Drawing.Point(3, 261);
            this.txtDescricaoPortugues.Multiline = true;
            this.txtDescricaoPortugues.Name = "txtDescricaoPortugues";
            this.txtDescricaoPortugues.Size = new System.Drawing.Size(609, 57);
            this.txtDescricaoPortugues.TabIndex = 34;
            // 
            // FrmLocalizarProdutos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(715, 431);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.txtDescricaoIngles);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txtDescricaoPortugues);
            this.Controls.Add(this.btnFechar);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.dataGridView);
            this.Controls.Add(this.panel1);
            this.Name = "FrmLocalizarProdutos";
            this.Text = "Localizar produtos";
            this.Load += new System.EventHandler(this.FrmLocalizarProdutos_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingLocalizar)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label lbTitulo;
        private System.Windows.Forms.DataGridView dataGridView;
        private System.Windows.Forms.Button btnFechar;
        private System.Windows.Forms.Button btnOK;
        public System.Windows.Forms.BindingSource bindingLocalizar;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ComboBox cbbFiltro;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtLocaliza;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtDescricaoIngles;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtDescricaoPortugues;
        private System.Windows.Forms.DataGridViewTextBoxColumn Importador;
        private System.Windows.Forms.DataGridViewTextBoxColumn naladi;
        private System.Windows.Forms.DataGridViewTextBoxColumn unidade;
        private System.Windows.Forms.DataGridViewTextBoxColumn REG;
        private System.Windows.Forms.DataGridViewTextBoxColumn CodFab;
        private System.Windows.Forms.DataGridViewTextBoxColumn Fabricante;
        private System.Windows.Forms.DataGridViewTextBoxColumn CodProduto;
        private System.Windows.Forms.DataGridViewTextBoxColumn PartNumber;
        private System.Windows.Forms.DataGridViewTextBoxColumn NCM;
        private System.Windows.Forms.DataGridViewTextBoxColumn Destaque;
        private System.Windows.Forms.DataGridViewTextBoxColumn DescricaoPortugues;
        private System.Windows.Forms.DataGridViewTextBoxColumn DescricaoIngles;
    }
}
