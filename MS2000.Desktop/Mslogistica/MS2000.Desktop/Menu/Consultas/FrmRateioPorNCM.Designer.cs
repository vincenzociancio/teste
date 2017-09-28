namespace MS2000.Desktop.Menu.Consultas
{
    partial class FrmRateioPorNCM
    {
        /// <summary>
        /// Variável de designer necessária.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpar os recursos que estão sendo usados.
        /// </summary>
        /// <param name="disposing">verdade se for necessário descartar os recursos gerenciados; caso contrário, falso.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código gerado pelo Windows Form Designer

        /// <summary>
        /// Método necessário para suporte do Designer - não modifique
        /// o conteúdo deste método com o editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            this.pnlLocalizarProcesso = new System.Windows.Forms.Panel();
            this.txtProcesso = new System.Windows.Forms.MaskedTextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.grvMovimentacao = new System.Windows.Forms.DataGridView();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.De_usuario = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Para_usuario = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Data = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Hora = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pnlLocalizarProcesso.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.grvMovimentacao)).BeginInit();
            this.SuspendLayout();
            // 
            // pnlLocalizarProcesso
            // 
            this.pnlLocalizarProcesso.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pnlLocalizarProcesso.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlLocalizarProcesso.Controls.Add(this.label2);
            this.pnlLocalizarProcesso.Controls.Add(this.textBox1);
            this.pnlLocalizarProcesso.Controls.Add(this.txtProcesso);
            this.pnlLocalizarProcesso.Controls.Add(this.label1);
            this.pnlLocalizarProcesso.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlLocalizarProcesso.Location = new System.Drawing.Point(0, 0);
            this.pnlLocalizarProcesso.Name = "pnlLocalizarProcesso";
            this.pnlLocalizarProcesso.Size = new System.Drawing.Size(585, 34);
            this.pnlLocalizarProcesso.TabIndex = 13;
            // 
            // txtProcesso
            // 
            this.txtProcesso.Location = new System.Drawing.Point(128, 7);
            this.txtProcesso.Mask = "00000/00";
            this.txtProcesso.Name = "txtProcesso";
            this.txtProcesso.Size = new System.Drawing.Size(63, 20);
            this.txtProcesso.TabIndex = 0;
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
            // grvMovimentacao
            // 
            this.grvMovimentacao.AllowUserToAddRows = false;
            this.grvMovimentacao.AllowUserToDeleteRows = false;
            this.grvMovimentacao.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.grvMovimentacao.BackgroundColor = System.Drawing.SystemColors.ControlLightLight;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.grvMovimentacao.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.grvMovimentacao.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grvMovimentacao.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.De_usuario,
            this.Para_usuario,
            this.Data,
            this.Hora});
            this.grvMovimentacao.Dock = System.Windows.Forms.DockStyle.Fill;
            this.grvMovimentacao.Location = new System.Drawing.Point(0, 34);
            this.grvMovimentacao.Name = "grvMovimentacao";
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.grvMovimentacao.RowHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.grvMovimentacao.RowHeadersVisible = false;
            this.grvMovimentacao.Size = new System.Drawing.Size(585, 361);
            this.grvMovimentacao.TabIndex = 43;
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(241, 7);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(100, 20);
            this.textBox1.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(204, 10);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(31, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "NCM";
            // 
            // De_usuario
            // 
            this.De_usuario.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.De_usuario.DataPropertyName = "De";
            this.De_usuario.HeaderText = "Processo";
            this.De_usuario.Name = "De_usuario";
            // 
            // Para_usuario
            // 
            this.Para_usuario.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.Para_usuario.DataPropertyName = "Para";
            this.Para_usuario.HeaderText = "NCM";
            this.Para_usuario.Name = "Para_usuario";
            // 
            // Data
            // 
            this.Data.DataPropertyName = "Data";
            this.Data.HeaderText = "Vlr1";
            this.Data.Name = "Data";
            this.Data.ReadOnly = true;
            this.Data.Width = 48;
            // 
            // Hora
            // 
            this.Hora.DataPropertyName = "Hora";
            dataGridViewCellStyle2.Format = "t";
            dataGridViewCellStyle2.NullValue = null;
            this.Hora.DefaultCellStyle = dataGridViewCellStyle2;
            this.Hora.HeaderText = "Vlr2";
            this.Hora.Name = "Hora";
            this.Hora.Width = 48;
            // 
            // FrmRateioPorNCM
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(585, 395);
            this.Controls.Add(this.grvMovimentacao);
            this.Controls.Add(this.pnlLocalizarProcesso);
            this.Name = "FrmRateioPorNCM";
            this.Text = "Consultas - Rateio por NCM";
            this.pnlLocalizarProcesso.ResumeLayout(false);
            this.pnlLocalizarProcesso.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.grvMovimentacao)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnlLocalizarProcesso;
        private System.Windows.Forms.MaskedTextBox txtProcesso;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView grvMovimentacao;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.DataGridViewTextBoxColumn De_usuario;
        private System.Windows.Forms.DataGridViewTextBoxColumn Para_usuario;
        private System.Windows.Forms.DataGridViewTextBoxColumn Data;
        private System.Windows.Forms.DataGridViewTextBoxColumn Hora;
    }
}
