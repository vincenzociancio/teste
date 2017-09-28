namespace MS2000.Desktop.Menu.ISO
{
    partial class FrmControleAta
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmControleAta));
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
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
            this.btnParticipantes = new System.Windows.Forms.ToolStripButton();
            this.btnNovo = new System.Windows.Forms.ToolStripButton();
            this.btnSalvar = new System.Windows.Forms.ToolStripButton();
            this.btnCancelar = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.btnEditar = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.btnFechar = new System.Windows.Forms.ToolStripButton();
            this.tabControl = new System.Windows.Forms.TabControl();
            this.tabAta = new System.Windows.Forms.TabPage();
            this.gpControleAta = new System.Windows.Forms.GroupBox();
            this.txtTema = new System.Windows.Forms.TextBox();
            this.gpTipo = new System.Windows.Forms.GroupBox();
            this.rbSGI = new System.Windows.Forms.RadioButton();
            this.rbOperacional = new System.Windows.Forms.RadioButton();
            this.label1 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txtData = new System.Windows.Forms.MaskedTextBox();
            this.mcbImportador = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.mcbUsuario = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.gvAta = new System.Windows.Forms.DataGridView();
            this.Id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Upload = new System.Windows.Forms.DataGridViewImageColumn();
            this.Data = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Tema = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.bsTema = new System.Windows.Forms.BindingSource(this.components);
            this.gpTema = new System.Windows.Forms.GroupBox();
            this.txtPesquisar = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator)).BeginInit();
            this.bindingNavigator.SuspendLayout();
            this.tabControl.SuspendLayout();
            this.tabAta.SuspendLayout();
            this.gpControleAta.SuspendLayout();
            this.gpTipo.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gvAta)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsTema)).BeginInit();
            this.gpTema.SuspendLayout();
            this.SuspendLayout();
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
            this.btnParticipantes,
            this.btnNovo,
            this.btnSalvar,
            this.btnCancelar,
            this.toolStripSeparator1,
            this.btnEditar,
            this.btnExcluir,
            this.toolStripSeparator2,
            this.btnFechar});
            this.bindingNavigator.Location = new System.Drawing.Point(0, 0);
            this.bindingNavigator.MoveFirstItem = this.bindingNavigatorMoveFirstItem;
            this.bindingNavigator.MoveLastItem = this.bindingNavigatorMoveLastItem;
            this.bindingNavigator.MoveNextItem = this.bindingNavigatorMoveNextItem;
            this.bindingNavigator.MovePreviousItem = this.bindingNavigatorMovePreviousItem;
            this.bindingNavigator.Name = "bindingNavigator";
            this.bindingNavigator.PositionItem = this.bindingNavigatorPositionItem;
            this.bindingNavigator.Size = new System.Drawing.Size(683, 25);
            this.bindingNavigator.TabIndex = 26;
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
            // btnParticipantes
            // 
            this.btnParticipantes.Image = global::MS2000.Desktop.Properties.Resources.groups;
            this.btnParticipantes.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnParticipantes.Name = "btnParticipantes";
            this.btnParticipantes.Size = new System.Drawing.Size(95, 22);
            this.btnParticipantes.Text = "Participantes";
            this.btnParticipantes.Click += new System.EventHandler(this.btnParticipantes_Click);
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
            // btnFechar
            // 
            this.btnFechar.Image = global::MS2000.Desktop.Properties.Resources.sair;
            this.btnFechar.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnFechar.Name = "btnFechar";
            this.btnFechar.Size = new System.Drawing.Size(62, 22);
            this.btnFechar.Text = "Fechar";
            this.btnFechar.Click += new System.EventHandler(this.btnFechar_Click);
            // 
            // tabControl
            // 
            this.tabControl.Controls.Add(this.tabAta);
            this.tabControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl.Location = new System.Drawing.Point(0, 25);
            this.tabControl.Name = "tabControl";
            this.tabControl.SelectedIndex = 0;
            this.tabControl.Size = new System.Drawing.Size(683, 508);
            this.tabControl.TabIndex = 27;
            // 
            // tabAta
            // 
            this.tabAta.Controls.Add(this.gpControleAta);
            this.tabAta.Controls.Add(this.gvAta);
            this.tabAta.Controls.Add(this.gpTema);
            this.tabAta.Location = new System.Drawing.Point(4, 22);
            this.tabAta.Name = "tabAta";
            this.tabAta.Size = new System.Drawing.Size(675, 482);
            this.tabAta.TabIndex = 1;
            this.tabAta.Text = "Controle de Ata de Reunião";
            this.tabAta.UseVisualStyleBackColor = true;
            // 
            // gpControleAta
            // 
            this.gpControleAta.Controls.Add(this.txtTema);
            this.gpControleAta.Controls.Add(this.gpTipo);
            this.gpControleAta.Controls.Add(this.label1);
            this.gpControleAta.Controls.Add(this.label4);
            this.gpControleAta.Controls.Add(this.label2);
            this.gpControleAta.Controls.Add(this.label3);
            this.gpControleAta.Controls.Add(this.txtData);
            this.gpControleAta.Controls.Add(this.mcbImportador);
            this.gpControleAta.Controls.Add(this.mcbUsuario);
            this.gpControleAta.Location = new System.Drawing.Point(0, 3);
            this.gpControleAta.Name = "gpControleAta";
            this.gpControleAta.Size = new System.Drawing.Size(675, 169);
            this.gpControleAta.TabIndex = 35;
            this.gpControleAta.TabStop = false;
            this.gpControleAta.Text = "Controle de Ata";
            // 
            // txtTema
            // 
            this.txtTema.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtTema.Location = new System.Drawing.Point(11, 34);
            this.txtTema.MaxLength = 60;
            this.txtTema.Name = "txtTema";
            this.txtTema.Size = new System.Drawing.Size(324, 20);
            this.txtTema.TabIndex = 0;
            // 
            // gpTipo
            // 
            this.gpTipo.Controls.Add(this.rbSGI);
            this.gpTipo.Controls.Add(this.rbOperacional);
            this.gpTipo.Location = new System.Drawing.Point(9, 100);
            this.gpTipo.Name = "gpTipo";
            this.gpTipo.Size = new System.Drawing.Size(238, 54);
            this.gpTipo.TabIndex = 34;
            this.gpTipo.TabStop = false;
            this.gpTipo.Text = "Tipo";
            // 
            // rbSGI
            // 
            this.rbSGI.AutoSize = true;
            this.rbSGI.Location = new System.Drawing.Point(154, 22);
            this.rbSGI.Name = "rbSGI";
            this.rbSGI.Size = new System.Drawing.Size(43, 17);
            this.rbSGI.TabIndex = 1;
            this.rbSGI.TabStop = true;
            this.rbSGI.Text = "SGI";
            this.rbSGI.UseVisualStyleBackColor = true;
            // 
            // rbOperacional
            // 
            this.rbOperacional.AutoSize = true;
            this.rbOperacional.Location = new System.Drawing.Point(28, 22);
            this.rbOperacional.Name = "rbOperacional";
            this.rbOperacional.Size = new System.Drawing.Size(82, 17);
            this.rbOperacional.TabIndex = 0;
            this.rbOperacional.TabStop = true;
            this.rbOperacional.Text = "Operacional";
            this.rbOperacional.UseVisualStyleBackColor = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(8, 18);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(34, 13);
            this.label1.TabIndex = 27;
            this.label1.Text = "Tema";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(370, 18);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(69, 13);
            this.label4.TabIndex = 33;
            this.label4.Text = "Responsavel";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(370, 57);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(30, 13);
            this.label2.TabIndex = 28;
            this.label2.Text = "Data";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(8, 57);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(57, 13);
            this.label3.TabIndex = 32;
            this.label3.Text = "Importador";
            // 
            // txtData
            // 
            this.txtData.Location = new System.Drawing.Point(373, 73);
            this.txtData.Mask = "00/00/0000";
            this.txtData.Name = "txtData";
            this.txtData.Size = new System.Drawing.Size(77, 20);
            this.txtData.TabIndex = 3;
            this.txtData.ValidatingType = typeof(System.DateTime);
            // 
            // mcbImportador
            // 
            this.mcbImportador.AutoComplete = true;
            this.mcbImportador.AutoDropdown = true;
            this.mcbImportador.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbImportador.FormattingEnabled = true;
            this.mcbImportador.Location = new System.Drawing.Point(11, 73);
            this.mcbImportador.Name = "mcbImportador";
            this.mcbImportador.NumberColumnsDisplay = 0;
            this.mcbImportador.Size = new System.Drawing.Size(324, 21);
            this.mcbImportador.TabIndex = 2;
            // 
            // mcbUsuario
            // 
            this.mcbUsuario.AutoComplete = true;
            this.mcbUsuario.AutoDropdown = true;
            this.mcbUsuario.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbUsuario.FormattingEnabled = true;
            this.mcbUsuario.Location = new System.Drawing.Point(373, 34);
            this.mcbUsuario.Name = "mcbUsuario";
            this.mcbUsuario.NumberColumnsDisplay = 0;
            this.mcbUsuario.Size = new System.Drawing.Size(294, 21);
            this.mcbUsuario.TabIndex = 1;
            // 
            // gvAta
            // 
            this.gvAta.AllowUserToAddRows = false;
            this.gvAta.AllowUserToDeleteRows = false;
            this.gvAta.AutoGenerateColumns = false;
            this.gvAta.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.gvAta.BackgroundColor = System.Drawing.SystemColors.ButtonHighlight;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            this.gvAta.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.gvAta.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gvAta.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Id,
            this.Upload,
            this.Data,
            this.Tema});
            this.gvAta.DataSource = this.bsTema;
            this.gvAta.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.gvAta.Location = new System.Drawing.Point(0, 226);
            this.gvAta.Name = "gvAta";
            this.gvAta.ReadOnly = true;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gvAta.RowHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.gvAta.RowHeadersVisible = false;
            this.gvAta.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gvAta.Size = new System.Drawing.Size(675, 256);
            this.gvAta.TabIndex = 0;
            this.gvAta.CellContentDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.gvAta_CellContentDoubleClick);
            this.gvAta.SelectionChanged += new System.EventHandler(this.gvAta_SelectionChanged);
            // 
            // Id
            // 
            this.Id.DataPropertyName = "pk_atas";
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.TopCenter;
            this.Id.DefaultCellStyle = dataGridViewCellStyle2;
            this.Id.HeaderText = "ID";
            this.Id.Name = "Id";
            this.Id.ReadOnly = true;
            this.Id.Visible = false;
            this.Id.Width = 24;
            // 
            // Upload
            // 
            this.Upload.HeaderText = "Arquivo";
            this.Upload.Image = global::MS2000.Desktop.Properties.Resources.Open;
            this.Upload.Name = "Upload";
            this.Upload.ReadOnly = true;
            this.Upload.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Upload.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Upload.Width = 68;
            // 
            // Data
            // 
            this.Data.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.Data.DataPropertyName = "data";
            this.Data.FillWeight = 13F;
            this.Data.HeaderText = "Data";
            this.Data.Name = "Data";
            this.Data.ReadOnly = true;
            // 
            // Tema
            // 
            this.Tema.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.Tema.DataPropertyName = "Tema";
            this.Tema.FillWeight = 70F;
            this.Tema.HeaderText = "Tema";
            this.Tema.Name = "Tema";
            this.Tema.ReadOnly = true;
            // 
            // gpTema
            // 
            this.gpTema.Controls.Add(this.txtPesquisar);
            this.gpTema.Location = new System.Drawing.Point(0, 173);
            this.gpTema.Name = "gpTema";
            this.gpTema.Size = new System.Drawing.Size(675, 47);
            this.gpTema.TabIndex = 22;
            this.gpTema.TabStop = false;
            this.gpTema.Text = " Pesquisar por Tema";
            // 
            // txtPesquisar
            // 
            this.txtPesquisar.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtPesquisar.Location = new System.Drawing.Point(6, 19);
            this.txtPesquisar.MaxLength = 60;
            this.txtPesquisar.Name = "txtPesquisar";
            this.txtPesquisar.Size = new System.Drawing.Size(661, 20);
            this.txtPesquisar.TabIndex = 0;
            this.txtPesquisar.Tag = "806";
            this.txtPesquisar.TextChanged += new System.EventHandler(this.txtPesquisar_TextChanged);
            // 
            // FrmControleAta
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(683, 533);
            this.Controls.Add(this.tabControl);
            this.Controls.Add(this.bindingNavigator);
            this.Name = "FrmControleAta";
            this.Text = "ISO - Controle de Ata de Reunião";
            this.Load += new System.EventHandler(this.FrmControleAta_Load);
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator)).EndInit();
            this.bindingNavigator.ResumeLayout(false);
            this.bindingNavigator.PerformLayout();
            this.tabControl.ResumeLayout(false);
            this.tabAta.ResumeLayout(false);
            this.gpControleAta.ResumeLayout(false);
            this.gpControleAta.PerformLayout();
            this.gpTipo.ResumeLayout(false);
            this.gpTipo.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gvAta)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsTema)).EndInit();
            this.gpTema.ResumeLayout(false);
            this.gpTema.PerformLayout();
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
        private System.Windows.Forms.ToolStripButton btnFechar;
        private System.Windows.Forms.TabControl tabControl;
        private System.Windows.Forms.TabPage tabAta;
        private System.Windows.Forms.GroupBox gpTipo;
        private System.Windows.Forms.RadioButton rbSGI;
        private System.Windows.Forms.RadioButton rbOperacional;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private Componentes.MultiColumnComboBox mcbImportador;
        private Componentes.MultiColumnComboBox mcbUsuario;
        private System.Windows.Forms.MaskedTextBox txtData;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtTema;
        private System.Windows.Forms.DataGridView gvAta;
        private System.Windows.Forms.GroupBox gpTema;
        private System.Windows.Forms.TextBox txtPesquisar;
        private System.Windows.Forms.GroupBox gpControleAta;
        private System.Windows.Forms.BindingSource bsTema;
        private System.Windows.Forms.DataGridViewTextBoxColumn Id;
        private System.Windows.Forms.DataGridViewImageColumn Upload;
        private System.Windows.Forms.DataGridViewTextBoxColumn Data;
        private System.Windows.Forms.DataGridViewTextBoxColumn Tema;
        private System.Windows.Forms.ToolStripButton btnParticipantes;
    }
}
