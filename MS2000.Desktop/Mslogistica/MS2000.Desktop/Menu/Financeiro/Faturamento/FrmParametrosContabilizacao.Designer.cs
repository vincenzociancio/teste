﻿namespace MS2000.Desktop.Menu.Financeiro.Faturamento
{
    partial class FrmParametrosContabilizacao
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle8 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle9 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle7 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmParametrosContabilizacao));
            this.bindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.tabControl = new System.Windows.Forms.TabControl();
            this.tabFormulario = new System.Windows.Forms.TabPage();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.txtPesquisar = new System.Windows.Forms.TextBox();
            this.dataGridView = new System.Windows.Forms.DataGridView();
            this.Importador = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Razao_Social = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Numerario = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DescNum = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Credito = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DescCred = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panelControl = new System.Windows.Forms.Panel();
            this.cbbImportador = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.cbbCreditoDescricao = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.cbbNumerarioDescricao = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.txtCredito = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txtNumerario = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txtCodigo = new System.Windows.Forms.TextBox();
            this.bindingNavigator = new System.Windows.Forms.BindingNavigator(this.components);
            this.bindingNavigatorCountItem = new System.Windows.Forms.ToolStripLabel();
            this.btnExcluir = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveFirstItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMovePreviousItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorPositionItem = new System.Windows.Forms.ToolStripTextBox();
            this.bindingNavigatorSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorMoveNextItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveLastItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.btnNovo = new System.Windows.Forms.ToolStripButton();
            this.btnSalvar = new System.Windows.Forms.ToolStripButton();
            this.btnCancelar = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.btnEditar = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.printToolStripButton = new System.Windows.Forms.ToolStripButton();
            this.btnFechar = new System.Windows.Forms.ToolStripButton();
            this.btnImportarParametros = new System.Windows.Forms.ToolStripButton();
            this.pnlImportarParametros = new System.Windows.Forms.Panel();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label8 = new System.Windows.Forms.Label();
            this.ccbImportadorParametrosDestino = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.btnPnlCancelar = new System.Windows.Forms.Button();
            this.btnPnlConfirmar = new System.Windows.Forms.Button();
            this.ccbImportadorParametrosOrigem = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).BeginInit();
            this.tabControl.SuspendLayout();
            this.tabFormulario.SuspendLayout();
            this.groupBox4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).BeginInit();
            this.panelControl.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator)).BeginInit();
            this.bindingNavigator.SuspendLayout();
            this.pnlImportarParametros.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabControl
            // 
            this.tabControl.Controls.Add(this.tabFormulario);
            this.tabControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl.Location = new System.Drawing.Point(0, 25);
            this.tabControl.Name = "tabControl";
            this.tabControl.SelectedIndex = 0;
            this.tabControl.Size = new System.Drawing.Size(765, 463);
            this.tabControl.TabIndex = 13;
            // 
            // tabFormulario
            // 
            this.tabFormulario.Controls.Add(this.groupBox4);
            this.tabFormulario.Controls.Add(this.dataGridView);
            this.tabFormulario.Controls.Add(this.panelControl);
            this.tabFormulario.Location = new System.Drawing.Point(4, 22);
            this.tabFormulario.Name = "tabFormulario";
            this.tabFormulario.Padding = new System.Windows.Forms.Padding(3);
            this.tabFormulario.Size = new System.Drawing.Size(757, 437);
            this.tabFormulario.TabIndex = 0;
            this.tabFormulario.Text = "Tipos de Créditos";
            this.tabFormulario.UseVisualStyleBackColor = true;
            // 
            // groupBox4
            // 
            this.groupBox4.BackColor = System.Drawing.SystemColors.Control;
            this.groupBox4.Controls.Add(this.txtPesquisar);
            this.groupBox4.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox4.Location = new System.Drawing.Point(3, 97);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(751, 55);
            this.groupBox4.TabIndex = 11;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Pesquisar por Razão Social";
            // 
            // txtPesquisar
            // 
            this.txtPesquisar.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtPesquisar.Location = new System.Drawing.Point(2, 26);
            this.txtPesquisar.MaxLength = 60;
            this.txtPesquisar.Name = "txtPesquisar";
            this.txtPesquisar.Size = new System.Drawing.Size(377, 20);
            this.txtPesquisar.TabIndex = 0;
            this.txtPesquisar.TextChanged += new System.EventHandler(this.txtPesquisar_TextChanged);
            // 
            // dataGridView
            // 
            this.dataGridView.AllowUserToAddRows = false;
            this.dataGridView.AllowUserToDeleteRows = false;
            this.dataGridView.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.DisplayedCells;
            this.dataGridView.BackgroundColor = System.Drawing.SystemColors.ButtonHighlight;
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
            this.Importador,
            this.Razao_Social,
            this.Numerario,
            this.DescNum,
            this.Credito,
            this.DescCred});
            this.dataGridView.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dataGridView.Location = new System.Drawing.Point(3, 158);
            this.dataGridView.Name = "dataGridView";
            this.dataGridView.ReadOnly = true;
            dataGridViewCellStyle8.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle8.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle8.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle8.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle8.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle8.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle8.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView.RowHeadersDefaultCellStyle = dataGridViewCellStyle8;
            this.dataGridView.RowHeadersVisible = false;
            dataGridViewCellStyle9.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView.RowsDefaultCellStyle = dataGridViewCellStyle9;
            this.dataGridView.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView.Size = new System.Drawing.Size(751, 276);
            this.dataGridView.TabIndex = 0;
            // 
            // Importador
            // 
            this.Importador.DataPropertyName = "Importador";
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.Importador.DefaultCellStyle = dataGridViewCellStyle2;
            this.Importador.HeaderText = "Código";
            this.Importador.Name = "Importador";
            this.Importador.ReadOnly = true;
            this.Importador.Width = 50;
            // 
            // Razao_Social
            // 
            this.Razao_Social.DataPropertyName = "Razao_Social";
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            this.Razao_Social.DefaultCellStyle = dataGridViewCellStyle3;
            this.Razao_Social.HeaderText = "Razão Social";
            this.Razao_Social.Name = "Razao_Social";
            this.Razao_Social.ReadOnly = true;
            this.Razao_Social.Width = 300;
            // 
            // Numerario
            // 
            this.Numerario.DataPropertyName = "Numerario";
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.Numerario.DefaultCellStyle = dataGridViewCellStyle4;
            this.Numerario.HeaderText = "Numerário";
            this.Numerario.Name = "Numerario";
            this.Numerario.ReadOnly = true;
            this.Numerario.Width = 70;
            // 
            // DescNum
            // 
            this.DescNum.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.DescNum.DataPropertyName = "DescNum";
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            this.DescNum.DefaultCellStyle = dataGridViewCellStyle5;
            this.DescNum.HeaderText = "Descrição";
            this.DescNum.Name = "DescNum";
            this.DescNum.ReadOnly = true;
            this.DescNum.Width = 250;
            // 
            // Credito
            // 
            this.Credito.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.Credito.DataPropertyName = "Credito";
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.Credito.DefaultCellStyle = dataGridViewCellStyle6;
            this.Credito.HeaderText = "Crédito";
            this.Credito.Name = "Credito";
            this.Credito.ReadOnly = true;
            this.Credito.Width = 70;
            // 
            // DescCred
            // 
            this.DescCred.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.DescCred.DataPropertyName = "DescCred";
            dataGridViewCellStyle7.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            this.DescCred.DefaultCellStyle = dataGridViewCellStyle7;
            this.DescCred.HeaderText = "Descrição";
            this.DescCred.Name = "DescCred";
            this.DescCred.ReadOnly = true;
            this.DescCred.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.DescCred.Width = 250;
            // 
            // panelControl
            // 
            this.panelControl.Controls.Add(this.cbbImportador);
            this.panelControl.Controls.Add(this.cbbCreditoDescricao);
            this.panelControl.Controls.Add(this.cbbNumerarioDescricao);
            this.panelControl.Controls.Add(this.txtCredito);
            this.panelControl.Controls.Add(this.label4);
            this.panelControl.Controls.Add(this.label5);
            this.panelControl.Controls.Add(this.txtNumerario);
            this.panelControl.Controls.Add(this.label3);
            this.panelControl.Controls.Add(this.label7);
            this.panelControl.Controls.Add(this.label2);
            this.panelControl.Controls.Add(this.label1);
            this.panelControl.Controls.Add(this.txtCodigo);
            this.panelControl.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl.Location = new System.Drawing.Point(3, 3);
            this.panelControl.Name = "panelControl";
            this.panelControl.Size = new System.Drawing.Size(751, 94);
            this.panelControl.TabIndex = 10;
            // 
            // cbbImportador
            // 
            this.cbbImportador.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.cbbImportador.FormattingEnabled = true;
            this.cbbImportador.Location = new System.Drawing.Point(65, 22);
            this.cbbImportador.Name = "cbbImportador";
            this.cbbImportador.NumberColumnsDisplay = 0;
            this.cbbImportador.Size = new System.Drawing.Size(681, 21);
            this.cbbImportador.TabIndex = 1;
            this.cbbImportador.SelectedIndexChanged += new System.EventHandler(this.cbbImportador_SelectedIndexChanged);
            // 
            // cbbCreditoDescricao
            // 
            this.cbbCreditoDescricao.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.cbbCreditoDescricao.FormattingEnabled = true;
            this.cbbCreditoDescricao.Location = new System.Drawing.Point(439, 64);
            this.cbbCreditoDescricao.Name = "cbbCreditoDescricao";
            this.cbbCreditoDescricao.NumberColumnsDisplay = 0;
            this.cbbCreditoDescricao.Size = new System.Drawing.Size(307, 21);
            this.cbbCreditoDescricao.TabIndex = 5;
            this.cbbCreditoDescricao.SelectedIndexChanged += new System.EventHandler(this.cbbCreditoDescricao_SelectedIndexChanged);
            // 
            // cbbNumerarioDescricao
            // 
            this.cbbNumerarioDescricao.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.cbbNumerarioDescricao.FormattingEnabled = true;
            this.cbbNumerarioDescricao.Location = new System.Drawing.Point(65, 64);
            this.cbbNumerarioDescricao.Name = "cbbNumerarioDescricao";
            this.cbbNumerarioDescricao.NumberColumnsDisplay = 0;
            this.cbbNumerarioDescricao.Size = new System.Drawing.Size(307, 21);
            this.cbbNumerarioDescricao.TabIndex = 3;
            this.cbbNumerarioDescricao.SelectedIndexChanged += new System.EventHandler(this.cbbNumerarioDescricao_SelectedIndexChanged);
            // 
            // txtCredito
            // 
            this.txtCredito.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtCredito.Enabled = false;
            this.txtCredito.Location = new System.Drawing.Point(378, 65);
            this.txtCredito.MaxLength = 50;
            this.txtCredito.Name = "txtCredito";
            this.txtCredito.Size = new System.Drawing.Size(55, 20);
            this.txtCredito.TabIndex = 4;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(378, 49);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(40, 13);
            this.label4.TabIndex = 48;
            this.label4.Text = "Crédito";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(439, 49);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(55, 13);
            this.label5.TabIndex = 47;
            this.label5.Text = "Descrição";
            // 
            // txtNumerario
            // 
            this.txtNumerario.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtNumerario.Enabled = false;
            this.txtNumerario.Location = new System.Drawing.Point(4, 65);
            this.txtNumerario.MaxLength = 50;
            this.txtNumerario.Name = "txtNumerario";
            this.txtNumerario.Size = new System.Drawing.Size(55, 20);
            this.txtNumerario.TabIndex = 2;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(4, 49);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(55, 13);
            this.label3.TabIndex = 43;
            this.label3.Text = "Numerário";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(65, 49);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(55, 13);
            this.label7.TabIndex = 42;
            this.label7.Text = "Descrição";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(65, 7);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(57, 13);
            this.label2.TabIndex = 41;
            this.label2.Text = "Importador";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(4, 7);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(40, 13);
            this.label1.TabIndex = 39;
            this.label1.Text = "Código";
            // 
            // txtCodigo
            // 
            this.txtCodigo.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtCodigo.Enabled = false;
            this.txtCodigo.Location = new System.Drawing.Point(4, 23);
            this.txtCodigo.MaxLength = 4;
            this.txtCodigo.Name = "txtCodigo";
            this.txtCodigo.Size = new System.Drawing.Size(55, 20);
            this.txtCodigo.TabIndex = 0;
            // 
            // bindingNavigator
            // 
            this.bindingNavigator.AddNewItem = null;
            this.bindingNavigator.CountItem = this.bindingNavigatorCountItem;
            this.bindingNavigator.CountItemFormat = "de {0}";
            this.bindingNavigator.DeleteItem = this.btnExcluir;
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
            this.btnNovo,
            this.btnSalvar,
            this.btnCancelar,
            this.toolStripSeparator1,
            this.btnEditar,
            this.btnExcluir,
            this.toolStripSeparator2,
            this.printToolStripButton,
            this.btnFechar,
            this.btnImportarParametros});
            this.bindingNavigator.Location = new System.Drawing.Point(0, 0);
            this.bindingNavigator.MoveFirstItem = this.bindingNavigatorMoveFirstItem;
            this.bindingNavigator.MoveLastItem = this.bindingNavigatorMoveLastItem;
            this.bindingNavigator.MoveNextItem = this.bindingNavigatorMoveNextItem;
            this.bindingNavigator.MovePreviousItem = this.bindingNavigatorMovePreviousItem;
            this.bindingNavigator.Name = "bindingNavigator";
            this.bindingNavigator.PositionItem = this.bindingNavigatorPositionItem;
            this.bindingNavigator.Size = new System.Drawing.Size(765, 25);
            this.bindingNavigator.TabIndex = 12;
            this.bindingNavigator.Text = "bindingNavigator1";
            // 
            // bindingNavigatorCountItem
            // 
            this.bindingNavigatorCountItem.Name = "bindingNavigatorCountItem";
            this.bindingNavigatorCountItem.Size = new System.Drawing.Size(37, 22);
            this.bindingNavigatorCountItem.Text = "de {0}";
            this.bindingNavigatorCountItem.ToolTipText = "Número total de itens";
            // 
            // btnExcluir
            // 
            this.btnExcluir.Image = ((System.Drawing.Image)(resources.GetObject("btnExcluir.Image")));
            this.btnExcluir.Name = "btnExcluir";
            this.btnExcluir.RightToLeftAutoMirrorImage = true;
            this.btnExcluir.Size = new System.Drawing.Size(61, 22);
            this.btnExcluir.Text = "Excluir";
            this.btnExcluir.Click += new System.EventHandler(this.btnExcluir_Click);
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
            // btnNovo
            // 
            this.btnNovo.Image = ((System.Drawing.Image)(resources.GetObject("btnNovo.Image")));
            this.btnNovo.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnNovo.Name = "btnNovo";
            this.btnNovo.Size = new System.Drawing.Size(56, 22);
            this.btnNovo.Text = "&Novo";
            this.btnNovo.Click += new System.EventHandler(this.btnNovo_Click);
            // 
            // btnSalvar
            // 
            this.btnSalvar.Image = ((System.Drawing.Image)(resources.GetObject("btnSalvar.Image")));
            this.btnSalvar.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnSalvar.Name = "btnSalvar";
            this.btnSalvar.Size = new System.Drawing.Size(58, 22);
            this.btnSalvar.Text = "&Salvar";
            this.btnSalvar.Click += new System.EventHandler(this.btnSalvar_Click);
            // 
            // btnCancelar
            // 
            this.btnCancelar.Image = ((System.Drawing.Image)(resources.GetObject("btnCancelar.Image")));
            this.btnCancelar.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(73, 22);
            this.btnCancelar.Text = "&Cancelar";
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(6, 25);
            // 
            // btnEditar
            // 
            this.btnEditar.Image = ((System.Drawing.Image)(resources.GetObject("btnEditar.Image")));
            this.btnEditar.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnEditar.Name = "btnEditar";
            this.btnEditar.Size = new System.Drawing.Size(57, 22);
            this.btnEditar.Text = "&Editar";
            this.btnEditar.Click += new System.EventHandler(this.btnEditar_Click);
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            this.toolStripSeparator2.Size = new System.Drawing.Size(6, 25);
            // 
            // printToolStripButton
            // 
            this.printToolStripButton.Image = ((System.Drawing.Image)(resources.GetObject("printToolStripButton.Image")));
            this.printToolStripButton.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.printToolStripButton.Name = "printToolStripButton";
            this.printToolStripButton.Size = new System.Drawing.Size(74, 22);
            this.printToolStripButton.Text = "&Relatório";
            this.printToolStripButton.Visible = false;
            // 
            // btnFechar
            // 
            this.btnFechar.Image = global::MS2000.Desktop.Properties.Resources.sair;
            this.btnFechar.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnFechar.Name = "btnFechar";
            this.btnFechar.Size = new System.Drawing.Size(62, 22);
            this.btnFechar.Tag = "50402";
            this.btnFechar.Text = "Fechar";
            this.btnFechar.Click += new System.EventHandler(this.btnFechar_Click);
            // 
            // btnImportarParametros
            // 
            this.btnImportarParametros.Image = global::MS2000.Desktop.Properties.Resources.cadastre;
            this.btnImportarParametros.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnImportarParametros.Name = "btnImportarParametros";
            this.btnImportarParametros.Size = new System.Drawing.Size(136, 22);
            this.btnImportarParametros.Text = "Importar Parâmetros";
            this.btnImportarParametros.Click += new System.EventHandler(this.btnImportarParametros_Click);
            // 
            // pnlImportarParametros
            // 
            this.pnlImportarParametros.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pnlImportarParametros.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlImportarParametros.Controls.Add(this.groupBox1);
            this.pnlImportarParametros.Location = new System.Drawing.Point(38, 183);
            this.pnlImportarParametros.Name = "pnlImportarParametros";
            this.pnlImportarParametros.Size = new System.Drawing.Size(687, 155);
            this.pnlImportarParametros.TabIndex = 22;
            this.pnlImportarParametros.Visible = false;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.ccbImportadorParametrosDestino);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.btnPnlCancelar);
            this.groupBox1.Controls.Add(this.btnPnlConfirmar);
            this.groupBox1.Controls.Add(this.ccbImportadorParametrosOrigem);
            this.groupBox1.Location = new System.Drawing.Point(1, 1);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(683, 151);
            this.groupBox1.TabIndex = 27;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = " Importar parâmetros";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(3, 71);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(82, 13);
            this.label8.TabIndex = 44;
            this.label8.Text = "Para Importador";
            // 
            // ccbImportadorParametrosDestino
            // 
            this.ccbImportadorParametrosDestino.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.ccbImportadorParametrosDestino.FormattingEnabled = true;
            this.ccbImportadorParametrosDestino.Location = new System.Drawing.Point(3, 87);
            this.ccbImportadorParametrosDestino.Name = "ccbImportadorParametrosDestino";
            this.ccbImportadorParametrosDestino.NumberColumnsDisplay = 0;
            this.ccbImportadorParametrosDestino.Size = new System.Drawing.Size(676, 21);
            this.ccbImportadorParametrosDestino.TabIndex = 1;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(3, 24);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(74, 13);
            this.label6.TabIndex = 42;
            this.label6.Text = "Do Importador";
            // 
            // btnPnlCancelar
            // 
            this.btnPnlCancelar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.btnPnlCancelar.Image = global::MS2000.Desktop.Properties.Resources.Cancel;
            this.btnPnlCancelar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnPnlCancelar.Location = new System.Drawing.Point(262, 122);
            this.btnPnlCancelar.Name = "btnPnlCancelar";
            this.btnPnlCancelar.Size = new System.Drawing.Size(75, 24);
            this.btnPnlCancelar.TabIndex = 2;
            this.btnPnlCancelar.Text = "Cancelar";
            this.btnPnlCancelar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnPnlCancelar.UseVisualStyleBackColor = false;
            this.btnPnlCancelar.Click += new System.EventHandler(this.btnPnlCancelar_Click);
            // 
            // btnPnlConfirmar
            // 
            this.btnPnlConfirmar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.btnPnlConfirmar.Image = global::MS2000.Desktop.Properties.Resources.OK;
            this.btnPnlConfirmar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnPnlConfirmar.Location = new System.Drawing.Point(347, 122);
            this.btnPnlConfirmar.Name = "btnPnlConfirmar";
            this.btnPnlConfirmar.Size = new System.Drawing.Size(75, 24);
            this.btnPnlConfirmar.TabIndex = 3;
            this.btnPnlConfirmar.Text = "Confirmar";
            this.btnPnlConfirmar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnPnlConfirmar.UseVisualStyleBackColor = false;
            this.btnPnlConfirmar.Click += new System.EventHandler(this.btnPnlConfirmar_Click);
            // 
            // ccbImportadorParametrosOrigem
            // 
            this.ccbImportadorParametrosOrigem.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.ccbImportadorParametrosOrigem.FormattingEnabled = true;
            this.ccbImportadorParametrosOrigem.Location = new System.Drawing.Point(3, 40);
            this.ccbImportadorParametrosOrigem.Name = "ccbImportadorParametrosOrigem";
            this.ccbImportadorParametrosOrigem.NumberColumnsDisplay = 0;
            this.ccbImportadorParametrosOrigem.Size = new System.Drawing.Size(676, 21);
            this.ccbImportadorParametrosOrigem.TabIndex = 0;
            // 
            // FrmParametrosContabilizacao
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(765, 488);
            this.Controls.Add(this.pnlImportarParametros);
            this.Controls.Add(this.tabControl);
            this.Controls.Add(this.bindingNavigator);
            this.Name = "FrmParametrosContabilizacao";
            this.Text = "Financeiro - Faturamento - Parâmetros de Contabilização";
            this.Load += new System.EventHandler(this.FrmParametrosContabilizacao_Load);
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).EndInit();
            this.tabControl.ResumeLayout(false);
            this.tabFormulario.ResumeLayout(false);
            this.groupBox4.ResumeLayout(false);
            this.groupBox4.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).EndInit();
            this.panelControl.ResumeLayout(false);
            this.panelControl.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator)).EndInit();
            this.bindingNavigator.ResumeLayout(false);
            this.bindingNavigator.PerformLayout();
            this.pnlImportarParametros.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.BindingNavigator bindingNavigator;
        private System.Windows.Forms.ToolStripLabel bindingNavigatorCountItem;
        private System.Windows.Forms.ToolStripButton btnExcluir;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveFirstItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMovePreviousItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator;
        private System.Windows.Forms.ToolStripTextBox bindingNavigatorPositionItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator1;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveNextItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveLastItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator2;
        private System.Windows.Forms.ToolStripButton btnNovo;
        private System.Windows.Forms.ToolStripButton btnSalvar;
        private System.Windows.Forms.ToolStripButton btnCancelar;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripButton btnEditar;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.ToolStripButton printToolStripButton;
        private System.Windows.Forms.ToolStripButton btnFechar;
        private System.Windows.Forms.TabControl tabControl;
        private System.Windows.Forms.TabPage tabFormulario;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.TextBox txtPesquisar;
        private System.Windows.Forms.DataGridView dataGridView;
        private System.Windows.Forms.Panel panelControl;
        private System.Windows.Forms.TextBox txtNumerario;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtCodigo;
        private System.Windows.Forms.BindingSource bindingSource;
        private System.Windows.Forms.TextBox txtCredito;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private Componentes.MultiColumnComboBox cbbCreditoDescricao;
        private Componentes.MultiColumnComboBox cbbNumerarioDescricao;
        private Componentes.MultiColumnComboBox cbbImportador;
        private System.Windows.Forms.DataGridViewTextBoxColumn Importador;
        private System.Windows.Forms.DataGridViewTextBoxColumn Razao_Social;
        private System.Windows.Forms.DataGridViewTextBoxColumn Numerario;
        private System.Windows.Forms.DataGridViewTextBoxColumn DescNum;
        private System.Windows.Forms.DataGridViewTextBoxColumn Credito;
        private System.Windows.Forms.DataGridViewTextBoxColumn DescCred;
        private System.Windows.Forms.Panel pnlImportarParametros;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnPnlCancelar;
        private System.Windows.Forms.Button btnPnlConfirmar;
        private Componentes.MultiColumnComboBox ccbImportadorParametrosOrigem;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ToolStripButton btnImportarParametros;
        private System.Windows.Forms.Label label8;
        private Componentes.MultiColumnComboBox ccbImportadorParametrosDestino;
    }
}
