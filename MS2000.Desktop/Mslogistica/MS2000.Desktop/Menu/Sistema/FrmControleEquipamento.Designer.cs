namespace MS2000.Desktop.Menu.Sistema
{
    partial class FrmControleEquipamento
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmControleEquipamento));
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle7 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle8 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            this.bindingNavigator = new System.Windows.Forms.BindingNavigator(this.components);
            this.bindingNavigatorCountItem = new System.Windows.Forms.ToolStripLabel();
            this.bindingNavigatorMoveFirstItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMovePreviousItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorPositionItem = new System.Windows.Forms.ToolStripTextBox();
            this.bindingNavigatorSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorMoveNextItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveLastItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripButton1 = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator3 = new System.Windows.Forms.ToolStripSeparator();
            this.btnNovo = new System.Windows.Forms.ToolStripButton();
            this.btnSalvar = new System.Windows.Forms.ToolStripButton();
            this.btnCancelar = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.btnEditar = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.btnFechar = new System.Windows.Forms.ToolStripButton();
            this.bsHistorico = new System.Windows.Forms.BindingSource(this.components);
            this.bsGeral = new System.Windows.Forms.BindingSource(this.components);
            this.tbpControleEquipamento = new System.Windows.Forms.TabPage();
            this.label12 = new System.Windows.Forms.Label();
            this.gvMovimentacao = new System.Windows.Forms.DataGridView();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Modelo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Tipo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Observacao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Defeito = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Serie = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.fk_serie = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.fk_usuario = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Responsavel = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DataRetirada = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DataEntrega = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.gbInformacao = new System.Windows.Forms.GroupBox();
            this.chkDefeito = new System.Windows.Forms.CheckBox();
            this.label11 = new System.Windows.Forms.Label();
            this.rtxtObservacao = new System.Windows.Forms.RichTextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.txtMotivo = new System.Windows.Forms.TextBox();
            this.gpControleEquipamento = new System.Windows.Forms.GroupBox();
            this.mcbUsuario = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.mcbEquipamento = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.txtDataEntrega = new System.Windows.Forms.MaskedTextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.txtDataRetirada = new System.Windows.Forms.MaskedTextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.mcbTipo = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.mcbSerie = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.tbcLocalizarEquipamento = new System.Windows.Forms.TabControl();
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator)).BeginInit();
            this.bindingNavigator.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bsHistorico)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsGeral)).BeginInit();
            this.tbpControleEquipamento.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gvMovimentacao)).BeginInit();
            this.gbInformacao.SuspendLayout();
            this.gpControleEquipamento.SuspendLayout();
            this.tbcLocalizarEquipamento.SuspendLayout();
            this.SuspendLayout();
            // 
            // bindingNavigator
            // 
            this.bindingNavigator.AddNewItem = null;
            this.bindingNavigator.CountItem = this.bindingNavigatorCountItem;
            this.bindingNavigator.DeleteItem = null;
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
            this.toolStripButton1,
            this.toolStripSeparator3,
            this.btnNovo,
            this.btnSalvar,
            this.btnCancelar,
            this.toolStripSeparator1,
            this.btnEditar,
            this.toolStripSeparator2,
            this.btnFechar});
            this.bindingNavigator.Location = new System.Drawing.Point(0, 0);
            this.bindingNavigator.MoveFirstItem = this.bindingNavigatorMoveFirstItem;
            this.bindingNavigator.MoveLastItem = this.bindingNavigatorMoveLastItem;
            this.bindingNavigator.MoveNextItem = this.bindingNavigatorMoveNextItem;
            this.bindingNavigator.MovePreviousItem = this.bindingNavigatorMovePreviousItem;
            this.bindingNavigator.Name = "bindingNavigator";
            this.bindingNavigator.PositionItem = this.bindingNavigatorPositionItem;
            this.bindingNavigator.Size = new System.Drawing.Size(662, 25);
            this.bindingNavigator.TabIndex = 11;
            this.bindingNavigator.Text = "bindingNavigator1";
            // 
            // bindingNavigatorCountItem
            // 
            this.bindingNavigatorCountItem.Name = "bindingNavigatorCountItem";
            this.bindingNavigatorCountItem.Size = new System.Drawing.Size(37, 22);
            this.bindingNavigatorCountItem.Text = "de {0}";
            this.bindingNavigatorCountItem.ToolTipText = "Número total de itens";
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
            // toolStripButton1
            // 
            this.toolStripButton1.Image = global::MS2000.Desktop.Properties.Resources.groups;
            this.toolStripButton1.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButton1.Name = "toolStripButton1";
            this.toolStripButton1.Size = new System.Drawing.Size(69, 22);
            this.toolStripButton1.Text = "Estoque";
            this.toolStripButton1.Click += new System.EventHandler(this.toolStripButton1_Click);
            // 
            // toolStripSeparator3
            // 
            this.toolStripSeparator3.Name = "toolStripSeparator3";
            this.toolStripSeparator3.Size = new System.Drawing.Size(6, 25);
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
            // tbpControleEquipamento
            // 
            this.tbpControleEquipamento.Controls.Add(this.label12);
            this.tbpControleEquipamento.Controls.Add(this.gvMovimentacao);
            this.tbpControleEquipamento.Controls.Add(this.gbInformacao);
            this.tbpControleEquipamento.Controls.Add(this.gpControleEquipamento);
            this.tbpControleEquipamento.Location = new System.Drawing.Point(4, 22);
            this.tbpControleEquipamento.Name = "tbpControleEquipamento";
            this.tbpControleEquipamento.Padding = new System.Windows.Forms.Padding(3);
            this.tbpControleEquipamento.Size = new System.Drawing.Size(654, 373);
            this.tbpControleEquipamento.TabIndex = 1;
            this.tbpControleEquipamento.Text = "Controle de Equipamentos";
            this.tbpControleEquipamento.UseVisualStyleBackColor = true;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(272, 124);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(136, 13);
            this.label12.TabIndex = 22;
            this.label12.Text = "Histórico de Movimentação";
            // 
            // gvMovimentacao
            // 
            this.gvMovimentacao.AllowUserToAddRows = false;
            this.gvMovimentacao.AllowUserToDeleteRows = false;
            this.gvMovimentacao.AutoGenerateColumns = false;
            this.gvMovimentacao.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.gvMovimentacao.BackgroundColor = System.Drawing.SystemColors.ButtonHighlight;
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle5.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle5.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle5.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle5.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle5.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            this.gvMovimentacao.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle5;
            this.gvMovimentacao.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gvMovimentacao.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn1,
            this.Modelo,
            this.Tipo,
            this.Observacao,
            this.Defeito,
            this.Serie,
            this.fk_serie,
            this.fk_usuario,
            this.Responsavel,
            this.DataRetirada,
            this.DataEntrega});
            this.gvMovimentacao.DataSource = this.bsHistorico;
            dataGridViewCellStyle7.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle7.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle7.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle7.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle7.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle7.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle7.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gvMovimentacao.DefaultCellStyle = dataGridViewCellStyle7;
            this.gvMovimentacao.Location = new System.Drawing.Point(275, 142);
            this.gvMovimentacao.Name = "gvMovimentacao";
            this.gvMovimentacao.ReadOnly = true;
            dataGridViewCellStyle8.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle8.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle8.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle8.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle8.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle8.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle8.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gvMovimentacao.RowHeadersDefaultCellStyle = dataGridViewCellStyle8;
            this.gvMovimentacao.RowHeadersVisible = false;
            this.gvMovimentacao.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gvMovimentacao.Size = new System.Drawing.Size(376, 228);
            this.gvMovimentacao.TabIndex = 20;
            this.gvMovimentacao.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.gvMovimentacao_CellClick_1);
            this.gvMovimentacao.SelectionChanged += new System.EventHandler(this.gvMovimentacao_SelectionChanged);
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.DataPropertyName = "Id";
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.TopCenter;
            this.dataGridViewTextBoxColumn1.DefaultCellStyle = dataGridViewCellStyle6;
            this.dataGridViewTextBoxColumn1.HeaderText = "ID";
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            this.dataGridViewTextBoxColumn1.ReadOnly = true;
            this.dataGridViewTextBoxColumn1.Visible = false;
            this.dataGridViewTextBoxColumn1.Width = 24;
            // 
            // Modelo
            // 
            this.Modelo.DataPropertyName = "Equipamento";
            this.Modelo.HeaderText = "Modelo";
            this.Modelo.Name = "Modelo";
            this.Modelo.ReadOnly = true;
            this.Modelo.Visible = false;
            this.Modelo.Width = 48;
            // 
            // Tipo
            // 
            this.Tipo.DataPropertyName = "Descricao";
            this.Tipo.HeaderText = "Tipo";
            this.Tipo.Name = "Tipo";
            this.Tipo.ReadOnly = true;
            this.Tipo.Visible = false;
            this.Tipo.Width = 34;
            // 
            // Observacao
            // 
            this.Observacao.DataPropertyName = "Observacao";
            this.Observacao.HeaderText = "Observacao";
            this.Observacao.Name = "Observacao";
            this.Observacao.ReadOnly = true;
            this.Observacao.Visible = false;
            this.Observacao.Width = 71;
            // 
            // Defeito
            // 
            this.Defeito.DataPropertyName = "Defeito";
            this.Defeito.HeaderText = "Defeito";
            this.Defeito.Name = "Defeito";
            this.Defeito.ReadOnly = true;
            this.Defeito.Visible = false;
            this.Defeito.Width = 47;
            // 
            // Serie
            // 
            this.Serie.DataPropertyName = "Serie";
            this.Serie.HeaderText = "Nº Serie";
            this.Serie.Name = "Serie";
            this.Serie.ReadOnly = true;
            this.Serie.Width = 69;
            // 
            // fk_serie
            // 
            this.fk_serie.DataPropertyName = "FK_Serie";
            this.fk_serie.HeaderText = "fk_serie";
            this.fk_serie.Name = "fk_serie";
            this.fk_serie.ReadOnly = true;
            this.fk_serie.Visible = false;
            this.fk_serie.Width = 69;
            // 
            // fk_usuario
            // 
            this.fk_usuario.DataPropertyName = "FK_Usuario";
            this.fk_usuario.HeaderText = "fk_usuario";
            this.fk_usuario.Name = "fk_usuario";
            this.fk_usuario.ReadOnly = true;
            this.fk_usuario.Visible = false;
            this.fk_usuario.Width = 81;
            // 
            // Responsavel
            // 
            this.Responsavel.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.Responsavel.DataPropertyName = "Nome_Completo";
            this.Responsavel.FillWeight = 30F;
            this.Responsavel.HeaderText = "Responsavel";
            this.Responsavel.Name = "Responsavel";
            this.Responsavel.ReadOnly = true;
            // 
            // DataRetirada
            // 
            this.DataRetirada.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.DataRetirada.DataPropertyName = "DataRetirada";
            this.DataRetirada.FillWeight = 30F;
            this.DataRetirada.HeaderText = "Data da Retirada";
            this.DataRetirada.Name = "DataRetirada";
            this.DataRetirada.ReadOnly = true;
            // 
            // DataEntrega
            // 
            this.DataEntrega.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.DataEntrega.DataPropertyName = "DataEntrega";
            this.DataEntrega.FillWeight = 30F;
            this.DataEntrega.HeaderText = "Data da Entrega";
            this.DataEntrega.Name = "DataEntrega";
            this.DataEntrega.ReadOnly = true;
            // 
            // gbInformacao
            // 
            this.gbInformacao.Controls.Add(this.chkDefeito);
            this.gbInformacao.Controls.Add(this.label11);
            this.gbInformacao.Controls.Add(this.rtxtObservacao);
            this.gbInformacao.Controls.Add(this.label10);
            this.gbInformacao.Controls.Add(this.txtMotivo);
            this.gbInformacao.Dock = System.Windows.Forms.DockStyle.Left;
            this.gbInformacao.Location = new System.Drawing.Point(3, 116);
            this.gbInformacao.Name = "gbInformacao";
            this.gbInformacao.Size = new System.Drawing.Size(266, 254);
            this.gbInformacao.TabIndex = 19;
            this.gbInformacao.TabStop = false;
            this.gbInformacao.Text = "Informações Controle";
            // 
            // chkDefeito
            // 
            this.chkDefeito.AutoSize = true;
            this.chkDefeito.Location = new System.Drawing.Point(175, 67);
            this.chkDefeito.Name = "chkDefeito";
            this.chkDefeito.Size = new System.Drawing.Size(75, 17);
            this.chkDefeito.TabIndex = 18;
            this.chkDefeito.Text = "C/ Defeito";
            this.chkDefeito.UseVisualStyleBackColor = true;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(9, 68);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(70, 13);
            this.label11.TabIndex = 21;
            this.label11.Text = "Observações";
            // 
            // rtxtObservacao
            // 
            this.rtxtObservacao.Location = new System.Drawing.Point(9, 84);
            this.rtxtObservacao.Name = "rtxtObservacao";
            this.rtxtObservacao.Size = new System.Drawing.Size(241, 158);
            this.rtxtObservacao.TabIndex = 20;
            this.rtxtObservacao.Text = "";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(9, 26);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(39, 13);
            this.label10.TabIndex = 19;
            this.label10.Text = "Motivo";
            // 
            // txtMotivo
            // 
            this.txtMotivo.Location = new System.Drawing.Point(9, 42);
            this.txtMotivo.MaxLength = 100;
            this.txtMotivo.Name = "txtMotivo";
            this.txtMotivo.Size = new System.Drawing.Size(241, 20);
            this.txtMotivo.TabIndex = 0;
            // 
            // gpControleEquipamento
            // 
            this.gpControleEquipamento.Controls.Add(this.mcbUsuario);
            this.gpControleEquipamento.Controls.Add(this.mcbEquipamento);
            this.gpControleEquipamento.Controls.Add(this.txtDataEntrega);
            this.gpControleEquipamento.Controls.Add(this.label9);
            this.gpControleEquipamento.Controls.Add(this.txtDataRetirada);
            this.gpControleEquipamento.Controls.Add(this.label8);
            this.gpControleEquipamento.Controls.Add(this.label2);
            this.gpControleEquipamento.Controls.Add(this.label1);
            this.gpControleEquipamento.Controls.Add(this.mcbTipo);
            this.gpControleEquipamento.Controls.Add(this.label3);
            this.gpControleEquipamento.Controls.Add(this.mcbSerie);
            this.gpControleEquipamento.Controls.Add(this.label4);
            this.gpControleEquipamento.Dock = System.Windows.Forms.DockStyle.Top;
            this.gpControleEquipamento.Location = new System.Drawing.Point(3, 3);
            this.gpControleEquipamento.Name = "gpControleEquipamento";
            this.gpControleEquipamento.Size = new System.Drawing.Size(648, 113);
            this.gpControleEquipamento.TabIndex = 14;
            this.gpControleEquipamento.TabStop = false;
            this.gpControleEquipamento.Text = "Controle de Equipamentos";
            // 
            // mcbUsuario
            // 
            this.mcbUsuario.AutoComplete = true;
            this.mcbUsuario.AutoDropdown = true;
            this.mcbUsuario.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbUsuario.FormattingEnabled = true;
            this.mcbUsuario.Location = new System.Drawing.Point(9, 78);
            this.mcbUsuario.Name = "mcbUsuario";
            this.mcbUsuario.NumberColumnsDisplay = 0;
            this.mcbUsuario.Size = new System.Drawing.Size(199, 21);
            this.mcbUsuario.TabIndex = 21;
            // 
            // mcbEquipamento
            // 
            this.mcbEquipamento.AutoComplete = true;
            this.mcbEquipamento.AutoDropdown = true;
            this.mcbEquipamento.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbEquipamento.FormattingEnabled = true;
            this.mcbEquipamento.Location = new System.Drawing.Point(226, 32);
            this.mcbEquipamento.Name = "mcbEquipamento";
            this.mcbEquipamento.NumberColumnsDisplay = 0;
            this.mcbEquipamento.Size = new System.Drawing.Size(201, 21);
            this.mcbEquipamento.TabIndex = 20;
            this.mcbEquipamento.SelectionChangeCommitted += new System.EventHandler(this.mcbEquipamento_SelectionChangeCommitted);
            // 
            // txtDataEntrega
            // 
            this.txtDataEntrega.Location = new System.Drawing.Point(345, 78);
            this.txtDataEntrega.Mask = "00/00/0000";
            this.txtDataEntrega.Name = "txtDataEntrega";
            this.txtDataEntrega.Size = new System.Drawing.Size(66, 20);
            this.txtDataEntrega.TabIndex = 17;
            this.txtDataEntrega.ValidatingType = typeof(System.DateTime);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(342, 62);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(85, 13);
            this.label9.TabIndex = 16;
            this.label9.Text = "Data da Entrega";
            // 
            // txtDataRetirada
            // 
            this.txtDataRetirada.Location = new System.Drawing.Point(226, 78);
            this.txtDataRetirada.Mask = "00/00/0000";
            this.txtDataRetirada.Name = "txtDataRetirada";
            this.txtDataRetirada.Size = new System.Drawing.Size(69, 20);
            this.txtDataRetirada.TabIndex = 15;
            this.txtDataRetirada.ValidatingType = typeof(System.DateTime);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(223, 62);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(88, 13);
            this.label8.TabIndex = 14;
            this.label8.Text = "Data da Retirada";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(223, 16);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(42, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Modelo";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 16);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(28, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Tipo";
            // 
            // mcbTipo
            // 
            this.mcbTipo.AutoComplete = true;
            this.mcbTipo.AutoDropdown = true;
            this.mcbTipo.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbTipo.FormattingEnabled = true;
            this.mcbTipo.Location = new System.Drawing.Point(9, 32);
            this.mcbTipo.Name = "mcbTipo";
            this.mcbTipo.NumberColumnsDisplay = 0;
            this.mcbTipo.Size = new System.Drawing.Size(199, 21);
            this.mcbTipo.TabIndex = 1;
            this.mcbTipo.SelectionChangeCommitted += new System.EventHandler(this.mcbTipo_SelectionChangeCommitted);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(434, 16);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(115, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Nº Serie / Service Tag";
            // 
            // mcbSerie
            // 
            this.mcbSerie.AutoComplete = true;
            this.mcbSerie.AutoDropdown = true;
            this.mcbSerie.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbSerie.FormattingEnabled = true;
            this.mcbSerie.Location = new System.Drawing.Point(437, 32);
            this.mcbSerie.Name = "mcbSerie";
            this.mcbSerie.NumberColumnsDisplay = 0;
            this.mcbSerie.Size = new System.Drawing.Size(201, 21);
            this.mcbSerie.TabIndex = 5;
            this.mcbSerie.SelectionChangeCommitted += new System.EventHandler(this.mcbSerie_SelectionChangeCommitted);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(7, 62);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(69, 13);
            this.label4.TabIndex = 6;
            this.label4.Text = "Responsavel";
            // 
            // tbcLocalizarEquipamento
            // 
            this.tbcLocalizarEquipamento.Controls.Add(this.tbpControleEquipamento);
            this.tbcLocalizarEquipamento.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tbcLocalizarEquipamento.Location = new System.Drawing.Point(0, 25);
            this.tbcLocalizarEquipamento.Name = "tbcLocalizarEquipamento";
            this.tbcLocalizarEquipamento.SelectedIndex = 0;
            this.tbcLocalizarEquipamento.Size = new System.Drawing.Size(662, 399);
            this.tbcLocalizarEquipamento.TabIndex = 12;
            // 
            // FrmControleEquipamento
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(662, 424);
            this.Controls.Add(this.tbcLocalizarEquipamento);
            this.Controls.Add(this.bindingNavigator);
            this.Name = "FrmControleEquipamento";
            this.Tag = "617";
            this.Text = "Sistemas - Controle de Equipamentos";
            this.Load += new System.EventHandler(this.FrmControleEquipamento_Load);
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator)).EndInit();
            this.bindingNavigator.ResumeLayout(false);
            this.bindingNavigator.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bsHistorico)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsGeral)).EndInit();
            this.tbpControleEquipamento.ResumeLayout(false);
            this.tbpControleEquipamento.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gvMovimentacao)).EndInit();
            this.gbInformacao.ResumeLayout(false);
            this.gbInformacao.PerformLayout();
            this.gpControleEquipamento.ResumeLayout(false);
            this.gpControleEquipamento.PerformLayout();
            this.tbcLocalizarEquipamento.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.BindingNavigator bindingNavigator;
        private System.Windows.Forms.ToolStripLabel bindingNavigatorCountItem;
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
        private System.Windows.Forms.BindingSource bsHistorico;
        private System.Windows.Forms.BindingSource bsGeral;
        private System.Windows.Forms.ToolStripButton toolStripButton1;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator3;
        private System.Windows.Forms.TabPage tbpControleEquipamento;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.DataGridView gvMovimentacao;
        private System.Windows.Forms.GroupBox gbInformacao;
        private System.Windows.Forms.CheckBox chkDefeito;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.RichTextBox rtxtObservacao;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtMotivo;
        private System.Windows.Forms.GroupBox gpControleEquipamento;
        private Componentes.MultiColumnComboBox mcbUsuario;
        private Componentes.MultiColumnComboBox mcbEquipamento;
        private System.Windows.Forms.MaskedTextBox txtDataEntrega;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.MaskedTextBox txtDataRetirada;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private Componentes.MultiColumnComboBox mcbTipo;
        private System.Windows.Forms.Label label3;
        private Componentes.MultiColumnComboBox mcbSerie;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TabControl tbcLocalizarEquipamento;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Modelo;
        private System.Windows.Forms.DataGridViewTextBoxColumn Tipo;
        private System.Windows.Forms.DataGridViewTextBoxColumn Observacao;
        private System.Windows.Forms.DataGridViewTextBoxColumn Defeito;
        private System.Windows.Forms.DataGridViewTextBoxColumn Serie;
        private System.Windows.Forms.DataGridViewTextBoxColumn fk_serie;
        private System.Windows.Forms.DataGridViewTextBoxColumn fk_usuario;
        private System.Windows.Forms.DataGridViewTextBoxColumn Responsavel;
        private System.Windows.Forms.DataGridViewTextBoxColumn DataRetirada;
        private System.Windows.Forms.DataGridViewTextBoxColumn DataEntrega;
    }
}
