namespace MS2000.Desktop.Menu.ISO
{
    partial class FrmQuestionarioAvaliacao
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            this.bindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.lblMediaPorcentagem = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label14 = new System.Windows.Forms.Label();
            this.dataGridView = new System.Windows.Forms.DataGridView();
            this.Data_de_Aplicacao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Quantidade_Pergunta = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Data_de_Realizacao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Acertos = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Porcentagem = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).BeginInit();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // lblMediaPorcentagem
            // 
            this.lblMediaPorcentagem.AutoSize = true;
            this.lblMediaPorcentagem.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMediaPorcentagem.Location = new System.Drawing.Point(455, 379);
            this.lblMediaPorcentagem.Name = "lblMediaPorcentagem";
            this.lblMediaPorcentagem.Size = new System.Drawing.Size(46, 17);
            this.lblMediaPorcentagem.TabIndex = 30;
            this.lblMediaPorcentagem.Text = "label2";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(280, 375);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(180, 24);
            this.label1.TabIndex = 29;
            this.label1.Text = "Média de Acertos:";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.Gray;
            this.panel1.Controls.Add(this.label14);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(512, 20);
            this.panel1.TabIndex = 28;
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label14.ForeColor = System.Drawing.Color.White;
            this.label14.Location = new System.Drawing.Point(209, 1);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(66, 15);
            this.label14.TabIndex = 1;
            this.label14.Text = "Relatório";
            // 
            // dataGridView
            // 
            this.dataGridView.AllowUserToAddRows = false;
            this.dataGridView.AllowUserToDeleteRows = false;
            this.dataGridView.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dataGridView.BackgroundColor = System.Drawing.SystemColors.ControlLightLight;
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle5.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle5.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle5.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle5.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle5.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle5.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle5;
            this.dataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Data_de_Aplicacao,
            this.Quantidade_Pergunta,
            this.Data_de_Realizacao,
            this.Acertos,
            this.Porcentagem,
            this.ID});
            this.dataGridView.Location = new System.Drawing.Point(0, 19);
            this.dataGridView.Name = "dataGridView";
            this.dataGridView.ReadOnly = true;
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle6.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle6.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle6.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle6.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle6.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle6.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView.RowHeadersDefaultCellStyle = dataGridViewCellStyle6;
            this.dataGridView.RowHeadersVisible = false;
            this.dataGridView.Size = new System.Drawing.Size(512, 347);
            this.dataGridView.TabIndex = 13;
            // 
            // Data_de_Aplicacao
            // 
            this.Data_de_Aplicacao.DataPropertyName = "Data_de_Aplicacao";
            this.Data_de_Aplicacao.HeaderText = "Data da Avaliação";
            this.Data_de_Aplicacao.Name = "Data_de_Aplicacao";
            this.Data_de_Aplicacao.ReadOnly = true;
            this.Data_de_Aplicacao.Width = 110;
            // 
            // Quantidade_Pergunta
            // 
            this.Quantidade_Pergunta.DataPropertyName = "Quantidade_Pergunta";
            this.Quantidade_Pergunta.HeaderText = "Quantidade de Pergunta";
            this.Quantidade_Pergunta.Name = "Quantidade_Pergunta";
            this.Quantidade_Pergunta.ReadOnly = true;
            this.Quantidade_Pergunta.Width = 96;
            // 
            // Data_de_Realizacao
            // 
            this.Data_de_Realizacao.DataPropertyName = "Data_de_Realizacao";
            this.Data_de_Realizacao.HeaderText = "Data da Realização";
            this.Data_de_Realizacao.Name = "Data_de_Realizacao";
            this.Data_de_Realizacao.ReadOnly = true;
            this.Data_de_Realizacao.Width = 115;
            // 
            // Acertos
            // 
            this.Acertos.DataPropertyName = "Acertos";
            this.Acertos.HeaderText = "Acertos";
            this.Acertos.Name = "Acertos";
            this.Acertos.ReadOnly = true;
            this.Acertos.Width = 68;
            // 
            // Porcentagem
            // 
            this.Porcentagem.DataPropertyName = "Porcentagem";
            this.Porcentagem.HeaderText = "Porcentagem";
            this.Porcentagem.Name = "Porcentagem";
            this.Porcentagem.ReadOnly = true;
            this.Porcentagem.Width = 95;
            // 
            // ID
            // 
            this.ID.DataPropertyName = "ID";
            this.ID.HeaderText = "ID";
            this.ID.Name = "ID";
            this.ID.ReadOnly = true;
            this.ID.Visible = false;
            this.ID.Width = 43;
            // 
            // FrmQuestionarioAvaliacao
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(512, 408);
            this.Controls.Add(this.lblMediaPorcentagem);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.dataGridView);
            this.Name = "FrmQuestionarioAvaliacao";
            this.Text = "RH -  Relatório Questionário";
            this.Load += new System.EventHandler(this.FrmQuestionarioAvaliacao_Load);
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.BindingSource bindingSource;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lblMediaPorcentagem;
        private System.Windows.Forms.DataGridViewTextBoxColumn Data_de_Aplicacao;
        private System.Windows.Forms.DataGridViewTextBoxColumn Quantidade_Pergunta;
        private System.Windows.Forms.DataGridViewTextBoxColumn Data_de_Realizacao;
        private System.Windows.Forms.DataGridViewTextBoxColumn Acertos;
        private System.Windows.Forms.DataGridViewTextBoxColumn Porcentagem;
        private System.Windows.Forms.DataGridViewTextBoxColumn ID;
    }
}
