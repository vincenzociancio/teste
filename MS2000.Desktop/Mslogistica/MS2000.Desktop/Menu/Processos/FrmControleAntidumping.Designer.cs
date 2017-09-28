namespace MS2000.Desktop.Menu.Processos
{
    partial class FrmControleAntidumping
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            this.tabControl = new System.Windows.Forms.TabControl();
            this.tabFormulario = new System.Windows.Forms.TabPage();
            this.dataGridView = new System.Windows.Forms.DataGridView();
            this.ID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Adicao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Aliq_Ad_Valorem = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Base_Calc_Ad_Valorem = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Valor_Especifica = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Unidade_Medida_Especifica = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Quantidade_Especifica = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panelControl = new System.Windows.Forms.Panel();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.txtBaseCalculo = new System.Windows.Forms.TextBox();
            this.txtAdValorem = new System.Windows.Forms.TextBox();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.txtQuantidadeEspecifica = new System.Windows.Forms.TextBox();
            this.txtUnidadeEspecifica = new System.Windows.Forms.TextBox();
            this.txtValorEspecifica = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.btnRemover = new System.Windows.Forms.Button();
            this.btnAdicionar = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label5 = new System.Windows.Forms.Label();
            this.cbbAdicoes = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.pnlLocalizarProcesso = new System.Windows.Forms.Panel();
            this.lblNomeEmpresa = new System.Windows.Forms.Label();
            this.txtProcesso = new System.Windows.Forms.MaskedTextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.tabControl.SuspendLayout();
            this.tabFormulario.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).BeginInit();
            this.panelControl.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox1.SuspendLayout();
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
            this.tabControl.Size = new System.Drawing.Size(386, 472);
            this.tabControl.TabIndex = 18;
            // 
            // tabFormulario
            // 
            this.tabFormulario.Controls.Add(this.dataGridView);
            this.tabFormulario.Controls.Add(this.panelControl);
            this.tabFormulario.Controls.Add(this.pnlLocalizarProcesso);
            this.tabFormulario.Location = new System.Drawing.Point(4, 22);
            this.tabFormulario.Name = "tabFormulario";
            this.tabFormulario.Padding = new System.Windows.Forms.Padding(3);
            this.tabFormulario.Size = new System.Drawing.Size(378, 446);
            this.tabFormulario.TabIndex = 0;
            this.tabFormulario.Text = "Controle de Antidumping";
            this.tabFormulario.UseVisualStyleBackColor = true;
            // 
            // dataGridView
            // 
            this.dataGridView.AllowUserToAddRows = false;
            this.dataGridView.AllowUserToDeleteRows = false;
            this.dataGridView.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.DisplayedCells;
            this.dataGridView.BackgroundColor = System.Drawing.SystemColors.ButtonHighlight;
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle4.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle4;
            this.dataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.ID,
            this.Adicao,
            this.Aliq_Ad_Valorem,
            this.Base_Calc_Ad_Valorem,
            this.Valor_Especifica,
            this.Unidade_Medida_Especifica,
            this.Quantidade_Especifica});
            this.dataGridView.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dataGridView.Location = new System.Drawing.Point(3, 285);
            this.dataGridView.MultiSelect = false;
            this.dataGridView.Name = "dataGridView";
            this.dataGridView.ReadOnly = true;
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle5.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle5.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle5.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle5.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle5.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle5.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView.RowHeadersDefaultCellStyle = dataGridViewCellStyle5;
            this.dataGridView.RowHeadersVisible = false;
            dataGridViewCellStyle6.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView.RowsDefaultCellStyle = dataGridViewCellStyle6;
            this.dataGridView.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView.Size = new System.Drawing.Size(372, 158);
            this.dataGridView.TabIndex = 16;
            // 
            // ID
            // 
            this.ID.DataPropertyName = "ID";
            this.ID.HeaderText = "ID";
            this.ID.Name = "ID";
            this.ID.ReadOnly = true;
            this.ID.Visible = false;
            // 
            // Adicao
            // 
            this.Adicao.DataPropertyName = "Numero_Adicao";
            this.Adicao.HeaderText = "Adição";
            this.Adicao.Name = "Adicao";
            this.Adicao.ReadOnly = true;
            this.Adicao.Width = 50;
            // 
            // Aliq_Ad_Valorem
            // 
            this.Aliq_Ad_Valorem.DataPropertyName = "Aliq_Ad_Valorem";
            this.Aliq_Ad_Valorem.HeaderText = "Ad Valorem";
            this.Aliq_Ad_Valorem.Name = "Aliq_Ad_Valorem";
            this.Aliq_Ad_Valorem.ReadOnly = true;
            // 
            // Base_Calc_Ad_Valorem
            // 
            this.Base_Calc_Ad_Valorem.DataPropertyName = "Base_Calc_Ad_Valorem";
            this.Base_Calc_Ad_Valorem.HeaderText = "Base de Calc";
            this.Base_Calc_Ad_Valorem.Name = "Base_Calc_Ad_Valorem";
            this.Base_Calc_Ad_Valorem.ReadOnly = true;
            // 
            // Valor_Especifica
            // 
            this.Valor_Especifica.DataPropertyName = "Valor_Especifica";
            this.Valor_Especifica.HeaderText = "Valor Especifica";
            this.Valor_Especifica.Name = "Valor_Especifica";
            this.Valor_Especifica.ReadOnly = true;
            // 
            // Unidade_Medida_Especifica
            // 
            this.Unidade_Medida_Especifica.DataPropertyName = "Unidade_Medida_Especifica";
            this.Unidade_Medida_Especifica.HeaderText = "Unidade Especifica";
            this.Unidade_Medida_Especifica.Name = "Unidade_Medida_Especifica";
            this.Unidade_Medida_Especifica.ReadOnly = true;
            // 
            // Quantidade_Especifica
            // 
            this.Quantidade_Especifica.DataPropertyName = "Quantidade_Especifica";
            this.Quantidade_Especifica.HeaderText = "Quantidade Especifica";
            this.Quantidade_Especifica.Name = "Quantidade_Especifica";
            this.Quantidade_Especifica.ReadOnly = true;
            // 
            // panelControl
            // 
            this.panelControl.Controls.Add(this.groupBox2);
            this.panelControl.Controls.Add(this.groupBox1);
            this.panelControl.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl.Enabled = false;
            this.panelControl.Location = new System.Drawing.Point(3, 37);
            this.panelControl.Name = "panelControl";
            this.panelControl.Size = new System.Drawing.Size(372, 234);
            this.panelControl.TabIndex = 6;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.txtBaseCalculo);
            this.groupBox2.Controls.Add(this.txtAdValorem);
            this.groupBox2.Controls.Add(this.groupBox3);
            this.groupBox2.Controls.Add(this.btnRemover);
            this.groupBox2.Controls.Add(this.btnAdicionar);
            this.groupBox2.Controls.Add(this.label2);
            this.groupBox2.Controls.Add(this.label1);
            this.groupBox2.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox2.Location = new System.Drawing.Point(0, 57);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(372, 174);
            this.groupBox2.TabIndex = 8;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Alíquotas";
            // 
            // txtBaseCalculo
            // 
            this.txtBaseCalculo.Location = new System.Drawing.Point(9, 77);
            this.txtBaseCalculo.MaxLength = 15;
            this.txtBaseCalculo.Name = "txtBaseCalculo";
            this.txtBaseCalculo.Size = new System.Drawing.Size(146, 20);
            this.txtBaseCalculo.TabIndex = 3;
            this.txtBaseCalculo.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtBaseCalculo_KeyPress);
            // 
            // txtAdValorem
            // 
            this.txtAdValorem.Location = new System.Drawing.Point(9, 37);
            this.txtAdValorem.MaxLength = 5;
            this.txtAdValorem.Name = "txtAdValorem";
            this.txtAdValorem.Size = new System.Drawing.Size(146, 20);
            this.txtAdValorem.TabIndex = 2;
            this.txtAdValorem.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtAdValorem_KeyPress);
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.txtQuantidadeEspecifica);
            this.groupBox3.Controls.Add(this.txtUnidadeEspecifica);
            this.groupBox3.Controls.Add(this.txtValorEspecifica);
            this.groupBox3.Controls.Add(this.label7);
            this.groupBox3.Controls.Add(this.label6);
            this.groupBox3.Controls.Add(this.label4);
            this.groupBox3.Location = new System.Drawing.Point(170, 7);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(198, 133);
            this.groupBox3.TabIndex = 10;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Específica";
            // 
            // txtQuantidadeEspecifica
            // 
            this.txtQuantidadeEspecifica.Location = new System.Drawing.Point(7, 107);
            this.txtQuantidadeEspecifica.MaxLength = 8;
            this.txtQuantidadeEspecifica.Name = "txtQuantidadeEspecifica";
            this.txtQuantidadeEspecifica.Size = new System.Drawing.Size(146, 20);
            this.txtQuantidadeEspecifica.TabIndex = 6;
            this.txtQuantidadeEspecifica.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtQuantidadeEspecifica_KeyPress);
            // 
            // txtUnidadeEspecifica
            // 
            this.txtUnidadeEspecifica.Location = new System.Drawing.Point(7, 70);
            this.txtUnidadeEspecifica.MaxLength = 15;
            this.txtUnidadeEspecifica.Name = "txtUnidadeEspecifica";
            this.txtUnidadeEspecifica.Size = new System.Drawing.Size(146, 20);
            this.txtUnidadeEspecifica.TabIndex = 5;
            // 
            // txtValorEspecifica
            // 
            this.txtValorEspecifica.Location = new System.Drawing.Point(7, 33);
            this.txtValorEspecifica.MaxLength = 12;
            this.txtValorEspecifica.Name = "txtValorEspecifica";
            this.txtValorEspecifica.Size = new System.Drawing.Size(146, 20);
            this.txtValorEspecifica.TabIndex = 4;
            this.txtValorEspecifica.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtValorEspecifica_KeyPress);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(4, 56);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(100, 13);
            this.label7.TabIndex = 10;
            this.label7.Text = "Unidade de Medida";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(4, 93);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(120, 13);
            this.label6.TabIndex = 9;
            this.label6.Text = "Quantidade na Unidade";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(4, 17);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(31, 13);
            this.label4.TabIndex = 8;
            this.label4.Text = "Valor";
            // 
            // btnRemover
            // 
            this.btnRemover.Image = global::MS2000.Desktop.Properties.Resources.filter_delete;
            this.btnRemover.ImageAlign = System.Drawing.ContentAlignment.BottomLeft;
            this.btnRemover.Location = new System.Drawing.Point(253, 146);
            this.btnRemover.Name = "btnRemover";
            this.btnRemover.Size = new System.Drawing.Size(115, 23);
            this.btnRemover.TabIndex = 8;
            this.btnRemover.Text = "Remover";
            this.btnRemover.UseVisualStyleBackColor = true;
            this.btnRemover.Click += new System.EventHandler(this.btnRemover_Click);
            // 
            // btnAdicionar
            // 
            this.btnAdicionar.Image = global::MS2000.Desktop.Properties.Resources.filter_add;
            this.btnAdicionar.ImageAlign = System.Drawing.ContentAlignment.BottomLeft;
            this.btnAdicionar.Location = new System.Drawing.Point(9, 146);
            this.btnAdicionar.Name = "btnAdicionar";
            this.btnAdicionar.Size = new System.Drawing.Size(115, 23);
            this.btnAdicionar.TabIndex = 7;
            this.btnAdicionar.Text = "Adicionar";
            this.btnAdicionar.UseVisualStyleBackColor = true;
            this.btnAdicionar.Click += new System.EventHandler(this.btnAdicionar_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(5, 61);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(141, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Base de Cálculo Ad Valorem";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(5, 21);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(61, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Ad Valorem";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.cbbAdicoes);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox1.Location = new System.Drawing.Point(0, 0);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(372, 57);
            this.groupBox1.TabIndex = 17;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Selecione a adição desejada";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(6, 26);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(72, 13);
            this.label5.TabIndex = 6;
            this.label5.Text = "Adição/ NCM";
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
            this.cbbAdicoes.Size = new System.Drawing.Size(280, 21);
            this.cbbAdicoes.TabIndex = 1;
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
            this.pnlLocalizarProcesso.Size = new System.Drawing.Size(372, 34);
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
            // FrmControleAntidumping
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(386, 472);
            this.Controls.Add(this.tabControl);
            this.Name = "FrmControleAntidumping";
            this.Text = "Processos - Antidumping";
            this.Load += new System.EventHandler(this.FrmControleAntidumping_Load);
            this.tabControl.ResumeLayout(false);
            this.tabFormulario.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).EndInit();
            this.panelControl.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.pnlLocalizarProcesso.ResumeLayout(false);
            this.pnlLocalizarProcesso.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView;
        private System.Windows.Forms.TabControl tabControl;
        private System.Windows.Forms.TabPage tabFormulario;
        private System.Windows.Forms.Panel panelControl;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnRemover;
        private System.Windows.Forms.Button btnAdicionar;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label5;
        private Componentes.MultiColumnComboBox cbbAdicoes;
        private System.Windows.Forms.Panel pnlLocalizarProcesso;
        private System.Windows.Forms.Label lblNomeEmpresa;
        private System.Windows.Forms.MaskedTextBox txtProcesso;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtBaseCalculo;
        private System.Windows.Forms.TextBox txtAdValorem;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.TextBox txtQuantidadeEspecifica;
        private System.Windows.Forms.TextBox txtUnidadeEspecifica;
        private System.Windows.Forms.TextBox txtValorEspecifica;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DataGridViewTextBoxColumn ID;
        private System.Windows.Forms.DataGridViewTextBoxColumn Adicao;
        private System.Windows.Forms.DataGridViewTextBoxColumn Aliq_Ad_Valorem;
        private System.Windows.Forms.DataGridViewTextBoxColumn Base_Calc_Ad_Valorem;
        private System.Windows.Forms.DataGridViewTextBoxColumn Valor_Especifica;
        private System.Windows.Forms.DataGridViewTextBoxColumn Unidade_Medida_Especifica;
        private System.Windows.Forms.DataGridViewTextBoxColumn Quantidade_Especifica;
    }
}
