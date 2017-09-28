namespace MS2000.Desktop.Menu.Controle
{
    partial class FrmControleValidadeDocumentosCadastro
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
            this.panelControl = new System.Windows.Forms.Panel();
            this.txtVigenciaFinal = new System.Windows.Forms.MaskedTextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtDataBaixa = new System.Windows.Forms.MaskedTextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtDataProrrogacao = new System.Windows.Forms.MaskedTextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.cbbStatus = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.txtVigenciaInicial = new System.Windows.Forms.MaskedTextBox();
            this.lbCNPJ_CPF = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label5 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
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
            this.label7 = new System.Windows.Forms.Label();
            this.txtValorII = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.txtDI = new System.Windows.Forms.TextBox();
            this.cbbFiador = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.label9 = new System.Windows.Forms.Label();
            this.btnCancela = new System.Windows.Forms.Button();
            this.btnConfirma = new System.Windows.Forms.Button();
            this.panelControl.SuspendLayout();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // panelControl
            // 
            this.panelControl.Controls.Add(this.txtVigenciaFinal);
            this.panelControl.Controls.Add(this.label4);
            this.panelControl.Controls.Add(this.txtDataBaixa);
            this.panelControl.Controls.Add(this.label3);
            this.panelControl.Controls.Add(this.txtDataProrrogacao);
            this.panelControl.Controls.Add(this.label1);
            this.panelControl.Controls.Add(this.cbbStatus);
            this.panelControl.Controls.Add(this.txtVigenciaInicial);
            this.panelControl.Controls.Add(this.lbCNPJ_CPF);
            this.panelControl.Controls.Add(this.label2);
            this.panelControl.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl.Location = new System.Drawing.Point(0, 0);
            this.panelControl.Name = "panelControl";
            this.panelControl.Size = new System.Drawing.Size(626, 61);
            this.panelControl.TabIndex = 16;
            // 
            // txtVigenciaFinal
            // 
            this.txtVigenciaFinal.Location = new System.Drawing.Point(90, 25);
            this.txtVigenciaFinal.Mask = "00/00/0000";
            this.txtVigenciaFinal.Name = "txtVigenciaFinal";
            this.txtVigenciaFinal.Size = new System.Drawing.Size(72, 20);
            this.txtVigenciaFinal.TabIndex = 7;
            this.txtVigenciaFinal.ValidatingType = typeof(System.DateTime);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(87, 9);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(73, 13);
            this.label4.TabIndex = 8;
            this.label4.Text = "Vigência Final";
            // 
            // txtDataBaixa
            // 
            this.txtDataBaixa.Location = new System.Drawing.Point(168, 25);
            this.txtDataBaixa.Mask = "00/00/0000";
            this.txtDataBaixa.Name = "txtDataBaixa";
            this.txtDataBaixa.Size = new System.Drawing.Size(72, 20);
            this.txtDataBaixa.TabIndex = 5;
            this.txtDataBaixa.ValidatingType = typeof(System.DateTime);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(165, 9);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(74, 13);
            this.label3.TabIndex = 6;
            this.label3.Text = "Data de Baixa";
            // 
            // txtDataProrrogacao
            // 
            this.txtDataProrrogacao.Location = new System.Drawing.Point(246, 25);
            this.txtDataProrrogacao.Mask = "00/00/0000";
            this.txtDataProrrogacao.Name = "txtDataProrrogacao";
            this.txtDataProrrogacao.Size = new System.Drawing.Size(88, 20);
            this.txtDataProrrogacao.TabIndex = 3;
            this.txtDataProrrogacao.ValidatingType = typeof(System.DateTime);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(243, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(91, 13);
            this.label1.TabIndex = 4;
            this.label1.Text = "Data Prorrogação";
            // 
            // cbbStatus
            // 
            this.cbbStatus.AutoComplete = true;
            this.cbbStatus.AutoDropdown = true;
            this.cbbStatus.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.cbbStatus.FormattingEnabled = true;
            this.cbbStatus.Location = new System.Drawing.Point(343, 25);
            this.cbbStatus.Name = "cbbStatus";
            this.cbbStatus.NumberColumnsDisplay = 0;
            this.cbbStatus.Size = new System.Drawing.Size(272, 21);
            this.cbbStatus.TabIndex = 2;
            // 
            // txtVigenciaInicial
            // 
            this.txtVigenciaInicial.Location = new System.Drawing.Point(12, 25);
            this.txtVigenciaInicial.Mask = "00/00/0000";
            this.txtVigenciaInicial.Name = "txtVigenciaInicial";
            this.txtVigenciaInicial.Size = new System.Drawing.Size(72, 20);
            this.txtVigenciaInicial.TabIndex = 1;
            this.txtVigenciaInicial.ValidatingType = typeof(System.DateTime);
            // 
            // lbCNPJ_CPF
            // 
            this.lbCNPJ_CPF.AutoSize = true;
            this.lbCNPJ_CPF.Location = new System.Drawing.Point(340, 9);
            this.lbCNPJ_CPF.Name = "lbCNPJ_CPF";
            this.lbCNPJ_CPF.Size = new System.Drawing.Size(37, 13);
            this.lbCNPJ_CPF.TabIndex = 2;
            this.lbCNPJ_CPF.Text = "Status";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(9, 9);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(78, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Vigência Inicial";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.panel1.Controls.Add(this.label5);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 61);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(626, 21);
            this.panel1.TabIndex = 17;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(124, 3);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(365, 13);
            this.label5.TabIndex = 0;
            this.label5.Text = "Alterar - Informações referentes ao controle de Termos de Responsabilidade";
            // 
            // panel2
            // 
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
            this.panel2.Controls.Add(this.label7);
            this.panel2.Controls.Add(this.txtValorII);
            this.panel2.Controls.Add(this.label6);
            this.panel2.Controls.Add(this.txtDI);
            this.panel2.Controls.Add(this.cbbFiador);
            this.panel2.Controls.Add(this.label9);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel2.Location = new System.Drawing.Point(0, 82);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(626, 100);
            this.panel2.TabIndex = 18;
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
            this.txtSeguradora.Size = new System.Drawing.Size(319, 20);
            this.txtSeguradora.TabIndex = 58;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(524, 9);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(93, 13);
            this.label12.TabIndex = 57;
            this.label12.Text = "Valor(R$) COFINS";
            // 
            // txtValorCOFINS
            // 
            this.txtValorCOFINS.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtValorCOFINS.Location = new System.Drawing.Point(527, 25);
            this.txtValorCOFINS.MaxLength = 100;
            this.txtValorCOFINS.Name = "txtValorCOFINS";
            this.txtValorCOFINS.Size = new System.Drawing.Size(88, 20);
            this.txtValorCOFINS.TabIndex = 56;
            this.txtValorCOFINS.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtValorCOFINS_KeyPress);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(113, 9);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(45, 13);
            this.label11.TabIndex = 55;
            this.label11.Text = "N° RCR";
            // 
            // txtRCR
            // 
            this.txtRCR.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtRCR.Location = new System.Drawing.Point(116, 26);
            this.txtRCR.MaxLength = 100;
            this.txtRCR.Name = "txtRCR";
            this.txtRCR.Size = new System.Drawing.Size(124, 20);
            this.txtRCR.TabIndex = 54;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(337, 9);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(67, 13);
            this.label10.TabIndex = 53;
            this.label10.Text = "Valor(R$) IPI";
            // 
            // txtValorIPI
            // 
            this.txtValorIPI.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtValorIPI.Location = new System.Drawing.Point(340, 25);
            this.txtValorIPI.MaxLength = 100;
            this.txtValorIPI.Name = "txtValorIPI";
            this.txtValorIPI.Size = new System.Drawing.Size(88, 20);
            this.txtValorIPI.TabIndex = 52;
            this.txtValorIPI.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtValorIPI_KeyPress);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(431, 9);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(71, 13);
            this.label8.TabIndex = 51;
            this.label8.Text = "Valor(R$) PIS";
            // 
            // txtValorPIS
            // 
            this.txtValorPIS.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtValorPIS.Location = new System.Drawing.Point(434, 25);
            this.txtValorPIS.MaxLength = 100;
            this.txtValorPIS.Name = "txtValorPIS";
            this.txtValorPIS.Size = new System.Drawing.Size(88, 20);
            this.txtValorPIS.TabIndex = 50;
            this.txtValorPIS.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtValorPIS_KeyPress);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(243, 9);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(60, 13);
            this.label7.TabIndex = 49;
            this.label7.Text = "Valor(R$) II";
            // 
            // txtValorII
            // 
            this.txtValorII.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtValorII.Location = new System.Drawing.Point(246, 26);
            this.txtValorII.MaxLength = 100;
            this.txtValorII.Name = "txtValorII";
            this.txtValorII.Size = new System.Drawing.Size(88, 20);
            this.txtValorII.TabIndex = 48;
            this.txtValorII.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtValorII_KeyPress);
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
            this.txtDI.Size = new System.Drawing.Size(95, 20);
            this.txtDI.TabIndex = 46;
            // 
            // cbbFiador
            // 
            this.cbbFiador.AutoComplete = true;
            this.cbbFiador.AutoDropdown = true;
            this.cbbFiador.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.cbbFiador.FormattingEnabled = true;
            this.cbbFiador.Location = new System.Drawing.Point(340, 66);
            this.cbbFiador.Name = "cbbFiador";
            this.cbbFiador.NumberColumnsDisplay = 0;
            this.cbbFiador.Size = new System.Drawing.Size(275, 21);
            this.cbbFiador.TabIndex = 2;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(337, 49);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(36, 13);
            this.label9.TabIndex = 2;
            this.label9.Text = "Fiador";
            // 
            // btnCancela
            // 
            this.btnCancela.Image = global::MS2000.Desktop.Properties.Resources.Cancel;
            this.btnCancela.Location = new System.Drawing.Point(372, 194);
            this.btnCancela.Name = "btnCancela";
            this.btnCancela.Size = new System.Drawing.Size(84, 24);
            this.btnCancela.TabIndex = 20;
            this.btnCancela.Text = "Fechar";
            this.btnCancela.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCancela.UseVisualStyleBackColor = true;
            this.btnCancela.Click += new System.EventHandler(this.btnCancela_Click);
            // 
            // btnConfirma
            // 
            this.btnConfirma.Image = global::MS2000.Desktop.Properties.Resources.OK;
            this.btnConfirma.Location = new System.Drawing.Point(178, 194);
            this.btnConfirma.Name = "btnConfirma";
            this.btnConfirma.Size = new System.Drawing.Size(84, 24);
            this.btnConfirma.TabIndex = 19;
            this.btnConfirma.Text = " Confirma";
            this.btnConfirma.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnConfirma.UseVisualStyleBackColor = true;
            this.btnConfirma.Click += new System.EventHandler(this.btnConfirma_Click);
            // 
            // FrmControleValidadeDocumentosCadastro
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(626, 227);
            this.ControlBox = false;
            this.Controls.Add(this.btnCancela);
            this.Controls.Add(this.btnConfirma);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.panelControl);
            this.Name = "FrmControleValidadeDocumentosCadastro";
            this.Tag = "402";
            this.Text = "Alterar Validade Documentos";
            this.Load += new System.EventHandler(this.FrmControleValidadeDocumentosCadastro_Load);
            this.panelControl.ResumeLayout(false);
            this.panelControl.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelControl;
        private Componentes.MultiColumnComboBox cbbStatus;
        private System.Windows.Forms.MaskedTextBox txtVigenciaInicial;
        private System.Windows.Forms.Label lbCNPJ_CPF;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.MaskedTextBox txtVigenciaFinal;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.MaskedTextBox txtDataBaixa;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.MaskedTextBox txtDataProrrogacao;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Panel panel2;
        private Componentes.MultiColumnComboBox cbbFiador;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox txtValorCOFINS;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox txtRCR;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtValorIPI;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtValorPIS;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtValorII;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtDI;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.TextBox txtSeguradora;
        private System.Windows.Forms.Button btnCancela;
        private System.Windows.Forms.Button btnConfirma;
    }
}
