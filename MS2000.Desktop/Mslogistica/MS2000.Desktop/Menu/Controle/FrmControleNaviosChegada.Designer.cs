namespace MS2000.Desktop.Menu.Controle
{
    partial class FrmControleNaviosChegada
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmControleNaviosChegada));
            this.bsChegadaNavio = new System.Windows.Forms.BindingSource(this.components);
            this.tabControl = new System.Windows.Forms.TabControl();
            this.tabSearch = new System.Windows.Forms.TabPage();
            this.gbChegadaNavios = new System.Windows.Forms.GroupBox();
            this.dt_eta = new System.Windows.Forms.MaskedTextBox();
            this.dt_embarque = new System.Windows.Forms.MaskedTextBox();
            this.mcbStatus = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.mcbTerminal = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.mcbNavios = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.gvChegadaNavios = new System.Windows.Forms.DataGridView();
            this.ID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Status = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Navio = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Terminal = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DataEmbarque = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DataEta = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.gbPesquisa = new System.Windows.Forms.GroupBox();
            this.chkExibirNavios = new System.Windows.Forms.CheckBox();
            this.txtPesquisar = new System.Windows.Forms.TextBox();
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
            this.btnNavios = new System.Windows.Forms.ToolStripButton();
            this.btnTerminais = new System.Windows.Forms.ToolStripButton();
            this.btnNovo = new System.Windows.Forms.ToolStripButton();
            this.btnSalvar = new System.Windows.Forms.ToolStripButton();
            this.btnCancelar = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.btnEditar = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.printToolStripButton = new System.Windows.Forms.ToolStripButton();
            this.btnFechar = new System.Windows.Forms.ToolStripButton();
            ((System.ComponentModel.ISupportInitialize)(this.bsChegadaNavio)).BeginInit();
            this.tabControl.SuspendLayout();
            this.tabSearch.SuspendLayout();
            this.gbChegadaNavios.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gvChegadaNavios)).BeginInit();
            this.gbPesquisa.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator)).BeginInit();
            this.bindingNavigator.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabControl
            // 
            this.tabControl.Controls.Add(this.tabSearch);
            this.tabControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl.Location = new System.Drawing.Point(0, 25);
            this.tabControl.Name = "tabControl";
            this.tabControl.SelectedIndex = 0;
            this.tabControl.Size = new System.Drawing.Size(735, 476);
            this.tabControl.TabIndex = 28;
            // 
            // tabSearch
            // 
            this.tabSearch.Controls.Add(this.gbChegadaNavios);
            this.tabSearch.Controls.Add(this.gvChegadaNavios);
            this.tabSearch.Controls.Add(this.gbPesquisa);
            this.tabSearch.Location = new System.Drawing.Point(4, 22);
            this.tabSearch.Name = "tabSearch";
            this.tabSearch.Size = new System.Drawing.Size(727, 450);
            this.tabSearch.TabIndex = 1;
            this.tabSearch.Text = "Controle de Chegada de Navios";
            this.tabSearch.UseVisualStyleBackColor = true;
            // 
            // gbChegadaNavios
            // 
            this.gbChegadaNavios.Controls.Add(this.dt_eta);
            this.gbChegadaNavios.Controls.Add(this.dt_embarque);
            this.gbChegadaNavios.Controls.Add(this.mcbStatus);
            this.gbChegadaNavios.Controls.Add(this.label5);
            this.gbChegadaNavios.Controls.Add(this.label4);
            this.gbChegadaNavios.Controls.Add(this.label3);
            this.gbChegadaNavios.Controls.Add(this.mcbTerminal);
            this.gbChegadaNavios.Controls.Add(this.mcbNavios);
            this.gbChegadaNavios.Controls.Add(this.label2);
            this.gbChegadaNavios.Controls.Add(this.label1);
            this.gbChegadaNavios.Location = new System.Drawing.Point(0, 3);
            this.gbChegadaNavios.Name = "gbChegadaNavios";
            this.gbChegadaNavios.Size = new System.Drawing.Size(727, 128);
            this.gbChegadaNavios.TabIndex = 33;
            this.gbChegadaNavios.TabStop = false;
            // 
            // dt_eta
            // 
            this.dt_eta.Location = new System.Drawing.Point(521, 84);
            this.dt_eta.Mask = "00/00/0000";
            this.dt_eta.Name = "dt_eta";
            this.dt_eta.Size = new System.Drawing.Size(76, 20);
            this.dt_eta.TabIndex = 4;
            this.dt_eta.ValidatingType = typeof(System.DateTime);
            // 
            // dt_embarque
            // 
            this.dt_embarque.Location = new System.Drawing.Point(395, 84);
            this.dt_embarque.Mask = "00/00/0000";
            this.dt_embarque.Name = "dt_embarque";
            this.dt_embarque.Size = new System.Drawing.Size(78, 20);
            this.dt_embarque.TabIndex = 3;
            this.dt_embarque.ValidatingType = typeof(System.DateTime);
            // 
            // mcbStatus
            // 
            this.mcbStatus.AutoComplete = true;
            this.mcbStatus.AutoDropdown = true;
            this.mcbStatus.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbStatus.FormattingEnabled = true;
            this.mcbStatus.Location = new System.Drawing.Point(395, 40);
            this.mcbStatus.Name = "mcbStatus";
            this.mcbStatus.NumberColumnsDisplay = 0;
            this.mcbStatus.Size = new System.Drawing.Size(324, 21);
            this.mcbStatus.TabIndex = 1;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(392, 24);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(37, 13);
            this.label5.TabIndex = 39;
            this.label5.Text = "Status";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(392, 68);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(96, 13);
            this.label4.TabIndex = 38;
            this.label4.Text = "Data de Embarque";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(518, 68);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(49, 13);
            this.label3.TabIndex = 37;
            this.label3.Text = "Data Eta";
            // 
            // mcbTerminal
            // 
            this.mcbTerminal.AutoComplete = true;
            this.mcbTerminal.AutoDropdown = true;
            this.mcbTerminal.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbTerminal.FormattingEnabled = true;
            this.mcbTerminal.Location = new System.Drawing.Point(18, 83);
            this.mcbTerminal.Name = "mcbTerminal";
            this.mcbTerminal.NumberColumnsDisplay = 0;
            this.mcbTerminal.Size = new System.Drawing.Size(328, 21);
            this.mcbTerminal.TabIndex = 2;
            // 
            // mcbNavios
            // 
            this.mcbNavios.AutoComplete = true;
            this.mcbNavios.AutoDropdown = true;
            this.mcbNavios.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbNavios.FormattingEnabled = true;
            this.mcbNavios.Location = new System.Drawing.Point(18, 40);
            this.mcbNavios.Name = "mcbNavios";
            this.mcbNavios.NumberColumnsDisplay = 0;
            this.mcbNavios.Size = new System.Drawing.Size(328, 21);
            this.mcbNavios.TabIndex = 0;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(15, 67);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(47, 13);
            this.label2.TabIndex = 34;
            this.label2.Text = "Terminal";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(15, 24);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(35, 13);
            this.label1.TabIndex = 33;
            this.label1.Text = "Navio";
            // 
            // gvChegadaNavios
            // 
            this.gvChegadaNavios.AllowUserToAddRows = false;
            this.gvChegadaNavios.AllowUserToDeleteRows = false;
            this.gvChegadaNavios.AutoGenerateColumns = false;
            this.gvChegadaNavios.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.gvChegadaNavios.BackgroundColor = System.Drawing.SystemColors.ButtonHighlight;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            this.gvChegadaNavios.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.gvChegadaNavios.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gvChegadaNavios.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.ID,
            this.Status,
            this.Navio,
            this.Terminal,
            this.DataEmbarque,
            this.DataEta});
            this.gvChegadaNavios.DataSource = this.bsChegadaNavio;
            this.gvChegadaNavios.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.gvChegadaNavios.Location = new System.Drawing.Point(0, 189);
            this.gvChegadaNavios.Name = "gvChegadaNavios";
            this.gvChegadaNavios.ReadOnly = true;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gvChegadaNavios.RowHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.gvChegadaNavios.RowHeadersVisible = false;
            this.gvChegadaNavios.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gvChegadaNavios.Size = new System.Drawing.Size(727, 261);
            this.gvChegadaNavios.TabIndex = 21;
            // 
            // ID
            // 
            this.ID.DataPropertyName = "PK_NAVIO_CHEGADA";
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.TopCenter;
            this.ID.DefaultCellStyle = dataGridViewCellStyle2;
            this.ID.HeaderText = "ID";
            this.ID.Name = "ID";
            this.ID.ReadOnly = true;
            this.ID.Visible = false;
            this.ID.Width = 24;
            // 
            // Status
            // 
            this.Status.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.Status.DataPropertyName = "Status";
            this.Status.FillWeight = 25F;
            this.Status.HeaderText = "Status";
            this.Status.Name = "Status";
            this.Status.ReadOnly = true;
            // 
            // Navio
            // 
            this.Navio.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.Navio.DataPropertyName = "Nome_Navio";
            this.Navio.FillWeight = 40F;
            this.Navio.HeaderText = "Navio";
            this.Navio.Name = "Navio";
            this.Navio.ReadOnly = true;
            // 
            // Terminal
            // 
            this.Terminal.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.Terminal.DataPropertyName = "Nome_Terminal";
            this.Terminal.FillWeight = 30F;
            this.Terminal.HeaderText = "Terminal";
            this.Terminal.Name = "Terminal";
            this.Terminal.ReadOnly = true;
            // 
            // DataEmbarque
            // 
            this.DataEmbarque.DataPropertyName = "Dt_Embarque";
            this.DataEmbarque.HeaderText = "Data de Embarque";
            this.DataEmbarque.Name = "DataEmbarque";
            this.DataEmbarque.ReadOnly = true;
            this.DataEmbarque.Width = 121;
            // 
            // DataEta
            // 
            this.DataEta.DataPropertyName = "Dt_Eta";
            this.DataEta.HeaderText = "Data Eta";
            this.DataEta.Name = "DataEta";
            this.DataEta.ReadOnly = true;
            this.DataEta.Width = 74;
            // 
            // gbPesquisa
            // 
            this.gbPesquisa.Controls.Add(this.chkExibirNavios);
            this.gbPesquisa.Controls.Add(this.txtPesquisar);
            this.gbPesquisa.Location = new System.Drawing.Point(0, 133);
            this.gbPesquisa.Name = "gbPesquisa";
            this.gbPesquisa.Size = new System.Drawing.Size(727, 50);
            this.gbPesquisa.TabIndex = 22;
            this.gbPesquisa.TabStop = false;
            this.gbPesquisa.Text = " Pesquisar por Navio";
            // 
            // chkExibirNavios
            // 
            this.chkExibirNavios.AutoSize = true;
            this.chkExibirNavios.Location = new System.Drawing.Point(573, 21);
            this.chkExibirNavios.Name = "chkExibirNavios";
            this.chkExibirNavios.Size = new System.Drawing.Size(134, 17);
            this.chkExibirNavios.TabIndex = 1;
            this.chkExibirNavios.Text = "Exibir Todos os Navios";
            this.chkExibirNavios.UseVisualStyleBackColor = true;
            this.chkExibirNavios.CheckedChanged += new System.EventHandler(this.chkExibirNavios_CheckedChanged);
            // 
            // txtPesquisar
            // 
            this.txtPesquisar.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtPesquisar.Location = new System.Drawing.Point(6, 19);
            this.txtPesquisar.MaxLength = 60;
            this.txtPesquisar.Name = "txtPesquisar";
            this.txtPesquisar.Size = new System.Drawing.Size(561, 20);
            this.txtPesquisar.TabIndex = 0;
            this.txtPesquisar.TextChanged += new System.EventHandler(this.txtPesquisar_TextChanged);
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
            this.btnNavios,
            this.btnTerminais,
            this.btnNovo,
            this.btnSalvar,
            this.btnCancelar,
            this.toolStripSeparator1,
            this.btnEditar,
            this.btnExcluir,
            this.toolStripSeparator2,
            this.printToolStripButton,
            this.btnFechar});
            this.bindingNavigator.Location = new System.Drawing.Point(0, 0);
            this.bindingNavigator.MoveFirstItem = this.bindingNavigatorMoveFirstItem;
            this.bindingNavigator.MoveLastItem = this.bindingNavigatorMoveLastItem;
            this.bindingNavigator.MoveNextItem = this.bindingNavigatorMoveNextItem;
            this.bindingNavigator.MovePreviousItem = this.bindingNavigatorMovePreviousItem;
            this.bindingNavigator.Name = "bindingNavigator";
            this.bindingNavigator.PositionItem = this.bindingNavigatorPositionItem;
            this.bindingNavigator.Size = new System.Drawing.Size(735, 25);
            this.bindingNavigator.TabIndex = 27;
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
            // btnNavios
            // 
            this.btnNavios.Image = global::MS2000.Desktop.Properties.Resources.download;
            this.btnNavios.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnNavios.Name = "btnNavios";
            this.btnNavios.Size = new System.Drawing.Size(63, 22);
            this.btnNavios.Text = "Navios";
            this.btnNavios.Click += new System.EventHandler(this.btnNavios_Click);
            // 
            // btnTerminais
            // 
            this.btnTerminais.Image = global::MS2000.Desktop.Properties.Resources.terminal;
            this.btnTerminais.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnTerminais.Name = "btnTerminais";
            this.btnTerminais.Size = new System.Drawing.Size(79, 22);
            this.btnTerminais.Text = "Terminais";
            this.btnTerminais.Click += new System.EventHandler(this.btnTerminais_Click);
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
            this.printToolStripButton.Size = new System.Drawing.Size(74, 20);
            this.printToolStripButton.Text = "&Relatório";
            this.printToolStripButton.Visible = false;
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
            // FrmControleNaviosChegada
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(735, 501);
            this.Controls.Add(this.tabControl);
            this.Controls.Add(this.bindingNavigator);
            this.Name = "FrmControleNaviosChegada";
            this.Tag = "418";
            this.Text = "Controle - Chegada de Navios";
            this.Load += new System.EventHandler(this.FrmControleNaviosChegada_Load);
            ((System.ComponentModel.ISupportInitialize)(this.bsChegadaNavio)).EndInit();
            this.tabControl.ResumeLayout(false);
            this.tabSearch.ResumeLayout(false);
            this.gbChegadaNavios.ResumeLayout(false);
            this.gbChegadaNavios.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gvChegadaNavios)).EndInit();
            this.gbPesquisa.ResumeLayout(false);
            this.gbPesquisa.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator)).EndInit();
            this.bindingNavigator.ResumeLayout(false);
            this.bindingNavigator.PerformLayout();
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
        private System.Windows.Forms.TabPage tabSearch;
        private System.Windows.Forms.DataGridView gvChegadaNavios;
        private System.Windows.Forms.GroupBox gbPesquisa;
        private System.Windows.Forms.TextBox txtPesquisar;
        private System.Windows.Forms.GroupBox gbChegadaNavios;
        private System.Windows.Forms.MaskedTextBox dt_eta;
        private System.Windows.Forms.MaskedTextBox dt_embarque;
        private Componentes.MultiColumnComboBox mcbStatus;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private Componentes.MultiColumnComboBox mcbTerminal;
        private Componentes.MultiColumnComboBox mcbNavios;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ToolStripButton btnNavios;
        private System.Windows.Forms.ToolStripButton btnTerminais;
        private System.Windows.Forms.BindingSource bsChegadaNavio;
        private System.Windows.Forms.DataGridViewTextBoxColumn ID;
        private System.Windows.Forms.DataGridViewTextBoxColumn Status;
        private System.Windows.Forms.DataGridViewTextBoxColumn Navio;
        private System.Windows.Forms.DataGridViewTextBoxColumn Terminal;
        private System.Windows.Forms.DataGridViewTextBoxColumn DataEmbarque;
        private System.Windows.Forms.DataGridViewTextBoxColumn DataEta;
        private System.Windows.Forms.CheckBox chkExibirNavios;
    }
}
