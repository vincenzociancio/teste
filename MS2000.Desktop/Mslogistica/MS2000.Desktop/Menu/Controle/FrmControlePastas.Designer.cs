namespace MS2000.Desktop.Menu.Controle
{
    partial class FrmControlePastas
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            this.pnlGeral = new System.Windows.Forms.Panel();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btnAtualizar = new System.Windows.Forms.Button();
            this.btnRecuperar = new System.Windows.Forms.Button();
            this.btnTransferir = new System.Windows.Forms.Button();
            this.cbbUsuario = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.pnlLocalizarProcesso = new System.Windows.Forms.Panel();
            this.txtProcesso = new System.Windows.Forms.MaskedTextBox();
            this.label35 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.dgvProcessosPendentes = new System.Windows.Forms.DataGridView();
            this.Processo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnRejeita = new System.Windows.Forms.Button();
            this.btnAceita = new System.Windows.Forms.Button();
            this.gpbArmazem = new System.Windows.Forms.GroupBox();
            this.lblTotalPastas = new System.Windows.Forms.Label();
            this.dgvProcessoControle = new System.Windows.Forms.DataGridView();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pnlGeral.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.pnlLocalizarProcesso.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvProcessosPendentes)).BeginInit();
            this.gpbArmazem.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvProcessoControle)).BeginInit();
            this.SuspendLayout();
            // 
            // pnlGeral
            // 
            this.pnlGeral.Controls.Add(this.groupBox2);
            this.pnlGeral.Controls.Add(this.groupBox1);
            this.pnlGeral.Controls.Add(this.gpbArmazem);
            this.pnlGeral.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlGeral.Location = new System.Drawing.Point(0, 0);
            this.pnlGeral.Name = "pnlGeral";
            this.pnlGeral.Size = new System.Drawing.Size(697, 298);
            this.pnlGeral.TabIndex = 25;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btnAtualizar);
            this.groupBox2.Controls.Add(this.btnRecuperar);
            this.groupBox2.Controls.Add(this.btnTransferir);
            this.groupBox2.Controls.Add(this.cbbUsuario);
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Controls.Add(this.pnlLocalizarProcesso);
            this.groupBox2.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox2.Location = new System.Drawing.Point(0, 0);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(697, 95);
            this.groupBox2.TabIndex = 30;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Transferência de Pasta";
            // 
            // btnAtualizar
            // 
            this.btnAtualizar.Image = global::MS2000.Desktop.Properties.Resources.Update;
            this.btnAtualizar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnAtualizar.Location = new System.Drawing.Point(611, 66);
            this.btnAtualizar.Name = "btnAtualizar";
            this.btnAtualizar.Size = new System.Drawing.Size(73, 24);
            this.btnAtualizar.TabIndex = 3;
            this.btnAtualizar.Text = "Atualizar";
            this.btnAtualizar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnAtualizar.UseVisualStyleBackColor = true;
            this.btnAtualizar.Click += new System.EventHandler(this.btnAtualizar_Click);
            // 
            // btnRecuperar
            // 
            this.btnRecuperar.Image = global::MS2000.Desktop.Properties.Resources.Declaração;
            this.btnRecuperar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRecuperar.Location = new System.Drawing.Point(364, 66);
            this.btnRecuperar.Name = "btnRecuperar";
            this.btnRecuperar.Size = new System.Drawing.Size(135, 24);
            this.btnRecuperar.TabIndex = 2;
            this.btnRecuperar.Text = "Recuperar do Arquivo";
            this.btnRecuperar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnRecuperar.UseVisualStyleBackColor = true;
            this.btnRecuperar.Click += new System.EventHandler(this.btnRecuperar_Click);
            // 
            // btnTransferir
            // 
            this.btnTransferir.Image = global::MS2000.Desktop.Properties.Resources.Open;
            this.btnTransferir.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnTransferir.Location = new System.Drawing.Point(283, 66);
            this.btnTransferir.Name = "btnTransferir";
            this.btnTransferir.Size = new System.Drawing.Size(75, 24);
            this.btnTransferir.TabIndex = 1;
            this.btnTransferir.Text = "Transferir";
            this.btnTransferir.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnTransferir.UseVisualStyleBackColor = true;
            this.btnTransferir.Click += new System.EventHandler(this.btnTransferir_Click);
            // 
            // cbbUsuario
            // 
            this.cbbUsuario.AutoComplete = true;
            this.cbbUsuario.AutoDropdown = true;
            this.cbbUsuario.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.cbbUsuario.FormattingEnabled = true;
            this.cbbUsuario.Location = new System.Drawing.Point(11, 69);
            this.cbbUsuario.Name = "cbbUsuario";
            this.cbbUsuario.NumberColumnsDisplay = 2;
            this.cbbUsuario.Size = new System.Drawing.Size(266, 21);
            this.cbbUsuario.TabIndex = 0;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(8, 53);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(96, 13);
            this.label5.TabIndex = 28;
            this.label5.Text = "Selecione Usuário:";
            // 
            // pnlLocalizarProcesso
            // 
            this.pnlLocalizarProcesso.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pnlLocalizarProcesso.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlLocalizarProcesso.Controls.Add(this.txtProcesso);
            this.pnlLocalizarProcesso.Controls.Add(this.label35);
            this.pnlLocalizarProcesso.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlLocalizarProcesso.Location = new System.Drawing.Point(3, 16);
            this.pnlLocalizarProcesso.Name = "pnlLocalizarProcesso";
            this.pnlLocalizarProcesso.Size = new System.Drawing.Size(691, 34);
            this.pnlLocalizarProcesso.TabIndex = 26;
            // 
            // txtProcesso
            // 
            this.txtProcesso.Location = new System.Drawing.Point(86, 6);
            this.txtProcesso.Mask = "00000/00";
            this.txtProcesso.Name = "txtProcesso";
            this.txtProcesso.Size = new System.Drawing.Size(72, 20);
            this.txtProcesso.TabIndex = 0;
            this.txtProcesso.TextChanged += new System.EventHandler(this.txtProcesso_TextChanged);
            // 
            // label35
            // 
            this.label35.AutoSize = true;
            this.label35.Location = new System.Drawing.Point(4, 9);
            this.label35.Name = "label35";
            this.label35.Size = new System.Drawing.Size(76, 13);
            this.label35.TabIndex = 0;
            this.label35.Text = "Localiza Pasta";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.dgvProcessosPendentes);
            this.groupBox1.Controls.Add(this.btnRejeita);
            this.groupBox1.Controls.Add(this.btnAceita);
            this.groupBox1.Location = new System.Drawing.Point(3, 101);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(339, 182);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Processos Pendentes";
            // 
            // dgvProcessosPendentes
            // 
            this.dgvProcessosPendentes.AllowUserToAddRows = false;
            this.dgvProcessosPendentes.AllowUserToDeleteRows = false;
            this.dgvProcessosPendentes.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dgvProcessosPendentes.BackgroundColor = System.Drawing.SystemColors.ButtonHighlight;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            this.dgvProcessosPendentes.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.dgvProcessosPendentes.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvProcessosPendentes.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Processo,
            this.dataGridViewTextBoxColumn4});
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgvProcessosPendentes.DefaultCellStyle = dataGridViewCellStyle2;
            this.dgvProcessosPendentes.Dock = System.Windows.Forms.DockStyle.Top;
            this.dgvProcessosPendentes.Location = new System.Drawing.Point(3, 16);
            this.dgvProcessosPendentes.Name = "dgvProcessosPendentes";
            this.dgvProcessosPendentes.ReadOnly = true;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvProcessosPendentes.RowHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.dgvProcessosPendentes.RowHeadersVisible = false;
            this.dgvProcessosPendentes.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvProcessosPendentes.Size = new System.Drawing.Size(333, 131);
            this.dgvProcessosPendentes.TabIndex = 0;
            // 
            // Processo
            // 
            this.Processo.DataPropertyName = "Processo";
            this.Processo.HeaderText = "Processo";
            this.Processo.Name = "Processo";
            this.Processo.ReadOnly = true;
            this.Processo.Width = 74;
            // 
            // dataGridViewTextBoxColumn4
            // 
            this.dataGridViewTextBoxColumn4.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.dataGridViewTextBoxColumn4.DataPropertyName = "razao_social";
            this.dataGridViewTextBoxColumn4.HeaderText = "Importador";
            this.dataGridViewTextBoxColumn4.Name = "dataGridViewTextBoxColumn4";
            this.dataGridViewTextBoxColumn4.ReadOnly = true;
            // 
            // btnRejeita
            // 
            this.btnRejeita.Image = global::MS2000.Desktop.Properties.Resources.filter_delete;
            this.btnRejeita.Location = new System.Drawing.Point(262, 151);
            this.btnRejeita.Name = "btnRejeita";
            this.btnRejeita.Size = new System.Drawing.Size(71, 25);
            this.btnRejeita.TabIndex = 2;
            this.btnRejeita.Text = "Rejeitar";
            this.btnRejeita.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnRejeita.UseVisualStyleBackColor = true;
            this.btnRejeita.Click += new System.EventHandler(this.btnRejeita_Click);
            // 
            // btnAceita
            // 
            this.btnAceita.Image = global::MS2000.Desktop.Properties.Resources.filter_add;
            this.btnAceita.Location = new System.Drawing.Point(184, 151);
            this.btnAceita.Name = "btnAceita";
            this.btnAceita.Size = new System.Drawing.Size(72, 25);
            this.btnAceita.TabIndex = 1;
            this.btnAceita.Text = "Aceitar";
            this.btnAceita.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnAceita.UseVisualStyleBackColor = true;
            this.btnAceita.Click += new System.EventHandler(this.btnAceita_Click);
            // 
            // gpbArmazem
            // 
            this.gpbArmazem.Controls.Add(this.lblTotalPastas);
            this.gpbArmazem.Controls.Add(this.dgvProcessoControle);
            this.gpbArmazem.Location = new System.Drawing.Point(348, 101);
            this.gpbArmazem.Name = "gpbArmazem";
            this.gpbArmazem.Size = new System.Drawing.Size(339, 182);
            this.gpbArmazem.TabIndex = 1;
            this.gpbArmazem.TabStop = false;
            this.gpbArmazem.Text = "Processos no Controle";
            // 
            // lblTotalPastas
            // 
            this.lblTotalPastas.AutoSize = true;
            this.lblTotalPastas.Font = new System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTotalPastas.ForeColor = System.Drawing.Color.Blue;
            this.lblTotalPastas.Location = new System.Drawing.Point(234, 155);
            this.lblTotalPastas.Name = "lblTotalPastas";
            this.lblTotalPastas.Size = new System.Drawing.Size(99, 13);
            this.lblTotalPastas.TabIndex = 30;
            this.lblTotalPastas.Text = "lblTotalPastas";
            // 
            // dgvProcessoControle
            // 
            this.dgvProcessoControle.AllowUserToAddRows = false;
            this.dgvProcessoControle.AllowUserToDeleteRows = false;
            this.dgvProcessoControle.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dgvProcessoControle.BackgroundColor = System.Drawing.SystemColors.ButtonHighlight;
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle4.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            this.dgvProcessoControle.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle4;
            this.dgvProcessoControle.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvProcessoControle.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn1,
            this.dataGridViewTextBoxColumn2});
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle5.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle5.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle5.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle5.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle5.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle5.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgvProcessoControle.DefaultCellStyle = dataGridViewCellStyle5;
            this.dgvProcessoControle.Dock = System.Windows.Forms.DockStyle.Top;
            this.dgvProcessoControle.Location = new System.Drawing.Point(3, 16);
            this.dgvProcessoControle.Name = "dgvProcessoControle";
            this.dgvProcessoControle.ReadOnly = true;
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle6.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle6.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle6.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle6.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle6.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle6.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvProcessoControle.RowHeadersDefaultCellStyle = dataGridViewCellStyle6;
            this.dgvProcessoControle.RowHeadersVisible = false;
            this.dgvProcessoControle.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvProcessoControle.Size = new System.Drawing.Size(333, 131);
            this.dgvProcessoControle.TabIndex = 0;
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.DataPropertyName = "processo";
            this.dataGridViewTextBoxColumn1.HeaderText = "Processo";
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            this.dataGridViewTextBoxColumn1.ReadOnly = true;
            this.dataGridViewTextBoxColumn1.Width = 74;
            // 
            // dataGridViewTextBoxColumn2
            // 
            this.dataGridViewTextBoxColumn2.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.dataGridViewTextBoxColumn2.DataPropertyName = "razao_social";
            this.dataGridViewTextBoxColumn2.HeaderText = "Importador";
            this.dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            this.dataGridViewTextBoxColumn2.ReadOnly = true;
            // 
            // FrmControlePastas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(697, 298);
            this.Controls.Add(this.pnlGeral);
            this.Name = "FrmControlePastas";
            this.Tag = "401";
            this.Text = "Controles - Controle de Pastas";
            this.Load += new System.EventHandler(this.FrmControlePastas_Load);
            this.pnlGeral.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.pnlLocalizarProcesso.ResumeLayout(false);
            this.pnlLocalizarProcesso.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvProcessosPendentes)).EndInit();
            this.gpbArmazem.ResumeLayout(false);
            this.gpbArmazem.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvProcessoControle)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnlGeral;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView dgvProcessosPendentes;
        private System.Windows.Forms.Button btnRejeita;
        private System.Windows.Forms.Button btnAceita;
        private System.Windows.Forms.GroupBox gpbArmazem;
        private System.Windows.Forms.DataGridView dgvProcessoControle;
        private System.Windows.Forms.Panel pnlLocalizarProcesso;
        private System.Windows.Forms.MaskedTextBox txtProcesso;
        private System.Windows.Forms.Label label35;
        private Componentes.MultiColumnComboBox cbbUsuario;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label lblTotalPastas;
        private System.Windows.Forms.Button btnRecuperar;
        private System.Windows.Forms.Button btnTransferir;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Processo;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn4;
        private System.Windows.Forms.Button btnAtualizar;
    }
}
