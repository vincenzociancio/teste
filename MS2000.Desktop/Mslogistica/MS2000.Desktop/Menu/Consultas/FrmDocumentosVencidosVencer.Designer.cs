namespace MS2000.Desktop.Menu.Consultas
{
    partial class FrmDocumentosVencidosVencer
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
            this.cmbOpcoes = new System.Windows.Forms.ComboBox();
            this.txtPesquisar = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.dgDocumentoVencidosVencer = new System.Windows.Forms.DataGridView();
            this.Processo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.qdoc = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.qdiastexto = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.qsubtipo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.RAZAO_SOCIAL = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.qdescont = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.qdescloc = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.qvigini = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.qvigfin = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pnlLocalizarProcesso = new System.Windows.Forms.Panel();
            this.label3 = new System.Windows.Forms.Label();
            this.bindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.groupBox8 = new System.Windows.Forms.GroupBox();
            this.rdbTodos = new System.Windows.Forms.RadioButton();
            this.rdbVencer = new System.Windows.Forms.RadioButton();
            this.rdbVencidos = new System.Windows.Forms.RadioButton();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgDocumentoVencidosVencer)).BeginInit();
            this.pnlLocalizarProcesso.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).BeginInit();
            this.groupBox8.SuspendLayout();
            this.SuspendLayout();
            // 
            // cmbOpcoes
            // 
            this.cmbOpcoes.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbOpcoes.FormattingEnabled = true;
            this.cmbOpcoes.Items.AddRange(new object[] {
            "Processo",
            "Importador"});
            this.cmbOpcoes.Location = new System.Drawing.Point(9, 19);
            this.cmbOpcoes.Name = "cmbOpcoes";
            this.cmbOpcoes.Size = new System.Drawing.Size(144, 21);
            this.cmbOpcoes.TabIndex = 0;
            // 
            // txtPesquisar
            // 
            this.txtPesquisar.Location = new System.Drawing.Point(159, 20);
            this.txtPesquisar.Name = "txtPesquisar";
            this.txtPesquisar.Size = new System.Drawing.Size(337, 20);
            this.txtPesquisar.TabIndex = 1;
            this.txtPesquisar.TextChanged += new System.EventHandler(this.txtPesquisar_TextChanged);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.groupBox8);
            this.groupBox1.Controls.Add(this.cmbOpcoes);
            this.groupBox1.Controls.Add(this.txtPesquisar);
            this.groupBox1.Location = new System.Drawing.Point(3, 36);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(717, 51);
            this.groupBox1.TabIndex = 3;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Localizar Por:";
            // 
            // dgDocumentoVencidosVencer
            // 
            this.dgDocumentoVencidosVencer.AllowUserToAddRows = false;
            this.dgDocumentoVencidosVencer.AllowUserToDeleteRows = false;
            this.dgDocumentoVencidosVencer.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.dgDocumentoVencidosVencer.BackgroundColor = System.Drawing.SystemColors.ControlLightLight;
            this.dgDocumentoVencidosVencer.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgDocumentoVencidosVencer.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Processo,
            this.qdoc,
            this.qdiastexto,
            this.qsubtipo,
            this.RAZAO_SOCIAL,
            this.qdescont,
            this.qdescloc,
            this.qvigini,
            this.qvigfin});
            this.dgDocumentoVencidosVencer.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dgDocumentoVencidosVencer.Location = new System.Drawing.Point(0, 91);
            this.dgDocumentoVencidosVencer.Name = "dgDocumentoVencidosVencer";
            this.dgDocumentoVencidosVencer.RowHeadersVisible = false;
            this.dgDocumentoVencidosVencer.Size = new System.Drawing.Size(720, 312);
            this.dgDocumentoVencidosVencer.TabIndex = 4;
            // 
            // Processo
            // 
            this.Processo.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.Processo.DataPropertyName = "processo";
            this.Processo.HeaderText = "Processo";
            this.Processo.Name = "Processo";
            this.Processo.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.Processo.Width = 55;
            // 
            // qdoc
            // 
            this.qdoc.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.qdoc.DataPropertyName = "qdoc";
            this.qdoc.HeaderText = "Documento";
            this.qdoc.Name = "qdoc";
            this.qdoc.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.qdoc.Width = 66;
            // 
            // qdiastexto
            // 
            this.qdiastexto.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.qdiastexto.DataPropertyName = "qdiastexto";
            this.qdiastexto.HeaderText = "Vencido/a Vencer";
            this.qdiastexto.Name = "qdiastexto";
            this.qdiastexto.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.qdiastexto.Width = 88;
            // 
            // qsubtipo
            // 
            this.qsubtipo.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.qsubtipo.DataPropertyName = "qsubtipo";
            this.qsubtipo.HeaderText = "Subtipo Doc";
            this.qsubtipo.Name = "qsubtipo";
            this.qsubtipo.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.qsubtipo.Width = 63;
            // 
            // RAZAO_SOCIAL
            // 
            this.RAZAO_SOCIAL.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.RAZAO_SOCIAL.DataPropertyName = "RAZAO_SOCIAL";
            this.RAZAO_SOCIAL.HeaderText = "Importador";
            this.RAZAO_SOCIAL.Name = "RAZAO_SOCIAL";
            this.RAZAO_SOCIAL.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.RAZAO_SOCIAL.Width = 61;
            // 
            // qdescont
            // 
            this.qdescont.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.qdescont.DataPropertyName = "qdescont";
            this.qdescont.HeaderText = "Contrato";
            this.qdescont.Name = "qdescont";
            this.qdescont.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.qdescont.Width = 51;
            // 
            // qdescloc
            // 
            this.qdescloc.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.qdescloc.DataPropertyName = "qdescloc";
            this.qdescloc.HeaderText = "Local";
            this.qdescloc.Name = "qdescloc";
            this.qdescloc.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.qdescloc.Width = 37;
            // 
            // qvigini
            // 
            this.qvigini.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.qvigini.DataPropertyName = "qvigini";
            this.qvigini.HeaderText = "Vigência Inicial";
            this.qvigini.Name = "qvigini";
            this.qvigini.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.qvigini.Width = 74;
            // 
            // qvigfin
            // 
            this.qvigfin.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.qvigfin.DataPropertyName = "qvigfin";
            this.qvigfin.HeaderText = "Vigêncial Final";
            this.qvigfin.Name = "qvigfin";
            this.qvigfin.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.qvigfin.Width = 71;
            // 
            // pnlLocalizarProcesso
            // 
            this.pnlLocalizarProcesso.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pnlLocalizarProcesso.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlLocalizarProcesso.Controls.Add(this.label3);
            this.pnlLocalizarProcesso.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlLocalizarProcesso.ForeColor = System.Drawing.SystemColors.ControlText;
            this.pnlLocalizarProcesso.Location = new System.Drawing.Point(0, 0);
            this.pnlLocalizarProcesso.Name = "pnlLocalizarProcesso";
            this.pnlLocalizarProcesso.Size = new System.Drawing.Size(720, 30);
            this.pnlLocalizarProcesso.TabIndex = 32;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(258, 8);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(167, 13);
            this.label3.TabIndex = 0;
            this.label3.Text = "Documentos vencidos e a vencer";
            // 
            // groupBox8
            // 
            this.groupBox8.Controls.Add(this.rdbTodos);
            this.groupBox8.Controls.Add(this.rdbVencer);
            this.groupBox8.Controls.Add(this.rdbVencidos);
            this.groupBox8.Location = new System.Drawing.Point(502, 11);
            this.groupBox8.Name = "groupBox8";
            this.groupBox8.Size = new System.Drawing.Size(203, 34);
            this.groupBox8.TabIndex = 46;
            this.groupBox8.TabStop = false;
            this.groupBox8.Text = "Status";
            // 
            // rdbTodos
            // 
            this.rdbTodos.AutoSize = true;
            this.rdbTodos.Location = new System.Drawing.Point(142, 12);
            this.rdbTodos.Name = "rdbTodos";
            this.rdbTodos.Size = new System.Drawing.Size(55, 17);
            this.rdbTodos.TabIndex = 2;
            this.rdbTodos.Text = "Todos";
            this.rdbTodos.UseVisualStyleBackColor = true;
            this.rdbTodos.CheckedChanged += new System.EventHandler(this.rdbTodos_CheckedChanged);
            // 
            // rdbVencer
            // 
            this.rdbVencer.AutoSize = true;
            this.rdbVencer.Location = new System.Drawing.Point(73, 12);
            this.rdbVencer.Name = "rdbVencer";
            this.rdbVencer.Size = new System.Drawing.Size(69, 17);
            this.rdbVencer.TabIndex = 1;
            this.rdbVencer.Text = "A Vencer";
            this.rdbVencer.UseVisualStyleBackColor = true;
            this.rdbVencer.CheckedChanged += new System.EventHandler(this.rdbVencer_CheckedChanged);
            // 
            // rdbVencidos
            // 
            this.rdbVencidos.AutoSize = true;
            this.rdbVencidos.Checked = true;
            this.rdbVencidos.Location = new System.Drawing.Point(6, 12);
            this.rdbVencidos.Name = "rdbVencidos";
            this.rdbVencidos.Size = new System.Drawing.Size(69, 17);
            this.rdbVencidos.TabIndex = 0;
            this.rdbVencidos.TabStop = true;
            this.rdbVencidos.Text = "Vencidos";
            this.rdbVencidos.UseVisualStyleBackColor = true;
            this.rdbVencidos.CheckedChanged += new System.EventHandler(this.rdbVencidos_CheckedChanged);
            // 
            // FrmDocumentosVencidosVencer
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(720, 403);
            this.Controls.Add(this.pnlLocalizarProcesso);
            this.Controls.Add(this.dgDocumentoVencidosVencer);
            this.Controls.Add(this.groupBox1);
            this.Name = "FrmDocumentosVencidosVencer";
            this.Tag = "305";
            this.Text = "Consultas - Documentos vencidos e a vencer";
            this.Load += new System.EventHandler(this.FrmDocumentosVencidosVencer_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgDocumentoVencidosVencer)).EndInit();
            this.pnlLocalizarProcesso.ResumeLayout(false);
            this.pnlLocalizarProcesso.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).EndInit();
            this.groupBox8.ResumeLayout(false);
            this.groupBox8.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ComboBox cmbOpcoes;
        private System.Windows.Forms.TextBox txtPesquisar;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView dgDocumentoVencidosVencer;
        private System.Windows.Forms.DataGridViewTextBoxColumn Processo;
        private System.Windows.Forms.DataGridViewTextBoxColumn qdoc;
        private System.Windows.Forms.DataGridViewTextBoxColumn qdiastexto;
        private System.Windows.Forms.DataGridViewTextBoxColumn qsubtipo;
        private System.Windows.Forms.DataGridViewTextBoxColumn RAZAO_SOCIAL;
        private System.Windows.Forms.DataGridViewTextBoxColumn qdescont;
        private System.Windows.Forms.DataGridViewTextBoxColumn qdescloc;
        private System.Windows.Forms.DataGridViewTextBoxColumn qvigini;
        private System.Windows.Forms.DataGridViewTextBoxColumn qvigfin;
        private System.Windows.Forms.Panel pnlLocalizarProcesso;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.BindingSource bindingSource;
        private System.Windows.Forms.GroupBox groupBox8;
        private System.Windows.Forms.RadioButton rdbTodos;
        private System.Windows.Forms.RadioButton rdbVencer;
        private System.Windows.Forms.RadioButton rdbVencidos;
    }
}
