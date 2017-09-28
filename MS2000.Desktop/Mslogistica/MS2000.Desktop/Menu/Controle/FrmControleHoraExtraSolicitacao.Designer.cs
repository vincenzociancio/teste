namespace MS2000.Desktop.Menu.Controle
{
    partial class FrmControleHoraExtraSolicitacao
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmControleHoraExtraSolicitacao));
            this.bindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.panelControl = new System.Windows.Forms.Panel();
            this.txtNome = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.txtDuracao = new System.Windows.Forms.MaskedTextBox();
            this.ckbSuporteFinanceiro = new System.Windows.Forms.CheckBox();
            this.ckbSuporteSistemas = new System.Windows.Forms.CheckBox();
            this.ckbSuporteTI = new System.Windows.Forms.CheckBox();
            this.ckbLanche = new System.Windows.Forms.CheckBox();
            this.label6 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.txtIntervaloInicio = new System.Windows.Forms.MaskedTextBox();
            this.txtIntervaloTermino = new System.Windows.Forms.MaskedTextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtHoraTermino = new System.Windows.Forms.MaskedTextBox();
            this.txtHoraInicio = new System.Windows.Forms.MaskedTextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtMotivo = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.rdbParcialmente = new System.Windows.Forms.RadioButton();
            this.rdbPlenamente = new System.Windows.Forms.RadioButton();
            this.txtTarefa = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txtData = new System.Windows.Forms.MaskedTextBox();
            this.cbbSetor = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.dataGridView = new System.Windows.Forms.DataGridView();
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
            this.ID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Data_Solicitacao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.HoraInicio = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.HoraFinal = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Chefia = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Gerencia = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Diretor = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).BeginInit();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.panelControl.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator)).BeginInit();
            this.bindingNavigator.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl1.Location = new System.Drawing.Point(0, 25);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(601, 544);
            this.tabControl1.TabIndex = 33;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.panelControl);
            this.tabPage1.Controls.Add(this.dataGridView);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(593, 518);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Controle de Hora Extra";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // panelControl
            // 
            this.panelControl.Controls.Add(this.txtNome);
            this.panelControl.Controls.Add(this.label7);
            this.panelControl.Controls.Add(this.txtDuracao);
            this.panelControl.Controls.Add(this.ckbSuporteFinanceiro);
            this.panelControl.Controls.Add(this.ckbSuporteSistemas);
            this.panelControl.Controls.Add(this.ckbSuporteTI);
            this.panelControl.Controls.Add(this.ckbLanche);
            this.panelControl.Controls.Add(this.label6);
            this.panelControl.Controls.Add(this.groupBox2);
            this.panelControl.Controls.Add(this.txtHoraTermino);
            this.panelControl.Controls.Add(this.txtHoraInicio);
            this.panelControl.Controls.Add(this.label3);
            this.panelControl.Controls.Add(this.txtMotivo);
            this.panelControl.Controls.Add(this.label9);
            this.panelControl.Controls.Add(this.groupBox3);
            this.panelControl.Controls.Add(this.txtTarefa);
            this.panelControl.Controls.Add(this.label8);
            this.panelControl.Controls.Add(this.label5);
            this.panelControl.Controls.Add(this.txtData);
            this.panelControl.Controls.Add(this.cbbSetor);
            this.panelControl.Controls.Add(this.label2);
            this.panelControl.Controls.Add(this.label1);
            this.panelControl.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl.Location = new System.Drawing.Point(3, 3);
            this.panelControl.Name = "panelControl";
            this.panelControl.Size = new System.Drawing.Size(587, 358);
            this.panelControl.TabIndex = 6;
            // 
            // txtNome
            // 
            this.txtNome.Location = new System.Drawing.Point(5, 28);
            this.txtNome.Name = "txtNome";
            this.txtNome.Size = new System.Drawing.Size(236, 20);
            this.txtNome.TabIndex = 88;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(312, 68);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(48, 13);
            this.label7.TabIndex = 87;
            this.label7.Text = "Duração";
            // 
            // txtDuracao
            // 
            this.txtDuracao.AccessibleName = "";
            this.txtDuracao.Location = new System.Drawing.Point(315, 84);
            this.txtDuracao.Mask = "00:00";
            this.txtDuracao.Name = "txtDuracao";
            this.txtDuracao.Size = new System.Drawing.Size(68, 20);
            this.txtDuracao.TabIndex = 86;
            this.txtDuracao.ValidatingType = typeof(System.DateTime);
            // 
            // ckbSuporteFinanceiro
            // 
            this.ckbSuporteFinanceiro.AutoSize = true;
            this.ckbSuporteFinanceiro.Location = new System.Drawing.Point(463, 69);
            this.ckbSuporteFinanceiro.Name = "ckbSuporteFinanceiro";
            this.ckbSuporteFinanceiro.Size = new System.Drawing.Size(115, 17);
            this.ckbSuporteFinanceiro.TabIndex = 85;
            this.ckbSuporteFinanceiro.Text = "Suporte Financeiro";
            this.ckbSuporteFinanceiro.UseVisualStyleBackColor = true;
            // 
            // ckbSuporteSistemas
            // 
            this.ckbSuporteSistemas.AutoSize = true;
            this.ckbSuporteSistemas.Location = new System.Drawing.Point(463, 91);
            this.ckbSuporteSistemas.Name = "ckbSuporteSistemas";
            this.ckbSuporteSistemas.Size = new System.Drawing.Size(108, 17);
            this.ckbSuporteSistemas.TabIndex = 84;
            this.ckbSuporteSistemas.Text = "Suporte Sistemas";
            this.ckbSuporteSistemas.UseVisualStyleBackColor = true;
            // 
            // ckbSuporteTI
            // 
            this.ckbSuporteTI.AutoSize = true;
            this.ckbSuporteTI.Location = new System.Drawing.Point(389, 91);
            this.ckbSuporteTI.Name = "ckbSuporteTI";
            this.ckbSuporteTI.Size = new System.Drawing.Size(76, 17);
            this.ckbSuporteTI.TabIndex = 83;
            this.ckbSuporteTI.Text = "Suporte TI";
            this.ckbSuporteTI.UseVisualStyleBackColor = true;
            // 
            // ckbLanche
            // 
            this.ckbLanche.AutoSize = true;
            this.ckbLanche.Location = new System.Drawing.Point(389, 69);
            this.ckbLanche.Name = "ckbLanche";
            this.ckbLanche.Size = new System.Drawing.Size(62, 17);
            this.ckbLanche.TabIndex = 82;
            this.ckbLanche.Text = "Lanche";
            this.ckbLanche.UseVisualStyleBackColor = true;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(235, 69);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(71, 13);
            this.label6.TabIndex = 81;
            this.label6.Text = "Hora Termino";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.txtIntervaloInicio);
            this.groupBox2.Controls.Add(this.txtIntervaloTermino);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Location = new System.Drawing.Point(74, 67);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(155, 48);
            this.groupBox2.TabIndex = 80;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Intervalo";
            // 
            // txtIntervaloInicio
            // 
            this.txtIntervaloInicio.AccessibleName = "";
            this.txtIntervaloInicio.Location = new System.Drawing.Point(6, 17);
            this.txtIntervaloInicio.Mask = "00:00";
            this.txtIntervaloInicio.Name = "txtIntervaloInicio";
            this.txtIntervaloInicio.Size = new System.Drawing.Size(57, 20);
            this.txtIntervaloInicio.TabIndex = 56;
            this.txtIntervaloInicio.ValidatingType = typeof(System.DateTime);
            // 
            // txtIntervaloTermino
            // 
            this.txtIntervaloTermino.AccessibleName = "";
            this.txtIntervaloTermino.Location = new System.Drawing.Point(86, 17);
            this.txtIntervaloTermino.Mask = "00:00";
            this.txtIntervaloTermino.Name = "txtIntervaloTermino";
            this.txtIntervaloTermino.Size = new System.Drawing.Size(57, 20);
            this.txtIntervaloTermino.TabIndex = 57;
            this.txtIntervaloTermino.ValidatingType = typeof(System.DateTime);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(67, 20);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(13, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "à";
            // 
            // txtHoraTermino
            // 
            this.txtHoraTermino.AccessibleName = "";
            this.txtHoraTermino.Location = new System.Drawing.Point(235, 84);
            this.txtHoraTermino.Mask = "00:00";
            this.txtHoraTermino.Name = "txtHoraTermino";
            this.txtHoraTermino.Size = new System.Drawing.Size(68, 20);
            this.txtHoraTermino.TabIndex = 79;
            this.txtHoraTermino.ValidatingType = typeof(System.DateTime);
            this.txtHoraTermino.TextChanged += new System.EventHandler(this.txtHoraTermino_TextChanged);
            // 
            // txtHoraInicio
            // 
            this.txtHoraInicio.AccessibleName = "";
            this.txtHoraInicio.Location = new System.Drawing.Point(11, 84);
            this.txtHoraInicio.Mask = "00:00";
            this.txtHoraInicio.Name = "txtHoraInicio";
            this.txtHoraInicio.Size = new System.Drawing.Size(57, 20);
            this.txtHoraInicio.TabIndex = 78;
            this.txtHoraInicio.ValidatingType = typeof(System.DateTime);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(8, 68);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(58, 13);
            this.label3.TabIndex = 77;
            this.label3.Text = "Hora Inicio";
            // 
            // txtMotivo
            // 
            this.txtMotivo.Location = new System.Drawing.Point(5, 291);
            this.txtMotivo.Multiline = true;
            this.txtMotivo.Name = "txtMotivo";
            this.txtMotivo.Size = new System.Drawing.Size(576, 62);
            this.txtMotivo.TabIndex = 60;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(3, 275);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(39, 13);
            this.label9.TabIndex = 59;
            this.label9.Text = "Motivo";
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.rdbParcialmente);
            this.groupBox3.Controls.Add(this.rdbPlenamente);
            this.groupBox3.Location = new System.Drawing.Point(5, 209);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(200, 61);
            this.groupBox3.TabIndex = 58;
            this.groupBox3.TabStop = false;
            // 
            // rdbParcialmente
            // 
            this.rdbParcialmente.AutoSize = true;
            this.rdbParcialmente.Location = new System.Drawing.Point(6, 38);
            this.rdbParcialmente.Name = "rdbParcialmente";
            this.rdbParcialmente.Size = new System.Drawing.Size(183, 17);
            this.rdbParcialmente.TabIndex = 1;
            this.rdbParcialmente.TabStop = true;
            this.rdbParcialmente.Text = "Tarefas parcialmente concluídas.";
            this.rdbParcialmente.UseVisualStyleBackColor = true;
            // 
            // rdbPlenamente
            // 
            this.rdbPlenamente.AutoSize = true;
            this.rdbPlenamente.Location = new System.Drawing.Point(6, 18);
            this.rdbPlenamente.Name = "rdbPlenamente";
            this.rdbPlenamente.Size = new System.Drawing.Size(178, 17);
            this.rdbPlenamente.TabIndex = 0;
            this.rdbPlenamente.TabStop = true;
            this.rdbPlenamente.Text = "Tarefas plenamente concluídas.";
            this.rdbPlenamente.UseVisualStyleBackColor = true;
            // 
            // txtTarefa
            // 
            this.txtTarefa.Location = new System.Drawing.Point(5, 143);
            this.txtTarefa.Multiline = true;
            this.txtTarefa.Name = "txtTarefa";
            this.txtTarefa.Size = new System.Drawing.Size(576, 62);
            this.txtTarefa.TabIndex = 57;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(2, 127);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(96, 13);
            this.label8.TabIndex = 56;
            this.label8.Text = "Tarefas a executar";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(477, 12);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(30, 13);
            this.label5.TabIndex = 54;
            this.label5.Text = "Data";
            // 
            // txtData
            // 
            this.txtData.AccessibleName = "";
            this.txtData.Location = new System.Drawing.Point(480, 28);
            this.txtData.Mask = "00/00/0000";
            this.txtData.Name = "txtData";
            this.txtData.Size = new System.Drawing.Size(101, 20);
            this.txtData.TabIndex = 53;
            this.txtData.ValidatingType = typeof(System.DateTime);
            // 
            // cbbSetor
            // 
            this.cbbSetor.AutoComplete = true;
            this.cbbSetor.AutoDropdown = true;
            this.cbbSetor.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.cbbSetor.FormattingEnabled = true;
            this.cbbSetor.Location = new System.Drawing.Point(247, 28);
            this.cbbSetor.Name = "cbbSetor";
            this.cbbSetor.NumberColumnsDisplay = 0;
            this.cbbSetor.Size = new System.Drawing.Size(224, 21);
            this.cbbSetor.TabIndex = 5;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(244, 12);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(114, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Departamento / Célula";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(2, 12);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(105, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Nome do funcionário";
            // 
            // dataGridView
            // 
            this.dataGridView.AllowUserToAddRows = false;
            this.dataGridView.AllowUserToDeleteRows = false;
            this.dataGridView.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dataGridView.BackgroundColor = System.Drawing.SystemColors.ControlLightLight;
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
            this.ID,
            this.Data_Solicitacao,
            this.HoraInicio,
            this.HoraFinal,
            this.Chefia,
            this.Gerencia,
            this.Diretor});
            this.dataGridView.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dataGridView.Location = new System.Drawing.Point(3, 367);
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
            this.dataGridView.Size = new System.Drawing.Size(587, 148);
            this.dataGridView.TabIndex = 1;
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
            this.btnFechar});
            this.bindingNavigator.Location = new System.Drawing.Point(0, 0);
            this.bindingNavigator.MoveFirstItem = this.bindingNavigatorMoveFirstItem;
            this.bindingNavigator.MoveLastItem = this.bindingNavigatorMoveLastItem;
            this.bindingNavigator.MoveNextItem = this.bindingNavigatorMoveNextItem;
            this.bindingNavigator.MovePreviousItem = this.bindingNavigatorMovePreviousItem;
            this.bindingNavigator.Name = "bindingNavigator";
            this.bindingNavigator.PositionItem = this.bindingNavigatorPositionItem;
            this.bindingNavigator.Size = new System.Drawing.Size(601, 25);
            this.bindingNavigator.TabIndex = 34;
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
            // ID
            // 
            this.ID.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.ID.DataPropertyName = "ID";
            this.ID.HeaderText = "ID";
            this.ID.Name = "ID";
            this.ID.ReadOnly = true;
            this.ID.Visible = false;
            this.ID.Width = 89;
            // 
            // Data_Solicitacao
            // 
            this.Data_Solicitacao.DataPropertyName = "Data_Solicitacao";
            this.Data_Solicitacao.HeaderText = "Data Solicitação";
            this.Data_Solicitacao.Name = "Data_Solicitacao";
            this.Data_Solicitacao.ReadOnly = true;
            this.Data_Solicitacao.Width = 99;
            // 
            // HoraInicio
            // 
            this.HoraInicio.DataPropertyName = "Hora_Inicio";
            this.HoraInicio.HeaderText = "Hora Inicio";
            this.HoraInicio.Name = "HoraInicio";
            this.HoraInicio.ReadOnly = true;
            this.HoraInicio.Width = 75;
            // 
            // HoraFinal
            // 
            this.HoraFinal.DataPropertyName = "Hora_Final";
            this.HoraFinal.HeaderText = "Hora Termino";
            this.HoraFinal.Name = "HoraFinal";
            this.HoraFinal.ReadOnly = true;
            this.HoraFinal.Width = 86;
            // 
            // Chefia
            // 
            this.Chefia.DataPropertyName = "Chefia";
            this.Chefia.HeaderText = "Chefia";
            this.Chefia.Name = "Chefia";
            this.Chefia.ReadOnly = true;
            this.Chefia.Width = 60;
            // 
            // Gerencia
            // 
            this.Gerencia.DataPropertyName = "Gerencia";
            this.Gerencia.HeaderText = "Gerencia";
            this.Gerencia.Name = "Gerencia";
            this.Gerencia.ReadOnly = true;
            this.Gerencia.Width = 73;
            // 
            // Diretor
            // 
            this.Diretor.DataPropertyName = "Diretor";
            this.Diretor.HeaderText = "Diretor";
            this.Diretor.Name = "Diretor";
            this.Diretor.ReadOnly = true;
            this.Diretor.Width = 61;
            // 
            // FrmControleHoraExtraSolicitacao
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(601, 569);
            this.Controls.Add(this.tabControl1);
            this.Controls.Add(this.bindingNavigator);
            this.Name = "FrmControleHoraExtraSolicitacao";
            this.Tag = "43101";
            this.Text = "Controle de Hora Extra - Solicitação";
            this.Load += new System.EventHandler(this.FrmControleHoraExtra_Load);
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).EndInit();
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.panelControl.ResumeLayout(false);
            this.panelControl.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator)).EndInit();
            this.bindingNavigator.ResumeLayout(false);
            this.bindingNavigator.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.BindingSource bindingSource;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.Panel panelControl;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dataGridView;
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
        private Componentes.MultiColumnComboBox cbbSetor;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.MaskedTextBox txtData;
        private System.Windows.Forms.TextBox txtMotivo;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.RadioButton rdbParcialmente;
        private System.Windows.Forms.RadioButton rdbPlenamente;
        private System.Windows.Forms.TextBox txtTarefa;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.MaskedTextBox txtDuracao;
        private System.Windows.Forms.CheckBox ckbSuporteFinanceiro;
        private System.Windows.Forms.CheckBox ckbSuporteSistemas;
        private System.Windows.Forms.CheckBox ckbSuporteTI;
        private System.Windows.Forms.CheckBox ckbLanche;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.MaskedTextBox txtIntervaloInicio;
        private System.Windows.Forms.MaskedTextBox txtIntervaloTermino;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.MaskedTextBox txtHoraTermino;
        private System.Windows.Forms.MaskedTextBox txtHoraInicio;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtNome;
        private System.Windows.Forms.DataGridViewTextBoxColumn ID;
        private System.Windows.Forms.DataGridViewTextBoxColumn Data_Solicitacao;
        private System.Windows.Forms.DataGridViewTextBoxColumn HoraInicio;
        private System.Windows.Forms.DataGridViewTextBoxColumn HoraFinal;
        private System.Windows.Forms.DataGridViewTextBoxColumn Chefia;
        private System.Windows.Forms.DataGridViewTextBoxColumn Gerencia;
        private System.Windows.Forms.DataGridViewTextBoxColumn Diretor;
    }
}
