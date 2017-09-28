namespace MS2000.Desktop.Menu.Consultas
{
    partial class FrmTermosResponsabilidade
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
            this.dtGridTermosSemData = new System.Windows.Forms.DataGridView();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel3 = new System.Windows.Forms.Panel();
            this.label3 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.label2 = new System.Windows.Forms.Label();
            this.dtGridTermosData = new System.Windows.Forms.DataGridView();
            this.CODIGO = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.RAZAO_SOCIAL = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NUMERO_TR = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DATA_VENCIMENTO_TR = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.qdias = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.rdSemDataVencimento = new System.Windows.Forms.RadioButton();
            this.rdDataVencimento = new System.Windows.Forms.RadioButton();
            this.txtPesquisar = new System.Windows.Forms.TextBox();
            this.cbbOpcao = new System.Windows.Forms.ComboBox();
            this.bsVencimento = new System.Windows.Forms.BindingSource(this.components);
            this.bsSemData = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.dtGridTermosSemData)).BeginInit();
            this.panel3.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtGridTermosData)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bsVencimento)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsSemData)).BeginInit();
            this.SuspendLayout();
            // 
            // dtGridTermosSemData
            // 
            this.dtGridTermosSemData.AllowUserToAddRows = false;
            this.dtGridTermosSemData.AllowUserToDeleteRows = false;
            this.dtGridTermosSemData.BackgroundColor = System.Drawing.SystemColors.ControlLightLight;
            this.dtGridTermosSemData.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtGridTermosSemData.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn1,
            this.dataGridViewTextBoxColumn2,
            this.dataGridViewTextBoxColumn3});
            this.dtGridTermosSemData.Location = new System.Drawing.Point(1, 288);
            this.dtGridTermosSemData.Name = "dtGridTermosSemData";
            this.dtGridTermosSemData.RowHeadersVisible = false;
            this.dtGridTermosSemData.Size = new System.Drawing.Size(694, 149);
            this.dtGridTermosSemData.TabIndex = 5;
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.DataPropertyName = "CODIGO";
            this.dataGridViewTextBoxColumn1.HeaderText = "Processo";
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            // 
            // dataGridViewTextBoxColumn2
            // 
            this.dataGridViewTextBoxColumn2.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.dataGridViewTextBoxColumn2.DataPropertyName = "RAZAO_SOCIAL";
            this.dataGridViewTextBoxColumn2.HeaderText = "Importador";
            this.dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            // 
            // dataGridViewTextBoxColumn3
            // 
            this.dataGridViewTextBoxColumn3.DataPropertyName = "NUMERO_TR";
            this.dataGridViewTextBoxColumn3.HeaderText = "N° TR";
            this.dataGridViewTextBoxColumn3.Name = "dataGridViewTextBoxColumn3";
            // 
            // panel3
            // 
            this.panel3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.panel3.Controls.Add(this.label3);
            this.panel3.Location = new System.Drawing.Point(1, 253);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(695, 29);
            this.panel3.TabIndex = 4;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(186, 5);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(312, 15);
            this.label3.TabIndex = 0;
            this.label3.Text = "Termos de Responsabilidade Sem Data de Vencimento";
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.panel2.Controls.Add(this.label2);
            this.panel2.Location = new System.Drawing.Point(1, 73);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(695, 29);
            this.panel2.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(204, 5);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(260, 15);
            this.label2.TabIndex = 0;
            this.label2.Text = "Vencimento dos Termos de Responsabilidade";
            // 
            // dtGridTermosData
            // 
            this.dtGridTermosData.AllowUserToAddRows = false;
            this.dtGridTermosData.AllowUserToDeleteRows = false;
            this.dtGridTermosData.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.dtGridTermosData.BackgroundColor = System.Drawing.SystemColors.ControlLightLight;
            this.dtGridTermosData.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtGridTermosData.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.CODIGO,
            this.RAZAO_SOCIAL,
            this.NUMERO_TR,
            this.DATA_VENCIMENTO_TR,
            this.qdias});
            this.dtGridTermosData.Location = new System.Drawing.Point(1, 108);
            this.dtGridTermosData.Name = "dtGridTermosData";
            this.dtGridTermosData.RowHeadersVisible = false;
            this.dtGridTermosData.Size = new System.Drawing.Size(695, 139);
            this.dtGridTermosData.TabIndex = 2;
            // 
            // CODIGO
            // 
            this.CODIGO.DataPropertyName = "CODIGO";
            this.CODIGO.HeaderText = "Processo";
            this.CODIGO.Name = "CODIGO";
            // 
            // RAZAO_SOCIAL
            // 
            this.RAZAO_SOCIAL.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.RAZAO_SOCIAL.DataPropertyName = "RAZAO_SOCIAL";
            this.RAZAO_SOCIAL.HeaderText = "Importador";
            this.RAZAO_SOCIAL.Name = "RAZAO_SOCIAL";
            // 
            // NUMERO_TR
            // 
            this.NUMERO_TR.DataPropertyName = "NUMERO_TR";
            this.NUMERO_TR.HeaderText = "N° TR";
            this.NUMERO_TR.Name = "NUMERO_TR";
            // 
            // DATA_VENCIMENTO_TR
            // 
            this.DATA_VENCIMENTO_TR.DataPropertyName = "DATA_VENCIMENTO_TR";
            this.DATA_VENCIMENTO_TR.HeaderText = "Vencimento";
            this.DATA_VENCIMENTO_TR.Name = "DATA_VENCIMENTO_TR";
            // 
            // qdias
            // 
            this.qdias.DataPropertyName = "qdias";
            this.qdias.HeaderText = "Dias a Vencer";
            this.qdias.Name = "qdias";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.groupBox2);
            this.groupBox1.Controls.Add(this.txtPesquisar);
            this.groupBox1.Controls.Add(this.cbbOpcao);
            this.groupBox1.Location = new System.Drawing.Point(1, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(695, 55);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Localizar Por:";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.rdSemDataVencimento);
            this.groupBox2.Controls.Add(this.rdDataVencimento);
            this.groupBox2.Location = new System.Drawing.Point(492, 8);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(196, 41);
            this.groupBox2.TabIndex = 6;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Data";
            // 
            // rdSemDataVencimento
            // 
            this.rdSemDataVencimento.AutoSize = true;
            this.rdSemDataVencimento.Location = new System.Drawing.Point(89, 19);
            this.rdSemDataVencimento.Name = "rdSemDataVencimento";
            this.rdSemDataVencimento.Size = new System.Drawing.Size(105, 17);
            this.rdSemDataVencimento.TabIndex = 6;
            this.rdSemDataVencimento.Text = "Sem Vencimento";
            this.rdSemDataVencimento.UseVisualStyleBackColor = true;
            this.rdSemDataVencimento.Click += new System.EventHandler(this.rdSemDataVencimento_Click_1);
            // 
            // rdDataVencimento
            // 
            this.rdDataVencimento.AutoSize = true;
            this.rdDataVencimento.Checked = true;
            this.rdDataVencimento.Location = new System.Drawing.Point(6, 18);
            this.rdDataVencimento.Name = "rdDataVencimento";
            this.rdDataVencimento.Size = new System.Drawing.Size(81, 17);
            this.rdDataVencimento.TabIndex = 5;
            this.rdDataVencimento.TabStop = true;
            this.rdDataVencimento.Text = "Vencimento";
            this.rdDataVencimento.UseVisualStyleBackColor = true;
            this.rdDataVencimento.Click += new System.EventHandler(this.rdDataVencimento_Click_1);
            // 
            // txtPesquisar
            // 
            this.txtPesquisar.Location = new System.Drawing.Point(144, 22);
            this.txtPesquisar.Name = "txtPesquisar";
            this.txtPesquisar.Size = new System.Drawing.Size(345, 20);
            this.txtPesquisar.TabIndex = 3;
            this.txtPesquisar.TextChanged += new System.EventHandler(this.txtPesquisar_TextChanged);
            // 
            // cbbOpcao
            // 
            this.cbbOpcao.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbbOpcao.FormattingEnabled = true;
            this.cbbOpcao.Location = new System.Drawing.Point(6, 21);
            this.cbbOpcao.Name = "cbbOpcao";
            this.cbbOpcao.Size = new System.Drawing.Size(132, 21);
            this.cbbOpcao.TabIndex = 2;
            // 
            // FrmTermosResponsabilidade
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(700, 440);
            this.Controls.Add(this.dtGridTermosSemData);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.dtGridTermosData);
            this.Controls.Add(this.groupBox1);
            this.Name = "FrmTermosResponsabilidade";
            this.Tag = "304";
            this.Text = "Consultas -  Termos de Responsabilidade";
            this.Load += new System.EventHandler(this.FrmTermosResponsabilidade_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dtGridTermosSemData)).EndInit();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtGridTermosData)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bsVencimento)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsSemData)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ComboBox cbbOpcao;
        private System.Windows.Forms.TextBox txtPesquisar;
        private System.Windows.Forms.DataGridView dtGridTermosData;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DataGridView dtGridTermosSemData;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.RadioButton rdSemDataVencimento;
        private System.Windows.Forms.RadioButton rdDataVencimento;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn3;
        private System.Windows.Forms.DataGridViewTextBoxColumn CODIGO;
        private System.Windows.Forms.DataGridViewTextBoxColumn RAZAO_SOCIAL;
        private System.Windows.Forms.DataGridViewTextBoxColumn NUMERO_TR;
        private System.Windows.Forms.DataGridViewTextBoxColumn DATA_VENCIMENTO_TR;
        private System.Windows.Forms.DataGridViewTextBoxColumn qdias;
        private System.Windows.Forms.BindingSource bsVencimento;
        private System.Windows.Forms.BindingSource bsSemData;
    }
}
