namespace MS2000.Desktop.Menu.Ferramenta.Repetro
{
    partial class FrmRepetroTransferenciaBem
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle7 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            this.bindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnBuscar = new System.Windows.Forms.Button();
            this.cbbPesquisar = new System.Windows.Forms.ComboBox();
            this.txtPesquisar = new System.Windows.Forms.TextBox();
            this.dataGridView = new System.Windows.Forms.DataGridView();
            this.Razao_Social = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.qtd = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Contratos_Descricao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Locais_Inventario_Descricao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DESCBEM = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DESCBEM_Ing = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Numero_serie = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DI = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Adicao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Seq_Adicaostr = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Local = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Tipo_local = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.rdbOutroCNPJ = new System.Windows.Forms.RadioButton();
            this.rdbMesmoCNPJ = new System.Windows.Forms.RadioButton();
            this.label1 = new System.Windows.Forms.Label();
            this.mcbbImportador = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.Quantidade = new System.Windows.Forms.Label();
            this.lblContrato = new System.Windows.Forms.Label();
            this.txtSaldo = new System.Windows.Forms.TextBox();
            this.mcbbContrato = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.btnTransferirBem = new System.Windows.Forms.Button();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).BeginInit();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).BeginInit();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.SystemColors.Control;
            this.groupBox1.Controls.Add(this.btnBuscar);
            this.groupBox1.Controls.Add(this.cbbPesquisar);
            this.groupBox1.Controls.Add(this.txtPesquisar);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox1.Location = new System.Drawing.Point(0, 0);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(833, 45);
            this.groupBox1.TabIndex = 27;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = " Pesquisar por ";
            // 
            // btnBuscar
            // 
            this.btnBuscar.BackColor = System.Drawing.SystemColors.Info;
            this.btnBuscar.Image = global::MS2000.Desktop.Properties.Resources.search_zoom;
            this.btnBuscar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnBuscar.Location = new System.Drawing.Point(713, 12);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(108, 27);
            this.btnBuscar.TabIndex = 2;
            this.btnBuscar.Text = "Buscar";
            this.btnBuscar.UseVisualStyleBackColor = false;
            this.btnBuscar.Click += new System.EventHandler(this.btnBuscar_Click);
            // 
            // cbbPesquisar
            // 
            this.cbbPesquisar.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbbPesquisar.FormattingEnabled = true;
            this.cbbPesquisar.Items.AddRange(new object[] {
            "",
            "Diário",
            "Semanal",
            "Quinzenal",
            "Mensal",
            "Bimestral",
            "Trimestral",
            "Semestral",
            "Anual"});
            this.cbbPesquisar.Location = new System.Drawing.Point(6, 18);
            this.cbbPesquisar.Name = "cbbPesquisar";
            this.cbbPesquisar.Size = new System.Drawing.Size(174, 21);
            this.cbbPesquisar.TabIndex = 0;
            // 
            // txtPesquisar
            // 
            this.txtPesquisar.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtPesquisar.Location = new System.Drawing.Point(186, 19);
            this.txtPesquisar.MaxLength = 100;
            this.txtPesquisar.Name = "txtPesquisar";
            this.txtPesquisar.Size = new System.Drawing.Size(521, 20);
            this.txtPesquisar.TabIndex = 1;
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
            this.dataGridView.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.dataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Razao_Social,
            this.qtd,
            this.Contratos_Descricao,
            this.Locais_Inventario_Descricao,
            this.DESCBEM,
            this.DESCBEM_Ing,
            this.Numero_serie,
            this.DI,
            this.Adicao,
            this.Seq_Adicaostr,
            this.Local,
            this.Tipo_local});
            this.dataGridView.Dock = System.Windows.Forms.DockStyle.Top;
            this.dataGridView.Location = new System.Drawing.Point(0, 45);
            this.dataGridView.Name = "dataGridView";
            this.dataGridView.ReadOnly = true;
            dataGridViewCellStyle7.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle7.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle7.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle7.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle7.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle7.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle7.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView.RowHeadersDefaultCellStyle = dataGridViewCellStyle7;
            this.dataGridView.RowHeadersVisible = false;
            this.dataGridView.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView.Size = new System.Drawing.Size(833, 297);
            this.dataGridView.TabIndex = 0;
            this.dataGridView.SelectionChanged += new System.EventHandler(this.dataGridView_SelectionChanged);
            // 
            // Razao_Social
            // 
            this.Razao_Social.DataPropertyName = "Razao_Social";
            this.Razao_Social.HeaderText = "Importador";
            this.Razao_Social.Name = "Razao_Social";
            this.Razao_Social.ReadOnly = true;
            this.Razao_Social.Width = 80;
            // 
            // qtd
            // 
            this.qtd.DataPropertyName = "Quantidade";
            this.qtd.HeaderText = "Quantidade";
            this.qtd.Name = "qtd";
            this.qtd.ReadOnly = true;
            this.qtd.Visible = false;
            this.qtd.Width = 85;
            // 
            // Contratos_Descricao
            // 
            this.Contratos_Descricao.DataPropertyName = "Contratos_Descricao";
            this.Contratos_Descricao.HeaderText = "Contrato";
            this.Contratos_Descricao.Name = "Contratos_Descricao";
            this.Contratos_Descricao.ReadOnly = true;
            this.Contratos_Descricao.Width = 70;
            // 
            // Locais_Inventario_Descricao
            // 
            this.Locais_Inventario_Descricao.DataPropertyName = "Locais_Inventario_Descricao";
            this.Locais_Inventario_Descricao.HeaderText = "Local";
            this.Locais_Inventario_Descricao.Name = "Locais_Inventario_Descricao";
            this.Locais_Inventario_Descricao.ReadOnly = true;
            this.Locais_Inventario_Descricao.Width = 56;
            // 
            // DESCBEM
            // 
            this.DESCBEM.DataPropertyName = "DESCBEM";
            this.DESCBEM.HeaderText = "Descrição Português";
            this.DESCBEM.Name = "DESCBEM";
            this.DESCBEM.ReadOnly = true;
            this.DESCBEM.Width = 129;
            // 
            // DESCBEM_Ing
            // 
            this.DESCBEM_Ing.DataPropertyName = "DESCBEM_Ing";
            this.DESCBEM_Ing.HeaderText = "Descrição Inglês";
            this.DESCBEM_Ing.Name = "DESCBEM_Ing";
            this.DESCBEM_Ing.ReadOnly = true;
            this.DESCBEM_Ing.Width = 109;
            // 
            // Numero_serie
            // 
            this.Numero_serie.DataPropertyName = "Numero_serie";
            this.Numero_serie.HeaderText = "Número de Série";
            this.Numero_serie.Name = "Numero_serie";
            this.Numero_serie.ReadOnly = true;
            this.Numero_serie.Width = 109;
            // 
            // DI
            // 
            this.DI.DataPropertyName = "DI";
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.DI.DefaultCellStyle = dataGridViewCellStyle2;
            this.DI.HeaderText = "DI";
            this.DI.Name = "DI";
            this.DI.ReadOnly = true;
            this.DI.Width = 41;
            // 
            // Adicao
            // 
            this.Adicao.DataPropertyName = "Adicao";
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.Adicao.DefaultCellStyle = dataGridViewCellStyle3;
            this.Adicao.HeaderText = "Adição";
            this.Adicao.Name = "Adicao";
            this.Adicao.ReadOnly = true;
            this.Adicao.Width = 63;
            // 
            // Seq_Adicaostr
            // 
            this.Seq_Adicaostr.DataPropertyName = "Seq_Adicaostr";
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.Seq_Adicaostr.DefaultCellStyle = dataGridViewCellStyle4;
            this.Seq_Adicaostr.HeaderText = "Seq. Adição";
            this.Seq_Adicaostr.Name = "Seq_Adicaostr";
            this.Seq_Adicaostr.ReadOnly = true;
            this.Seq_Adicaostr.Width = 88;
            // 
            // Local
            // 
            this.Local.DataPropertyName = "Local";
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.Local.DefaultCellStyle = dataGridViewCellStyle5;
            this.Local.HeaderText = "Local";
            this.Local.Name = "Local";
            this.Local.ReadOnly = true;
            this.Local.Visible = false;
            this.Local.Width = 56;
            // 
            // Tipo_local
            // 
            this.Tipo_local.DataPropertyName = "Tipo_local";
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.Tipo_local.DefaultCellStyle = dataGridViewCellStyle6;
            this.Tipo_local.HeaderText = "Tipo_local";
            this.Tipo_local.Name = "Tipo_local";
            this.Tipo_local.ReadOnly = true;
            this.Tipo_local.Visible = false;
            this.Tipo_local.Width = 79;
            // 
            // groupBox2
            // 
            this.groupBox2.BackColor = System.Drawing.SystemColors.Control;
            this.groupBox2.Controls.Add(this.rdbOutroCNPJ);
            this.groupBox2.Controls.Add(this.rdbMesmoCNPJ);
            this.groupBox2.Controls.Add(this.label1);
            this.groupBox2.Controls.Add(this.mcbbImportador);
            this.groupBox2.Controls.Add(this.Quantidade);
            this.groupBox2.Controls.Add(this.lblContrato);
            this.groupBox2.Controls.Add(this.txtSaldo);
            this.groupBox2.Controls.Add(this.mcbbContrato);
            this.groupBox2.Controls.Add(this.btnTransferirBem);
            this.groupBox2.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.groupBox2.Location = new System.Drawing.Point(0, 348);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(833, 130);
            this.groupBox2.TabIndex = 29;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = " Transferir para o contrato ";
            // 
            // rdbOutroCNPJ
            // 
            this.rdbOutroCNPJ.AutoSize = true;
            this.rdbOutroCNPJ.Location = new System.Drawing.Point(111, 19);
            this.rdbOutroCNPJ.Name = "rdbOutroCNPJ";
            this.rdbOutroCNPJ.Size = new System.Drawing.Size(126, 17);
            this.rdbOutroCNPJ.TabIndex = 1;
            this.rdbOutroCNPJ.Text = "Outro CNPJ do grupo";
            this.rdbOutroCNPJ.UseVisualStyleBackColor = true;
            // 
            // rdbMesmoCNPJ
            // 
            this.rdbMesmoCNPJ.AutoSize = true;
            this.rdbMesmoCNPJ.Checked = true;
            this.rdbMesmoCNPJ.Location = new System.Drawing.Point(12, 19);
            this.rdbMesmoCNPJ.Name = "rdbMesmoCNPJ";
            this.rdbMesmoCNPJ.Size = new System.Drawing.Size(89, 17);
            this.rdbMesmoCNPJ.TabIndex = 0;
            this.rdbMesmoCNPJ.TabStop = true;
            this.rdbMesmoCNPJ.Text = "Mesmo CNPJ";
            this.rdbMesmoCNPJ.UseVisualStyleBackColor = true;
            this.rdbMesmoCNPJ.CheckedChanged += new System.EventHandler(this.rdbMesmoCNPJ_CheckedChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 43);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(57, 13);
            this.label1.TabIndex = 6;
            this.label1.Text = "Importador";
            // 
            // mcbbImportador
            // 
            this.mcbbImportador.AutoComplete = true;
            this.mcbbImportador.AutoDropdown = true;
            this.mcbbImportador.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbbImportador.FormattingEnabled = true;
            this.mcbbImportador.Location = new System.Drawing.Point(12, 59);
            this.mcbbImportador.Name = "mcbbImportador";
            this.mcbbImportador.NumberColumnsDisplay = 0;
            this.mcbbImportador.Size = new System.Drawing.Size(809, 21);
            this.mcbbImportador.TabIndex = 2;
            this.mcbbImportador.SelectedValueChanged += new System.EventHandler(this.mcbbImportador_SelectedValueChanged);
            // 
            // Quantidade
            // 
            this.Quantidade.AutoSize = true;
            this.Quantidade.Location = new System.Drawing.Point(611, 84);
            this.Quantidade.Name = "Quantidade";
            this.Quantidade.Size = new System.Drawing.Size(62, 13);
            this.Quantidade.TabIndex = 4;
            this.Quantidade.Text = "Quantidade";
            // 
            // lblContrato
            // 
            this.lblContrato.AutoSize = true;
            this.lblContrato.Location = new System.Drawing.Point(12, 84);
            this.lblContrato.Name = "lblContrato";
            this.lblContrato.Size = new System.Drawing.Size(47, 13);
            this.lblContrato.TabIndex = 3;
            this.lblContrato.Text = "Contrato";
            // 
            // txtSaldo
            // 
            this.txtSaldo.Location = new System.Drawing.Point(611, 101);
            this.txtSaldo.Name = "txtSaldo";
            this.txtSaldo.Size = new System.Drawing.Size(100, 20);
            this.txtSaldo.TabIndex = 4;
            this.txtSaldo.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtSaldo.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtSaldo_KeyPress);
            // 
            // mcbbContrato
            // 
            this.mcbbContrato.AutoComplete = true;
            this.mcbbContrato.AutoDropdown = true;
            this.mcbbContrato.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbbContrato.FormattingEnabled = true;
            this.mcbbContrato.Location = new System.Drawing.Point(12, 100);
            this.mcbbContrato.Name = "mcbbContrato";
            this.mcbbContrato.NumberColumnsDisplay = 0;
            this.mcbbContrato.Size = new System.Drawing.Size(594, 21);
            this.mcbbContrato.TabIndex = 3;
            // 
            // btnTransferirBem
            // 
            this.btnTransferirBem.BackColor = System.Drawing.SystemColors.Info;
            this.btnTransferirBem.Image = global::MS2000.Desktop.Properties.Resources.copy16;
            this.btnTransferirBem.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnTransferirBem.Location = new System.Drawing.Point(713, 96);
            this.btnTransferirBem.Name = "btnTransferirBem";
            this.btnTransferirBem.Size = new System.Drawing.Size(108, 26);
            this.btnTransferirBem.TabIndex = 5;
            this.btnTransferirBem.Text = "Transferir";
            this.btnTransferirBem.UseVisualStyleBackColor = false;
            this.btnTransferirBem.Click += new System.EventHandler(this.btnTransferirBem_Click);
            // 
            // FrmRepetroTransferenciaBem
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(833, 478);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.dataGridView);
            this.Controls.Add(this.groupBox1);
            this.Name = "FrmRepetroTransferenciaBem";
            this.Text = "Ferramenta - Repetro - Transferência de Bem";
            this.Load += new System.EventHandler(this.FrmRepetroTransferenciaBem_Load);
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).EndInit();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.BindingSource bindingSource;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ComboBox cbbPesquisar;
        private System.Windows.Forms.TextBox txtPesquisar;
        private System.Windows.Forms.DataGridView dataGridView;
        private System.Windows.Forms.Button btnBuscar;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnTransferirBem;
        private System.Windows.Forms.BindingSource bindingSource1;
        private Componentes.MultiColumnComboBox mcbbContrato;
        private System.Windows.Forms.Label Quantidade;
        private System.Windows.Forms.Label lblContrato;
        private System.Windows.Forms.TextBox txtSaldo;
        private System.Windows.Forms.DataGridViewTextBoxColumn Razao_Social;
        private System.Windows.Forms.DataGridViewTextBoxColumn qtd;
        private System.Windows.Forms.DataGridViewTextBoxColumn Contratos_Descricao;
        private System.Windows.Forms.DataGridViewTextBoxColumn Locais_Inventario_Descricao;
        private System.Windows.Forms.DataGridViewTextBoxColumn DESCBEM;
        private System.Windows.Forms.DataGridViewTextBoxColumn DESCBEM_Ing;
        private System.Windows.Forms.DataGridViewTextBoxColumn Numero_serie;
        private System.Windows.Forms.DataGridViewTextBoxColumn DI;
        private System.Windows.Forms.DataGridViewTextBoxColumn Adicao;
        private System.Windows.Forms.DataGridViewTextBoxColumn Seq_Adicaostr;
        private System.Windows.Forms.DataGridViewTextBoxColumn Local;
        private System.Windows.Forms.DataGridViewTextBoxColumn Tipo_local;
        private System.Windows.Forms.RadioButton rdbOutroCNPJ;
        private System.Windows.Forms.RadioButton rdbMesmoCNPJ;
        private System.Windows.Forms.Label label1;
        private Componentes.MultiColumnComboBox mcbbImportador;
    }
}
