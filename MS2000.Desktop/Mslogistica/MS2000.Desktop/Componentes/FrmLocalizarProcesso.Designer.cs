﻿namespace MS2000.Desktop.Componentes
{
    partial class FrmLocalizarProcesso
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.flpOpcoes = new System.Windows.Forms.FlowLayoutPanel();
            this.radioButton8 = new System.Windows.Forms.RadioButton();
            this.radioButton7 = new System.Windows.Forms.RadioButton();
            this.radioButton1 = new System.Windows.Forms.RadioButton();
            this.radioButton2 = new System.Windows.Forms.RadioButton();
            this.radioButton9 = new System.Windows.Forms.RadioButton();
            this.radioButton3 = new System.Windows.Forms.RadioButton();
            this.radioButton5 = new System.Windows.Forms.RadioButton();
            this.radioButton4 = new System.Windows.Forms.RadioButton();
            this.radioButton10 = new System.Windows.Forms.RadioButton();
            this.rdbDataProcesso = new System.Windows.Forms.RadioButton();
            this.radioButton13 = new System.Windows.Forms.RadioButton();
            this.radioButton6 = new System.Windows.Forms.RadioButton();
            this.radioButton12 = new System.Windows.Forms.RadioButton();
            this.radioButton14 = new System.Windows.Forms.RadioButton();
            this.dataGridView = new System.Windows.Forms.DataGridView();
            this.Processo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.RazaoSocialCliente = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Nome_Completo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.txtParam = new System.Windows.Forms.MaskedTextBox();
            this.btnLocalizar = new System.Windows.Forms.Button();
            this.btnFechar = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.flpOpcoes.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.SystemColors.Control;
            this.groupBox1.Controls.Add(this.flpOpcoes);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox1.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.groupBox1.Location = new System.Drawing.Point(0, 0);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(691, 87);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Localizar por:";
            // 
            // flpOpcoes
            // 
            this.flpOpcoes.BackColor = System.Drawing.SystemColors.Control;
            this.flpOpcoes.Controls.Add(this.radioButton8);
            this.flpOpcoes.Controls.Add(this.radioButton7);
            this.flpOpcoes.Controls.Add(this.radioButton1);
            this.flpOpcoes.Controls.Add(this.radioButton2);
            this.flpOpcoes.Controls.Add(this.radioButton9);
            this.flpOpcoes.Controls.Add(this.radioButton3);
            this.flpOpcoes.Controls.Add(this.radioButton5);
            this.flpOpcoes.Controls.Add(this.radioButton4);
            this.flpOpcoes.Controls.Add(this.radioButton10);
            this.flpOpcoes.Controls.Add(this.rdbDataProcesso);
            this.flpOpcoes.Controls.Add(this.radioButton13);
            this.flpOpcoes.Controls.Add(this.radioButton6);
            this.flpOpcoes.Controls.Add(this.radioButton12);
            this.flpOpcoes.Controls.Add(this.radioButton14);
            this.flpOpcoes.Dock = System.Windows.Forms.DockStyle.Fill;
            this.flpOpcoes.FlowDirection = System.Windows.Forms.FlowDirection.TopDown;
            this.flpOpcoes.Location = new System.Drawing.Point(3, 16);
            this.flpOpcoes.Name = "flpOpcoes";
            this.flpOpcoes.Size = new System.Drawing.Size(685, 68);
            this.flpOpcoes.TabIndex = 14;
            // 
            // radioButton8
            // 
            this.radioButton8.AutoSize = true;
            this.radioButton8.Checked = true;
            this.radioButton8.Location = new System.Drawing.Point(3, 3);
            this.radioButton8.Name = "radioButton8";
            this.radioButton8.Size = new System.Drawing.Size(84, 17);
            this.radioButton8.TabIndex = 0;
            this.radioButton8.TabStop = true;
            this.radioButton8.Tag = "0";
            this.radioButton8.Text = "Nº Processo";
            this.radioButton8.UseVisualStyleBackColor = true;
            // 
            // radioButton7
            // 
            this.radioButton7.AutoSize = true;
            this.radioButton7.Location = new System.Drawing.Point(3, 26);
            this.radioButton7.Name = "radioButton7";
            this.radioButton7.Size = new System.Drawing.Size(127, 17);
            this.radioButton7.TabIndex = 1;
            this.radioButton7.Tag = "1";
            this.radioButton7.Text = "Referência do Cliente";
            this.radioButton7.UseVisualStyleBackColor = true;
            // 
            // radioButton1
            // 
            this.radioButton1.AutoSize = true;
            this.radioButton1.Location = new System.Drawing.Point(136, 3);
            this.radioButton1.Name = "radioButton1";
            this.radioButton1.Size = new System.Drawing.Size(137, 17);
            this.radioButton1.TabIndex = 7;
            this.radioButton1.Tag = "7";
            this.radioButton1.Text = "Nº Doc Chegada Carga";
            this.radioButton1.UseVisualStyleBackColor = true;
            // 
            // radioButton2
            // 
            this.radioButton2.AutoSize = true;
            this.radioButton2.Location = new System.Drawing.Point(136, 26);
            this.radioButton2.Name = "radioButton2";
            this.radioButton2.Size = new System.Drawing.Size(126, 17);
            this.radioButton2.TabIndex = 6;
            this.radioButton2.Tag = "6";
            this.radioButton2.Text = "Nº Doc Carga Master";
            this.radioButton2.UseVisualStyleBackColor = true;
            // 
            // radioButton9
            // 
            this.radioButton9.AutoSize = true;
            this.radioButton9.Location = new System.Drawing.Point(279, 3);
            this.radioButton9.Name = "radioButton9";
            this.radioButton9.Size = new System.Drawing.Size(101, 17);
            this.radioButton9.TabIndex = 8;
            this.radioButton9.Tag = "8";
            this.radioButton9.Text = "Presença Carga";
            this.radioButton9.UseVisualStyleBackColor = true;
            // 
            // radioButton3
            // 
            this.radioButton3.AutoSize = true;
            this.radioButton3.Location = new System.Drawing.Point(279, 26);
            this.radioButton3.Name = "radioButton3";
            this.radioButton3.Size = new System.Drawing.Size(91, 17);
            this.radioButton3.TabIndex = 5;
            this.radioButton3.Tag = "5";
            this.radioButton3.Text = "Nº Doc Carga";
            this.radioButton3.UseVisualStyleBackColor = true;
            // 
            // radioButton5
            // 
            this.radioButton5.AutoSize = true;
            this.radioButton5.Location = new System.Drawing.Point(386, 3);
            this.radioButton5.Name = "radioButton5";
            this.radioButton5.Size = new System.Drawing.Size(62, 17);
            this.radioButton5.TabIndex = 3;
            this.radioButton5.Tag = "3";
            this.radioButton5.Text = "Nº RAT";
            this.radioButton5.UseVisualStyleBackColor = true;
            // 
            // radioButton4
            // 
            this.radioButton4.AutoSize = true;
            this.radioButton4.Location = new System.Drawing.Point(386, 26);
            this.radioButton4.Name = "radioButton4";
            this.radioButton4.Size = new System.Drawing.Size(55, 17);
            this.radioButton4.TabIndex = 4;
            this.radioButton4.Tag = "4";
            this.radioButton4.Text = "Nº TR";
            this.radioButton4.UseVisualStyleBackColor = true;
            // 
            // radioButton10
            // 
            this.radioButton10.AutoSize = true;
            this.radioButton10.Location = new System.Drawing.Point(454, 3);
            this.radioButton10.Name = "radioButton10";
            this.radioButton10.Size = new System.Drawing.Size(55, 17);
            this.radioButton10.TabIndex = 9;
            this.radioButton10.Tag = "9";
            this.radioButton10.Text = "Fatura";
            this.radioButton10.UseVisualStyleBackColor = true;
            // 
            // rdbDataProcesso
            // 
            this.rdbDataProcesso.AutoSize = true;
            this.rdbDataProcesso.Location = new System.Drawing.Point(454, 26);
            this.rdbDataProcesso.Name = "rdbDataProcesso";
            this.rdbDataProcesso.Size = new System.Drawing.Size(48, 17);
            this.rdbDataProcesso.TabIndex = 10;
            this.rdbDataProcesso.Tag = "10";
            this.rdbDataProcesso.Text = "Data";
            this.rdbDataProcesso.UseVisualStyleBackColor = true;
            // 
            // radioButton13
            // 
            this.radioButton13.AutoSize = true;
            this.radioButton13.Location = new System.Drawing.Point(515, 3);
            this.radioButton13.Name = "radioButton13";
            this.radioButton13.Size = new System.Drawing.Size(48, 17);
            this.radioButton13.TabIndex = 12;
            this.radioButton13.Tag = "12";
            this.radioButton13.Text = "DDE";
            this.radioButton13.UseVisualStyleBackColor = true;
            // 
            // radioButton6
            // 
            this.radioButton6.AutoSize = true;
            this.radioButton6.Location = new System.Drawing.Point(515, 26);
            this.radioButton6.Name = "radioButton6";
            this.radioButton6.Size = new System.Drawing.Size(36, 17);
            this.radioButton6.TabIndex = 2;
            this.radioButton6.Tag = "2";
            this.radioButton6.Text = "DI";
            this.radioButton6.UseVisualStyleBackColor = true;
            // 
            // radioButton12
            // 
            this.radioButton12.AutoSize = true;
            this.radioButton12.Location = new System.Drawing.Point(569, 3);
            this.radioButton12.Name = "radioButton12";
            this.radioButton12.Size = new System.Drawing.Size(40, 17);
            this.radioButton12.TabIndex = 11;
            this.radioButton12.Tag = "11";
            this.radioButton12.Text = "PO";
            this.radioButton12.UseVisualStyleBackColor = true;
            // 
            // radioButton14
            // 
            this.radioButton14.AutoSize = true;
            this.radioButton14.Location = new System.Drawing.Point(569, 26);
            this.radioButton14.Name = "radioButton14";
            this.radioButton14.Size = new System.Drawing.Size(40, 17);
            this.radioButton14.TabIndex = 13;
            this.radioButton14.Tag = "13";
            this.radioButton14.Text = "RE";
            this.radioButton14.UseVisualStyleBackColor = true;
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
            this.Processo,
            this.RazaoSocialCliente,
            this.Nome_Completo,
            this.ID});
            this.dataGridView.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dataGridView.Location = new System.Drawing.Point(0, 139);
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
            this.dataGridView.Size = new System.Drawing.Size(691, 245);
            this.dataGridView.TabIndex = 18;
            this.dataGridView.DataBindingComplete += new System.Windows.Forms.DataGridViewBindingCompleteEventHandler(this.dataGridView_DataBindingComplete);
            // 
            // Processo
            // 
            this.Processo.DataPropertyName = "Processo";
            this.Processo.HeaderText = "Processo";
            this.Processo.Name = "Processo";
            this.Processo.ReadOnly = true;
            this.Processo.Width = 80;
            // 
            // RazaoSocialCliente
            // 
            this.RazaoSocialCliente.DataPropertyName = "RazaoSocialCliente";
            this.RazaoSocialCliente.HeaderText = "Importador";
            this.RazaoSocialCliente.Name = "RazaoSocialCliente";
            this.RazaoSocialCliente.ReadOnly = true;
            this.RazaoSocialCliente.Width = 350;
            // 
            // Nome_Completo
            // 
            this.Nome_Completo.DataPropertyName = "Nome_Completo";
            this.Nome_Completo.HeaderText = "Pasta com Usuário";
            this.Nome_Completo.Name = "Nome_Completo";
            this.Nome_Completo.ReadOnly = true;
            this.Nome_Completo.Width = 250;
            // 
            // ID
            // 
            this.ID.DataPropertyName = "ID";
            this.ID.HeaderText = "ID";
            this.ID.Name = "ID";
            this.ID.ReadOnly = true;
            this.ID.Visible = false;
            // 
            // txtParam
            // 
            this.txtParam.Location = new System.Drawing.Point(0, 103);
            this.txtParam.Name = "txtParam";
            this.txtParam.Size = new System.Drawing.Size(294, 20);
            this.txtParam.TabIndex = 0;
            // 
            // btnLocalizar
            // 
            this.btnLocalizar.Image = global::MS2000.Desktop.Properties.Resources.find;
            this.btnLocalizar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnLocalizar.Location = new System.Drawing.Point(300, 101);
            this.btnLocalizar.Name = "btnLocalizar";
            this.btnLocalizar.Size = new System.Drawing.Size(119, 23);
            this.btnLocalizar.TabIndex = 1;
            this.btnLocalizar.Text = "Localizar";
            this.btnLocalizar.UseVisualStyleBackColor = true;
            this.btnLocalizar.Click += new System.EventHandler(this.btnLocalizar_Click);
            // 
            // btnFechar
            // 
            this.btnFechar.Image = global::MS2000.Desktop.Properties.Resources.sair;
            this.btnFechar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnFechar.Location = new System.Drawing.Point(425, 101);
            this.btnFechar.Name = "btnFechar";
            this.btnFechar.Size = new System.Drawing.Size(110, 23);
            this.btnFechar.TabIndex = 19;
            this.btnFechar.Text = "Fechar";
            this.btnFechar.UseVisualStyleBackColor = true;
            this.btnFechar.Click += new System.EventHandler(this.btnFechar_Click);
            // 
            // FrmLocalizarProcesso
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(691, 384);
            this.Controls.Add(this.btnFechar);
            this.Controls.Add(this.btnLocalizar);
            this.Controls.Add(this.txtParam);
            this.Controls.Add(this.dataGridView);
            this.Controls.Add(this.groupBox1);
            this.Name = "FrmLocalizarProcesso";
            this.Text = "Localizar Processos";
            this.Load += new System.EventHandler(this.FrmLocalizarProcesso_Load);
            this.groupBox1.ResumeLayout(false);
            this.flpOpcoes.ResumeLayout(false);
            this.flpOpcoes.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView dataGridView;
        private System.Windows.Forms.RadioButton radioButton8;
        private System.Windows.Forms.RadioButton radioButton7;
        private System.Windows.Forms.RadioButton radioButton6;
        private System.Windows.Forms.RadioButton radioButton5;
        private System.Windows.Forms.RadioButton radioButton4;
        private System.Windows.Forms.RadioButton radioButton3;
        private System.Windows.Forms.RadioButton radioButton2;
        private System.Windows.Forms.RadioButton radioButton1;
        private System.Windows.Forms.MaskedTextBox txtParam;
        private System.Windows.Forms.RadioButton radioButton14;
        private System.Windows.Forms.RadioButton radioButton13;
        private System.Windows.Forms.RadioButton radioButton12;
        private System.Windows.Forms.RadioButton rdbDataProcesso;
        private System.Windows.Forms.RadioButton radioButton10;
        private System.Windows.Forms.RadioButton radioButton9;
        private System.Windows.Forms.Button btnLocalizar;
        private System.Windows.Forms.FlowLayoutPanel flpOpcoes;
        private System.Windows.Forms.Button btnFechar;
        private System.Windows.Forms.DataGridViewTextBoxColumn Processo;
        private System.Windows.Forms.DataGridViewTextBoxColumn RazaoSocialCliente;
        private System.Windows.Forms.DataGridViewTextBoxColumn Nome_Completo;
        private System.Windows.Forms.DataGridViewTextBoxColumn ID;
    }
}
