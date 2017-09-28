namespace MS2000.Desktop.Menu.Ferramenta
{
    partial class FrmControleRepetroRTC
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle21 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle22 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle23 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle24 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle19 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle20 = new System.Windows.Forms.DataGridViewCellStyle();
            this.pnlLocalizarProcesso = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnConsultaRTC = new System.Windows.Forms.Button();
            this.txtNumeroRTC = new System.Windows.Forms.TextBox();
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.txtDataMovimentacao = new System.Windows.Forms.MaskedTextBox();
            this.btnDataMovimentacao = new System.Windows.Forms.Button();
            this.btnExcluir = new System.Windows.Forms.Button();
            this.btnExcluirTodos = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.dgvMovimentacao = new System.Windows.Forms.DataGridView();
            this.Mov = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn13 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Data_Movimentacao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Quantidade = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Saldo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn15 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn14 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dgvItens = new System.Windows.Forms.DataGridView();
            this.dataGridViewTextBoxColumn5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DESCRICAO = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.REG = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Movimento = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn7 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn8 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn9 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DI = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Adicao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Seq_Adicaostr = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.txtItensRTC = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.dgvRTC = new System.Windows.Forms.DataGridView();
            this.REG1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn11 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn12 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pnlLocalizarProcesso.SuspendLayout();
            this.groupBox4.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.groupBox5.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvMovimentacao)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvItens)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvRTC)).BeginInit();
            this.SuspendLayout();
            // 
            // pnlLocalizarProcesso
            // 
            this.pnlLocalizarProcesso.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pnlLocalizarProcesso.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlLocalizarProcesso.Controls.Add(this.label1);
            this.pnlLocalizarProcesso.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlLocalizarProcesso.Location = new System.Drawing.Point(0, 0);
            this.pnlLocalizarProcesso.Name = "pnlLocalizarProcesso";
            this.pnlLocalizarProcesso.Size = new System.Drawing.Size(561, 34);
            this.pnlLocalizarProcesso.TabIndex = 43;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(178, 8);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(172, 15);
            this.label1.TabIndex = 0;
            this.label1.Text = "Consulta RTC / Movimentação";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.groupBox1);
            this.groupBox4.Controls.Add(this.groupBox5);
            this.groupBox4.Controls.Add(this.dgvRTC);
            this.groupBox4.Location = new System.Drawing.Point(7, 40);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(546, 458);
            this.groupBox4.TabIndex = 51;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Consulta RTC";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnConsultaRTC);
            this.groupBox1.Controls.Add(this.txtNumeroRTC);
            this.groupBox1.Location = new System.Drawing.Point(240, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(294, 49);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Informe o Número da RTC";
            // 
            // btnConsultaRTC
            // 
            this.btnConsultaRTC.Image = global::MS2000.Desktop.Properties.Resources.Declaração;
            this.btnConsultaRTC.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnConsultaRTC.Location = new System.Drawing.Point(173, 16);
            this.btnConsultaRTC.Name = "btnConsultaRTC";
            this.btnConsultaRTC.Size = new System.Drawing.Size(102, 24);
            this.btnConsultaRTC.TabIndex = 2;
            this.btnConsultaRTC.Text = "Consultar RTC";
            this.btnConsultaRTC.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnConsultaRTC.UseVisualStyleBackColor = true;
            this.btnConsultaRTC.Click += new System.EventHandler(this.btnConsultaRTC_Click);
            // 
            // txtNumeroRTC
            // 
            this.txtNumeroRTC.Location = new System.Drawing.Point(6, 19);
            this.txtNumeroRTC.Name = "txtNumeroRTC";
            this.txtNumeroRTC.Size = new System.Drawing.Size(161, 20);
            this.txtNumeroRTC.TabIndex = 1;
            this.txtNumeroRTC.TextChanged += new System.EventHandler(this.txtNumeroRTC_TextChanged);
            // 
            // groupBox5
            // 
            this.groupBox5.Controls.Add(this.groupBox2);
            this.groupBox5.Controls.Add(this.btnExcluir);
            this.groupBox5.Controls.Add(this.btnExcluirTodos);
            this.groupBox5.Controls.Add(this.label2);
            this.groupBox5.Controls.Add(this.dgvMovimentacao);
            this.groupBox5.Controls.Add(this.dgvItens);
            this.groupBox5.Controls.Add(this.txtItensRTC);
            this.groupBox5.Controls.Add(this.label8);
            this.groupBox5.Location = new System.Drawing.Point(9, 67);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Size = new System.Drawing.Size(528, 372);
            this.groupBox5.TabIndex = 50;
            this.groupBox5.TabStop = false;
            this.groupBox5.Text = "Informações ";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.txtDataMovimentacao);
            this.groupBox2.Controls.Add(this.btnDataMovimentacao);
            this.groupBox2.Location = new System.Drawing.Point(244, 309);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(278, 49);
            this.groupBox2.TabIndex = 50;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Data Movimentação";
            // 
            // txtDataMovimentacao
            // 
            this.txtDataMovimentacao.Location = new System.Drawing.Point(15, 19);
            this.txtDataMovimentacao.Mask = "00/00/0000";
            this.txtDataMovimentacao.Name = "txtDataMovimentacao";
            this.txtDataMovimentacao.Size = new System.Drawing.Size(89, 20);
            this.txtDataMovimentacao.TabIndex = 4;
            this.txtDataMovimentacao.ValidatingType = typeof(System.DateTime);
            // 
            // btnDataMovimentacao
            // 
            this.btnDataMovimentacao.Image = global::MS2000.Desktop.Properties.Resources.Update;
            this.btnDataMovimentacao.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnDataMovimentacao.Location = new System.Drawing.Point(110, 18);
            this.btnDataMovimentacao.Name = "btnDataMovimentacao";
            this.btnDataMovimentacao.Size = new System.Drawing.Size(160, 24);
            this.btnDataMovimentacao.TabIndex = 5;
            this.btnDataMovimentacao.Text = "Alterar Data Movimentação";
            this.btnDataMovimentacao.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnDataMovimentacao.UseVisualStyleBackColor = true;
            this.btnDataMovimentacao.Click += new System.EventHandler(this.btnDataMovimentacao_Click);
            // 
            // btnExcluir
            // 
            this.btnExcluir.Image = global::MS2000.Desktop.Properties.Resources.delete;
            this.btnExcluir.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnExcluir.Location = new System.Drawing.Point(9, 339);
            this.btnExcluir.Name = "btnExcluir";
            this.btnExcluir.Size = new System.Drawing.Size(216, 24);
            this.btnExcluir.TabIndex = 49;
            this.btnExcluir.Text = "Excluir Item e Movimentação do RTC";
            this.btnExcluir.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnExcluir.UseVisualStyleBackColor = true;
            this.btnExcluir.Click += new System.EventHandler(this.btnExcluir_Click);
            // 
            // btnExcluirTodos
            // 
            this.btnExcluirTodos.Image = global::MS2000.Desktop.Properties.Resources.delete;
            this.btnExcluirTodos.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnExcluirTodos.Location = new System.Drawing.Point(9, 309);
            this.btnExcluirTodos.Name = "btnExcluirTodos";
            this.btnExcluirTodos.Size = new System.Drawing.Size(216, 24);
            this.btnExcluirTodos.TabIndex = 48;
            this.btnExcluirTodos.Text = "Excluir Itens e Movimentações do RTC";
            this.btnExcluirTodos.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnExcluirTodos.UseVisualStyleBackColor = true;
            this.btnExcluirTodos.Click += new System.EventHandler(this.btnExcluirTodos_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 192);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(143, 13);
            this.label2.TabIndex = 47;
            this.label2.Text = "Movimentação Itens da RTC";
            // 
            // dgvMovimentacao
            // 
            this.dgvMovimentacao.AllowUserToAddRows = false;
            this.dgvMovimentacao.AllowUserToDeleteRows = false;
            this.dgvMovimentacao.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dgvMovimentacao.BackgroundColor = System.Drawing.SystemColors.ControlLightLight;
            dataGridViewCellStyle21.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle21.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle21.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle21.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle21.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle21.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle21.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvMovimentacao.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle21;
            this.dgvMovimentacao.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvMovimentacao.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Mov,
            this.dataGridViewTextBoxColumn2,
            this.dataGridViewTextBoxColumn3,
            this.dataGridViewTextBoxColumn13,
            this.Data_Movimentacao,
            this.Quantidade,
            this.Saldo,
            this.dataGridViewTextBoxColumn15,
            this.dataGridViewTextBoxColumn14});
            this.dgvMovimentacao.Location = new System.Drawing.Point(9, 208);
            this.dgvMovimentacao.Name = "dgvMovimentacao";
            dataGridViewCellStyle22.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle22.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle22.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle22.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle22.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle22.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle22.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvMovimentacao.RowHeadersDefaultCellStyle = dataGridViewCellStyle22;
            this.dgvMovimentacao.RowHeadersVisible = false;
            this.dgvMovimentacao.Size = new System.Drawing.Size(513, 95);
            this.dgvMovimentacao.TabIndex = 46;
            // 
            // Mov
            // 
            this.Mov.DataPropertyName = "Movimento";
            this.Mov.HeaderText = "Movimento";
            this.Mov.Name = "Mov";
            this.Mov.Width = 82;
            // 
            // dataGridViewTextBoxColumn2
            // 
            this.dataGridViewTextBoxColumn2.DataPropertyName = "DI";
            this.dataGridViewTextBoxColumn2.HeaderText = "DI";
            this.dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            this.dataGridViewTextBoxColumn2.Width = 41;
            // 
            // dataGridViewTextBoxColumn3
            // 
            this.dataGridViewTextBoxColumn3.DataPropertyName = "Adicao";
            this.dataGridViewTextBoxColumn3.HeaderText = "Adição";
            this.dataGridViewTextBoxColumn3.Name = "dataGridViewTextBoxColumn3";
            this.dataGridViewTextBoxColumn3.Width = 63;
            // 
            // dataGridViewTextBoxColumn13
            // 
            this.dataGridViewTextBoxColumn13.DataPropertyName = "Seq_adicaoStr";
            this.dataGridViewTextBoxColumn13.HeaderText = "Seq";
            this.dataGridViewTextBoxColumn13.Name = "dataGridViewTextBoxColumn13";
            this.dataGridViewTextBoxColumn13.Width = 49;
            // 
            // Data_Movimentacao
            // 
            this.Data_Movimentacao.DataPropertyName = "Data_Movimentacao";
            this.Data_Movimentacao.HeaderText = "Data";
            this.Data_Movimentacao.Name = "Data_Movimentacao";
            this.Data_Movimentacao.Width = 53;
            // 
            // Quantidade
            // 
            this.Quantidade.DataPropertyName = "Quantidade";
            this.Quantidade.HeaderText = "QTD";
            this.Quantidade.Name = "Quantidade";
            this.Quantidade.Width = 53;
            // 
            // Saldo
            // 
            this.Saldo.DataPropertyName = "Saldo";
            this.Saldo.HeaderText = "Saldo";
            this.Saldo.Name = "Saldo";
            this.Saldo.Width = 57;
            // 
            // dataGridViewTextBoxColumn15
            // 
            this.dataGridViewTextBoxColumn15.DataPropertyName = "Processo_ADM";
            this.dataGridViewTextBoxColumn15.HeaderText = "Processo ADM";
            this.dataGridViewTextBoxColumn15.Name = "dataGridViewTextBoxColumn15";
            this.dataGridViewTextBoxColumn15.Width = 93;
            // 
            // dataGridViewTextBoxColumn14
            // 
            this.dataGridViewTextBoxColumn14.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.dataGridViewTextBoxColumn14.DataPropertyName = "Novo_Benef";
            this.dataGridViewTextBoxColumn14.HeaderText = "Novo Beneficiário";
            this.dataGridViewTextBoxColumn14.Name = "dataGridViewTextBoxColumn14";
            this.dataGridViewTextBoxColumn14.ReadOnly = true;
            this.dataGridViewTextBoxColumn14.Width = 104;
            // 
            // dgvItens
            // 
            this.dgvItens.AllowUserToAddRows = false;
            this.dgvItens.AllowUserToDeleteRows = false;
            this.dgvItens.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dgvItens.BackgroundColor = System.Drawing.SystemColors.ControlLightLight;
            dataGridViewCellStyle23.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle23.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle23.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle23.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle23.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle23.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle23.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvItens.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle23;
            this.dgvItens.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvItens.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn5,
            this.DESCRICAO,
            this.REG,
            this.Movimento,
            this.dataGridViewTextBoxColumn7,
            this.dataGridViewTextBoxColumn8,
            this.dataGridViewTextBoxColumn9,
            this.DI,
            this.Adicao,
            this.Seq_Adicaostr});
            this.dgvItens.Location = new System.Drawing.Point(9, 58);
            this.dgvItens.Name = "dgvItens";
            dataGridViewCellStyle24.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle24.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle24.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle24.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle24.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle24.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle24.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvItens.RowHeadersDefaultCellStyle = dataGridViewCellStyle24;
            this.dgvItens.RowHeadersVisible = false;
            this.dgvItens.Size = new System.Drawing.Size(513, 131);
            this.dgvItens.TabIndex = 45;
            this.dgvItens.SelectionChanged += new System.EventHandler(this.dgvItens_SelectionChanged);
            // 
            // dataGridViewTextBoxColumn5
            // 
            this.dataGridViewTextBoxColumn5.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.dataGridViewTextBoxColumn5.DataPropertyName = "REG_RTC";
            this.dataGridViewTextBoxColumn5.HeaderText = "REG RTC";
            this.dataGridViewTextBoxColumn5.Name = "dataGridViewTextBoxColumn5";
            this.dataGridViewTextBoxColumn5.Visible = false;
            this.dataGridViewTextBoxColumn5.Width = 59;
            // 
            // DESCRICAO
            // 
            this.DESCRICAO.DataPropertyName = "DESCRICAO";
            this.DESCRICAO.HeaderText = "DESCRICAO";
            this.DESCRICAO.Name = "DESCRICAO";
            this.DESCRICAO.Visible = false;
            this.DESCRICAO.Width = 73;
            // 
            // REG
            // 
            this.REG.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.REG.DataPropertyName = "REG";
            this.REG.HeaderText = "REG";
            this.REG.Name = "REG";
            this.REG.Width = 53;
            // 
            // Movimento
            // 
            this.Movimento.DataPropertyName = "Movimento";
            this.Movimento.HeaderText = "Movimento";
            this.Movimento.Name = "Movimento";
            this.Movimento.Width = 82;
            // 
            // dataGridViewTextBoxColumn7
            // 
            this.dataGridViewTextBoxColumn7.DataPropertyName = "ITEM";
            this.dataGridViewTextBoxColumn7.HeaderText = "Item";
            this.dataGridViewTextBoxColumn7.Name = "dataGridViewTextBoxColumn7";
            this.dataGridViewTextBoxColumn7.Width = 50;
            // 
            // dataGridViewTextBoxColumn8
            // 
            this.dataGridViewTextBoxColumn8.DataPropertyName = "QUANTIDADE";
            this.dataGridViewTextBoxColumn8.HeaderText = "Qtd";
            this.dataGridViewTextBoxColumn8.Name = "dataGridViewTextBoxColumn8";
            this.dataGridViewTextBoxColumn8.ReadOnly = true;
            this.dataGridViewTextBoxColumn8.Width = 47;
            // 
            // dataGridViewTextBoxColumn9
            // 
            this.dataGridViewTextBoxColumn9.DataPropertyName = "Numero_serie";
            this.dataGridViewTextBoxColumn9.HeaderText = "N° Serie";
            this.dataGridViewTextBoxColumn9.Name = "dataGridViewTextBoxColumn9";
            this.dataGridViewTextBoxColumn9.Width = 69;
            // 
            // DI
            // 
            this.DI.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.DI.DataPropertyName = "DI";
            this.DI.HeaderText = "DI";
            this.DI.Name = "DI";
            // 
            // Adicao
            // 
            this.Adicao.DataPropertyName = "Adicao";
            this.Adicao.HeaderText = "Adição";
            this.Adicao.Name = "Adicao";
            this.Adicao.Width = 63;
            // 
            // Seq_Adicaostr
            // 
            this.Seq_Adicaostr.DataPropertyName = "Seq_Adicaostr";
            this.Seq_Adicaostr.HeaderText = "Seq";
            this.Seq_Adicaostr.Name = "Seq_Adicaostr";
            this.Seq_Adicaostr.Width = 49;
            // 
            // txtItensRTC
            // 
            this.txtItensRTC.Location = new System.Drawing.Point(9, 32);
            this.txtItensRTC.Name = "txtItensRTC";
            this.txtItensRTC.Size = new System.Drawing.Size(513, 20);
            this.txtItensRTC.TabIndex = 3;
            this.txtItensRTC.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtItensRTC_KeyPress);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(6, 16);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(114, 13);
            this.label8.TabIndex = 2;
            this.label8.Text = "Consulta Itens da RTC";
            // 
            // dgvRTC
            // 
            this.dgvRTC.AllowUserToAddRows = false;
            this.dgvRTC.AllowUserToDeleteRows = false;
            this.dgvRTC.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dgvRTC.BackgroundColor = System.Drawing.SystemColors.ControlLightLight;
            dataGridViewCellStyle19.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle19.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle19.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle19.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle19.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle19.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle19.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvRTC.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle19;
            this.dgvRTC.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvRTC.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.REG1,
            this.dataGridViewTextBoxColumn11,
            this.dataGridViewTextBoxColumn12});
            this.dgvRTC.Location = new System.Drawing.Point(9, 16);
            this.dgvRTC.Name = "dgvRTC";
            dataGridViewCellStyle20.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle20.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle20.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle20.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle20.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle20.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle20.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvRTC.RowHeadersDefaultCellStyle = dataGridViewCellStyle20;
            this.dgvRTC.RowHeadersVisible = false;
            this.dgvRTC.Size = new System.Drawing.Size(225, 45);
            this.dgvRTC.TabIndex = 43;
            // 
            // REG1
            // 
            this.REG1.DataPropertyName = "REG";
            this.REG1.HeaderText = "REG";
            this.REG1.Name = "REG1";
            this.REG1.Width = 53;
            // 
            // dataGridViewTextBoxColumn11
            // 
            this.dataGridViewTextBoxColumn11.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.dataGridViewTextBoxColumn11.DataPropertyName = "NUMERO_RTC";
            this.dataGridViewTextBoxColumn11.HeaderText = "Número RTC";
            this.dataGridViewTextBoxColumn11.Name = "dataGridViewTextBoxColumn11";
            // 
            // dataGridViewTextBoxColumn12
            // 
            this.dataGridViewTextBoxColumn12.DataPropertyName = "DATA_RTC";
            this.dataGridViewTextBoxColumn12.HeaderText = "Data";
            this.dataGridViewTextBoxColumn12.Name = "dataGridViewTextBoxColumn12";
            this.dataGridViewTextBoxColumn12.ReadOnly = true;
            this.dataGridViewTextBoxColumn12.Width = 53;
            // 
            // FrmControleRepetroRTC
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(561, 510);
            this.Controls.Add(this.pnlLocalizarProcesso);
            this.Controls.Add(this.groupBox4);
            this.Name = "FrmControleRepetroRTC";
            this.Tag = "90304";
            this.Text = "Repetro - Consulta RTC ";
            this.Load += new System.EventHandler(this.FrmControleRepetroRTC_Load);
            this.pnlLocalizarProcesso.ResumeLayout(false);
            this.pnlLocalizarProcesso.PerformLayout();
            this.groupBox4.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox5.ResumeLayout(false);
            this.groupBox5.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvMovimentacao)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvItens)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvRTC)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnlLocalizarProcesso;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnConsultaRTC;
        private System.Windows.Forms.TextBox txtNumeroRTC;
        private System.Windows.Forms.GroupBox groupBox5;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnDataMovimentacao;
        private System.Windows.Forms.Button btnExcluir;
        private System.Windows.Forms.Button btnExcluirTodos;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridView dgvMovimentacao;
        private System.Windows.Forms.DataGridView dgvItens;
        private System.Windows.Forms.TextBox txtItensRTC;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.DataGridView dgvRTC;
        private System.Windows.Forms.MaskedTextBox txtDataMovimentacao;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn5;
        private System.Windows.Forms.DataGridViewTextBoxColumn DESCRICAO;
        private System.Windows.Forms.DataGridViewTextBoxColumn REG;
        private System.Windows.Forms.DataGridViewTextBoxColumn Movimento;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn7;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn8;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn9;
        private System.Windows.Forms.DataGridViewTextBoxColumn DI;
        private System.Windows.Forms.DataGridViewTextBoxColumn Adicao;
        private System.Windows.Forms.DataGridViewTextBoxColumn Seq_Adicaostr;
        private System.Windows.Forms.DataGridViewTextBoxColumn REG1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn11;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn12;
        private System.Windows.Forms.DataGridViewTextBoxColumn Mov;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn3;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn13;
        private System.Windows.Forms.DataGridViewTextBoxColumn Data_Movimentacao;
        private System.Windows.Forms.DataGridViewTextBoxColumn Quantidade;
        private System.Windows.Forms.DataGridViewTextBoxColumn Saldo;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn15;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn14;
    }
}
