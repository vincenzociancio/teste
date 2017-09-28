namespace MS2000.Desktop.Menu.Consultas
{
    partial class FrmTaxaConversao
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
            this.grvTaxa = new System.Windows.Forms.DataGridView();
            this.Codigo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Descricao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Taxa_Conversao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Vigencia_Inicio_Taxa = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Vigencia_Fim_Taxa = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pnlLocalizarProcesso = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.txtPesquisa = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.grvTaxa)).BeginInit();
            this.pnlLocalizarProcesso.SuspendLayout();
            this.groupBox5.SuspendLayout();
            this.SuspendLayout();
            // 
            // grvTaxa
            // 
            this.grvTaxa.AllowUserToAddRows = false;
            this.grvTaxa.AllowUserToDeleteRows = false;
            this.grvTaxa.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.grvTaxa.BackgroundColor = System.Drawing.SystemColors.ControlLightLight;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.grvTaxa.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.grvTaxa.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grvTaxa.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Codigo,
            this.Descricao,
            this.Taxa_Conversao,
            this.Vigencia_Inicio_Taxa,
            this.Vigencia_Fim_Taxa});
            this.grvTaxa.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.grvTaxa.Location = new System.Drawing.Point(0, 89);
            this.grvTaxa.Name = "grvTaxa";
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.grvTaxa.RowHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.grvTaxa.RowHeadersVisible = false;
            this.grvTaxa.Size = new System.Drawing.Size(490, 257);
            this.grvTaxa.TabIndex = 42;
            // 
            // Codigo
            // 
            this.Codigo.DataPropertyName = "Codigo";
            this.Codigo.HeaderText = "Código";
            this.Codigo.Name = "Codigo";
            this.Codigo.Width = 65;
            // 
            // Descricao
            // 
            this.Descricao.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.Descricao.DataPropertyName = "Descricao";
            this.Descricao.HeaderText = "Descrição";
            this.Descricao.Name = "Descricao";
            // 
            // Taxa_Conversao
            // 
            this.Taxa_Conversao.DataPropertyName = "Taxa_Conversao";
            this.Taxa_Conversao.HeaderText = "Taxa ";
            this.Taxa_Conversao.Name = "Taxa_Conversao";
            this.Taxa_Conversao.ReadOnly = true;
            this.Taxa_Conversao.Width = 59;
            // 
            // Vigencia_Inicio_Taxa
            // 
            this.Vigencia_Inicio_Taxa.DataPropertyName = "Vigencia_Inicio_Taxa";
            this.Vigencia_Inicio_Taxa.HeaderText = "Início";
            this.Vigencia_Inicio_Taxa.Name = "Vigencia_Inicio_Taxa";
            this.Vigencia_Inicio_Taxa.Width = 59;
            // 
            // Vigencia_Fim_Taxa
            // 
            this.Vigencia_Fim_Taxa.DataPropertyName = "Vigencia_Fim_Taxa";
            this.Vigencia_Fim_Taxa.HeaderText = "Fim";
            this.Vigencia_Fim_Taxa.Name = "Vigencia_Fim_Taxa";
            this.Vigencia_Fim_Taxa.Width = 48;
            // 
            // pnlLocalizarProcesso
            // 
            this.pnlLocalizarProcesso.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pnlLocalizarProcesso.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlLocalizarProcesso.Controls.Add(this.label1);
            this.pnlLocalizarProcesso.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlLocalizarProcesso.Location = new System.Drawing.Point(0, 0);
            this.pnlLocalizarProcesso.Name = "pnlLocalizarProcesso";
            this.pnlLocalizarProcesso.Size = new System.Drawing.Size(490, 34);
            this.pnlLocalizarProcesso.TabIndex = 41;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(117, 8);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(262, 15);
            this.label1.TabIndex = 0;
            this.label1.Text = "Taxas de Conversão das Moedas - SISCOMEX";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // groupBox5
            // 
            this.groupBox5.Controls.Add(this.txtPesquisa);
            this.groupBox5.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox5.Location = new System.Drawing.Point(0, 34);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Size = new System.Drawing.Size(490, 49);
            this.groupBox5.TabIndex = 43;
            this.groupBox5.TabStop = false;
            this.groupBox5.Text = "Digite a descrição para localizar";
            // 
            // txtPesquisa
            // 
            this.txtPesquisa.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtPesquisa.Location = new System.Drawing.Point(6, 19);
            this.txtPesquisa.MaxLength = 60;
            this.txtPesquisa.Name = "txtPesquisa";
            this.txtPesquisa.Size = new System.Drawing.Size(478, 20);
            this.txtPesquisa.TabIndex = 2;
            this.txtPesquisa.TextChanged += new System.EventHandler(this.txtPesquisa_TextChanged);
            // 
            // FrmTaxaConversao
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(490, 346);
            this.Controls.Add(this.groupBox5);
            this.Controls.Add(this.grvTaxa);
            this.Controls.Add(this.pnlLocalizarProcesso);
            this.Name = "FrmTaxaConversao";
            this.Tag = "308";
            this.Text = "Consultas - Taxas de Conversão";
            this.Load += new System.EventHandler(this.FrmTaxaConversao_Load);
            ((System.ComponentModel.ISupportInitialize)(this.grvTaxa)).EndInit();
            this.pnlLocalizarProcesso.ResumeLayout(false);
            this.pnlLocalizarProcesso.PerformLayout();
            this.groupBox5.ResumeLayout(false);
            this.groupBox5.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView grvTaxa;
        private System.Windows.Forms.DataGridViewTextBoxColumn Codigo;
        private System.Windows.Forms.DataGridViewTextBoxColumn Descricao;
        private System.Windows.Forms.DataGridViewTextBoxColumn Taxa_Conversao;
        private System.Windows.Forms.DataGridViewTextBoxColumn Vigencia_Inicio_Taxa;
        private System.Windows.Forms.DataGridViewTextBoxColumn Vigencia_Fim_Taxa;
        private System.Windows.Forms.Panel pnlLocalizarProcesso;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox5;
        private System.Windows.Forms.TextBox txtPesquisa;
    }
}
