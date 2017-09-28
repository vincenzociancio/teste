namespace MS2000.Desktop.Menu.Controle
{
    partial class FrmControleHoraExtraAutorizacao
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
            this.tabControl = new System.Windows.Forms.TabControl();
            this.tabFormulario = new System.Windows.Forms.TabPage();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btnFechar = new System.Windows.Forms.Button();
            this.btnNaoAutoriza = new System.Windows.Forms.Button();
            this.btnAutoriza = new System.Windows.Forms.Button();
            this.panelControl = new System.Windows.Forms.Panel();
            this.txtNome = new System.Windows.Forms.TextBox();
            this.ckbSuporteFinanceiro = new System.Windows.Forms.CheckBox();
            this.ckbSuporteSistemas = new System.Windows.Forms.CheckBox();
            this.ckbSuporteTI = new System.Windows.Forms.CheckBox();
            this.ckbLanche = new System.Windows.Forms.CheckBox();
            this.txtTarefa = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txtData = new System.Windows.Forms.MaskedTextBox();
            this.cbbSetor = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.dataGridView = new System.Windows.Forms.DataGridView();
            this.pnlLocalizarProcesso = new System.Windows.Forms.Panel();
            this.lblNomeEmpresa = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.bindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.ID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Nome = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Tarefa = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tabControl.SuspendLayout();
            this.tabFormulario.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.panelControl.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).BeginInit();
            this.pnlLocalizarProcesso.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // tabControl
            // 
            this.tabControl.Controls.Add(this.tabFormulario);
            this.tabControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl.Location = new System.Drawing.Point(0, 0);
            this.tabControl.Name = "tabControl";
            this.tabControl.SelectedIndex = 0;
            this.tabControl.Size = new System.Drawing.Size(713, 413);
            this.tabControl.TabIndex = 18;
            // 
            // tabFormulario
            // 
            this.tabFormulario.Controls.Add(this.groupBox1);
            this.tabFormulario.Controls.Add(this.dataGridView);
            this.tabFormulario.Controls.Add(this.pnlLocalizarProcesso);
            this.tabFormulario.Location = new System.Drawing.Point(4, 22);
            this.tabFormulario.Name = "tabFormulario";
            this.tabFormulario.Padding = new System.Windows.Forms.Padding(3);
            this.tabFormulario.Size = new System.Drawing.Size(705, 387);
            this.tabFormulario.TabIndex = 0;
            this.tabFormulario.Text = "Autorização de Hora Extra";
            this.tabFormulario.UseVisualStyleBackColor = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.groupBox2);
            this.groupBox1.Controls.Add(this.panelControl);
            this.groupBox1.Location = new System.Drawing.Point(8, 44);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(691, 176);
            this.groupBox1.TabIndex = 103;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Dados da Solicitação";
            // 
            // groupBox2
            // 
            this.groupBox2.BackColor = System.Drawing.Color.Transparent;
            this.groupBox2.Controls.Add(this.btnFechar);
            this.groupBox2.Controls.Add(this.btnNaoAutoriza);
            this.groupBox2.Controls.Add(this.btnAutoriza);
            this.groupBox2.Location = new System.Drawing.Point(551, 22);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(130, 140);
            this.groupBox2.TabIndex = 103;
            this.groupBox2.TabStop = false;
            // 
            // btnFechar
            // 
            this.btnFechar.Image = global::MS2000.Desktop.Properties.Resources.sair;
            this.btnFechar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnFechar.Location = new System.Drawing.Point(15, 101);
            this.btnFechar.Name = "btnFechar";
            this.btnFechar.Size = new System.Drawing.Size(106, 23);
            this.btnFechar.TabIndex = 2;
            this.btnFechar.Text = "Fechar";
            this.btnFechar.UseVisualStyleBackColor = true;
            this.btnFechar.Click += new System.EventHandler(this.btnFechar_Click);
            // 
            // btnNaoAutoriza
            // 
            this.btnNaoAutoriza.Image = global::MS2000.Desktop.Properties.Resources.delete;
            this.btnNaoAutoriza.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnNaoAutoriza.Location = new System.Drawing.Point(15, 61);
            this.btnNaoAutoriza.Name = "btnNaoAutoriza";
            this.btnNaoAutoriza.Size = new System.Drawing.Size(106, 23);
            this.btnNaoAutoriza.TabIndex = 1;
            this.btnNaoAutoriza.Text = "Não Autorizar";
            this.btnNaoAutoriza.UseVisualStyleBackColor = true;
            this.btnNaoAutoriza.Click += new System.EventHandler(this.btnNaoAutoriza_Click);
            // 
            // btnAutoriza
            // 
            this.btnAutoriza.Image = global::MS2000.Desktop.Properties.Resources.OK;
            this.btnAutoriza.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnAutoriza.Location = new System.Drawing.Point(15, 19);
            this.btnAutoriza.Name = "btnAutoriza";
            this.btnAutoriza.Size = new System.Drawing.Size(106, 24);
            this.btnAutoriza.TabIndex = 0;
            this.btnAutoriza.Text = "Autorizar";
            this.btnAutoriza.UseVisualStyleBackColor = true;
            this.btnAutoriza.Click += new System.EventHandler(this.btnAutoriza_Click);
            // 
            // panelControl
            // 
            this.panelControl.Controls.Add(this.txtNome);
            this.panelControl.Controls.Add(this.ckbSuporteFinanceiro);
            this.panelControl.Controls.Add(this.ckbSuporteSistemas);
            this.panelControl.Controls.Add(this.ckbSuporteTI);
            this.panelControl.Controls.Add(this.ckbLanche);
            this.panelControl.Controls.Add(this.txtTarefa);
            this.panelControl.Controls.Add(this.label8);
            this.panelControl.Controls.Add(this.label5);
            this.panelControl.Controls.Add(this.txtData);
            this.panelControl.Controls.Add(this.cbbSetor);
            this.panelControl.Controls.Add(this.label2);
            this.panelControl.Controls.Add(this.label1);
            this.panelControl.Enabled = false;
            this.panelControl.Location = new System.Drawing.Point(6, 16);
            this.panelControl.Name = "panelControl";
            this.panelControl.Size = new System.Drawing.Size(538, 154);
            this.panelControl.TabIndex = 101;
            // 
            // txtNome
            // 
            this.txtNome.Location = new System.Drawing.Point(4, 22);
            this.txtNome.Name = "txtNome";
            this.txtNome.Size = new System.Drawing.Size(214, 20);
            this.txtNome.TabIndex = 112;
            // 
            // ckbSuporteFinanceiro
            // 
            this.ckbSuporteFinanceiro.AutoSize = true;
            this.ckbSuporteFinanceiro.Location = new System.Drawing.Point(419, 129);
            this.ckbSuporteFinanceiro.Name = "ckbSuporteFinanceiro";
            this.ckbSuporteFinanceiro.Size = new System.Drawing.Size(115, 17);
            this.ckbSuporteFinanceiro.TabIndex = 111;
            this.ckbSuporteFinanceiro.Text = "Suporte Financeiro";
            this.ckbSuporteFinanceiro.UseVisualStyleBackColor = true;
            // 
            // ckbSuporteSistemas
            // 
            this.ckbSuporteSistemas.AutoSize = true;
            this.ckbSuporteSistemas.Location = new System.Drawing.Point(265, 129);
            this.ckbSuporteSistemas.Name = "ckbSuporteSistemas";
            this.ckbSuporteSistemas.Size = new System.Drawing.Size(108, 17);
            this.ckbSuporteSistemas.TabIndex = 110;
            this.ckbSuporteSistemas.Text = "Suporte Sistemas";
            this.ckbSuporteSistemas.UseVisualStyleBackColor = true;
            // 
            // ckbSuporteTI
            // 
            this.ckbSuporteTI.AutoSize = true;
            this.ckbSuporteTI.Location = new System.Drawing.Point(121, 129);
            this.ckbSuporteTI.Name = "ckbSuporteTI";
            this.ckbSuporteTI.Size = new System.Drawing.Size(76, 17);
            this.ckbSuporteTI.TabIndex = 109;
            this.ckbSuporteTI.Text = "Suporte TI";
            this.ckbSuporteTI.UseVisualStyleBackColor = true;
            // 
            // ckbLanche
            // 
            this.ckbLanche.AutoSize = true;
            this.ckbLanche.Location = new System.Drawing.Point(4, 132);
            this.ckbLanche.Name = "ckbLanche";
            this.ckbLanche.Size = new System.Drawing.Size(62, 17);
            this.ckbLanche.TabIndex = 108;
            this.ckbLanche.Text = "Lanche";
            this.ckbLanche.UseVisualStyleBackColor = true;
            // 
            // txtTarefa
            // 
            this.txtTarefa.Location = new System.Drawing.Point(4, 61);
            this.txtTarefa.Multiline = true;
            this.txtTarefa.Name = "txtTarefa";
            this.txtTarefa.Size = new System.Drawing.Size(530, 62);
            this.txtTarefa.TabIndex = 107;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(1, 45);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(96, 13);
            this.label8.TabIndex = 106;
            this.label8.Text = "Tarefas a executar";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(451, 6);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(30, 13);
            this.label5.TabIndex = 105;
            this.label5.Text = "Data";
            // 
            // txtData
            // 
            this.txtData.AccessibleName = "";
            this.txtData.Location = new System.Drawing.Point(454, 22);
            this.txtData.Mask = "00/00/0000";
            this.txtData.Name = "txtData";
            this.txtData.Size = new System.Drawing.Size(80, 20);
            this.txtData.TabIndex = 104;
            this.txtData.ValidatingType = typeof(System.DateTime);
            // 
            // cbbSetor
            // 
            this.cbbSetor.AutoComplete = true;
            this.cbbSetor.AutoDropdown = true;
            this.cbbSetor.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.cbbSetor.FormattingEnabled = true;
            this.cbbSetor.Location = new System.Drawing.Point(224, 21);
            this.cbbSetor.Name = "cbbSetor";
            this.cbbSetor.NumberColumnsDisplay = 0;
            this.cbbSetor.Size = new System.Drawing.Size(224, 21);
            this.cbbSetor.TabIndex = 103;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(221, 6);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(114, 13);
            this.label2.TabIndex = 102;
            this.label2.Text = "Departamento / Célula";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(1, 6);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(105, 13);
            this.label1.TabIndex = 101;
            this.label1.Text = "Nome do funcionário";
            // 
            // dataGridView
            // 
            this.dataGridView.AllowUserToAddRows = false;
            this.dataGridView.AllowUserToDeleteRows = false;
            this.dataGridView.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.DisplayedCells;
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
            this.ID,
            this.Nome,
            this.Tarefa});
            this.dataGridView.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dataGridView.Location = new System.Drawing.Point(3, 226);
            this.dataGridView.MultiSelect = false;
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
            this.dataGridView.Size = new System.Drawing.Size(699, 158);
            this.dataGridView.TabIndex = 16;
            this.dataGridView.Tag = "";
            // 
            // pnlLocalizarProcesso
            // 
            this.pnlLocalizarProcesso.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pnlLocalizarProcesso.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlLocalizarProcesso.Controls.Add(this.lblNomeEmpresa);
            this.pnlLocalizarProcesso.Controls.Add(this.label3);
            this.pnlLocalizarProcesso.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlLocalizarProcesso.Location = new System.Drawing.Point(3, 3);
            this.pnlLocalizarProcesso.Name = "pnlLocalizarProcesso";
            this.pnlLocalizarProcesso.Size = new System.Drawing.Size(699, 34);
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
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(304, 6);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(63, 13);
            this.label3.TabIndex = 0;
            this.label3.Text = "Autorização";
            // 
            // ID
            // 
            this.ID.DataPropertyName = "ID";
            this.ID.HeaderText = "ID";
            this.ID.Name = "ID";
            this.ID.ReadOnly = true;
            this.ID.Visible = false;
            // 
            // Nome
            // 
            this.Nome.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.Nome.DataPropertyName = "Nome_Completo";
            this.Nome.HeaderText = "Nome ";
            this.Nome.Name = "Nome";
            this.Nome.ReadOnly = true;
            this.Nome.Width = 61;
            // 
            // Tarefa
            // 
            this.Tarefa.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.Tarefa.DataPropertyName = "Tarefa_Executar";
            this.Tarefa.HeaderText = "Tarefa";
            this.Tarefa.Name = "Tarefa";
            this.Tarefa.ReadOnly = true;
            // 
            // FrmControleHoraExtraAutorizacao
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(713, 413);
            this.Controls.Add(this.tabControl);
            this.Name = "FrmControleHoraExtraAutorizacao";
            this.Tag = "43102";
            this.Text = "Controle de Hora Extra - Autorização";
            this.Load += new System.EventHandler(this.FrmControleHoraExtraAutorizacao_Load);
            this.tabControl.ResumeLayout(false);
            this.tabFormulario.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.panelControl.ResumeLayout(false);
            this.panelControl.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).EndInit();
            this.pnlLocalizarProcesso.ResumeLayout(false);
            this.pnlLocalizarProcesso.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl;
        private System.Windows.Forms.TabPage tabFormulario;
        private System.Windows.Forms.DataGridView dataGridView;
        private System.Windows.Forms.Panel pnlLocalizarProcesso;
        private System.Windows.Forms.Label lblNomeEmpresa;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.BindingSource bindingSource;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnFechar;
        private System.Windows.Forms.Button btnNaoAutoriza;
        private System.Windows.Forms.Button btnAutoriza;
        private System.Windows.Forms.Panel panelControl;
        private System.Windows.Forms.TextBox txtNome;
        private System.Windows.Forms.CheckBox ckbSuporteFinanceiro;
        private System.Windows.Forms.CheckBox ckbSuporteSistemas;
        private System.Windows.Forms.CheckBox ckbSuporteTI;
        private System.Windows.Forms.CheckBox ckbLanche;
        private System.Windows.Forms.TextBox txtTarefa;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.MaskedTextBox txtData;
        private Componentes.MultiColumnComboBox cbbSetor;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridViewTextBoxColumn ID;
        private System.Windows.Forms.DataGridViewTextBoxColumn Nome;
        private System.Windows.Forms.DataGridViewTextBoxColumn Tarefa;
    }
}
