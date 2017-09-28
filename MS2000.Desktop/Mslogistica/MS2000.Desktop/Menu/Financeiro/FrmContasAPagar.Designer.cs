namespace MS2000.Desktop.Menu.Financeiro
{
    partial class FrmContasAPagar
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
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle15 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle7 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle8 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle9 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle10 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle11 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle12 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle13 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle14 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmContasAPagar));
            this.tabControl = new System.Windows.Forms.TabControl();
            this.tabFormulario = new System.Windows.Forms.TabPage();
            this.panelControl = new System.Windows.Forms.Panel();
            this.pnlPagamento = new System.Windows.Forms.Panel();
            this.label12 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.mccbBanco = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.btnCancelarPagamento = new System.Windows.Forms.Button();
            this.btnSalvarPagamento = new System.Windows.Forms.Button();
            this.label20 = new System.Windows.Forms.Label();
            this.pnlConta = new System.Windows.Forms.Panel();
            this.lblPanel = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label22 = new System.Windows.Forms.Label();
            this.mccbDespesas = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.btnSalvarConta = new System.Windows.Forms.Button();
            this.label11 = new System.Windows.Forms.Label();
            this.txtObs = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.txtJuros = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.txtMulta = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.txtValorPago = new System.Windows.Forms.TextBox();
            this.txtValor = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtDataProrrogacao = new System.Windows.Forms.MaskedTextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtDataVencimento = new System.Windows.Forms.MaskedTextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtDescricao = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtNF = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.mccbFornecedor = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.txtCodigo = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.dataGridView = new System.Windows.Forms.DataGridView();
            this.Status = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Codigo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Fornecedor = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Nf = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Despesa = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Valor = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Multa = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Juros = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ValorPg = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Obs = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Incluido = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Autorizado = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Numerario = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.gpbPesquisar = new System.Windows.Forms.GroupBox();
            this.cbbPesquisarPor = new System.Windows.Forms.ComboBox();
            this.txtPesquisar = new System.Windows.Forms.TextBox();
            this.gpbFiltrar = new System.Windows.Forms.GroupBox();
            this.rbNaoSolicitado = new System.Windows.Forms.RadioButton();
            this.rbCancelado = new System.Windows.Forms.RadioButton();
            this.rbPago = new System.Windows.Forms.RadioButton();
            this.rbAutorizado = new System.Windows.Forms.RadioButton();
            this.rbSolicitado = new System.Windows.Forms.RadioButton();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.bindingNavigator = new System.Windows.Forms.BindingNavigator(this.components);
            this.bindingNavigatorCountItem = new System.Windows.Forms.ToolStripLabel();
            this.btnCancelarConta = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveFirstItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMovePreviousItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorPositionItem = new System.Windows.Forms.ToolStripTextBox();
            this.bindingNavigatorSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorMoveNextItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveLastItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.btnIncluirConta = new System.Windows.Forms.ToolStripButton();
            this.btnEditarConta = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.btnSolicitarConta = new System.Windows.Forms.ToolStripButton();
            this.btnAutorizarConta = new System.Windows.Forms.ToolStripButton();
            this.btnPagarConta = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.btnFechar = new System.Windows.Forms.ToolStripButton();
            this.tabControl.SuspendLayout();
            this.tabFormulario.SuspendLayout();
            this.panelControl.SuspendLayout();
            this.pnlPagamento.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.pnlConta.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).BeginInit();
            this.gpbPesquisar.SuspendLayout();
            this.gpbFiltrar.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator)).BeginInit();
            this.bindingNavigator.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabControl
            // 
            this.tabControl.Controls.Add(this.tabFormulario);
            this.tabControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl.Location = new System.Drawing.Point(0, 0);
            this.tabControl.Name = "tabControl";
            this.tabControl.SelectedIndex = 0;
            this.tabControl.Size = new System.Drawing.Size(1003, 481);
            this.tabControl.TabIndex = 15;
            // 
            // tabFormulario
            // 
            this.tabFormulario.Controls.Add(this.panelControl);
            this.tabFormulario.Location = new System.Drawing.Point(4, 22);
            this.tabFormulario.Name = "tabFormulario";
            this.tabFormulario.Padding = new System.Windows.Forms.Padding(3);
            this.tabFormulario.Size = new System.Drawing.Size(995, 455);
            this.tabFormulario.TabIndex = 0;
            this.tabFormulario.Text = "Contas a Pagar";
            this.tabFormulario.UseVisualStyleBackColor = true;
            // 
            // panelControl
            // 
            this.panelControl.Controls.Add(this.pnlPagamento);
            this.panelControl.Controls.Add(this.pnlConta);
            this.panelControl.Controls.Add(this.dataGridView);
            this.panelControl.Controls.Add(this.gpbPesquisar);
            this.panelControl.Controls.Add(this.gpbFiltrar);
            this.panelControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelControl.Location = new System.Drawing.Point(3, 3);
            this.panelControl.Name = "panelControl";
            this.panelControl.Size = new System.Drawing.Size(989, 449);
            this.panelControl.TabIndex = 10;
            // 
            // pnlPagamento
            // 
            this.pnlPagamento.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.pnlPagamento.BackColor = System.Drawing.SystemColors.Window;
            this.pnlPagamento.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlPagamento.Controls.Add(this.label12);
            this.pnlPagamento.Controls.Add(this.groupBox1);
            this.pnlPagamento.ForeColor = System.Drawing.SystemColors.ControlText;
            this.pnlPagamento.Location = new System.Drawing.Point(287, 308);
            this.pnlPagamento.Name = "pnlPagamento";
            this.pnlPagamento.Size = new System.Drawing.Size(426, 100);
            this.pnlPagamento.TabIndex = 96;
            this.pnlPagamento.Visible = false;
            // 
            // label12
            // 
            this.label12.Dock = System.Windows.Forms.DockStyle.Top;
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.ForeColor = System.Drawing.Color.Black;
            this.label12.Location = new System.Drawing.Point(0, 0);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(424, 16);
            this.label12.TabIndex = 0;
            this.label12.Text = "PAGAMENTO";
            this.label12.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.SystemColors.Window;
            this.groupBox1.Controls.Add(this.mccbBanco);
            this.groupBox1.Controls.Add(this.btnCancelarPagamento);
            this.groupBox1.Controls.Add(this.btnSalvarPagamento);
            this.groupBox1.Controls.Add(this.label20);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.groupBox1.Location = new System.Drawing.Point(0, 7);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(424, 91);
            this.groupBox1.TabIndex = 83;
            this.groupBox1.TabStop = false;
            // 
            // mccbBanco
            // 
            this.mccbBanco.AutoComplete = true;
            this.mccbBanco.AutoDropdown = true;
            this.mccbBanco.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mccbBanco.FormattingEnabled = true;
            this.mccbBanco.Location = new System.Drawing.Point(10, 35);
            this.mccbBanco.Name = "mccbBanco";
            this.mccbBanco.NumberColumnsDisplay = 0;
            this.mccbBanco.Size = new System.Drawing.Size(406, 21);
            this.mccbBanco.TabIndex = 0;
            // 
            // btnCancelarPagamento
            // 
            this.btnCancelarPagamento.Image = global::MS2000.Desktop.Properties.Resources.Cancel;
            this.btnCancelarPagamento.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCancelarPagamento.Location = new System.Drawing.Point(212, 62);
            this.btnCancelarPagamento.Name = "btnCancelarPagamento";
            this.btnCancelarPagamento.Size = new System.Drawing.Size(75, 23);
            this.btnCancelarPagamento.TabIndex = 2;
            this.btnCancelarPagamento.Text = "Cancelar";
            this.btnCancelarPagamento.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnCancelarPagamento.UseVisualStyleBackColor = true;
            this.btnCancelarPagamento.Click += new System.EventHandler(this.btnCancelarPagamento_Click);
            // 
            // btnSalvarPagamento
            // 
            this.btnSalvarPagamento.Image = global::MS2000.Desktop.Properties.Resources._1457551593_save;
            this.btnSalvarPagamento.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSalvarPagamento.Location = new System.Drawing.Point(134, 62);
            this.btnSalvarPagamento.Name = "btnSalvarPagamento";
            this.btnSalvarPagamento.Size = new System.Drawing.Size(75, 23);
            this.btnSalvarPagamento.TabIndex = 1;
            this.btnSalvarPagamento.Text = "Salvar";
            this.btnSalvarPagamento.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnSalvarPagamento.UseVisualStyleBackColor = true;
            this.btnSalvarPagamento.Click += new System.EventHandler(this.btnSalvarPagamento_Click);
            // 
            // label20
            // 
            this.label20.AutoSize = true;
            this.label20.ForeColor = System.Drawing.Color.Blue;
            this.label20.Location = new System.Drawing.Point(10, 19);
            this.label20.Name = "label20";
            this.label20.Size = new System.Drawing.Size(38, 13);
            this.label20.TabIndex = 83;
            this.label20.Text = "Banco";
            // 
            // pnlConta
            // 
            this.pnlConta.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.pnlConta.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlConta.Controls.Add(this.lblPanel);
            this.pnlConta.Controls.Add(this.groupBox2);
            this.pnlConta.ForeColor = System.Drawing.SystemColors.ControlText;
            this.pnlConta.Location = new System.Drawing.Point(84, 112);
            this.pnlConta.Name = "pnlConta";
            this.pnlConta.Size = new System.Drawing.Size(835, 193);
            this.pnlConta.TabIndex = 92;
            this.pnlConta.Visible = false;
            // 
            // lblPanel
            // 
            this.lblPanel.Dock = System.Windows.Forms.DockStyle.Top;
            this.lblPanel.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblPanel.ForeColor = System.Drawing.Color.Black;
            this.lblPanel.Location = new System.Drawing.Point(0, 0);
            this.lblPanel.Name = "lblPanel";
            this.lblPanel.Size = new System.Drawing.Size(833, 16);
            this.lblPanel.TabIndex = 81;
            this.lblPanel.Text = "INSERIR CONTA";
            this.lblPanel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.label22);
            this.groupBox2.Controls.Add(this.mccbDespesas);
            this.groupBox2.Controls.Add(this.btnCancelar);
            this.groupBox2.Controls.Add(this.btnSalvarConta);
            this.groupBox2.Controls.Add(this.label11);
            this.groupBox2.Controls.Add(this.txtObs);
            this.groupBox2.Controls.Add(this.label10);
            this.groupBox2.Controls.Add(this.txtJuros);
            this.groupBox2.Controls.Add(this.label8);
            this.groupBox2.Controls.Add(this.txtMulta);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Controls.Add(this.txtValorPago);
            this.groupBox2.Controls.Add(this.txtValor);
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Controls.Add(this.txtDataProrrogacao);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Controls.Add(this.txtDataVencimento);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.txtDescricao);
            this.groupBox2.Controls.Add(this.label2);
            this.groupBox2.Controls.Add(this.txtNF);
            this.groupBox2.Controls.Add(this.label1);
            this.groupBox2.Controls.Add(this.mccbFornecedor);
            this.groupBox2.Controls.Add(this.txtCodigo);
            this.groupBox2.Controls.Add(this.label9);
            this.groupBox2.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.groupBox2.Location = new System.Drawing.Point(0, 13);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(833, 178);
            this.groupBox2.TabIndex = 76;
            this.groupBox2.TabStop = false;
            // 
            // label22
            // 
            this.label22.AutoSize = true;
            this.label22.ForeColor = System.Drawing.Color.Blue;
            this.label22.Location = new System.Drawing.Point(8, 57);
            this.label22.Name = "label22";
            this.label22.Size = new System.Drawing.Size(49, 13);
            this.label22.TabIndex = 94;
            this.label22.Text = "Despesa";
            // 
            // mccbDespesas
            // 
            this.mccbDespesas.AutoComplete = true;
            this.mccbDespesas.AutoDropdown = true;
            this.mccbDespesas.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mccbDespesas.FormattingEnabled = true;
            this.mccbDespesas.Location = new System.Drawing.Point(8, 72);
            this.mccbDespesas.Name = "mccbDespesas";
            this.mccbDespesas.NumberColumnsDisplay = 0;
            this.mccbDespesas.Size = new System.Drawing.Size(346, 21);
            this.mccbDespesas.TabIndex = 3;
            // 
            // btnCancelar
            // 
            this.btnCancelar.Image = global::MS2000.Desktop.Properties.Resources.Cancel;
            this.btnCancelar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCancelar.Location = new System.Drawing.Point(415, 149);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(75, 23);
            this.btnCancelar.TabIndex = 13;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // btnSalvarConta
            // 
            this.btnSalvarConta.Image = global::MS2000.Desktop.Properties.Resources._1457551593_save;
            this.btnSalvarConta.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSalvarConta.Location = new System.Drawing.Point(337, 149);
            this.btnSalvarConta.Name = "btnSalvarConta";
            this.btnSalvarConta.Size = new System.Drawing.Size(75, 23);
            this.btnSalvarConta.TabIndex = 12;
            this.btnSalvarConta.Text = "Salvar";
            this.btnSalvarConta.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnSalvarConta.UseVisualStyleBackColor = true;
            this.btnSalvarConta.Click += new System.EventHandler(this.btnSalvar_Click);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.ForeColor = System.Drawing.Color.Blue;
            this.label11.Location = new System.Drawing.Point(359, 102);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(29, 13);
            this.label11.TabIndex = 90;
            this.label11.Text = "Obs.";
            // 
            // txtObs
            // 
            this.txtObs.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtObs.Location = new System.Drawing.Point(359, 118);
            this.txtObs.MaxLength = 500;
            this.txtObs.Name = "txtObs";
            this.txtObs.Size = new System.Drawing.Size(461, 20);
            this.txtObs.TabIndex = 11;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.ForeColor = System.Drawing.Color.Red;
            this.label10.Location = new System.Drawing.Point(184, 102);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(32, 13);
            this.label10.TabIndex = 89;
            this.label10.Text = "Juros";
            // 
            // txtJuros
            // 
            this.txtJuros.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtJuros.Location = new System.Drawing.Point(184, 118);
            this.txtJuros.Name = "txtJuros";
            this.txtJuros.Size = new System.Drawing.Size(82, 20);
            this.txtJuros.TabIndex = 9;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.ForeColor = System.Drawing.Color.Red;
            this.label8.Location = new System.Drawing.Point(96, 102);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(33, 13);
            this.label8.TabIndex = 88;
            this.label8.Text = "Multa";
            // 
            // txtMulta
            // 
            this.txtMulta.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtMulta.Location = new System.Drawing.Point(96, 118);
            this.txtMulta.Name = "txtMulta";
            this.txtMulta.Size = new System.Drawing.Size(82, 20);
            this.txtMulta.TabIndex = 8;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.ForeColor = System.Drawing.Color.Blue;
            this.label7.Location = new System.Drawing.Point(273, 102);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(59, 13);
            this.label7.TabIndex = 87;
            this.label7.Text = "Valor Pago";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.ForeColor = System.Drawing.Color.Blue;
            this.label6.Location = new System.Drawing.Point(8, 102);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(31, 13);
            this.label6.TabIndex = 86;
            this.label6.Text = "Valor";
            // 
            // txtValorPago
            // 
            this.txtValorPago.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtValorPago.Location = new System.Drawing.Point(272, 118);
            this.txtValorPago.Name = "txtValorPago";
            this.txtValorPago.Size = new System.Drawing.Size(82, 20);
            this.txtValorPago.TabIndex = 10;
            // 
            // txtValor
            // 
            this.txtValor.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtValor.Location = new System.Drawing.Point(8, 118);
            this.txtValor.Name = "txtValor";
            this.txtValor.Size = new System.Drawing.Size(82, 20);
            this.txtValor.TabIndex = 7;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.ForeColor = System.Drawing.Color.Blue;
            this.label5.Location = new System.Drawing.Point(740, 57);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(65, 13);
            this.label5.TabIndex = 85;
            this.label5.Text = "Prorrogação";
            // 
            // txtDataProrrogacao
            // 
            this.txtDataProrrogacao.Location = new System.Drawing.Point(738, 73);
            this.txtDataProrrogacao.Mask = "00/00/0000";
            this.txtDataProrrogacao.Name = "txtDataProrrogacao";
            this.txtDataProrrogacao.Size = new System.Drawing.Size(82, 20);
            this.txtDataProrrogacao.TabIndex = 6;
            this.txtDataProrrogacao.ValidatingType = typeof(System.DateTime);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.ForeColor = System.Drawing.Color.Blue;
            this.label4.Location = new System.Drawing.Point(652, 57);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(63, 13);
            this.label4.TabIndex = 84;
            this.label4.Text = "Vencimento";
            // 
            // txtDataVencimento
            // 
            this.txtDataVencimento.Location = new System.Drawing.Point(651, 73);
            this.txtDataVencimento.Mask = "00/00/0000";
            this.txtDataVencimento.Name = "txtDataVencimento";
            this.txtDataVencimento.Size = new System.Drawing.Size(82, 20);
            this.txtDataVencimento.TabIndex = 5;
            this.txtDataVencimento.ValidatingType = typeof(System.DateTime);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.ForeColor = System.Drawing.Color.Blue;
            this.label3.Location = new System.Drawing.Point(359, 57);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(55, 13);
            this.label3.TabIndex = 83;
            this.label3.Text = "Descrição";
            // 
            // txtDescricao
            // 
            this.txtDescricao.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtDescricao.Location = new System.Drawing.Point(359, 73);
            this.txtDescricao.MaxLength = 500;
            this.txtDescricao.Name = "txtDescricao";
            this.txtDescricao.Size = new System.Drawing.Size(286, 20);
            this.txtDescricao.TabIndex = 4;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.ForeColor = System.Drawing.Color.Blue;
            this.label2.Location = new System.Drawing.Point(738, 14);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(18, 13);
            this.label2.TabIndex = 82;
            this.label2.Text = "Nf";
            // 
            // txtNF
            // 
            this.txtNF.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtNF.Location = new System.Drawing.Point(738, 30);
            this.txtNF.MaxLength = 20;
            this.txtNF.Name = "txtNF";
            this.txtNF.Size = new System.Drawing.Size(82, 20);
            this.txtNF.TabIndex = 2;            
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.ForeColor = System.Drawing.Color.Blue;
            this.label1.Location = new System.Drawing.Point(97, 14);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(61, 13);
            this.label1.TabIndex = 81;
            this.label1.Text = "Fornecedor";
            // 
            // mccbFornecedor
            // 
            this.mccbFornecedor.AutoComplete = true;
            this.mccbFornecedor.AutoDropdown = true;
            this.mccbFornecedor.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mccbFornecedor.FormattingEnabled = true;
            this.mccbFornecedor.Location = new System.Drawing.Point(97, 29);
            this.mccbFornecedor.Name = "mccbFornecedor";
            this.mccbFornecedor.NumberColumnsDisplay = 0;
            this.mccbFornecedor.Size = new System.Drawing.Size(635, 21);
            this.mccbFornecedor.TabIndex = 1;
            // 
            // txtCodigo
            // 
            this.txtCodigo.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtCodigo.Enabled = false;
            this.txtCodigo.Location = new System.Drawing.Point(8, 30);
            this.txtCodigo.MaxLength = 4;
            this.txtCodigo.Name = "txtCodigo";
            this.txtCodigo.Size = new System.Drawing.Size(83, 20);
            this.txtCodigo.TabIndex = 0;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.ForeColor = System.Drawing.Color.Blue;
            this.label9.Location = new System.Drawing.Point(8, 14);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(40, 13);
            this.label9.TabIndex = 80;
            this.label9.Text = "Código";
            // 
            // dataGridView
            // 
            this.dataGridView.AllowUserToAddRows = false;
            this.dataGridView.AllowUserToDeleteRows = false;
            this.dataGridView.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dataGridView.BackgroundColor = System.Drawing.SystemColors.ButtonHighlight;
            this.dataGridView.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
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
            this.Status,
            this.Codigo,
            this.Fornecedor,
            this.Nf,
            this.Despesa,
            this.Valor,
            this.Multa,
            this.Juros,
            this.ValorPg,
            this.Obs,
            this.Incluido,
            this.Autorizado,
            this.Numerario});
            this.dataGridView.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dataGridView.Location = new System.Drawing.Point(0, 99);
            this.dataGridView.Name = "dataGridView";
            this.dataGridView.ReadOnly = true;
            dataGridViewCellStyle15.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle15.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle15.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle15.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle15.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle15.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle15.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView.RowHeadersDefaultCellStyle = dataGridViewCellStyle15;
            this.dataGridView.RowHeadersVisible = false;
            this.dataGridView.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView.Size = new System.Drawing.Size(989, 350);
            this.dataGridView.TabIndex = 0;
            // 
            // Status
            // 
            this.Status.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.Status.DataPropertyName = "STATUS_CONTA";
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.Status.DefaultCellStyle = dataGridViewCellStyle2;
            this.Status.HeaderText = "Status";
            this.Status.Name = "Status";
            this.Status.ReadOnly = true;
            // 
            // Codigo
            // 
            this.Codigo.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.Codigo.DataPropertyName = "ID";
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.Codigo.DefaultCellStyle = dataGridViewCellStyle3;
            this.Codigo.HeaderText = "Codigo";
            this.Codigo.Name = "Codigo";
            this.Codigo.ReadOnly = true;
            this.Codigo.Width = 60;
            // 
            // Fornecedor
            // 
            this.Fornecedor.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.Fornecedor.DataPropertyName = "Razao_Social";
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.Fornecedor.DefaultCellStyle = dataGridViewCellStyle4;
            this.Fornecedor.HeaderText = "Fornecedor";
            this.Fornecedor.Name = "Fornecedor";
            this.Fornecedor.ReadOnly = true;
            this.Fornecedor.Width = 300;
            // 
            // Nf
            // 
            this.Nf.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.Nf.DataPropertyName = "Nf";
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle5.NullValue = null;
            this.Nf.DefaultCellStyle = dataGridViewCellStyle5;
            this.Nf.HeaderText = "Nf";
            this.Nf.Name = "Nf";
            this.Nf.ReadOnly = true;
            this.Nf.Width = 60;
            // 
            // Despesa
            // 
            this.Despesa.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.Despesa.DataPropertyName = "Despesa";
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.Despesa.DefaultCellStyle = dataGridViewCellStyle6;
            this.Despesa.HeaderText = "Despesa";
            this.Despesa.Name = "Despesa";
            this.Despesa.ReadOnly = true;
            this.Despesa.Width = 200;
            // 
            // Valor
            // 
            this.Valor.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.Valor.DataPropertyName = "Valor";
            dataGridViewCellStyle7.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle7.Format = "N2";
            dataGridViewCellStyle7.NullValue = "0";
            this.Valor.DefaultCellStyle = dataGridViewCellStyle7;
            this.Valor.HeaderText = "Valor";
            this.Valor.Name = "Valor";
            this.Valor.ReadOnly = true;
            this.Valor.Width = 60;
            // 
            // Multa
            // 
            this.Multa.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.Multa.DataPropertyName = "Valor_Multa";
            dataGridViewCellStyle8.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle8.Format = "N2";
            dataGridViewCellStyle8.NullValue = null;
            this.Multa.DefaultCellStyle = dataGridViewCellStyle8;
            this.Multa.HeaderText = "Multa";
            this.Multa.Name = "Multa";
            this.Multa.ReadOnly = true;
            this.Multa.Width = 60;
            // 
            // Juros
            // 
            this.Juros.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.Juros.DataPropertyName = "Valor_Juros";
            dataGridViewCellStyle9.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle9.Format = "N2";
            dataGridViewCellStyle9.NullValue = "0";
            this.Juros.DefaultCellStyle = dataGridViewCellStyle9;
            this.Juros.HeaderText = "Juros";
            this.Juros.Name = "Juros";
            this.Juros.ReadOnly = true;
            this.Juros.Width = 60;
            // 
            // ValorPg
            // 
            this.ValorPg.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.ValorPg.DataPropertyName = "Valor_Pago";
            dataGridViewCellStyle10.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle10.Format = "N2";
            dataGridViewCellStyle10.NullValue = "0";
            this.ValorPg.DefaultCellStyle = dataGridViewCellStyle10;
            this.ValorPg.HeaderText = "Vlr Pago";
            this.ValorPg.Name = "ValorPg";
            this.ValorPg.ReadOnly = true;
            this.ValorPg.Width = 70;
            // 
            // Obs
            // 
            this.Obs.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.Obs.DataPropertyName = "Obs";
            dataGridViewCellStyle11.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.Obs.DefaultCellStyle = dataGridViewCellStyle11;
            this.Obs.HeaderText = "Obs";
            this.Obs.Name = "Obs";
            this.Obs.ReadOnly = true;
            this.Obs.Width = 130;
            // 
            // Incluido
            // 
            this.Incluido.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.Incluido.DataPropertyName = "Solicitante";
            dataGridViewCellStyle12.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.Incluido.DefaultCellStyle = dataGridViewCellStyle12;
            this.Incluido.HeaderText = "Solicitado por";
            this.Incluido.Name = "Incluido";
            this.Incluido.ReadOnly = true;
            this.Incluido.Width = 150;
            // 
            // Autorizado
            // 
            this.Autorizado.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.Autorizado.DataPropertyName = "Autorizador";
            dataGridViewCellStyle13.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.Autorizado.DefaultCellStyle = dataGridViewCellStyle13;
            this.Autorizado.HeaderText = "Autorizado por";
            this.Autorizado.Name = "Autorizado";
            this.Autorizado.ReadOnly = true;
            this.Autorizado.Width = 150;
            // 
            // Numerario
            // 
            this.Numerario.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.Numerario.DataPropertyName = "Numerario";
            dataGridViewCellStyle14.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.Numerario.DefaultCellStyle = dataGridViewCellStyle14;
            this.Numerario.HeaderText = "Numerario";
            this.Numerario.Name = "Numerario";
            this.Numerario.ReadOnly = true;
            this.Numerario.Visible = false;
            // 
            // gpbPesquisar
            // 
            this.gpbPesquisar.Controls.Add(this.cbbPesquisarPor);
            this.gpbPesquisar.Controls.Add(this.txtPesquisar);
            this.gpbPesquisar.Dock = System.Windows.Forms.DockStyle.Top;
            this.gpbPesquisar.Location = new System.Drawing.Point(0, 51);
            this.gpbPesquisar.Name = "gpbPesquisar";
            this.gpbPesquisar.Size = new System.Drawing.Size(989, 55);
            this.gpbPesquisar.TabIndex = 76;
            this.gpbPesquisar.TabStop = false;
            this.gpbPesquisar.Text = " Pesquisar por ";
            // 
            // cbbPesquisarPor
            // 
            this.cbbPesquisarPor.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbbPesquisarPor.FormattingEnabled = true;
            this.cbbPesquisarPor.Items.AddRange(new object[] {
            "",
            "Diário",
            "Semanal",
            "Quinzenal",
            "Mensal",
            "Bimestral",
            "Trimestral",
            "Semestral",
            "Anual"});
            this.cbbPesquisarPor.Location = new System.Drawing.Point(6, 18);
            this.cbbPesquisarPor.Name = "cbbPesquisarPor";
            this.cbbPesquisarPor.Size = new System.Drawing.Size(110, 21);
            this.cbbPesquisarPor.TabIndex = 0;
            this.cbbPesquisarPor.SelectedIndexChanged += new System.EventHandler(this.cbbPesquisarPor_SelectedIndexChanged);
            // 
            // txtPesquisar
            // 
            this.txtPesquisar.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtPesquisar.Location = new System.Drawing.Point(122, 18);
            this.txtPesquisar.Name = "txtPesquisar";
            this.txtPesquisar.Size = new System.Drawing.Size(470, 20);
            this.txtPesquisar.TabIndex = 1;
            this.txtPesquisar.TextChanged += new System.EventHandler(this.txtPesquisar_TextChanged);
            // 
            // gpbFiltrar
            // 
            this.gpbFiltrar.Controls.Add(this.rbNaoSolicitado);
            this.gpbFiltrar.Controls.Add(this.rbCancelado);
            this.gpbFiltrar.Controls.Add(this.rbPago);
            this.gpbFiltrar.Controls.Add(this.rbAutorizado);
            this.gpbFiltrar.Controls.Add(this.rbSolicitado);
            this.gpbFiltrar.Dock = System.Windows.Forms.DockStyle.Top;
            this.gpbFiltrar.Location = new System.Drawing.Point(0, 0);
            this.gpbFiltrar.Name = "gpbFiltrar";
            this.gpbFiltrar.Size = new System.Drawing.Size(989, 51);
            this.gpbFiltrar.TabIndex = 78;
            this.gpbFiltrar.TabStop = false;
            this.gpbFiltrar.Text = " Filtrar por ";
            // 
            // rbNaoSolicitado
            // 
            this.rbNaoSolicitado.AutoSize = true;
            this.rbNaoSolicitado.Checked = true;
            this.rbNaoSolicitado.Location = new System.Drawing.Point(16, 23);
            this.rbNaoSolicitado.Name = "rbNaoSolicitado";
            this.rbNaoSolicitado.Size = new System.Drawing.Size(94, 17);
            this.rbNaoSolicitado.TabIndex = 0;
            this.rbNaoSolicitado.TabStop = true;
            this.rbNaoSolicitado.Text = "Não Solicitado";
            this.rbNaoSolicitado.UseVisualStyleBackColor = true;
            this.rbNaoSolicitado.Click += new System.EventHandler(this.rbNaoSolicitado_Click);
            // 
            // rbCancelado
            // 
            this.rbCancelado.AutoSize = true;
            this.rbCancelado.Location = new System.Drawing.Point(470, 23);
            this.rbCancelado.Name = "rbCancelado";
            this.rbCancelado.Size = new System.Drawing.Size(76, 17);
            this.rbCancelado.TabIndex = 4;
            this.rbCancelado.Text = "Cancelado";
            this.rbCancelado.UseVisualStyleBackColor = true;
            this.rbCancelado.Click += new System.EventHandler(this.rbCancelado_Click);
            // 
            // rbPago
            // 
            this.rbPago.AutoSize = true;
            this.rbPago.Location = new System.Drawing.Point(379, 23);
            this.rbPago.Name = "rbPago";
            this.rbPago.Size = new System.Drawing.Size(50, 17);
            this.rbPago.TabIndex = 3;
            this.rbPago.Text = "Pago";
            this.rbPago.UseVisualStyleBackColor = true;
            this.rbPago.Click += new System.EventHandler(this.rbPago_Click);
            // 
            // rbAutorizado
            // 
            this.rbAutorizado.AutoSize = true;
            this.rbAutorizado.Location = new System.Drawing.Point(263, 23);
            this.rbAutorizado.Name = "rbAutorizado";
            this.rbAutorizado.Size = new System.Drawing.Size(75, 17);
            this.rbAutorizado.TabIndex = 2;
            this.rbAutorizado.Text = "Autorizado";
            this.rbAutorizado.UseVisualStyleBackColor = true;
            this.rbAutorizado.Click += new System.EventHandler(this.rbAutorizado_Click);
            // 
            // rbSolicitado
            // 
            this.rbSolicitado.AutoSize = true;
            this.rbSolicitado.Location = new System.Drawing.Point(151, 23);
            this.rbSolicitado.Name = "rbSolicitado";
            this.rbSolicitado.Size = new System.Drawing.Size(71, 17);
            this.rbSolicitado.TabIndex = 1;
            this.rbSolicitado.Text = "Solicitado";
            this.rbSolicitado.UseVisualStyleBackColor = true;
            this.rbSolicitado.Click += new System.EventHandler(this.rbSolicitado_Click);
            // 
            // bindingNavigator
            // 
            this.bindingNavigator.AddNewItem = null;
            this.bindingNavigator.CountItem = this.bindingNavigatorCountItem;
            this.bindingNavigator.DeleteItem = this.btnCancelarConta;
            this.bindingNavigator.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.bindingNavigatorMoveFirstItem,
            this.bindingNavigatorMovePreviousItem,
            this.bindingNavigatorSeparator,
            this.bindingNavigatorPositionItem,
            this.bindingNavigatorCountItem,
            this.bindingNavigatorSeparator1,
            this.bindingNavigatorMoveNextItem,
            this.bindingNavigatorMoveLastItem,
            this.bindingNavigatorSeparator2,
            this.btnIncluirConta,
            this.btnEditarConta,
            this.toolStripSeparator1,
            this.btnSolicitarConta,
            this.btnAutorizarConta,
            this.btnPagarConta,
            this.btnCancelarConta,
            this.toolStripSeparator2,
            this.btnFechar});
            this.bindingNavigator.Location = new System.Drawing.Point(0, 0);
            this.bindingNavigator.MoveFirstItem = this.bindingNavigatorMoveFirstItem;
            this.bindingNavigator.MoveLastItem = this.bindingNavigatorMoveLastItem;
            this.bindingNavigator.MoveNextItem = this.bindingNavigatorMoveNextItem;
            this.bindingNavigator.MovePreviousItem = this.bindingNavigatorMovePreviousItem;
            this.bindingNavigator.Name = "bindingNavigator";
            this.bindingNavigator.PositionItem = this.bindingNavigatorPositionItem;
            this.bindingNavigator.Size = new System.Drawing.Size(1003, 25);
            this.bindingNavigator.TabIndex = 16;
            this.bindingNavigator.Text = "bindingNavigator1";
            // 
            // bindingNavigatorCountItem
            // 
            this.bindingNavigatorCountItem.Name = "bindingNavigatorCountItem";
            this.bindingNavigatorCountItem.Size = new System.Drawing.Size(35, 22);
            this.bindingNavigatorCountItem.Text = "of {0}";
            this.bindingNavigatorCountItem.ToolTipText = "Número total de itens";
            // 
            // btnCancelarConta
            // 
            this.btnCancelarConta.Image = ((System.Drawing.Image)(resources.GetObject("btnCancelarConta.Image")));
            this.btnCancelarConta.Name = "btnCancelarConta";
            this.btnCancelarConta.RightToLeftAutoMirrorImage = true;
            this.btnCancelarConta.Size = new System.Drawing.Size(73, 22);
            this.btnCancelarConta.Text = "&Cancelar";
            this.btnCancelarConta.Click += new System.EventHandler(this.btnCancelarConta_Click);
            // 
            // bindingNavigatorMoveFirstItem
            // 
            this.bindingNavigatorMoveFirstItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveFirstItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveFirstItem.Image")));
            this.bindingNavigatorMoveFirstItem.Name = "bindingNavigatorMoveFirstItem";
            this.bindingNavigatorMoveFirstItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveFirstItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveFirstItem.Text = "Move first";
            // 
            // bindingNavigatorMovePreviousItem
            // 
            this.bindingNavigatorMovePreviousItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMovePreviousItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMovePreviousItem.Image")));
            this.bindingNavigatorMovePreviousItem.Name = "bindingNavigatorMovePreviousItem";
            this.bindingNavigatorMovePreviousItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMovePreviousItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMovePreviousItem.Text = "Move previous";
            // 
            // bindingNavigatorSeparator
            // 
            this.bindingNavigatorSeparator.Name = "bindingNavigatorSeparator";
            this.bindingNavigatorSeparator.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorPositionItem
            // 
            this.bindingNavigatorPositionItem.AccessibleName = "Position";
            this.bindingNavigatorPositionItem.AutoSize = false;
            this.bindingNavigatorPositionItem.Name = "bindingNavigatorPositionItem";
            this.bindingNavigatorPositionItem.Size = new System.Drawing.Size(50, 21);
            this.bindingNavigatorPositionItem.Text = "0";
            this.bindingNavigatorPositionItem.ToolTipText = "Current position";
            // 
            // bindingNavigatorSeparator1
            // 
            this.bindingNavigatorSeparator1.Name = "bindingNavigatorSeparator1";
            this.bindingNavigatorSeparator1.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorMoveNextItem
            // 
            this.bindingNavigatorMoveNextItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveNextItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveNextItem.Image")));
            this.bindingNavigatorMoveNextItem.Name = "bindingNavigatorMoveNextItem";
            this.bindingNavigatorMoveNextItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveNextItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveNextItem.Text = "Move next";
            // 
            // bindingNavigatorMoveLastItem
            // 
            this.bindingNavigatorMoveLastItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveLastItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveLastItem.Image")));
            this.bindingNavigatorMoveLastItem.Name = "bindingNavigatorMoveLastItem";
            this.bindingNavigatorMoveLastItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveLastItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveLastItem.Text = "Move last";
            // 
            // bindingNavigatorSeparator2
            // 
            this.bindingNavigatorSeparator2.Name = "bindingNavigatorSeparator2";
            this.bindingNavigatorSeparator2.Size = new System.Drawing.Size(6, 25);
            // 
            // btnIncluirConta
            // 
            this.btnIncluirConta.Image = ((System.Drawing.Image)(resources.GetObject("btnIncluirConta.Image")));
            this.btnIncluirConta.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnIncluirConta.Name = "btnIncluirConta";
            this.btnIncluirConta.Size = new System.Drawing.Size(95, 22);
            this.btnIncluirConta.Text = "&Incluir Conta";
            this.btnIncluirConta.Click += new System.EventHandler(this.btnNovo_Click);
            // 
            // btnEditarConta
            // 
            this.btnEditarConta.Image = ((System.Drawing.Image)(resources.GetObject("btnEditarConta.Image")));
            this.btnEditarConta.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnEditarConta.Name = "btnEditarConta";
            this.btnEditarConta.Size = new System.Drawing.Size(92, 22);
            this.btnEditarConta.Text = "&Editar Conta";
            this.btnEditarConta.Click += new System.EventHandler(this.btnEditar_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(6, 25);
            // 
            // btnSolicitarConta
            // 
            this.btnSolicitarConta.Image = global::MS2000.Desktop.Properties.Resources._1456449281_Copy;
            this.btnSolicitarConta.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnSolicitarConta.Name = "btnSolicitarConta";
            this.btnSolicitarConta.Size = new System.Drawing.Size(69, 22);
            this.btnSolicitarConta.Text = "Solicitar";
            this.btnSolicitarConta.Click += new System.EventHandler(this.btnSolicitarConta_Click);
            // 
            // btnAutorizarConta
            // 
            this.btnAutorizarConta.Image = global::MS2000.Desktop.Properties.Resources.OK;
            this.btnAutorizarConta.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnAutorizarConta.Name = "btnAutorizarConta";
            this.btnAutorizarConta.Size = new System.Drawing.Size(75, 22);
            this.btnAutorizarConta.Text = "Autorizar";
            this.btnAutorizarConta.Click += new System.EventHandler(this.btnAutorizarConta_Click);
            // 
            // btnPagarConta
            // 
            this.btnPagarConta.Image = global::MS2000.Desktop.Properties.Resources.financial;
            this.btnPagarConta.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnPagarConta.Name = "btnPagarConta";
            this.btnPagarConta.Size = new System.Drawing.Size(57, 22);
            this.btnPagarConta.Text = "Pagar";
            this.btnPagarConta.Click += new System.EventHandler(this.btnPagarConta_Click);
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            this.toolStripSeparator2.Size = new System.Drawing.Size(6, 25);
            // 
            // btnFechar
            // 
            this.btnFechar.Image = global::MS2000.Desktop.Properties.Resources.sair;
            this.btnFechar.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnFechar.Name = "btnFechar";
            this.btnFechar.Size = new System.Drawing.Size(62, 22);
            this.btnFechar.Text = "Fechar";
            this.btnFechar.Click += new System.EventHandler(this.btnFechar_Click);
            // 
            // FrmContasAPagar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(1003, 481);
            this.Controls.Add(this.bindingNavigator);
            this.Controls.Add(this.tabControl);
            this.Name = "FrmContasAPagar";
            this.Text = "Financeiro - Contas a Pagar";
            this.Load += new System.EventHandler(this.FrmContasAPagar_Load);
            this.tabControl.ResumeLayout(false);
            this.tabFormulario.ResumeLayout(false);
            this.panelControl.ResumeLayout(false);
            this.pnlPagamento.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.pnlConta.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).EndInit();
            this.gpbPesquisar.ResumeLayout(false);
            this.gpbPesquisar.PerformLayout();
            this.gpbFiltrar.ResumeLayout(false);
            this.gpbFiltrar.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator)).EndInit();
            this.bindingNavigator.ResumeLayout(false);
            this.bindingNavigator.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl;
        private System.Windows.Forms.TabPage tabFormulario;
        private System.Windows.Forms.Panel panelControl;
        private System.Windows.Forms.BindingSource bindingSource1;
        private System.Windows.Forms.BindingNavigator bindingNavigator;
        private System.Windows.Forms.ToolStripLabel bindingNavigatorCountItem;
        private System.Windows.Forms.ToolStripButton btnCancelarConta;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveFirstItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMovePreviousItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator;
        private System.Windows.Forms.ToolStripTextBox bindingNavigatorPositionItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator1;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveNextItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveLastItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator2;
        private System.Windows.Forms.ToolStripButton btnIncluirConta;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripButton btnEditarConta;
        private System.Windows.Forms.ToolStripButton btnFechar;
        private System.Windows.Forms.GroupBox gpbFiltrar;
        private System.Windows.Forms.RadioButton rbCancelado;
        private System.Windows.Forms.RadioButton rbPago;
        private System.Windows.Forms.RadioButton rbAutorizado;
        private System.Windows.Forms.RadioButton rbSolicitado;
        private System.Windows.Forms.DataGridView dataGridView;
        private System.Windows.Forms.ToolStripButton btnSolicitarConta;
        private System.Windows.Forms.ToolStripButton btnAutorizarConta;
        private System.Windows.Forms.ToolStripButton btnPagarConta;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.RadioButton rbNaoSolicitado;
        private System.Windows.Forms.Panel pnlPagamento;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.GroupBox groupBox1;
        private Componentes.MultiColumnComboBox mccbBanco;
        private System.Windows.Forms.Button btnCancelarPagamento;
        private System.Windows.Forms.Button btnSalvarPagamento;
        private System.Windows.Forms.Label label20;
        private System.Windows.Forms.Panel pnlConta;
        private System.Windows.Forms.Label lblPanel;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label label22;
        private Componentes.MultiColumnComboBox mccbDespesas;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Button btnSalvarConta;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox txtObs;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtJuros;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtMulta;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtValorPago;
        private System.Windows.Forms.TextBox txtValor;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.MaskedTextBox txtDataProrrogacao;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.MaskedTextBox txtDataVencimento;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtDescricao;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtNF;
        private System.Windows.Forms.Label label1;
        private Componentes.MultiColumnComboBox mccbFornecedor;
        private System.Windows.Forms.TextBox txtCodigo;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.GroupBox gpbPesquisar;
        private System.Windows.Forms.ComboBox cbbPesquisarPor;
        private System.Windows.Forms.TextBox txtPesquisar;
        private System.Windows.Forms.DataGridViewTextBoxColumn Status;
        private System.Windows.Forms.DataGridViewTextBoxColumn Codigo;
        private System.Windows.Forms.DataGridViewTextBoxColumn Fornecedor;
        private System.Windows.Forms.DataGridViewTextBoxColumn Nf;
        private System.Windows.Forms.DataGridViewTextBoxColumn Despesa;
        private System.Windows.Forms.DataGridViewTextBoxColumn Valor;
        private System.Windows.Forms.DataGridViewTextBoxColumn Multa;
        private System.Windows.Forms.DataGridViewTextBoxColumn Juros;
        private System.Windows.Forms.DataGridViewTextBoxColumn ValorPg;
        private System.Windows.Forms.DataGridViewTextBoxColumn Obs;
        private System.Windows.Forms.DataGridViewTextBoxColumn Incluido;
        private System.Windows.Forms.DataGridViewTextBoxColumn Autorizado;
        private System.Windows.Forms.DataGridViewTextBoxColumn Numerario;
    }
}
