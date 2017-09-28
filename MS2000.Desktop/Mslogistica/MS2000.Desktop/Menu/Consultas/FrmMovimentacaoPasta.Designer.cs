namespace MS2000.Desktop.Menu.Consultas
{
    partial class FrmMovimentacaoPasta
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            this.grvMovimentacao = new System.Windows.Forms.DataGridView();
            this.pnlLocalizarProcesso = new System.Windows.Forms.Panel();
            this.txtProcesso = new System.Windows.Forms.MaskedTextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.De_usuario = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Para_usuario = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Data = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Hora = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.grvMovimentacao)).BeginInit();
            this.pnlLocalizarProcesso.SuspendLayout();
            this.SuspendLayout();
            // 
            // grvMovimentacao
            // 
            this.grvMovimentacao.AllowUserToAddRows = false;
            this.grvMovimentacao.AllowUserToDeleteRows = false;
            this.grvMovimentacao.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.grvMovimentacao.BackgroundColor = System.Drawing.SystemColors.ControlLightLight;
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle4.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.grvMovimentacao.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle4;
            this.grvMovimentacao.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grvMovimentacao.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.De_usuario,
            this.Para_usuario,
            this.Data,
            this.Hora});
            this.grvMovimentacao.Dock = System.Windows.Forms.DockStyle.Fill;
            this.grvMovimentacao.Location = new System.Drawing.Point(0, 34);
            this.grvMovimentacao.Name = "grvMovimentacao";
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle6.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle6.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle6.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle6.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle6.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle6.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.grvMovimentacao.RowHeadersDefaultCellStyle = dataGridViewCellStyle6;
            this.grvMovimentacao.RowHeadersVisible = false;
            this.grvMovimentacao.Size = new System.Drawing.Size(424, 308);
            this.grvMovimentacao.TabIndex = 42;
            // 
            // pnlLocalizarProcesso
            // 
            this.pnlLocalizarProcesso.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pnlLocalizarProcesso.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlLocalizarProcesso.Controls.Add(this.txtProcesso);
            this.pnlLocalizarProcesso.Controls.Add(this.label1);
            this.pnlLocalizarProcesso.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlLocalizarProcesso.Location = new System.Drawing.Point(0, 0);
            this.pnlLocalizarProcesso.Name = "pnlLocalizarProcesso";
            this.pnlLocalizarProcesso.Size = new System.Drawing.Size(424, 34);
            this.pnlLocalizarProcesso.TabIndex = 41;
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
            // De_usuario
            // 
            this.De_usuario.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.De_usuario.DataPropertyName = "De";
            this.De_usuario.HeaderText = "De";
            this.De_usuario.Name = "De_usuario";
            // 
            // Para_usuario
            // 
            this.Para_usuario.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.Para_usuario.DataPropertyName = "Para";
            this.Para_usuario.HeaderText = "Para";
            this.Para_usuario.Name = "Para_usuario";
            // 
            // Data
            // 
            this.Data.DataPropertyName = "Data";
            this.Data.HeaderText = "Data";
            this.Data.Name = "Data";
            this.Data.ReadOnly = true;
            this.Data.Width = 55;
            // 
            // Hora
            // 
            this.Hora.DataPropertyName = "Hora";
            dataGridViewCellStyle5.Format = "t";
            dataGridViewCellStyle5.NullValue = null;
            this.Hora.DefaultCellStyle = dataGridViewCellStyle5;
            this.Hora.HeaderText = "Hora";
            this.Hora.Name = "Hora";
            this.Hora.Width = 55;
            // 
            // FrmMovimentacaoPasta
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(424, 342);
            this.Controls.Add(this.grvMovimentacao);
            this.Controls.Add(this.pnlLocalizarProcesso);
            this.Name = "FrmMovimentacaoPasta";
            this.Tag = "307";
            this.Text = "Consultas - Movimentação de Pastas";
            ((System.ComponentModel.ISupportInitialize)(this.grvMovimentacao)).EndInit();
            this.pnlLocalizarProcesso.ResumeLayout(false);
            this.pnlLocalizarProcesso.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView grvMovimentacao;
        private System.Windows.Forms.Panel pnlLocalizarProcesso;
        private System.Windows.Forms.MaskedTextBox txtProcesso;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridViewTextBoxColumn De_usuario;
        private System.Windows.Forms.DataGridViewTextBoxColumn Para_usuario;
        private System.Windows.Forms.DataGridViewTextBoxColumn Data;
        private System.Windows.Forms.DataGridViewTextBoxColumn Hora;
    }
}
