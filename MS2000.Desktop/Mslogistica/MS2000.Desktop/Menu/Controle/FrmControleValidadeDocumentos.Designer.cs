namespace MS2000.Desktop.Menu.Controle
{
    partial class FrmControleValidadeDocumentos
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmControleValidadeDocumentos));
            this.bsControleDocumento = new System.Windows.Forms.BindingSource(this.components);
            this.tabControl = new System.Windows.Forms.TabControl();
            this.tabSearch = new System.Windows.Forms.TabPage();
            this.pnlProcessa = new System.Windows.Forms.Panel();
            this.progressBar1 = new System.Windows.Forms.ProgressBar();
            this.label3 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label5 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.txtFiador = new System.Windows.Forms.TextBox();
            this.label13 = new System.Windows.Forms.Label();
            this.txtSeguradora = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.txtValorCOFINS = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.txtRCR = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.txtValorIPI = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.txtValorPIS = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtValorII = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.txtDI = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.gpbLocalizar = new System.Windows.Forms.GroupBox();
            this.txtLocalizar = new System.Windows.Forms.TextBox();
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label33 = new System.Windows.Forms.Label();
            this.txtAte = new System.Windows.Forms.MaskedTextBox();
            this.txtDe = new System.Windows.Forms.MaskedTextBox();
            this.label32 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.mcbbStatus = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.mcbbContratos = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.mcbbTipoDocumento = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.btnFiltrar = new System.Windows.Forms.Button();
            this.ckbStatus = new System.Windows.Forms.CheckBox();
            this.label30 = new System.Windows.Forms.Label();
            this.label29 = new System.Windows.Forms.Label();
            this.txtProcesso = new System.Windows.Forms.MaskedTextBox();
            this.label28 = new System.Windows.Forms.Label();
            this.label27 = new System.Windows.Forms.Label();
            this.label26 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.mcbbSubTipoDocumento = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.mcbbLocalInventario = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.mcbbClientes = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.ckbTipoDocumento = new System.Windows.Forms.CheckBox();
            this.ckbContratos = new System.Windows.Forms.CheckBox();
            this.ckbSubTipoDocumento = new System.Windows.Forms.CheckBox();
            this.ckbLocal = new System.Windows.Forms.CheckBox();
            this.ckbClientes = new System.Windows.Forms.CheckBox();
            this.grvControle = new System.Windows.Forms.DataGridView();
            this.Processo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NumeroDocumento = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.VigenciaInicial = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.VigenciaFinal = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DataBaixa = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DataProrrogacao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Status = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Tipo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Tipo_Doc = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Sub_Tipo_Doc = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SubTipo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NR_DECLARACAO_IMP = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Numero_RCR = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TR_VAL_II = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TR_VAL_IPI = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TR_VAL_PIS = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TR_VAL_COFINS = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Nome_seguradora_GAR = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nome_fiador_GAR = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Fk_Fiador = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Pdf = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tsDireita = new System.Windows.Forms.ToolStrip();
            this.btnItens = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator6 = new System.Windows.Forms.ToolStripSeparator();
            this.btnImprimir = new System.Windows.Forms.ToolStripButton();
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
            this.btnRelatorio = new System.Windows.Forms.ToolStripButton();
            this.btnNovo = new System.Windows.Forms.ToolStripButton();
            this.btnCancelar = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.btnEditar = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.btnFechar = new System.Windows.Forms.ToolStripButton();
            ((System.ComponentModel.ISupportInitialize)(this.bsControleDocumento)).BeginInit();
            this.tabControl.SuspendLayout();
            this.tabSearch.SuspendLayout();
            this.pnlProcessa.SuspendLayout();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.gpbLocalizar.SuspendLayout();
            this.groupBox5.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.grvControle)).BeginInit();
            this.tsDireita.SuspendLayout();
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
            this.tabControl.Size = new System.Drawing.Size(773, 590);
            this.tabControl.TabIndex = 44;
            // 
            // tabSearch
            // 
            this.tabSearch.Controls.Add(this.pnlProcessa);
            this.tabSearch.Controls.Add(this.panel1);
            this.tabSearch.Controls.Add(this.panel2);
            this.tabSearch.Controls.Add(this.gpbLocalizar);
            this.tabSearch.Controls.Add(this.groupBox5);
            this.tabSearch.Controls.Add(this.grvControle);
            this.tabSearch.Location = new System.Drawing.Point(4, 22);
            this.tabSearch.Name = "tabSearch";
            this.tabSearch.Padding = new System.Windows.Forms.Padding(3);
            this.tabSearch.Size = new System.Drawing.Size(765, 564);
            this.tabSearch.TabIndex = 2;
            this.tabSearch.Text = "Controle de Validade de Documentos";
            this.tabSearch.UseVisualStyleBackColor = true;
            // 
            // pnlProcessa
            // 
            this.pnlProcessa.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlProcessa.Controls.Add(this.progressBar1);
            this.pnlProcessa.Controls.Add(this.label3);
            this.pnlProcessa.Location = new System.Drawing.Point(38, 237);
            this.pnlProcessa.Name = "pnlProcessa";
            this.pnlProcessa.Size = new System.Drawing.Size(701, 67);
            this.pnlProcessa.TabIndex = 21;
            this.pnlProcessa.Visible = false;
            // 
            // progressBar1
            // 
            this.progressBar1.Location = new System.Drawing.Point(32, 28);
            this.progressBar1.Name = "progressBar1";
            this.progressBar1.Size = new System.Drawing.Size(635, 23);
            this.progressBar1.TabIndex = 29;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Verdana", 11F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(29, 7);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(137, 18);
            this.label3.TabIndex = 1;
            this.label3.Text = "Processando.....";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.panel1.Controls.Add(this.label5);
            this.panel1.Location = new System.Drawing.Point(3, 443);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(754, 21);
            this.panel1.TabIndex = 20;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(209, 4);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(326, 13);
            this.label5.TabIndex = 0;
            this.label5.Text = "Informações referentes ao controle de Termos de Responsabilidade";
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.txtFiador);
            this.panel2.Controls.Add(this.label13);
            this.panel2.Controls.Add(this.txtSeguradora);
            this.panel2.Controls.Add(this.label12);
            this.panel2.Controls.Add(this.txtValorCOFINS);
            this.panel2.Controls.Add(this.label11);
            this.panel2.Controls.Add(this.txtRCR);
            this.panel2.Controls.Add(this.label10);
            this.panel2.Controls.Add(this.txtValorIPI);
            this.panel2.Controls.Add(this.label8);
            this.panel2.Controls.Add(this.txtValorPIS);
            this.panel2.Controls.Add(this.label2);
            this.panel2.Controls.Add(this.txtValorII);
            this.panel2.Controls.Add(this.label6);
            this.panel2.Controls.Add(this.txtDI);
            this.panel2.Controls.Add(this.label9);
            this.panel2.Enabled = false;
            this.panel2.Location = new System.Drawing.Point(3, 466);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(754, 92);
            this.panel2.TabIndex = 19;
            // 
            // txtFiador
            // 
            this.txtFiador.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtFiador.Location = new System.Drawing.Point(385, 66);
            this.txtFiador.MaxLength = 100;
            this.txtFiador.Name = "txtFiador";
            this.txtFiador.Size = new System.Drawing.Size(362, 20);
            this.txtFiador.TabIndex = 60;
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(12, 49);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(62, 13);
            this.label13.TabIndex = 59;
            this.label13.Text = "Seguradora";
            // 
            // txtSeguradora
            // 
            this.txtSeguradora.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtSeguradora.Location = new System.Drawing.Point(15, 66);
            this.txtSeguradora.MaxLength = 100;
            this.txtSeguradora.Name = "txtSeguradora";
            this.txtSeguradora.Size = new System.Drawing.Size(358, 20);
            this.txtSeguradora.TabIndex = 58;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(643, 9);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(93, 13);
            this.label12.TabIndex = 57;
            this.label12.Text = "Valor(R$) COFINS";
            // 
            // txtValorCOFINS
            // 
            this.txtValorCOFINS.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtValorCOFINS.Location = new System.Drawing.Point(646, 25);
            this.txtValorCOFINS.MaxLength = 100;
            this.txtValorCOFINS.Name = "txtValorCOFINS";
            this.txtValorCOFINS.Size = new System.Drawing.Size(101, 20);
            this.txtValorCOFINS.TabIndex = 56;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(163, 9);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(45, 13);
            this.label11.TabIndex = 55;
            this.label11.Text = "N° RCR";
            // 
            // txtRCR
            // 
            this.txtRCR.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtRCR.Location = new System.Drawing.Point(166, 25);
            this.txtRCR.MaxLength = 100;
            this.txtRCR.Name = "txtRCR";
            this.txtRCR.Size = new System.Drawing.Size(153, 20);
            this.txtRCR.TabIndex = 54;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(429, 9);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(67, 13);
            this.label10.TabIndex = 53;
            this.label10.Text = "Valor(R$) IPI";
            // 
            // txtValorIPI
            // 
            this.txtValorIPI.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtValorIPI.Location = new System.Drawing.Point(432, 25);
            this.txtValorIPI.MaxLength = 100;
            this.txtValorIPI.Name = "txtValorIPI";
            this.txtValorIPI.Size = new System.Drawing.Size(101, 20);
            this.txtValorIPI.TabIndex = 52;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(536, 9);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(71, 13);
            this.label8.TabIndex = 51;
            this.label8.Text = "Valor(R$) PIS";
            // 
            // txtValorPIS
            // 
            this.txtValorPIS.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtValorPIS.Location = new System.Drawing.Point(539, 25);
            this.txtValorPIS.MaxLength = 100;
            this.txtValorPIS.Name = "txtValorPIS";
            this.txtValorPIS.Size = new System.Drawing.Size(101, 20);
            this.txtValorPIS.TabIndex = 50;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(322, 9);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(60, 13);
            this.label2.TabIndex = 49;
            this.label2.Text = "Valor(R$) II";
            // 
            // txtValorII
            // 
            this.txtValorII.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtValorII.Location = new System.Drawing.Point(325, 25);
            this.txtValorII.MaxLength = 100;
            this.txtValorII.Name = "txtValorII";
            this.txtValorII.Size = new System.Drawing.Size(101, 20);
            this.txtValorII.TabIndex = 48;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(12, 9);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(18, 13);
            this.label6.TabIndex = 47;
            this.label6.Text = "DI";
            // 
            // txtDI
            // 
            this.txtDI.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtDI.Location = new System.Drawing.Point(15, 26);
            this.txtDI.MaxLength = 100;
            this.txtDI.Name = "txtDI";
            this.txtDI.Size = new System.Drawing.Size(145, 20);
            this.txtDI.TabIndex = 46;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(382, 49);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(36, 13);
            this.label9.TabIndex = 2;
            this.label9.Text = "Fiador";
            // 
            // gpbLocalizar
            // 
            this.gpbLocalizar.Controls.Add(this.txtLocalizar);
            this.gpbLocalizar.Location = new System.Drawing.Point(8, 192);
            this.gpbLocalizar.Name = "gpbLocalizar";
            this.gpbLocalizar.Size = new System.Drawing.Size(749, 47);
            this.gpbLocalizar.TabIndex = 17;
            this.gpbLocalizar.TabStop = false;
            this.gpbLocalizar.Text = "Localizar Número Documento:";
            // 
            // txtLocalizar
            // 
            this.txtLocalizar.Enabled = false;
            this.txtLocalizar.Location = new System.Drawing.Point(9, 19);
            this.txtLocalizar.Name = "txtLocalizar";
            this.txtLocalizar.Size = new System.Drawing.Size(733, 20);
            this.txtLocalizar.TabIndex = 1;
            this.txtLocalizar.TextChanged += new System.EventHandler(this.txtLocalizar_TextChanged);
            // 
            // groupBox5
            // 
            this.groupBox5.Controls.Add(this.groupBox1);
            this.groupBox5.Controls.Add(this.label1);
            this.groupBox5.Controls.Add(this.mcbbStatus);
            this.groupBox5.Controls.Add(this.mcbbContratos);
            this.groupBox5.Controls.Add(this.mcbbTipoDocumento);
            this.groupBox5.Controls.Add(this.btnFiltrar);
            this.groupBox5.Controls.Add(this.ckbStatus);
            this.groupBox5.Controls.Add(this.label30);
            this.groupBox5.Controls.Add(this.label29);
            this.groupBox5.Controls.Add(this.txtProcesso);
            this.groupBox5.Controls.Add(this.label28);
            this.groupBox5.Controls.Add(this.label27);
            this.groupBox5.Controls.Add(this.label26);
            this.groupBox5.Controls.Add(this.label7);
            this.groupBox5.Controls.Add(this.mcbbSubTipoDocumento);
            this.groupBox5.Controls.Add(this.mcbbLocalInventario);
            this.groupBox5.Controls.Add(this.mcbbClientes);
            this.groupBox5.Controls.Add(this.ckbTipoDocumento);
            this.groupBox5.Controls.Add(this.ckbContratos);
            this.groupBox5.Controls.Add(this.ckbSubTipoDocumento);
            this.groupBox5.Controls.Add(this.ckbLocal);
            this.groupBox5.Controls.Add(this.ckbClientes);
            this.groupBox5.Location = new System.Drawing.Point(8, 6);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Size = new System.Drawing.Size(749, 180);
            this.groupBox5.TabIndex = 16;
            this.groupBox5.TabStop = false;
            this.groupBox5.Text = "Filtrar Por:";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label33);
            this.groupBox1.Controls.Add(this.txtAte);
            this.groupBox1.Controls.Add(this.txtDe);
            this.groupBox1.Controls.Add(this.label32);
            this.groupBox1.Location = new System.Drawing.Point(111, 14);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(212, 40);
            this.groupBox1.TabIndex = 28;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Vencimento";
            // 
            // label33
            // 
            this.label33.AutoSize = true;
            this.label33.Location = new System.Drawing.Point(110, 19);
            this.label33.Name = "label33";
            this.label33.Size = new System.Drawing.Size(26, 13);
            this.label33.TabIndex = 21;
            this.label33.Text = "Até:";
            // 
            // txtAte
            // 
            this.txtAte.Location = new System.Drawing.Point(138, 15);
            this.txtAte.Mask = "00/00/0000";
            this.txtAte.Name = "txtAte";
            this.txtAte.Size = new System.Drawing.Size(71, 20);
            this.txtAte.TabIndex = 22;
            this.txtAte.ValidatingType = typeof(System.DateTime);
            // 
            // txtDe
            // 
            this.txtDe.Location = new System.Drawing.Point(36, 14);
            this.txtDe.Mask = "00/00/0000";
            this.txtDe.Name = "txtDe";
            this.txtDe.Size = new System.Drawing.Size(68, 20);
            this.txtDe.TabIndex = 20;
            this.txtDe.ValidatingType = typeof(System.DateTime);
            // 
            // label32
            // 
            this.label32.AutoSize = true;
            this.label32.Location = new System.Drawing.Point(6, 19);
            this.label32.Name = "label32";
            this.label32.Size = new System.Drawing.Size(24, 13);
            this.label32.TabIndex = 19;
            this.label32.Text = "De:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(350, 135);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(37, 13);
            this.label1.TabIndex = 27;
            this.label1.Text = "Status";
            // 
            // mcbbStatus
            // 
            this.mcbbStatus.AutoComplete = true;
            this.mcbbStatus.AutoDropdown = true;
            this.mcbbStatus.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbbStatus.Enabled = false;
            this.mcbbStatus.FormattingEnabled = true;
            this.mcbbStatus.Location = new System.Drawing.Point(353, 152);
            this.mcbbStatus.Name = "mcbbStatus";
            this.mcbbStatus.NumberColumnsDisplay = 0;
            this.mcbbStatus.Size = new System.Drawing.Size(298, 21);
            this.mcbbStatus.TabIndex = 26;
            // 
            // mcbbContratos
            // 
            this.mcbbContratos.AutoComplete = true;
            this.mcbbContratos.AutoDropdown = true;
            this.mcbbContratos.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbbContratos.Enabled = false;
            this.mcbbContratos.FormattingEnabled = true;
            this.mcbbContratos.Location = new System.Drawing.Point(353, 68);
            this.mcbbContratos.Name = "mcbbContratos";
            this.mcbbContratos.NumberColumnsDisplay = 0;
            this.mcbbContratos.Size = new System.Drawing.Size(298, 21);
            this.mcbbContratos.TabIndex = 25;
            this.mcbbContratos.SelectionChangeCommitted += new System.EventHandler(this.mcbbContratos_SelectionChangeCommitted);
            // 
            // mcbbTipoDocumento
            // 
            this.mcbbTipoDocumento.AutoComplete = true;
            this.mcbbTipoDocumento.AutoDropdown = true;
            this.mcbbTipoDocumento.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbbTipoDocumento.Enabled = false;
            this.mcbbTipoDocumento.FormattingEnabled = true;
            this.mcbbTipoDocumento.Location = new System.Drawing.Point(353, 111);
            this.mcbbTipoDocumento.Name = "mcbbTipoDocumento";
            this.mcbbTipoDocumento.NumberColumnsDisplay = 0;
            this.mcbbTipoDocumento.Size = new System.Drawing.Size(298, 21);
            this.mcbbTipoDocumento.TabIndex = 11;
            this.mcbbTipoDocumento.SelectionChangeCommitted += new System.EventHandler(this.mcbbTipoDocumento_SelectionChangeCommitted);
            // 
            // btnFiltrar
            // 
            this.btnFiltrar.Font = new System.Drawing.Font("Segoe UI Symbol", 9.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnFiltrar.Image = global::MS2000.Desktop.Properties.Resources.filter_add;
            this.btnFiltrar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnFiltrar.Location = new System.Drawing.Point(657, 148);
            this.btnFiltrar.Name = "btnFiltrar";
            this.btnFiltrar.Size = new System.Drawing.Size(75, 25);
            this.btnFiltrar.TabIndex = 19;
            this.btnFiltrar.Text = "  Filtrar";
            this.btnFiltrar.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnFiltrar.UseVisualStyleBackColor = true;
            this.btnFiltrar.Click += new System.EventHandler(this.btnFiltrar_Click);
            // 
            // ckbStatus
            // 
            this.ckbStatus.AutoSize = true;
            this.ckbStatus.Checked = true;
            this.ckbStatus.CheckState = System.Windows.Forms.CheckState.Checked;
            this.ckbStatus.Location = new System.Drawing.Point(332, 155);
            this.ckbStatus.Name = "ckbStatus";
            this.ckbStatus.Size = new System.Drawing.Size(15, 14);
            this.ckbStatus.TabIndex = 14;
            this.ckbStatus.UseVisualStyleBackColor = true;
            this.ckbStatus.CheckedChanged += new System.EventHandler(this.ckbStatus_CheckedChanged);
            // 
            // label30
            // 
            this.label30.AutoSize = true;
            this.label30.Location = new System.Drawing.Point(350, 95);
            this.label30.Name = "label30";
            this.label30.Size = new System.Drawing.Size(86, 13);
            this.label30.TabIndex = 23;
            this.label30.Text = "Tipo Documento";
            // 
            // label29
            // 
            this.label29.AutoSize = true;
            this.label29.Location = new System.Drawing.Point(350, 52);
            this.label29.Name = "label29";
            this.label29.Size = new System.Drawing.Size(52, 13);
            this.label29.TabIndex = 22;
            this.label29.Text = "Contratos";
            // 
            // txtProcesso
            // 
            this.txtProcesso.Location = new System.Drawing.Point(30, 31);
            this.txtProcesso.Mask = "00000/00";
            this.txtProcesso.Name = "txtProcesso";
            this.txtProcesso.Size = new System.Drawing.Size(70, 20);
            this.txtProcesso.TabIndex = 1;
            // 
            // label28
            // 
            this.label28.AutoSize = true;
            this.label28.Location = new System.Drawing.Point(27, 135);
            this.label28.Name = "label28";
            this.label28.Size = new System.Drawing.Size(108, 13);
            this.label28.TabIndex = 19;
            this.label28.Text = "Sub Tipo Documento";
            // 
            // label27
            // 
            this.label27.AutoSize = true;
            this.label27.Location = new System.Drawing.Point(27, 54);
            this.label27.Name = "label27";
            this.label27.Size = new System.Drawing.Size(44, 13);
            this.label27.TabIndex = 18;
            this.label27.Text = "Clientes";
            // 
            // label26
            // 
            this.label26.AutoSize = true;
            this.label26.Location = new System.Drawing.Point(27, 95);
            this.label26.Name = "label26";
            this.label26.Size = new System.Drawing.Size(103, 13);
            this.label26.TabIndex = 17;
            this.label26.Text = "Locais de Inventário";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(27, 14);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(51, 13);
            this.label7.TabIndex = 16;
            this.label7.Text = "Processo";
            // 
            // mcbbSubTipoDocumento
            // 
            this.mcbbSubTipoDocumento.AutoComplete = true;
            this.mcbbSubTipoDocumento.AutoDropdown = true;
            this.mcbbSubTipoDocumento.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbbSubTipoDocumento.Enabled = false;
            this.mcbbSubTipoDocumento.FormattingEnabled = true;
            this.mcbbSubTipoDocumento.Location = new System.Drawing.Point(30, 152);
            this.mcbbSubTipoDocumento.Name = "mcbbSubTipoDocumento";
            this.mcbbSubTipoDocumento.NumberColumnsDisplay = 0;
            this.mcbbSubTipoDocumento.Size = new System.Drawing.Size(290, 21);
            this.mcbbSubTipoDocumento.TabIndex = 13;
            // 
            // mcbbLocalInventario
            // 
            this.mcbbLocalInventario.AutoComplete = true;
            this.mcbbLocalInventario.AutoDropdown = true;
            this.mcbbLocalInventario.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbbLocalInventario.Enabled = false;
            this.mcbbLocalInventario.FormattingEnabled = true;
            this.mcbbLocalInventario.Location = new System.Drawing.Point(30, 111);
            this.mcbbLocalInventario.Name = "mcbbLocalInventario";
            this.mcbbLocalInventario.NumberColumnsDisplay = 0;
            this.mcbbLocalInventario.Size = new System.Drawing.Size(290, 21);
            this.mcbbLocalInventario.TabIndex = 9;
            // 
            // mcbbClientes
            // 
            this.mcbbClientes.AutoComplete = true;
            this.mcbbClientes.AutoDropdown = true;
            this.mcbbClientes.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbbClientes.Enabled = false;
            this.mcbbClientes.FormattingEnabled = true;
            this.mcbbClientes.Location = new System.Drawing.Point(30, 68);
            this.mcbbClientes.Name = "mcbbClientes";
            this.mcbbClientes.NumberColumnsDisplay = 0;
            this.mcbbClientes.Size = new System.Drawing.Size(290, 21);
            this.mcbbClientes.TabIndex = 3;
            this.mcbbClientes.SelectionChangeCommitted += new System.EventHandler(this.mcbbClientes_SelectionChangeCommitted);
            // 
            // ckbTipoDocumento
            // 
            this.ckbTipoDocumento.AutoSize = true;
            this.ckbTipoDocumento.Checked = true;
            this.ckbTipoDocumento.CheckState = System.Windows.Forms.CheckState.Checked;
            this.ckbTipoDocumento.Location = new System.Drawing.Point(332, 116);
            this.ckbTipoDocumento.Name = "ckbTipoDocumento";
            this.ckbTipoDocumento.Size = new System.Drawing.Size(15, 14);
            this.ckbTipoDocumento.TabIndex = 10;
            this.ckbTipoDocumento.UseVisualStyleBackColor = true;
            this.ckbTipoDocumento.CheckedChanged += new System.EventHandler(this.ckbTipoDocumento_CheckedChanged);
            // 
            // ckbContratos
            // 
            this.ckbContratos.AutoSize = true;
            this.ckbContratos.Checked = true;
            this.ckbContratos.CheckState = System.Windows.Forms.CheckState.Checked;
            this.ckbContratos.Location = new System.Drawing.Point(332, 71);
            this.ckbContratos.Name = "ckbContratos";
            this.ckbContratos.Size = new System.Drawing.Size(15, 14);
            this.ckbContratos.TabIndex = 4;
            this.ckbContratos.UseVisualStyleBackColor = true;
            this.ckbContratos.CheckedChanged += new System.EventHandler(this.ckbContratos_CheckedChanged);
            // 
            // ckbSubTipoDocumento
            // 
            this.ckbSubTipoDocumento.AutoSize = true;
            this.ckbSubTipoDocumento.Checked = true;
            this.ckbSubTipoDocumento.CheckState = System.Windows.Forms.CheckState.Checked;
            this.ckbSubTipoDocumento.Location = new System.Drawing.Point(9, 155);
            this.ckbSubTipoDocumento.Name = "ckbSubTipoDocumento";
            this.ckbSubTipoDocumento.Size = new System.Drawing.Size(15, 14);
            this.ckbSubTipoDocumento.TabIndex = 12;
            this.ckbSubTipoDocumento.UseVisualStyleBackColor = true;
            this.ckbSubTipoDocumento.CheckedChanged += new System.EventHandler(this.ckbSubTipoDocumento_CheckedChanged);
            // 
            // ckbLocal
            // 
            this.ckbLocal.AutoSize = true;
            this.ckbLocal.Checked = true;
            this.ckbLocal.CheckState = System.Windows.Forms.CheckState.Checked;
            this.ckbLocal.Location = new System.Drawing.Point(9, 114);
            this.ckbLocal.Name = "ckbLocal";
            this.ckbLocal.Size = new System.Drawing.Size(15, 14);
            this.ckbLocal.TabIndex = 8;
            this.ckbLocal.UseVisualStyleBackColor = true;
            this.ckbLocal.CheckedChanged += new System.EventHandler(this.ckbLocal_CheckedChanged);
            // 
            // ckbClientes
            // 
            this.ckbClientes.AutoSize = true;
            this.ckbClientes.Checked = true;
            this.ckbClientes.CheckState = System.Windows.Forms.CheckState.Checked;
            this.ckbClientes.Location = new System.Drawing.Point(9, 71);
            this.ckbClientes.Name = "ckbClientes";
            this.ckbClientes.Size = new System.Drawing.Size(15, 14);
            this.ckbClientes.TabIndex = 2;
            this.ckbClientes.UseVisualStyleBackColor = true;
            this.ckbClientes.CheckedChanged += new System.EventHandler(this.ckbClientes_CheckedChanged);
            // 
            // grvControle
            // 
            this.grvControle.AllowUserToAddRows = false;
            this.grvControle.AllowUserToDeleteRows = false;
            this.grvControle.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.grvControle.BackgroundColor = System.Drawing.SystemColors.ControlLightLight;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.grvControle.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.grvControle.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grvControle.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Processo,
            this.NumeroDocumento,
            this.VigenciaInicial,
            this.VigenciaFinal,
            this.DataBaixa,
            this.DataProrrogacao,
            this.Status,
            this.Tipo,
            this.Tipo_Doc,
            this.Sub_Tipo_Doc,
            this.SubTipo,
            this.NR_DECLARACAO_IMP,
            this.Numero_RCR,
            this.TR_VAL_II,
            this.TR_VAL_IPI,
            this.TR_VAL_PIS,
            this.TR_VAL_COFINS,
            this.Nome_seguradora_GAR,
            this.nome_fiador_GAR,
            this.Fk_Fiador,
            this.Pdf});
            this.grvControle.Location = new System.Drawing.Point(8, 245);
            this.grvControle.Name = "grvControle";
            this.grvControle.ReadOnly = true;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.grvControle.RowHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.grvControle.RowHeadersVisible = false;
            this.grvControle.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.grvControle.Size = new System.Drawing.Size(749, 198);
            this.grvControle.TabIndex = 0;
            this.grvControle.SelectionChanged += new System.EventHandler(this.grvControle_SelectionChanged);
            // 
            // Processo
            // 
            this.Processo.DataPropertyName = "Processo";
            this.Processo.HeaderText = "Processo";
            this.Processo.Name = "Processo";
            this.Processo.ReadOnly = true;
            this.Processo.Width = 74;
            // 
            // NumeroDocumento
            // 
            this.NumeroDocumento.DataPropertyName = "Numero_Doc";
            this.NumeroDocumento.HeaderText = "Número do Documento";
            this.NumeroDocumento.Name = "NumeroDocumento";
            this.NumeroDocumento.ReadOnly = true;
            this.NumeroDocumento.Width = 128;
            // 
            // VigenciaInicial
            // 
            this.VigenciaInicial.DataPropertyName = "Vigencia_inicial";
            this.VigenciaInicial.HeaderText = "Vigência Inicial";
            this.VigenciaInicial.Name = "VigenciaInicial";
            this.VigenciaInicial.ReadOnly = true;
            this.VigenciaInicial.Width = 93;
            // 
            // VigenciaFinal
            // 
            this.VigenciaFinal.DataPropertyName = "Vigencia_final";
            this.VigenciaFinal.HeaderText = "Vigência Final";
            this.VigenciaFinal.Name = "VigenciaFinal";
            this.VigenciaFinal.ReadOnly = true;
            this.VigenciaFinal.Width = 88;
            // 
            // DataBaixa
            // 
            this.DataBaixa.DataPropertyName = "Data_baixa";
            this.DataBaixa.HeaderText = "Data de Baixa";
            this.DataBaixa.Name = "DataBaixa";
            this.DataBaixa.ReadOnly = true;
            this.DataBaixa.Width = 89;
            // 
            // DataProrrogacao
            // 
            this.DataProrrogacao.DataPropertyName = "Data_renovacao";
            this.DataProrrogacao.HeaderText = "Data de Prorrogação";
            this.DataProrrogacao.Name = "DataProrrogacao";
            this.DataProrrogacao.ReadOnly = true;
            this.DataProrrogacao.Width = 118;
            // 
            // Status
            // 
            this.Status.DataPropertyName = "Status";
            this.Status.HeaderText = "Status";
            this.Status.Name = "Status";
            this.Status.ReadOnly = true;
            this.Status.Width = 60;
            // 
            // Tipo
            // 
            this.Tipo.DataPropertyName = "DescTipo";
            this.Tipo.HeaderText = "Tipo";
            this.Tipo.Name = "Tipo";
            this.Tipo.ReadOnly = true;
            this.Tipo.Width = 51;
            // 
            // Tipo_Doc
            // 
            this.Tipo_Doc.DataPropertyName = "Tipo_Doc";
            this.Tipo_Doc.HeaderText = "Tipo_Doc";
            this.Tipo_Doc.Name = "Tipo_Doc";
            this.Tipo_Doc.ReadOnly = true;
            this.Tipo_Doc.Visible = false;
            this.Tipo_Doc.Width = 77;
            // 
            // Sub_Tipo_Doc
            // 
            this.Sub_Tipo_Doc.DataPropertyName = "Sub_Tipo_Doc";
            this.Sub_Tipo_Doc.HeaderText = "Sub_Tipo_Doc";
            this.Sub_Tipo_Doc.Name = "Sub_Tipo_Doc";
            this.Sub_Tipo_Doc.ReadOnly = true;
            this.Sub_Tipo_Doc.Visible = false;
            this.Sub_Tipo_Doc.Width = 102;
            // 
            // SubTipo
            // 
            this.SubTipo.DataPropertyName = "DescSubTipo";
            this.SubTipo.HeaderText = "Sub Tipo";
            this.SubTipo.Name = "SubTipo";
            this.SubTipo.ReadOnly = true;
            this.SubTipo.Width = 67;
            // 
            // NR_DECLARACAO_IMP
            // 
            this.NR_DECLARACAO_IMP.DataPropertyName = "NR_DECLARACAO_IMP";
            this.NR_DECLARACAO_IMP.HeaderText = "DI";
            this.NR_DECLARACAO_IMP.Name = "NR_DECLARACAO_IMP";
            this.NR_DECLARACAO_IMP.ReadOnly = true;
            this.NR_DECLARACAO_IMP.Visible = false;
            this.NR_DECLARACAO_IMP.Width = 41;
            // 
            // Numero_RCR
            // 
            this.Numero_RCR.DataPropertyName = "Numero_RCR";
            this.Numero_RCR.HeaderText = "RCR";
            this.Numero_RCR.Name = "Numero_RCR";
            this.Numero_RCR.ReadOnly = true;
            this.Numero_RCR.Visible = false;
            this.Numero_RCR.Width = 53;
            // 
            // TR_VAL_II
            // 
            this.TR_VAL_II.DataPropertyName = "TR_VAL_II";
            this.TR_VAL_II.HeaderText = "Valor II";
            this.TR_VAL_II.Name = "TR_VAL_II";
            this.TR_VAL_II.ReadOnly = true;
            this.TR_VAL_II.Visible = false;
            this.TR_VAL_II.Width = 58;
            // 
            // TR_VAL_IPI
            // 
            this.TR_VAL_IPI.DataPropertyName = "TR_VAL_IPI";
            this.TR_VAL_IPI.HeaderText = "Valor IPI";
            this.TR_VAL_IPI.Name = "TR_VAL_IPI";
            this.TR_VAL_IPI.ReadOnly = true;
            this.TR_VAL_IPI.Visible = false;
            this.TR_VAL_IPI.Width = 65;
            // 
            // TR_VAL_PIS
            // 
            this.TR_VAL_PIS.DataPropertyName = "TR_VAL_PIS";
            this.TR_VAL_PIS.HeaderText = "Valor PIS";
            this.TR_VAL_PIS.Name = "TR_VAL_PIS";
            this.TR_VAL_PIS.ReadOnly = true;
            this.TR_VAL_PIS.Visible = false;
            this.TR_VAL_PIS.Width = 68;
            // 
            // TR_VAL_COFINS
            // 
            this.TR_VAL_COFINS.DataPropertyName = "TR_VAL_COFINS";
            this.TR_VAL_COFINS.HeaderText = "Valor COFINS";
            this.TR_VAL_COFINS.Name = "TR_VAL_COFINS";
            this.TR_VAL_COFINS.ReadOnly = true;
            this.TR_VAL_COFINS.Visible = false;
            this.TR_VAL_COFINS.Width = 88;
            // 
            // Nome_seguradora_GAR
            // 
            this.Nome_seguradora_GAR.DataPropertyName = "Nome_seguradora_GAR";
            this.Nome_seguradora_GAR.HeaderText = "Seguradora";
            this.Nome_seguradora_GAR.Name = "Nome_seguradora_GAR";
            this.Nome_seguradora_GAR.ReadOnly = true;
            this.Nome_seguradora_GAR.Visible = false;
            this.Nome_seguradora_GAR.Width = 85;
            // 
            // nome_fiador_GAR
            // 
            this.nome_fiador_GAR.DataPropertyName = "nome_fiador_GAR";
            this.nome_fiador_GAR.HeaderText = "Fiador";
            this.nome_fiador_GAR.Name = "nome_fiador_GAR";
            this.nome_fiador_GAR.ReadOnly = true;
            this.nome_fiador_GAR.Visible = false;
            this.nome_fiador_GAR.Width = 59;
            // 
            // Fk_Fiador
            // 
            this.Fk_Fiador.DataPropertyName = "Fk_Fiador";
            this.Fk_Fiador.HeaderText = "Fk_Fiador";
            this.Fk_Fiador.Name = "Fk_Fiador";
            this.Fk_Fiador.ReadOnly = true;
            this.Fk_Fiador.Visible = false;
            this.Fk_Fiador.Width = 77;
            // 
            // Pdf
            // 
            this.Pdf.DataPropertyName = "Pdf";
            this.Pdf.HeaderText = "Pdf";
            this.Pdf.Name = "Pdf";
            this.Pdf.ReadOnly = true;
            this.Pdf.Visible = false;
            this.Pdf.Width = 46;
            // 
            // tsDireita
            // 
            this.tsDireita.Dock = System.Windows.Forms.DockStyle.Right;
            this.tsDireita.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.btnItens,
            this.toolStripSeparator6,
            this.btnImprimir});
            this.tsDireita.Location = new System.Drawing.Point(773, 25);
            this.tsDireita.Name = "tsDireita";
            this.tsDireita.Size = new System.Drawing.Size(110, 590);
            this.tsDireita.TabIndex = 43;
            this.tsDireita.Text = "toolStrip1";
            // 
            // btnItens
            // 
            this.btnItens.Image = global::MS2000.Desktop.Properties.Resources.Print;
            this.btnItens.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnItens.Name = "btnItens";
            this.btnItens.Size = new System.Drawing.Size(107, 20);
            this.btnItens.Text = "Imprimir";
            this.btnItens.Click += new System.EventHandler(this.btnItens_Click);
            // 
            // toolStripSeparator6
            // 
            this.toolStripSeparator6.Name = "toolStripSeparator6";
            this.toolStripSeparator6.Size = new System.Drawing.Size(107, 6);
            // 
            // btnImprimir
            // 
            this.btnImprimir.Image = global::MS2000.Desktop.Properties.Resources.Print;
            this.btnImprimir.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnImprimir.Name = "btnImprimir";
            this.btnImprimir.Size = new System.Drawing.Size(107, 20);
            this.btnImprimir.Text = "Imprimir Rel TR";
            // 
            // bindingNavigator
            // 
            this.bindingNavigator.AddNewItem = null;
            this.bindingNavigator.CountItem = this.bindingNavigatorCountItem;
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
            this.btnRelatorio,
            this.btnNovo,
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
            this.bindingNavigator.Size = new System.Drawing.Size(883, 25);
            this.bindingNavigator.TabIndex = 42;
            this.bindingNavigator.Text = "bindingNavigator1";
            // 
            // bindingNavigatorCountItem
            // 
            this.bindingNavigatorCountItem.Name = "bindingNavigatorCountItem";
            this.bindingNavigatorCountItem.Size = new System.Drawing.Size(35, 22);
            this.bindingNavigatorCountItem.Text = "of {0}";
            this.bindingNavigatorCountItem.ToolTipText = "Número total de itens";
            this.bindingNavigatorCountItem.Visible = false;
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
            this.bindingNavigatorMoveFirstItem.Visible = false;
            // 
            // bindingNavigatorMovePreviousItem
            // 
            this.bindingNavigatorMovePreviousItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMovePreviousItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMovePreviousItem.Image")));
            this.bindingNavigatorMovePreviousItem.Name = "bindingNavigatorMovePreviousItem";
            this.bindingNavigatorMovePreviousItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMovePreviousItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMovePreviousItem.Text = "Move previous";
            this.bindingNavigatorMovePreviousItem.Visible = false;
            // 
            // bindingNavigatorSeparator
            // 
            this.bindingNavigatorSeparator.Name = "bindingNavigatorSeparator";
            this.bindingNavigatorSeparator.Size = new System.Drawing.Size(6, 25);
            this.bindingNavigatorSeparator.Visible = false;
            // 
            // bindingNavigatorPositionItem
            // 
            this.bindingNavigatorPositionItem.AccessibleName = "Position";
            this.bindingNavigatorPositionItem.AutoSize = false;
            this.bindingNavigatorPositionItem.Name = "bindingNavigatorPositionItem";
            this.bindingNavigatorPositionItem.Size = new System.Drawing.Size(50, 21);
            this.bindingNavigatorPositionItem.Text = "0";
            this.bindingNavigatorPositionItem.ToolTipText = "Current position";
            this.bindingNavigatorPositionItem.Visible = false;
            // 
            // bindingNavigatorSeparator1
            // 
            this.bindingNavigatorSeparator1.Name = "bindingNavigatorSeparator1";
            this.bindingNavigatorSeparator1.Size = new System.Drawing.Size(6, 25);
            this.bindingNavigatorSeparator1.Visible = false;
            // 
            // bindingNavigatorMoveNextItem
            // 
            this.bindingNavigatorMoveNextItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveNextItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveNextItem.Image")));
            this.bindingNavigatorMoveNextItem.Name = "bindingNavigatorMoveNextItem";
            this.bindingNavigatorMoveNextItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveNextItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveNextItem.Text = "Move next";
            this.bindingNavigatorMoveNextItem.Visible = false;
            // 
            // bindingNavigatorMoveLastItem
            // 
            this.bindingNavigatorMoveLastItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveLastItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveLastItem.Image")));
            this.bindingNavigatorMoveLastItem.Name = "bindingNavigatorMoveLastItem";
            this.bindingNavigatorMoveLastItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveLastItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveLastItem.Text = "Move last";
            this.bindingNavigatorMoveLastItem.Visible = false;
            // 
            // bindingNavigatorSeparator2
            // 
            this.bindingNavigatorSeparator2.Name = "bindingNavigatorSeparator2";
            this.bindingNavigatorSeparator2.Size = new System.Drawing.Size(6, 25);
            this.bindingNavigatorSeparator2.Visible = false;
            // 
            // btnRelatorio
            // 
            this.btnRelatorio.Enabled = false;
            this.btnRelatorio.Image = ((System.Drawing.Image)(resources.GetObject("btnRelatorio.Image")));
            this.btnRelatorio.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnRelatorio.Name = "btnRelatorio";
            this.btnRelatorio.Size = new System.Drawing.Size(74, 22);
            this.btnRelatorio.Text = "&Relatório";
            this.btnRelatorio.Visible = false;
            // 
            // btnNovo
            // 
            this.btnNovo.Image = ((System.Drawing.Image)(resources.GetObject("btnNovo.Image")));
            this.btnNovo.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnNovo.Name = "btnNovo";
            this.btnNovo.Size = new System.Drawing.Size(56, 22);
            this.btnNovo.Text = "&Novo";
            this.btnNovo.Visible = false;
            // 
            // btnCancelar
            // 
            this.btnCancelar.Image = ((System.Drawing.Image)(resources.GetObject("btnCancelar.Image")));
            this.btnCancelar.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(73, 22);
            this.btnCancelar.Text = "&Cancelar";
            this.btnCancelar.Visible = false;
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(6, 25);
            this.toolStripSeparator1.Visible = false;
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
            // FrmControleValidadeDocumentos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(883, 615);
            this.Controls.Add(this.tabControl);
            this.Controls.Add(this.tsDireita);
            this.Controls.Add(this.bindingNavigator);
            this.Name = "FrmControleValidadeDocumentos";
            this.Tag = "402";
            this.Text = "Controle - Controle de Validade de Documentos";
            this.Load += new System.EventHandler(this.FrmControleValidadeDocumentos_Load);
            ((System.ComponentModel.ISupportInitialize)(this.bsControleDocumento)).EndInit();
            this.tabControl.ResumeLayout(false);
            this.tabSearch.ResumeLayout(false);
            this.pnlProcessa.ResumeLayout(false);
            this.pnlProcessa.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.gpbLocalizar.ResumeLayout(false);
            this.gpbLocalizar.PerformLayout();
            this.groupBox5.ResumeLayout(false);
            this.groupBox5.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.grvControle)).EndInit();
            this.tsDireita.ResumeLayout(false);
            this.tsDireita.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator)).EndInit();
            this.bindingNavigator.ResumeLayout(false);
            this.bindingNavigator.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl;
        private System.Windows.Forms.TabPage tabSearch;
        private System.Windows.Forms.GroupBox gpbLocalizar;
        private System.Windows.Forms.TextBox txtLocalizar;
        private System.Windows.Forms.GroupBox groupBox5;
        private Componentes.MultiColumnComboBox mcbbTipoDocumento;
        private System.Windows.Forms.Button btnFiltrar;
        private System.Windows.Forms.CheckBox ckbStatus;
        private System.Windows.Forms.Label label30;
        private System.Windows.Forms.Label label29;
        private System.Windows.Forms.MaskedTextBox txtProcesso;
        private System.Windows.Forms.Label label28;
        private System.Windows.Forms.Label label27;
        private System.Windows.Forms.Label label26;
        private System.Windows.Forms.Label label7;
        private Componentes.MultiColumnComboBox mcbbSubTipoDocumento;
        private Componentes.MultiColumnComboBox mcbbLocalInventario;
        private Componentes.MultiColumnComboBox mcbbClientes;
        private System.Windows.Forms.CheckBox ckbTipoDocumento;
        private System.Windows.Forms.CheckBox ckbContratos;
        private System.Windows.Forms.CheckBox ckbSubTipoDocumento;
        private System.Windows.Forms.CheckBox ckbLocal;
        private System.Windows.Forms.CheckBox ckbClientes;
        private System.Windows.Forms.DataGridView grvControle;
        private System.Windows.Forms.ToolStrip tsDireita;
        private System.Windows.Forms.ToolStripButton btnItens;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator6;
        private System.Windows.Forms.ToolStripButton btnImprimir;
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
        private System.Windows.Forms.ToolStripButton btnRelatorio;
        private System.Windows.Forms.ToolStripButton btnNovo;
        private System.Windows.Forms.ToolStripButton btnCancelar;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripButton btnEditar;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.ToolStripButton btnFechar;
        private System.Windows.Forms.Label label1;
        private Componentes.MultiColumnComboBox mcbbStatus;
        private Componentes.MultiColumnComboBox mcbbContratos;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label33;
        private System.Windows.Forms.MaskedTextBox txtAte;
        private System.Windows.Forms.MaskedTextBox txtDe;
        private System.Windows.Forms.Label label32;
        private System.Windows.Forms.BindingSource bsControleDocumento;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.TextBox txtSeguradora;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox txtValorCOFINS;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox txtRCR;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtValorIPI;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtValorPIS;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtValorII;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtDI;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtFiador;
        private System.Windows.Forms.ProgressBar progressBar1;
        private System.Windows.Forms.Panel pnlProcessa;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Processo;
        private System.Windows.Forms.DataGridViewTextBoxColumn NumeroDocumento;
        private System.Windows.Forms.DataGridViewTextBoxColumn VigenciaInicial;
        private System.Windows.Forms.DataGridViewTextBoxColumn VigenciaFinal;
        private System.Windows.Forms.DataGridViewTextBoxColumn DataBaixa;
        private System.Windows.Forms.DataGridViewTextBoxColumn DataProrrogacao;
        private System.Windows.Forms.DataGridViewTextBoxColumn Status;
        private System.Windows.Forms.DataGridViewTextBoxColumn Tipo;
        private System.Windows.Forms.DataGridViewTextBoxColumn Tipo_Doc;
        private System.Windows.Forms.DataGridViewTextBoxColumn Sub_Tipo_Doc;
        private System.Windows.Forms.DataGridViewTextBoxColumn SubTipo;
        private System.Windows.Forms.DataGridViewTextBoxColumn NR_DECLARACAO_IMP;
        private System.Windows.Forms.DataGridViewTextBoxColumn Numero_RCR;
        private System.Windows.Forms.DataGridViewTextBoxColumn TR_VAL_II;
        private System.Windows.Forms.DataGridViewTextBoxColumn TR_VAL_IPI;
        private System.Windows.Forms.DataGridViewTextBoxColumn TR_VAL_PIS;
        private System.Windows.Forms.DataGridViewTextBoxColumn TR_VAL_COFINS;
        private System.Windows.Forms.DataGridViewTextBoxColumn Nome_seguradora_GAR;
        private System.Windows.Forms.DataGridViewTextBoxColumn nome_fiador_GAR;
        private System.Windows.Forms.DataGridViewTextBoxColumn Fk_Fiador;
        private System.Windows.Forms.DataGridViewTextBoxColumn Pdf;
    }
}
