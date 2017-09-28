namespace MS2000.Desktop.Menu.Processos
{
    partial class FrmControleCIDE
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            this.tabControl = new System.Windows.Forms.TabControl();
            this.tabFormulario = new System.Windows.Forms.TabPage();
            this.dataGridView = new System.Windows.Forms.DataGridView();
            this.panelControl = new System.Windows.Forms.Panel();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.groupBox6 = new System.Windows.Forms.GroupBox();
            this.lblValorRecolherCOFINS = new System.Windows.Forms.Label();
            this.lblValorReduzidoCOFINS = new System.Windows.Forms.Label();
            this.lblValorDevidoCOFINS = new System.Windows.Forms.Label();
            this.lblValorCalculadoCOFINS = new System.Windows.Forms.Label();
            this.label21 = new System.Windows.Forms.Label();
            this.label22 = new System.Windows.Forms.Label();
            this.label23 = new System.Windows.Forms.Label();
            this.label24 = new System.Windows.Forms.Label();
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.lblValorRecolherPIS = new System.Windows.Forms.Label();
            this.lblValorReduzidoPIS = new System.Windows.Forms.Label();
            this.lblValorDevidoPIS = new System.Windows.Forms.Label();
            this.lblValorCalculadoPIS = new System.Windows.Forms.Label();
            this.label15 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.txtQuantidadeCOFINS = new System.Windows.Forms.TextBox();
            this.txtUnidadeCOFINS = new System.Windows.Forms.TextBox();
            this.txtValorCOFINS = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.txtQuantidadePIS = new System.Windows.Forms.TextBox();
            this.txtUnidadePIS = new System.Windows.Forms.TextBox();
            this.txtValorPIS = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.btnRemover = new System.Windows.Forms.Button();
            this.btnAdicionar = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label5 = new System.Windows.Forms.Label();
            this.cbbAdicoes = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.pnlLocalizarProcesso = new System.Windows.Forms.Panel();
            this.lblNomeEmpresa = new System.Windows.Forms.Label();
            this.txtProcesso = new System.Windows.Forms.MaskedTextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.ID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Adicao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.PIS_Valor = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.PIS_Unidade = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.PIS_Quantidade = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.COFINS_Valor = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.COFINS_Unidade = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.COFINS_Quantidade = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tabControl.SuspendLayout();
            this.tabFormulario.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).BeginInit();
            this.panelControl.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox6.SuspendLayout();
            this.groupBox5.SuspendLayout();
            this.groupBox4.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.pnlLocalizarProcesso.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabControl
            // 
            this.tabControl.Controls.Add(this.tabFormulario);
            this.tabControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl.Location = new System.Drawing.Point(0, 0);
            this.tabControl.Name = "tabControl";
            this.tabControl.SelectedIndex = 0;
            this.tabControl.Size = new System.Drawing.Size(433, 600);
            this.tabControl.TabIndex = 19;
            // 
            // tabFormulario
            // 
            this.tabFormulario.Controls.Add(this.dataGridView);
            this.tabFormulario.Controls.Add(this.panelControl);
            this.tabFormulario.Controls.Add(this.pnlLocalizarProcesso);
            this.tabFormulario.Location = new System.Drawing.Point(4, 22);
            this.tabFormulario.Name = "tabFormulario";
            this.tabFormulario.Padding = new System.Windows.Forms.Padding(3);
            this.tabFormulario.Size = new System.Drawing.Size(425, 574);
            this.tabFormulario.TabIndex = 0;
            this.tabFormulario.Text = "Controle de CIDE";
            this.tabFormulario.UseVisualStyleBackColor = true;
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
            this.ID,
            this.Adicao,
            this.PIS_Valor,
            this.PIS_Unidade,
            this.PIS_Quantidade,
            this.COFINS_Valor,
            this.COFINS_Unidade,
            this.COFINS_Quantidade});
            this.dataGridView.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dataGridView.Location = new System.Drawing.Point(3, 413);
            this.dataGridView.MultiSelect = false;
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
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView.RowsDefaultCellStyle = dataGridViewCellStyle3;
            this.dataGridView.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView.Size = new System.Drawing.Size(419, 158);
            this.dataGridView.TabIndex = 16;
            // 
            // panelControl
            // 
            this.panelControl.Controls.Add(this.groupBox2);
            this.panelControl.Controls.Add(this.groupBox1);
            this.panelControl.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl.Enabled = false;
            this.panelControl.Location = new System.Drawing.Point(3, 37);
            this.panelControl.Name = "panelControl";
            this.panelControl.Size = new System.Drawing.Size(419, 386);
            this.panelControl.TabIndex = 6;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.groupBox6);
            this.groupBox2.Controls.Add(this.groupBox5);
            this.groupBox2.Controls.Add(this.groupBox4);
            this.groupBox2.Controls.Add(this.groupBox3);
            this.groupBox2.Controls.Add(this.btnRemover);
            this.groupBox2.Controls.Add(this.btnAdicionar);
            this.groupBox2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox2.Location = new System.Drawing.Point(0, 57);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(419, 329);
            this.groupBox2.TabIndex = 18;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Alíquota Específica";
            // 
            // groupBox6
            // 
            this.groupBox6.Controls.Add(this.lblValorRecolherCOFINS);
            this.groupBox6.Controls.Add(this.lblValorReduzidoCOFINS);
            this.groupBox6.Controls.Add(this.lblValorDevidoCOFINS);
            this.groupBox6.Controls.Add(this.lblValorCalculadoCOFINS);
            this.groupBox6.Controls.Add(this.label21);
            this.groupBox6.Controls.Add(this.label22);
            this.groupBox6.Controls.Add(this.label23);
            this.groupBox6.Controls.Add(this.label24);
            this.groupBox6.Location = new System.Drawing.Point(8, 218);
            this.groupBox6.Name = "groupBox6";
            this.groupBox6.Size = new System.Drawing.Size(403, 60);
            this.groupBox6.TabIndex = 16;
            this.groupBox6.TabStop = false;
            this.groupBox6.Text = "COFINS";
            // 
            // lblValorRecolherCOFINS
            // 
            this.lblValorRecolherCOFINS.AutoSize = true;
            this.lblValorRecolherCOFINS.Location = new System.Drawing.Point(317, 38);
            this.lblValorRecolherCOFINS.Name = "lblValorRecolherCOFINS";
            this.lblValorRecolherCOFINS.Size = new System.Drawing.Size(123, 13);
            this.lblValorRecolherCOFINS.TabIndex = 7;
            this.lblValorRecolherCOFINS.Text = "lblValorRecolherCOFINS";
            // 
            // lblValorReduzidoCOFINS
            // 
            this.lblValorReduzidoCOFINS.AutoSize = true;
            this.lblValorReduzidoCOFINS.Location = new System.Drawing.Point(317, 16);
            this.lblValorReduzidoCOFINS.Name = "lblValorReduzidoCOFINS";
            this.lblValorReduzidoCOFINS.Size = new System.Drawing.Size(125, 13);
            this.lblValorReduzidoCOFINS.TabIndex = 6;
            this.lblValorReduzidoCOFINS.Text = "lblValorReduzidoCOFINS";
            // 
            // lblValorDevidoCOFINS
            // 
            this.lblValorDevidoCOFINS.AutoSize = true;
            this.lblValorDevidoCOFINS.Location = new System.Drawing.Point(113, 38);
            this.lblValorDevidoCOFINS.Name = "lblValorDevidoCOFINS";
            this.lblValorDevidoCOFINS.Size = new System.Drawing.Size(114, 13);
            this.lblValorDevidoCOFINS.TabIndex = 5;
            this.lblValorDevidoCOFINS.Text = "lblValorDevidoCOFINS";
            // 
            // lblValorCalculadoCOFINS
            // 
            this.lblValorCalculadoCOFINS.AutoSize = true;
            this.lblValorCalculadoCOFINS.Location = new System.Drawing.Point(113, 16);
            this.lblValorCalculadoCOFINS.Name = "lblValorCalculadoCOFINS";
            this.lblValorCalculadoCOFINS.Size = new System.Drawing.Size(127, 13);
            this.lblValorCalculadoCOFINS.TabIndex = 4;
            this.lblValorCalculadoCOFINS.Text = "lblValorCalculadoCOFINS";
            // 
            // label21
            // 
            this.label21.AutoSize = true;
            this.label21.Location = new System.Drawing.Point(209, 38);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(109, 13);
            this.label21.TabIndex = 3;
            this.label21.Text = "Valor a Recolher(R$):";
            // 
            // label22
            // 
            this.label22.AutoSize = true;
            this.label22.Location = new System.Drawing.Point(209, 16);
            this.label22.Name = "label22";
            this.label22.Size = new System.Drawing.Size(102, 13);
            this.label22.TabIndex = 2;
            this.label22.Text = "Valor Reduzido(R$):";
            // 
            // label23
            // 
            this.label23.AutoSize = true;
            this.label23.Location = new System.Drawing.Point(6, 38);
            this.label23.Name = "label23";
            this.label23.Size = new System.Drawing.Size(91, 13);
            this.label23.TabIndex = 1;
            this.label23.Text = "Valor Devido(R$):";
            // 
            // label24
            // 
            this.label24.AutoSize = true;
            this.label24.Location = new System.Drawing.Point(6, 16);
            this.label24.Name = "label24";
            this.label24.Size = new System.Drawing.Size(104, 13);
            this.label24.TabIndex = 0;
            this.label24.Text = "Valor Calculado(R$):";
            // 
            // groupBox5
            // 
            this.groupBox5.Controls.Add(this.lblValorRecolherPIS);
            this.groupBox5.Controls.Add(this.lblValorReduzidoPIS);
            this.groupBox5.Controls.Add(this.lblValorDevidoPIS);
            this.groupBox5.Controls.Add(this.lblValorCalculadoPIS);
            this.groupBox5.Controls.Add(this.label15);
            this.groupBox5.Controls.Add(this.label11);
            this.groupBox5.Controls.Add(this.label10);
            this.groupBox5.Controls.Add(this.label9);
            this.groupBox5.Location = new System.Drawing.Point(8, 152);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Size = new System.Drawing.Size(403, 60);
            this.groupBox5.TabIndex = 15;
            this.groupBox5.TabStop = false;
            this.groupBox5.Text = "PIS/PASEP";
            // 
            // lblValorRecolherPIS
            // 
            this.lblValorRecolherPIS.AutoSize = true;
            this.lblValorRecolherPIS.Location = new System.Drawing.Point(317, 38);
            this.lblValorRecolherPIS.Name = "lblValorRecolherPIS";
            this.lblValorRecolherPIS.Size = new System.Drawing.Size(101, 13);
            this.lblValorRecolherPIS.TabIndex = 7;
            this.lblValorRecolherPIS.Text = "lblValorRecolherPIS";
            // 
            // lblValorReduzidoPIS
            // 
            this.lblValorReduzidoPIS.AutoSize = true;
            this.lblValorReduzidoPIS.Location = new System.Drawing.Point(317, 16);
            this.lblValorReduzidoPIS.Name = "lblValorReduzidoPIS";
            this.lblValorReduzidoPIS.Size = new System.Drawing.Size(103, 13);
            this.lblValorReduzidoPIS.TabIndex = 6;
            this.lblValorReduzidoPIS.Text = "lblValorReduzidoPIS";
            // 
            // lblValorDevidoPIS
            // 
            this.lblValorDevidoPIS.AutoSize = true;
            this.lblValorDevidoPIS.Location = new System.Drawing.Point(113, 38);
            this.lblValorDevidoPIS.Name = "lblValorDevidoPIS";
            this.lblValorDevidoPIS.Size = new System.Drawing.Size(92, 13);
            this.lblValorDevidoPIS.TabIndex = 5;
            this.lblValorDevidoPIS.Text = "lblValorDevidoPIS";
            // 
            // lblValorCalculadoPIS
            // 
            this.lblValorCalculadoPIS.AutoSize = true;
            this.lblValorCalculadoPIS.Location = new System.Drawing.Point(113, 16);
            this.lblValorCalculadoPIS.Name = "lblValorCalculadoPIS";
            this.lblValorCalculadoPIS.Size = new System.Drawing.Size(105, 13);
            this.lblValorCalculadoPIS.TabIndex = 4;
            this.lblValorCalculadoPIS.Text = "lblValorCalculadoPIS";
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Location = new System.Drawing.Point(209, 38);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(109, 13);
            this.label15.TabIndex = 3;
            this.label15.Text = "Valor a Recolher(R$):";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(209, 16);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(102, 13);
            this.label11.TabIndex = 2;
            this.label11.Text = "Valor Reduzido(R$):";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(6, 38);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(91, 13);
            this.label10.TabIndex = 1;
            this.label10.Text = "Valor Devido(R$):";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(6, 16);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(104, 13);
            this.label9.TabIndex = 0;
            this.label9.Text = "Valor Calculado(R$):";
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.txtQuantidadeCOFINS);
            this.groupBox4.Controls.Add(this.txtUnidadeCOFINS);
            this.groupBox4.Controls.Add(this.txtValorCOFINS);
            this.groupBox4.Controls.Add(this.label1);
            this.groupBox4.Controls.Add(this.label2);
            this.groupBox4.Controls.Add(this.label8);
            this.groupBox4.Location = new System.Drawing.Point(213, 19);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(198, 133);
            this.groupBox4.TabIndex = 14;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "COFINS";
            // 
            // txtQuantidadeCOFINS
            // 
            this.txtQuantidadeCOFINS.Location = new System.Drawing.Point(7, 107);
            this.txtQuantidadeCOFINS.MaxLength = 8;
            this.txtQuantidadeCOFINS.Name = "txtQuantidadeCOFINS";
            this.txtQuantidadeCOFINS.Size = new System.Drawing.Size(146, 20);
            this.txtQuantidadeCOFINS.TabIndex = 6;
            // 
            // txtUnidadeCOFINS
            // 
            this.txtUnidadeCOFINS.Location = new System.Drawing.Point(7, 70);
            this.txtUnidadeCOFINS.MaxLength = 15;
            this.txtUnidadeCOFINS.Name = "txtUnidadeCOFINS";
            this.txtUnidadeCOFINS.Size = new System.Drawing.Size(146, 20);
            this.txtUnidadeCOFINS.TabIndex = 5;
            // 
            // txtValorCOFINS
            // 
            this.txtValorCOFINS.Location = new System.Drawing.Point(7, 33);
            this.txtValorCOFINS.MaxLength = 12;
            this.txtValorCOFINS.Name = "txtValorCOFINS";
            this.txtValorCOFINS.Size = new System.Drawing.Size(146, 20);
            this.txtValorCOFINS.TabIndex = 4;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(4, 56);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(100, 13);
            this.label1.TabIndex = 10;
            this.label1.Text = "Unidade de Medida";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(4, 93);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(120, 13);
            this.label2.TabIndex = 9;
            this.label2.Text = "Quantidade na Unidade";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(4, 17);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(31, 13);
            this.label8.TabIndex = 8;
            this.label8.Text = "Valor";
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.txtQuantidadePIS);
            this.groupBox3.Controls.Add(this.txtUnidadePIS);
            this.groupBox3.Controls.Add(this.txtValorPIS);
            this.groupBox3.Controls.Add(this.label7);
            this.groupBox3.Controls.Add(this.label6);
            this.groupBox3.Controls.Add(this.label4);
            this.groupBox3.Location = new System.Drawing.Point(9, 19);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(198, 133);
            this.groupBox3.TabIndex = 13;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "PIS/PASEP";
            // 
            // txtQuantidadePIS
            // 
            this.txtQuantidadePIS.Location = new System.Drawing.Point(7, 107);
            this.txtQuantidadePIS.MaxLength = 8;
            this.txtQuantidadePIS.Name = "txtQuantidadePIS";
            this.txtQuantidadePIS.Size = new System.Drawing.Size(146, 20);
            this.txtQuantidadePIS.TabIndex = 6;
            // 
            // txtUnidadePIS
            // 
            this.txtUnidadePIS.Location = new System.Drawing.Point(7, 70);
            this.txtUnidadePIS.MaxLength = 15;
            this.txtUnidadePIS.Name = "txtUnidadePIS";
            this.txtUnidadePIS.Size = new System.Drawing.Size(146, 20);
            this.txtUnidadePIS.TabIndex = 5;
            // 
            // txtValorPIS
            // 
            this.txtValorPIS.Location = new System.Drawing.Point(7, 33);
            this.txtValorPIS.MaxLength = 12;
            this.txtValorPIS.Name = "txtValorPIS";
            this.txtValorPIS.Size = new System.Drawing.Size(146, 20);
            this.txtValorPIS.TabIndex = 4;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(4, 56);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(100, 13);
            this.label7.TabIndex = 10;
            this.label7.Text = "Unidade de Medida";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(4, 93);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(120, 13);
            this.label6.TabIndex = 9;
            this.label6.Text = "Quantidade na Unidade";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(4, 17);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(31, 13);
            this.label4.TabIndex = 8;
            this.label4.Text = "Valor";
            // 
            // btnRemover
            // 
            this.btnRemover.Image = global::MS2000.Desktop.Properties.Resources.filter_delete;
            this.btnRemover.ImageAlign = System.Drawing.ContentAlignment.BottomLeft;
            this.btnRemover.Location = new System.Drawing.Point(296, 284);
            this.btnRemover.Name = "btnRemover";
            this.btnRemover.Size = new System.Drawing.Size(115, 23);
            this.btnRemover.TabIndex = 12;
            this.btnRemover.Text = "Remover";
            this.btnRemover.UseVisualStyleBackColor = true;
            this.btnRemover.Click += new System.EventHandler(this.btnRemover_Click);
            // 
            // btnAdicionar
            // 
            this.btnAdicionar.Image = global::MS2000.Desktop.Properties.Resources.filter_add;
            this.btnAdicionar.ImageAlign = System.Drawing.ContentAlignment.BottomLeft;
            this.btnAdicionar.Location = new System.Drawing.Point(9, 284);
            this.btnAdicionar.Name = "btnAdicionar";
            this.btnAdicionar.Size = new System.Drawing.Size(115, 23);
            this.btnAdicionar.TabIndex = 11;
            this.btnAdicionar.Text = "Adicionar";
            this.btnAdicionar.UseVisualStyleBackColor = true;
            this.btnAdicionar.Click += new System.EventHandler(this.btnAdicionar_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.cbbAdicoes);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox1.Location = new System.Drawing.Point(0, 0);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(419, 57);
            this.groupBox1.TabIndex = 17;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Selecione a adição desejada";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(6, 26);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(72, 13);
            this.label5.TabIndex = 6;
            this.label5.Text = "Adição/ NCM";
            // 
            // cbbAdicoes
            // 
            this.cbbAdicoes.AutoComplete = true;
            this.cbbAdicoes.AutoDropdown = true;
            this.cbbAdicoes.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.cbbAdicoes.FormattingEnabled = true;
            this.cbbAdicoes.Location = new System.Drawing.Point(88, 23);
            this.cbbAdicoes.Name = "cbbAdicoes";
            this.cbbAdicoes.NumberColumnsDisplay = 3;
            this.cbbAdicoes.Size = new System.Drawing.Size(323, 21);
            this.cbbAdicoes.TabIndex = 1;
            // 
            // pnlLocalizarProcesso
            // 
            this.pnlLocalizarProcesso.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pnlLocalizarProcesso.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlLocalizarProcesso.Controls.Add(this.lblNomeEmpresa);
            this.pnlLocalizarProcesso.Controls.Add(this.txtProcesso);
            this.pnlLocalizarProcesso.Controls.Add(this.label3);
            this.pnlLocalizarProcesso.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlLocalizarProcesso.Location = new System.Drawing.Point(3, 3);
            this.pnlLocalizarProcesso.Name = "pnlLocalizarProcesso";
            this.pnlLocalizarProcesso.Size = new System.Drawing.Size(419, 34);
            this.pnlLocalizarProcesso.TabIndex = 13;
            // 
            // lblNomeEmpresa
            // 
            this.lblNomeEmpresa.AutoSize = true;
            this.lblNomeEmpresa.Location = new System.Drawing.Point(266, 6);
            this.lblNomeEmpresa.Name = "lblNomeEmpresa";
            this.lblNomeEmpresa.Size = new System.Drawing.Size(0, 13);
            this.lblNomeEmpresa.TabIndex = 1;
            // 
            // txtProcesso
            // 
            this.txtProcesso.Location = new System.Drawing.Point(128, 6);
            this.txtProcesso.Mask = "00000/00";
            this.txtProcesso.Name = "txtProcesso";
            this.txtProcesso.Size = new System.Drawing.Size(100, 20);
            this.txtProcesso.TabIndex = 0;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(4, 9);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(117, 13);
            this.label3.TabIndex = 0;
            this.label3.Text = "Digite o nº do processo";
            // 
            // ID
            // 
            this.ID.DataPropertyName = "ID";
            this.ID.HeaderText = "ID";
            this.ID.Name = "ID";
            this.ID.ReadOnly = true;
            this.ID.Visible = false;
            // 
            // Adicao
            // 
            this.Adicao.DataPropertyName = "Numero_Adicao";
            this.Adicao.HeaderText = "Adição";
            this.Adicao.Name = "Adicao";
            this.Adicao.ReadOnly = true;
            this.Adicao.Width = 50;
            // 
            // PIS_Valor
            // 
            this.PIS_Valor.DataPropertyName = "PIS_Valor";
            this.PIS_Valor.HeaderText = "PIS Valor";
            this.PIS_Valor.Name = "PIS_Valor";
            this.PIS_Valor.ReadOnly = true;
            // 
            // PIS_Unidade
            // 
            this.PIS_Unidade.DataPropertyName = "PIS_Unidade";
            this.PIS_Unidade.HeaderText = "PIS Unidade";
            this.PIS_Unidade.Name = "PIS_Unidade";
            this.PIS_Unidade.ReadOnly = true;
            // 
            // PIS_Quantidade
            // 
            this.PIS_Quantidade.DataPropertyName = "PIS_Quantidade";
            this.PIS_Quantidade.HeaderText = "PIS Quantidade";
            this.PIS_Quantidade.Name = "PIS_Quantidade";
            this.PIS_Quantidade.ReadOnly = true;
            // 
            // COFINS_Valor
            // 
            this.COFINS_Valor.DataPropertyName = "COFINS_Valor";
            this.COFINS_Valor.HeaderText = "COFINS Valor";
            this.COFINS_Valor.Name = "COFINS_Valor";
            this.COFINS_Valor.ReadOnly = true;
            // 
            // COFINS_Unidade
            // 
            this.COFINS_Unidade.DataPropertyName = "COFINS_Unidade";
            this.COFINS_Unidade.HeaderText = "COFINS Unidade";
            this.COFINS_Unidade.Name = "COFINS_Unidade";
            this.COFINS_Unidade.ReadOnly = true;
            // 
            // COFINS_Quantidade
            // 
            this.COFINS_Quantidade.DataPropertyName = "COFINS_Quantidade";
            this.COFINS_Quantidade.HeaderText = "COFINS Quantidade";
            this.COFINS_Quantidade.Name = "COFINS_Quantidade";
            this.COFINS_Quantidade.ReadOnly = true;
            // 
            // FrmControleCIDE
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(433, 600);
            this.Controls.Add(this.tabControl);
            this.Name = "FrmControleCIDE";
            this.Tag = "236";
            this.Text = "Processos - CIDE";
            this.Load += new System.EventHandler(this.FrmControleCIDE_Load);
            this.tabControl.ResumeLayout(false);
            this.tabFormulario.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).EndInit();
            this.panelControl.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox6.ResumeLayout(false);
            this.groupBox6.PerformLayout();
            this.groupBox5.ResumeLayout(false);
            this.groupBox5.PerformLayout();
            this.groupBox4.ResumeLayout(false);
            this.groupBox4.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.pnlLocalizarProcesso.ResumeLayout(false);
            this.pnlLocalizarProcesso.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl;
        private System.Windows.Forms.TabPage tabFormulario;
        private System.Windows.Forms.DataGridView dataGridView;
        private System.Windows.Forms.Panel panelControl;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label5;
        private Componentes.MultiColumnComboBox cbbAdicoes;
        private System.Windows.Forms.Panel pnlLocalizarProcesso;
        private System.Windows.Forms.Label lblNomeEmpresa;
        private System.Windows.Forms.MaskedTextBox txtProcesso;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox groupBox6;
        private System.Windows.Forms.Label lblValorRecolherCOFINS;
        private System.Windows.Forms.Label lblValorReduzidoCOFINS;
        private System.Windows.Forms.Label lblValorDevidoCOFINS;
        private System.Windows.Forms.Label lblValorCalculadoCOFINS;
        private System.Windows.Forms.Label label21;
        private System.Windows.Forms.Label label22;
        private System.Windows.Forms.Label label23;
        private System.Windows.Forms.Label label24;
        private System.Windows.Forms.GroupBox groupBox5;
        private System.Windows.Forms.Label lblValorRecolherPIS;
        private System.Windows.Forms.Label lblValorReduzidoPIS;
        private System.Windows.Forms.Label lblValorDevidoPIS;
        private System.Windows.Forms.Label lblValorCalculadoPIS;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.TextBox txtQuantidadeCOFINS;
        private System.Windows.Forms.TextBox txtUnidadeCOFINS;
        private System.Windows.Forms.TextBox txtValorCOFINS;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.TextBox txtQuantidadePIS;
        private System.Windows.Forms.TextBox txtUnidadePIS;
        private System.Windows.Forms.TextBox txtValorPIS;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btnRemover;
        private System.Windows.Forms.Button btnAdicionar;
        private System.Windows.Forms.DataGridViewTextBoxColumn ID;
        private System.Windows.Forms.DataGridViewTextBoxColumn Adicao;
        private System.Windows.Forms.DataGridViewTextBoxColumn PIS_Valor;
        private System.Windows.Forms.DataGridViewTextBoxColumn PIS_Unidade;
        private System.Windows.Forms.DataGridViewTextBoxColumn PIS_Quantidade;
        private System.Windows.Forms.DataGridViewTextBoxColumn COFINS_Valor;
        private System.Windows.Forms.DataGridViewTextBoxColumn COFINS_Unidade;
        private System.Windows.Forms.DataGridViewTextBoxColumn COFINS_Quantidade;
    }
}
