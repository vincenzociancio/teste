namespace MS2000.Desktop.Menu.Processos
{
    partial class FrmRATSolicitacao
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmRATSolicitacao));
            this.tabControl = new System.Windows.Forms.TabControl();
            this.tabFormulario = new System.Windows.Forms.TabPage();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtLocalizaProcesso = new System.Windows.Forms.MaskedTextBox();
            this.panelControl = new System.Windows.Forms.Panel();
            this.txtDescricao = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.ccbNome = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.rdbConcessao = new System.Windows.Forms.RadioButton();
            this.rdbProrrogacao = new System.Windows.Forms.RadioButton();
            this.cbbFundamentacao = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.txtRAT = new System.Windows.Forms.MaskedTextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.txtOutros = new System.Windows.Forms.TextBox();
            this.rdbProcuracao = new System.Windows.Forms.RadioButton();
            this.rdbOutros = new System.Windows.Forms.RadioButton();
            this.rdbContratoPrestacao = new System.Windows.Forms.RadioButton();
            this.rdbContratoArrendamento = new System.Windows.Forms.RadioButton();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.rdbSim = new System.Windows.Forms.RadioButton();
            this.rdbNao = new System.Windows.Forms.RadioButton();
            this.txtProcesso = new System.Windows.Forms.MaskedTextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtCodigoFundamentacao = new System.Windows.Forms.TextBox();
            this.txtInformacoesComplementares = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.dataGridView = new System.Windows.Forms.DataGridView();
            this.PDF = new System.Windows.Forms.DataGridViewImageColumn();
            this.Fk_Processo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Data_Criacao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Numero_Rat = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Inst_Requerimento = new System.Windows.Forms.DataGridViewTextBoxColumn();
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
            this.bindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.tabControl.SuspendLayout();
            this.tabFormulario.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.panelControl.SuspendLayout();
            this.groupBox5.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator)).BeginInit();
            this.bindingNavigator.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // tabControl
            // 
            this.tabControl.Controls.Add(this.tabFormulario);
            this.tabControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl.Location = new System.Drawing.Point(0, 25);
            this.tabControl.Name = "tabControl";
            this.tabControl.SelectedIndex = 0;
            this.tabControl.Size = new System.Drawing.Size(646, 632);
            this.tabControl.TabIndex = 9;
            // 
            // tabFormulario
            // 
            this.tabFormulario.Controls.Add(this.groupBox1);
            this.tabFormulario.Controls.Add(this.panelControl);
            this.tabFormulario.Controls.Add(this.dataGridView);
            this.tabFormulario.Location = new System.Drawing.Point(4, 22);
            this.tabFormulario.Name = "tabFormulario";
            this.tabFormulario.Padding = new System.Windows.Forms.Padding(3);
            this.tabFormulario.Size = new System.Drawing.Size(638, 606);
            this.tabFormulario.TabIndex = 0;
            this.tabFormulario.Text = "Requerimento de Solicitação do Regime de Admissão Temporária";
            this.tabFormulario.UseVisualStyleBackColor = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtLocalizaProcesso);
            this.groupBox1.Location = new System.Drawing.Point(3, 413);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(627, 50);
            this.groupBox1.TabIndex = 8;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Digite o código para localizar";
            // 
            // txtLocalizaProcesso
            // 
            this.txtLocalizaProcesso.AccessibleName = "CEP";
            this.txtLocalizaProcesso.Location = new System.Drawing.Point(11, 19);
            this.txtLocalizaProcesso.Mask = "99999/99";
            this.txtLocalizaProcesso.Name = "txtLocalizaProcesso";
            this.txtLocalizaProcesso.Size = new System.Drawing.Size(101, 20);
            this.txtLocalizaProcesso.TabIndex = 13;
            this.txtLocalizaProcesso.TextChanged += new System.EventHandler(this.txtLocalizaProcesso_TextChanged);
            // 
            // panelControl
            // 
            this.panelControl.Controls.Add(this.txtDescricao);
            this.panelControl.Controls.Add(this.label6);
            this.panelControl.Controls.Add(this.label5);
            this.panelControl.Controls.Add(this.ccbNome);
            this.panelControl.Controls.Add(this.groupBox5);
            this.panelControl.Controls.Add(this.cbbFundamentacao);
            this.panelControl.Controls.Add(this.txtRAT);
            this.panelControl.Controls.Add(this.label4);
            this.panelControl.Controls.Add(this.groupBox3);
            this.panelControl.Controls.Add(this.groupBox2);
            this.panelControl.Controls.Add(this.txtProcesso);
            this.panelControl.Controls.Add(this.label3);
            this.panelControl.Controls.Add(this.txtCodigoFundamentacao);
            this.panelControl.Controls.Add(this.txtInformacoesComplementares);
            this.panelControl.Controls.Add(this.label2);
            this.panelControl.Controls.Add(this.label1);
            this.panelControl.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl.Location = new System.Drawing.Point(3, 3);
            this.panelControl.Name = "panelControl";
            this.panelControl.Size = new System.Drawing.Size(632, 404);
            this.panelControl.TabIndex = 6;
            // 
            // txtDescricao
            // 
            this.txtDescricao.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtDescricao.Location = new System.Drawing.Point(3, 187);
            this.txtDescricao.Multiline = true;
            this.txtDescricao.Name = "txtDescricao";
            this.txtDescricao.Size = new System.Drawing.Size(627, 71);
            this.txtDescricao.TabIndex = 38;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(1, 261);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(146, 13);
            this.label6.TabIndex = 37;
            this.label6.Text = "Informações Complementares";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(1, 361);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(62, 13);
            this.label5.TabIndex = 36;
            this.label5.Text = "Interessado";
            // 
            // ccbNome
            // 
            this.ccbNome.AutoComplete = true;
            this.ccbNome.AutoDropdown = true;
            this.ccbNome.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.ccbNome.FormattingEnabled = true;
            this.ccbNome.Location = new System.Drawing.Point(3, 377);
            this.ccbNome.Name = "ccbNome";
            this.ccbNome.NumberColumnsDisplay = 0;
            this.ccbNome.Size = new System.Drawing.Size(332, 21);
            this.ccbNome.TabIndex = 35;
            // 
            // groupBox5
            // 
            this.groupBox5.Controls.Add(this.rdbConcessao);
            this.groupBox5.Controls.Add(this.rdbProrrogacao);
            this.groupBox5.Location = new System.Drawing.Point(3, 64);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Size = new System.Drawing.Size(225, 59);
            this.groupBox5.TabIndex = 15;
            this.groupBox5.TabStop = false;
            this.groupBox5.Text = "Tipo de Requerimento";
            // 
            // rdbConcessao
            // 
            this.rdbConcessao.AutoSize = true;
            this.rdbConcessao.Location = new System.Drawing.Point(14, 19);
            this.rdbConcessao.Name = "rdbConcessao";
            this.rdbConcessao.Size = new System.Drawing.Size(78, 17);
            this.rdbConcessao.TabIndex = 2;
            this.rdbConcessao.Text = "Concessão";
            this.rdbConcessao.UseVisualStyleBackColor = true;
            // 
            // rdbProrrogacao
            // 
            this.rdbProrrogacao.AutoSize = true;
            this.rdbProrrogacao.Location = new System.Drawing.Point(14, 38);
            this.rdbProrrogacao.Name = "rdbProrrogacao";
            this.rdbProrrogacao.Size = new System.Drawing.Size(83, 17);
            this.rdbProrrogacao.TabIndex = 1;
            this.rdbProrrogacao.Text = "Prorrogação";
            this.rdbProrrogacao.UseVisualStyleBackColor = true;
            // 
            // cbbFundamentacao
            // 
            this.cbbFundamentacao.AutoComplete = true;
            this.cbbFundamentacao.AutoDropdown = true;
            this.cbbFundamentacao.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.cbbFundamentacao.FormattingEnabled = true;
            this.cbbFundamentacao.Location = new System.Drawing.Point(149, 31);
            this.cbbFundamentacao.Name = "cbbFundamentacao";
            this.cbbFundamentacao.NumberColumnsDisplay = 0;
            this.cbbFundamentacao.Size = new System.Drawing.Size(331, 21);
            this.cbbFundamentacao.TabIndex = 22;
            this.cbbFundamentacao.SelectedIndexChanged += new System.EventHandler(this.cbbFundamentacao_SelectedIndexChanged);
            // 
            // txtRAT
            // 
            this.txtRAT.AccessibleName = "";
            this.txtRAT.Location = new System.Drawing.Point(486, 31);
            this.txtRAT.Mask = "99999,999999/9999-99";
            this.txtRAT.Name = "txtRAT";
            this.txtRAT.Size = new System.Drawing.Size(143, 20);
            this.txtRAT.TabIndex = 17;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(483, 15);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(69, 13);
            this.label4.TabIndex = 16;
            this.label4.Text = "Número RAT";
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.txtOutros);
            this.groupBox3.Controls.Add(this.rdbProcuracao);
            this.groupBox3.Controls.Add(this.rdbOutros);
            this.groupBox3.Controls.Add(this.rdbContratoPrestacao);
            this.groupBox3.Controls.Add(this.rdbContratoArrendamento);
            this.groupBox3.Location = new System.Drawing.Point(233, 64);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(396, 104);
            this.groupBox3.TabIndex = 15;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Instrução do Requerimento";
            // 
            // txtOutros
            // 
            this.txtOutros.BackColor = System.Drawing.Color.White;
            this.txtOutros.Location = new System.Drawing.Point(130, 79);
            this.txtOutros.Name = "txtOutros";
            this.txtOutros.Size = new System.Drawing.Size(260, 20);
            this.txtOutros.TabIndex = 8;
            // 
            // rdbProcuracao
            // 
            this.rdbProcuracao.AutoSize = true;
            this.rdbProcuracao.Location = new System.Drawing.Point(11, 62);
            this.rdbProcuracao.Name = "rdbProcuracao";
            this.rdbProcuracao.Size = new System.Drawing.Size(188, 17);
            this.rdbProcuracao.TabIndex = 6;
            this.rdbProcuracao.Text = "Procuração do representante legal";
            this.rdbProcuracao.UseVisualStyleBackColor = true;
            // 
            // rdbOutros
            // 
            this.rdbOutros.AutoSize = true;
            this.rdbOutros.Location = new System.Drawing.Point(11, 81);
            this.rdbOutros.Name = "rdbOutros";
            this.rdbOutros.Size = new System.Drawing.Size(119, 17);
            this.rdbOutros.TabIndex = 5;
            this.rdbOutros.Text = "Outros (especificar):";
            this.rdbOutros.UseVisualStyleBackColor = true;
            // 
            // rdbContratoPrestacao
            // 
            this.rdbContratoPrestacao.AutoSize = true;
            this.rdbContratoPrestacao.Location = new System.Drawing.Point(11, 39);
            this.rdbContratoPrestacao.Name = "rdbContratoPrestacao";
            this.rdbContratoPrestacao.Size = new System.Drawing.Size(187, 17);
            this.rdbContratoPrestacao.TabIndex = 4;
            this.rdbContratoPrestacao.Text = "Contrato de prestação de serviços";
            this.rdbContratoPrestacao.UseVisualStyleBackColor = true;
            // 
            // rdbContratoArrendamento
            // 
            this.rdbContratoArrendamento.AutoSize = true;
            this.rdbContratoArrendamento.Location = new System.Drawing.Point(11, 19);
            this.rdbContratoArrendamento.Name = "rdbContratoArrendamento";
            this.rdbContratoArrendamento.Size = new System.Drawing.Size(317, 17);
            this.rdbContratoArrendamento.TabIndex = 3;
            this.rdbContratoArrendamento.Text = "Contrato de arrendamento operacional, aluguel ou empréstimo";
            this.rdbContratoArrendamento.UseVisualStyleBackColor = true;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.rdbSim);
            this.groupBox2.Controls.Add(this.rdbNao);
            this.groupBox2.Location = new System.Drawing.Point(3, 125);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(225, 43);
            this.groupBox2.TabIndex = 14;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Opção pelo domicílio tributário eletrônico";
            // 
            // rdbSim
            // 
            this.rdbSim.AutoSize = true;
            this.rdbSim.Location = new System.Drawing.Point(14, 19);
            this.rdbSim.Name = "rdbSim";
            this.rdbSim.Size = new System.Drawing.Size(42, 17);
            this.rdbSim.TabIndex = 2;
            this.rdbSim.Text = "Sim";
            this.rdbSim.UseVisualStyleBackColor = true;
            // 
            // rdbNao
            // 
            this.rdbNao.AutoSize = true;
            this.rdbNao.Location = new System.Drawing.Point(158, 20);
            this.rdbNao.Name = "rdbNao";
            this.rdbNao.Size = new System.Drawing.Size(45, 17);
            this.rdbNao.TabIndex = 1;
            this.rdbNao.Text = "Não";
            this.rdbNao.UseVisualStyleBackColor = true;
            // 
            // txtProcesso
            // 
            this.txtProcesso.AccessibleName = "";
            this.txtProcesso.Location = new System.Drawing.Point(0, 31);
            this.txtProcesso.Mask = "00000/00";
            this.txtProcesso.Name = "txtProcesso";
            this.txtProcesso.Size = new System.Drawing.Size(101, 20);
            this.txtProcesso.TabIndex = 12;
            this.txtProcesso.TextChanged += new System.EventHandler(this.txtProcesso_TextChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(108, 15);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(135, 13);
            this.label3.TabIndex = 6;
            this.label3.Text = "Fundamentação do Pedido";
            // 
            // txtCodigoFundamentacao
            // 
            this.txtCodigoFundamentacao.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.txtCodigoFundamentacao.Location = new System.Drawing.Point(111, 31);
            this.txtCodigoFundamentacao.Name = "txtCodigoFundamentacao";
            this.txtCodigoFundamentacao.Size = new System.Drawing.Size(38, 20);
            this.txtCodigoFundamentacao.TabIndex = 7;
            this.txtCodigoFundamentacao.TextChanged += new System.EventHandler(this.txtCodigoFundamentacao_TextChanged);
            // 
            // txtInformacoesComplementares
            // 
            this.txtInformacoesComplementares.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtInformacoesComplementares.Location = new System.Drawing.Point(3, 277);
            this.txtInformacoesComplementares.Multiline = true;
            this.txtInformacoesComplementares.Name = "txtInformacoesComplementares";
            this.txtInformacoesComplementares.Size = new System.Drawing.Size(627, 81);
            this.txtInformacoesComplementares.TabIndex = 5;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(0, 171);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(272, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Descrição da finalidade para a  qual o bem foi importado";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(-3, 15);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(78, 13);
            this.label1.TabIndex = 2;
            this.label1.Text = "Número do MS";
            // 
            // dataGridView
            // 
            this.dataGridView.AllowUserToAddRows = false;
            this.dataGridView.AllowUserToDeleteRows = false;
            this.dataGridView.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dataGridView.BackgroundColor = System.Drawing.SystemColors.ControlLightLight;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.dataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.PDF,
            this.Fk_Processo,
            this.ID,
            this.Data_Criacao,
            this.Numero_Rat,
            this.Inst_Requerimento});
            this.dataGridView.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dataGridView.Location = new System.Drawing.Point(3, 467);
            this.dataGridView.Name = "dataGridView";
            this.dataGridView.ReadOnly = true;
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle4.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView.RowHeadersDefaultCellStyle = dataGridViewCellStyle4;
            this.dataGridView.RowHeadersVisible = false;
            this.dataGridView.Size = new System.Drawing.Size(632, 136);
            this.dataGridView.TabIndex = 1;
            this.dataGridView.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView_CellDoubleClick);
            this.dataGridView.CellMouseEnter += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView_CellMouseEnter);
            this.dataGridView.SelectionChanged += new System.EventHandler(this.dataGridView_SelectionChanged);
            // 
            // PDF
            // 
            this.PDF.HeaderText = "Imprimir";
            this.PDF.Image = global::MS2000.Desktop.Properties.Resources.PDF;
            this.PDF.Name = "PDF";
            this.PDF.ReadOnly = true;
            this.PDF.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.PDF.Width = 46;
            // 
            // Fk_Processo
            // 
            this.Fk_Processo.DataPropertyName = "Fk_Processo";
            this.Fk_Processo.HeaderText = "N° Processo";
            this.Fk_Processo.Name = "Fk_Processo";
            this.Fk_Processo.ReadOnly = true;
            this.Fk_Processo.Width = 82;
            // 
            // ID
            // 
            this.ID.DataPropertyName = "ID";
            this.ID.HeaderText = "ID";
            this.ID.Name = "ID";
            this.ID.ReadOnly = true;
            this.ID.Visible = false;
            this.ID.Width = 41;
            // 
            // Data_Criacao
            // 
            this.Data_Criacao.DataPropertyName = "Data_Criacao";
            this.Data_Criacao.HeaderText = "Data de Inclusão";
            this.Data_Criacao.Name = "Data_Criacao";
            this.Data_Criacao.ReadOnly = true;
            this.Data_Criacao.Width = 102;
            // 
            // Numero_Rat
            // 
            this.Numero_Rat.DataPropertyName = "Numero_Rat";
            this.Numero_Rat.HeaderText = "Número RAT";
            this.Numero_Rat.Name = "Numero_Rat";
            this.Numero_Rat.ReadOnly = true;
            this.Numero_Rat.Width = 85;
            // 
            // Inst_Requerimento
            // 
            this.Inst_Requerimento.DataPropertyName = "Inst_Requerimento";
            this.Inst_Requerimento.HeaderText = "Instrução";
            this.Inst_Requerimento.Name = "Inst_Requerimento";
            this.Inst_Requerimento.ReadOnly = true;
            this.Inst_Requerimento.Visible = false;
            this.Inst_Requerimento.Width = 74;
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
            this.bindingNavigator.Size = new System.Drawing.Size(646, 25);
            this.bindingNavigator.TabIndex = 8;
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
            this.btnExcluir.Visible = false;
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
            this.btnFechar.Text = "Fechar";
            this.btnFechar.Click += new System.EventHandler(this.btnFechar_Click);
            // 
            // FrmRATSolicitacao
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(646, 657);
            this.Controls.Add(this.tabControl);
            this.Controls.Add(this.bindingNavigator);
            this.Name = "FrmRATSolicitacao";
            this.Tag = "20701";
            this.Text = "RAT - Solicitação";
            this.Load += new System.EventHandler(this.FrmRATSolicitacao_Load);
            this.tabControl.ResumeLayout(false);
            this.tabFormulario.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.panelControl.ResumeLayout(false);
            this.panelControl.PerformLayout();
            this.groupBox5.ResumeLayout(false);
            this.groupBox5.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator)).EndInit();
            this.bindingNavigator.ResumeLayout(false);
            this.bindingNavigator.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.BindingSource bindingSource;
        private System.Windows.Forms.TabControl tabControl;
        private System.Windows.Forms.TabPage tabFormulario;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Panel panelControl;
        private System.Windows.Forms.TextBox txtInformacoesComplementares;
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
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtCodigoFundamentacao;
        private System.Windows.Forms.MaskedTextBox txtProcesso;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.RadioButton rdbSim;
        private System.Windows.Forms.RadioButton rdbNao;
        private System.Windows.Forms.MaskedTextBox txtLocalizaProcesso;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.MaskedTextBox txtRAT;
        private System.Windows.Forms.Label label4;
        private Componentes.MultiColumnComboBox cbbFundamentacao;
        private System.Windows.Forms.GroupBox groupBox5;
        private System.Windows.Forms.RadioButton rdbConcessao;
        private System.Windows.Forms.RadioButton rdbProrrogacao;
        private System.Windows.Forms.RadioButton rdbProcuracao;
        private System.Windows.Forms.RadioButton rdbOutros;
        private System.Windows.Forms.RadioButton rdbContratoPrestacao;
        private System.Windows.Forms.RadioButton rdbContratoArrendamento;
        private System.Windows.Forms.TextBox txtDescricao;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private Componentes.MultiColumnComboBox ccbNome;
        private System.Windows.Forms.TextBox txtOutros;
        private System.Windows.Forms.DataGridViewImageColumn PDF;
        private System.Windows.Forms.DataGridViewTextBoxColumn Fk_Processo;
        private System.Windows.Forms.DataGridViewTextBoxColumn ID;
        private System.Windows.Forms.DataGridViewTextBoxColumn Data_Criacao;
        private System.Windows.Forms.DataGridViewTextBoxColumn Numero_Rat;
        private System.Windows.Forms.DataGridViewTextBoxColumn Inst_Requerimento;
    }
}
