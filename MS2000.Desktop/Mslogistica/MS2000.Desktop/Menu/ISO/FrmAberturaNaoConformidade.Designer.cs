namespace MS2000.Desktop.Menu.ISO
{
    partial class FrmAberturaNaoConformidade
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmAberturaNaoConformidade));
            this.bindingNavigator = new System.Windows.Forms.BindingNavigator(this.components);
            this.btnSalvar = new System.Windows.Forms.ToolStripButton();
            this.btnFechar = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.txtDisposicao = new System.Windows.Forms.TextBox();
            this.txtDataAtual = new System.Windows.Forms.MaskedTextBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.rdbPotencial = new System.Windows.Forms.RadioButton();
            this.rdbReal = new System.Windows.Forms.RadioButton();
            this.mcbbTipo = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.txtRespIdentif = new System.Windows.Forms.TextBox();
            this.txtNumero = new System.Windows.Forms.TextBox();
            this.txtConformidade = new System.Windows.Forms.TextBox();
            this.txtResponsavel = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.mcbbLocal = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.txtData = new System.Windows.Forms.MaskedTextBox();
            this.pnlLocalizarProcesso = new System.Windows.Forms.Panel();
            this.label9 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label10 = new System.Windows.Forms.Label();
            this.txtRequisito = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator)).BeginInit();
            this.bindingNavigator.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.pnlLocalizarProcesso.SuspendLayout();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // bindingNavigator
            // 
            this.bindingNavigator.AddNewItem = null;
            this.bindingNavigator.CountItem = null;
            this.bindingNavigator.CountItemFormat = "de {0}";
            this.bindingNavigator.DeleteItem = null;
            this.bindingNavigator.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.btnSalvar,
            this.btnFechar,
            this.toolStripSeparator1});
            this.bindingNavigator.Location = new System.Drawing.Point(0, 0);
            this.bindingNavigator.MoveFirstItem = null;
            this.bindingNavigator.MoveLastItem = null;
            this.bindingNavigator.MoveNextItem = null;
            this.bindingNavigator.MovePreviousItem = null;
            this.bindingNavigator.Name = "bindingNavigator";
            this.bindingNavigator.PositionItem = null;
            this.bindingNavigator.Size = new System.Drawing.Size(459, 25);
            this.bindingNavigator.TabIndex = 40;
            this.bindingNavigator.Text = "bindingNavigator1";
            // 
            // btnSalvar
            // 
            this.btnSalvar.Image = ((System.Drawing.Image)(resources.GetObject("btnSalvar.Image")));
            this.btnSalvar.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnSalvar.Name = "btnSalvar";
            this.btnSalvar.Size = new System.Drawing.Size(57, 22);
            this.btnSalvar.Text = "&Salvar";
            this.btnSalvar.Click += new System.EventHandler(this.btnSalvar_Click);
            // 
            // btnFechar
            // 
            this.btnFechar.Image = global::MS2000.Desktop.Properties.Resources.sair;
            this.btnFechar.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnFechar.Name = "btnFechar";
            this.btnFechar.Size = new System.Drawing.Size(60, 22);
            this.btnFechar.Text = "&Fechar";
            this.btnFechar.Click += new System.EventHandler(this.btnFechar_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(6, 25);
            // 
            // txtDisposicao
            // 
            this.txtDisposicao.Location = new System.Drawing.Point(15, 353);
            this.txtDisposicao.Multiline = true;
            this.txtDisposicao.Name = "txtDisposicao";
            this.txtDisposicao.Size = new System.Drawing.Size(430, 144);
            this.txtDisposicao.TabIndex = 10;
            // 
            // txtDataAtual
            // 
            this.txtDataAtual.AccessibleName = "";
            this.txtDataAtual.Enabled = false;
            this.txtDataAtual.Location = new System.Drawing.Point(344, 56);
            this.txtDataAtual.Mask = "00/00/0000";
            this.txtDataAtual.Name = "txtDataAtual";
            this.txtDataAtual.Size = new System.Drawing.Size(101, 20);
            this.txtDataAtual.TabIndex = 3;
            this.txtDataAtual.ValidatingType = typeof(System.DateTime);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.rdbPotencial);
            this.groupBox2.Controls.Add(this.rdbReal);
            this.groupBox2.Location = new System.Drawing.Point(234, 125);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(211, 40);
            this.groupBox2.TabIndex = 6;
            this.groupBox2.TabStop = false;
            // 
            // rdbPotencial
            // 
            this.rdbPotencial.AutoSize = true;
            this.rdbPotencial.BackColor = System.Drawing.SystemColors.Control;
            this.rdbPotencial.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rdbPotencial.ForeColor = System.Drawing.SystemColors.ControlText;
            this.rdbPotencial.Location = new System.Drawing.Point(127, 16);
            this.rdbPotencial.Name = "rdbPotencial";
            this.rdbPotencial.Size = new System.Drawing.Size(69, 17);
            this.rdbPotencial.TabIndex = 8;
            this.rdbPotencial.Text = "Potencial";
            this.rdbPotencial.UseVisualStyleBackColor = false;
            // 
            // rdbReal
            // 
            this.rdbReal.AutoSize = true;
            this.rdbReal.Checked = true;
            this.rdbReal.Location = new System.Drawing.Point(7, 17);
            this.rdbReal.Name = "rdbReal";
            this.rdbReal.Size = new System.Drawing.Size(47, 17);
            this.rdbReal.TabIndex = 7;
            this.rdbReal.TabStop = true;
            this.rdbReal.Text = "Real";
            this.rdbReal.UseVisualStyleBackColor = true;
            // 
            // mcbbTipo
            // 
            this.mcbbTipo.AutoComplete = true;
            this.mcbbTipo.AutoDropdown = true;
            this.mcbbTipo.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbbTipo.FormattingEnabled = true;
            this.mcbbTipo.Location = new System.Drawing.Point(232, 98);
            this.mcbbTipo.Name = "mcbbTipo";
            this.mcbbTipo.NumberColumnsDisplay = 0;
            this.mcbbTipo.Size = new System.Drawing.Size(213, 21);
            this.mcbbTipo.TabIndex = 5;
            // 
            // txtRespIdentif
            // 
            this.txtRespIdentif.BackColor = System.Drawing.SystemColors.Window;
            this.txtRespIdentif.Enabled = false;
            this.txtRespIdentif.Location = new System.Drawing.Point(95, 56);
            this.txtRespIdentif.Name = "txtRespIdentif";
            this.txtRespIdentif.Size = new System.Drawing.Size(243, 20);
            this.txtRespIdentif.TabIndex = 2;
            // 
            // txtNumero
            // 
            this.txtNumero.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.txtNumero.Enabled = false;
            this.txtNumero.Location = new System.Drawing.Point(15, 56);
            this.txtNumero.Name = "txtNumero";
            this.txtNumero.Size = new System.Drawing.Size(74, 20);
            this.txtNumero.TabIndex = 1;
            // 
            // txtConformidade
            // 
            this.txtConformidade.Location = new System.Drawing.Point(15, 188);
            this.txtConformidade.Multiline = true;
            this.txtConformidade.Name = "txtConformidade";
            this.txtConformidade.Size = new System.Drawing.Size(430, 144);
            this.txtConformidade.TabIndex = 9;
            // 
            // txtResponsavel
            // 
            this.txtResponsavel.Location = new System.Drawing.Point(15, 513);
            this.txtResponsavel.Name = "txtResponsavel";
            this.txtResponsavel.Size = new System.Drawing.Size(326, 20);
            this.txtResponsavel.TabIndex = 11;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 40);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(19, 13);
            this.label1.TabIndex = 50;
            this.label1.Text = "N°";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(92, 40);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(130, 13);
            this.label2.TabIndex = 51;
            this.label2.Text = "Responsável pela Identif.:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(341, 40);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(30, 13);
            this.label3.TabIndex = 52;
            this.label3.Text = "Data";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 82);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(103, 13);
            this.label4.TabIndex = 53;
            this.label4.Text = "Requisito da Norma:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(229, 82);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(61, 13);
            this.label5.TabIndex = 54;
            this.label5.Text = "Tipo de NC";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(12, 124);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(33, 13);
            this.label6.TabIndex = 55;
            this.label6.Text = "Local";
            // 
            // mcbbLocal
            // 
            this.mcbbLocal.AutoComplete = true;
            this.mcbbLocal.AutoDropdown = true;
            this.mcbbLocal.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbbLocal.FormattingEnabled = true;
            this.mcbbLocal.Items.AddRange(new object[] {
            "Operacional",
            "RH",
            "Financeiro",
            "Gestão",
            "Informática",
            "Comercial",
            "SMS",
            "Compras"});
            this.mcbbLocal.Location = new System.Drawing.Point(15, 140);
            this.mcbbLocal.Name = "mcbbLocal";
            this.mcbbLocal.NumberColumnsDisplay = 0;
            this.mcbbLocal.Size = new System.Drawing.Size(213, 21);
            this.mcbbLocal.TabIndex = 6;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(341, 499);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(30, 13);
            this.label7.TabIndex = 57;
            this.label7.Text = "Data";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(12, 499);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(69, 13);
            this.label8.TabIndex = 58;
            this.label8.Text = "Responsável";
            // 
            // txtData
            // 
            this.txtData.AccessibleName = "";
            this.txtData.Location = new System.Drawing.Point(344, 513);
            this.txtData.Mask = "00/00/0000";
            this.txtData.Name = "txtData";
            this.txtData.Size = new System.Drawing.Size(101, 20);
            this.txtData.TabIndex = 12;
            this.txtData.ValidatingType = typeof(System.DateTime);
            // 
            // pnlLocalizarProcesso
            // 
            this.pnlLocalizarProcesso.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pnlLocalizarProcesso.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlLocalizarProcesso.Controls.Add(this.label9);
            this.pnlLocalizarProcesso.Location = new System.Drawing.Point(15, 169);
            this.pnlLocalizarProcesso.Name = "pnlLocalizarProcesso";
            this.pnlLocalizarProcesso.Size = new System.Drawing.Size(430, 18);
            this.pnlLocalizarProcesso.TabIndex = 60;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(62, 2);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(300, 13);
            this.label9.TabIndex = 0;
            this.label9.Text = "Descrição da não-conformidade (Fato, Requisito e Evidência):";
            this.label9.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel1.Controls.Add(this.label10);
            this.panel1.Location = new System.Drawing.Point(15, 334);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(430, 18);
            this.panel1.TabIndex = 61;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(116, 2);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(202, 13);
            this.label10.TabIndex = 0;
            this.label10.Text = "Descrição da disposição (Ação imediata):";
            this.label10.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // txtRequisito
            // 
            this.txtRequisito.Location = new System.Drawing.Point(15, 99);
            this.txtRequisito.Name = "txtRequisito";
            this.txtRequisito.Size = new System.Drawing.Size(211, 20);
            this.txtRequisito.TabIndex = 4;
            // 
            // FrmAberturaNaoConformidade
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(459, 546);
            this.Controls.Add(this.txtRequisito);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.pnlLocalizarProcesso);
            this.Controls.Add(this.txtData);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.mcbbLocal);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtResponsavel);
            this.Controls.Add(this.txtConformidade);
            this.Controls.Add(this.txtNumero);
            this.Controls.Add(this.txtRespIdentif);
            this.Controls.Add(this.mcbbTipo);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.txtDataAtual);
            this.Controls.Add(this.txtDisposicao);
            this.Controls.Add(this.bindingNavigator);
            this.Name = "FrmAberturaNaoConformidade";
            this.Tag = "804";
            this.Text = "Abertura de Não Conformidade";
            this.Load += new System.EventHandler(this.FrmAberturaNaoConformidade_Load);
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator)).EndInit();
            this.bindingNavigator.ResumeLayout(false);
            this.bindingNavigator.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.pnlLocalizarProcesso.ResumeLayout(false);
            this.pnlLocalizarProcesso.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.BindingNavigator bindingNavigator;
        private System.Windows.Forms.ToolStripButton btnSalvar;
        private System.Windows.Forms.ToolStripButton btnFechar;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.TextBox txtDisposicao;
        private System.Windows.Forms.MaskedTextBox txtDataAtual;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.RadioButton rdbPotencial;
        private System.Windows.Forms.RadioButton rdbReal;
        private Componentes.MultiColumnComboBox mcbbTipo;
        private System.Windows.Forms.TextBox txtRespIdentif;
        private System.Windows.Forms.TextBox txtNumero;
        private System.Windows.Forms.TextBox txtConformidade;
        private System.Windows.Forms.TextBox txtResponsavel;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private Componentes.MultiColumnComboBox mcbbLocal;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.MaskedTextBox txtData;
        private System.Windows.Forms.Panel pnlLocalizarProcesso;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtRequisito;
    }
}
