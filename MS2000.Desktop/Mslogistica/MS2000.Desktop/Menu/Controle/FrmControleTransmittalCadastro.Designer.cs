namespace MS2000.Desktop.Menu.Controle
{
    partial class FrmControleTransmittalCadastro
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
            this.btnCancela = new System.Windows.Forms.Button();
            this.btnConfirma = new System.Windows.Forms.Button();
            this.panelControl = new System.Windows.Forms.Panel();
            this.label3 = new System.Windows.Forms.Label();
            this.txtCodImportador = new System.Windows.Forms.TextBox();
            this.txtNumProcesso = new System.Windows.Forms.MaskedTextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.mcbImportador = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.mcbTipoDocumento = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.mcbSetorRemetente = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.txtDataEnvio = new System.Windows.Forms.MaskedTextBox();
            this.mcbDestinatario = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.txtDestinacao = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.lbCNPJ_CPF = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.gpbRecebimento = new System.Windows.Forms.GroupBox();
            this.label10 = new System.Windows.Forms.Label();
            this.txtDataRecebimento = new System.Windows.Forms.MaskedTextBox();
            this.txtReceptor = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.panelControl.SuspendLayout();
            this.gpbRecebimento.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnCancela
            // 
            this.btnCancela.Image = global::MS2000.Desktop.Properties.Resources.Cancel;
            this.btnCancela.Location = new System.Drawing.Point(289, 217);
            this.btnCancela.Name = "btnCancela";
            this.btnCancela.Size = new System.Drawing.Size(84, 24);
            this.btnCancela.TabIndex = 1;
            this.btnCancela.Text = " Cancela";
            this.btnCancela.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCancela.UseVisualStyleBackColor = true;
            this.btnCancela.Click += new System.EventHandler(this.btnCancela_Click);
            // 
            // btnConfirma
            // 
            this.btnConfirma.Image = global::MS2000.Desktop.Properties.Resources.OK;
            this.btnConfirma.Location = new System.Drawing.Point(155, 217);
            this.btnConfirma.Name = "btnConfirma";
            this.btnConfirma.Size = new System.Drawing.Size(84, 24);
            this.btnConfirma.TabIndex = 0;
            this.btnConfirma.Text = " Confirma";
            this.btnConfirma.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnConfirma.UseVisualStyleBackColor = true;
            this.btnConfirma.Click += new System.EventHandler(this.btnConfirma_Click);
            // 
            // panelControl
            // 
            this.panelControl.Controls.Add(this.label3);
            this.panelControl.Controls.Add(this.txtCodImportador);
            this.panelControl.Controls.Add(this.txtNumProcesso);
            this.panelControl.Controls.Add(this.label9);
            this.panelControl.Controls.Add(this.label6);
            this.panelControl.Controls.Add(this.mcbImportador);
            this.panelControl.Controls.Add(this.mcbTipoDocumento);
            this.panelControl.Controls.Add(this.mcbSetorRemetente);
            this.panelControl.Controls.Add(this.txtDataEnvio);
            this.panelControl.Controls.Add(this.mcbDestinatario);
            this.panelControl.Controls.Add(this.txtDestinacao);
            this.panelControl.Controls.Add(this.label5);
            this.panelControl.Controls.Add(this.label4);
            this.panelControl.Controls.Add(this.lbCNPJ_CPF);
            this.panelControl.Controls.Add(this.label13);
            this.panelControl.Controls.Add(this.label2);
            this.panelControl.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl.Location = new System.Drawing.Point(0, 0);
            this.panelControl.Name = "panelControl";
            this.panelControl.Size = new System.Drawing.Size(549, 140);
            this.panelControl.TabIndex = 15;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(274, 52);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(29, 13);
            this.label3.TabIndex = 51;
            this.label3.Text = "Cod.";
            // 
            // txtCodImportador
            // 
            this.txtCodImportador.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtCodImportador.Location = new System.Drawing.Point(277, 68);
            this.txtCodImportador.MaxLength = 25;
            this.txtCodImportador.Name = "txtCodImportador";
            this.txtCodImportador.Size = new System.Drawing.Size(36, 20);
            this.txtCodImportador.TabIndex = 4;
            this.txtCodImportador.TextChanged += new System.EventHandler(this.txtCodImportador_TextChanged);
            // 
            // txtNumProcesso
            // 
            this.txtNumProcesso.Location = new System.Drawing.Point(11, 27);
            this.txtNumProcesso.Mask = "00000/00";
            this.txtNumProcesso.Name = "txtNumProcesso";
            this.txtNumProcesso.Size = new System.Drawing.Size(78, 20);
            this.txtNumProcesso.TabIndex = 0;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(9, 11);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(81, 13);
            this.label9.TabIndex = 16;
            this.label9.Text = "Nº do Processo";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(274, 94);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(61, 13);
            this.label6.TabIndex = 45;
            this.label6.Text = "Destinação";
            // 
            // mcbImportador
            // 
            this.mcbImportador.AutoComplete = true;
            this.mcbImportador.AutoDropdown = true;
            this.mcbImportador.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbImportador.FormattingEnabled = true;
            this.mcbImportador.Location = new System.Drawing.Point(319, 67);
            this.mcbImportador.Name = "mcbImportador";
            this.mcbImportador.NumberColumnsDisplay = 0;
            this.mcbImportador.Size = new System.Drawing.Size(227, 21);
            this.mcbImportador.TabIndex = 5;
            this.mcbImportador.SelectionChangeCommitted += new System.EventHandler(this.mcbImportador_SelectionChangeCommitted);
            // 
            // mcbTipoDocumento
            // 
            this.mcbTipoDocumento.AutoComplete = true;
            this.mcbTipoDocumento.AutoDropdown = true;
            this.mcbTipoDocumento.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbTipoDocumento.FormattingEnabled = true;
            this.mcbTipoDocumento.Location = new System.Drawing.Point(11, 66);
            this.mcbTipoDocumento.Name = "mcbTipoDocumento";
            this.mcbTipoDocumento.NumberColumnsDisplay = 0;
            this.mcbTipoDocumento.Size = new System.Drawing.Size(246, 21);
            this.mcbTipoDocumento.TabIndex = 3;
            // 
            // mcbSetorRemetente
            // 
            this.mcbSetorRemetente.AutoComplete = true;
            this.mcbSetorRemetente.AutoDropdown = true;
            this.mcbSetorRemetente.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbSetorRemetente.FormattingEnabled = true;
            this.mcbSetorRemetente.Location = new System.Drawing.Point(206, 28);
            this.mcbSetorRemetente.Name = "mcbSetorRemetente";
            this.mcbSetorRemetente.NumberColumnsDisplay = 0;
            this.mcbSetorRemetente.Size = new System.Drawing.Size(340, 21);
            this.mcbSetorRemetente.TabIndex = 2;
            // 
            // txtDataEnvio
            // 
            this.txtDataEnvio.Enabled = false;
            this.txtDataEnvio.Location = new System.Drawing.Point(98, 27);
            this.txtDataEnvio.Mask = "00/00/0000";
            this.txtDataEnvio.Name = "txtDataEnvio";
            this.txtDataEnvio.Size = new System.Drawing.Size(90, 20);
            this.txtDataEnvio.TabIndex = 1;
            this.txtDataEnvio.ValidatingType = typeof(System.DateTime);
            // 
            // mcbDestinatario
            // 
            this.mcbDestinatario.AutoComplete = true;
            this.mcbDestinatario.AutoDropdown = true;
            this.mcbDestinatario.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbDestinatario.FormattingEnabled = true;
            this.mcbDestinatario.Location = new System.Drawing.Point(11, 109);
            this.mcbDestinatario.Name = "mcbDestinatario";
            this.mcbDestinatario.NumberColumnsDisplay = 0;
            this.mcbDestinatario.Size = new System.Drawing.Size(246, 21);
            this.mcbDestinatario.TabIndex = 6;
            // 
            // txtDestinacao
            // 
            this.txtDestinacao.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtDestinacao.Location = new System.Drawing.Point(277, 110);
            this.txtDestinacao.MaxLength = 100;
            this.txtDestinacao.Name = "txtDestinacao";
            this.txtDestinacao.Size = new System.Drawing.Size(269, 20);
            this.txtDestinacao.TabIndex = 7;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(319, 51);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(57, 13);
            this.label5.TabIndex = 4;
            this.label5.Text = "Importador";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(8, 51);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(101, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "Tipo de Documento";
            // 
            // lbCNPJ_CPF
            // 
            this.lbCNPJ_CPF.AutoSize = true;
            this.lbCNPJ_CPF.Location = new System.Drawing.Point(203, 11);
            this.lbCNPJ_CPF.Name = "lbCNPJ_CPF";
            this.lbCNPJ_CPF.Size = new System.Drawing.Size(102, 13);
            this.lbCNPJ_CPF.TabIndex = 2;
            this.lbCNPJ_CPF.Text = "Setor do Remetente";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(8, 93);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(63, 13);
            this.label13.TabIndex = 29;
            this.label13.Text = "Destinatário";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(95, 11);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(30, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Data";
            // 
            // gpbRecebimento
            // 
            this.gpbRecebimento.Controls.Add(this.label10);
            this.gpbRecebimento.Controls.Add(this.txtDataRecebimento);
            this.gpbRecebimento.Controls.Add(this.txtReceptor);
            this.gpbRecebimento.Controls.Add(this.label8);
            this.gpbRecebimento.Location = new System.Drawing.Point(11, 143);
            this.gpbRecebimento.Name = "gpbRecebimento";
            this.gpbRecebimento.Size = new System.Drawing.Size(535, 65);
            this.gpbRecebimento.TabIndex = 47;
            this.gpbRecebimento.TabStop = false;
            this.gpbRecebimento.Text = "Recebimento";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(105, 19);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(51, 13);
            this.label10.TabIndex = 49;
            this.label10.Text = "Receptor";
            // 
            // txtDataRecebimento
            // 
            this.txtDataRecebimento.Enabled = false;
            this.txtDataRecebimento.Location = new System.Drawing.Point(12, 35);
            this.txtDataRecebimento.Mask = "00/00/0000";
            this.txtDataRecebimento.Name = "txtDataRecebimento";
            this.txtDataRecebimento.Size = new System.Drawing.Size(90, 20);
            this.txtDataRecebimento.TabIndex = 0;
            this.txtDataRecebimento.ValidatingType = typeof(System.DateTime);
            // 
            // txtReceptor
            // 
            this.txtReceptor.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtReceptor.Location = new System.Drawing.Point(108, 35);
            this.txtReceptor.MaxLength = 50;
            this.txtReceptor.Name = "txtReceptor";
            this.txtReceptor.Size = new System.Drawing.Size(421, 20);
            this.txtReceptor.TabIndex = 1;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(9, 19);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(30, 13);
            this.label8.TabIndex = 48;
            this.label8.Text = "Data";
            // 
            // FrmControleTransmittalCadastro
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(549, 253);
            this.Controls.Add(this.btnCancela);
            this.Controls.Add(this.btnConfirma);
            this.Controls.Add(this.gpbRecebimento);
            this.Controls.Add(this.panelControl);
            this.Name = "FrmControleTransmittalCadastro";
            this.Tag = "40701";
            this.Load += new System.EventHandler(this.FrmControleTransmittalCadastro_Load);
            this.panelControl.ResumeLayout(false);
            this.panelControl.PerformLayout();
            this.gpbRecebimento.ResumeLayout(false);
            this.gpbRecebimento.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelControl;
        private System.Windows.Forms.GroupBox gpbRecebimento;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.MaskedTextBox txtDataRecebimento;
        private System.Windows.Forms.TextBox txtReceptor;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.MaskedTextBox txtNumProcesso;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label6;
        private Componentes.MultiColumnComboBox mcbTipoDocumento;
        private Componentes.MultiColumnComboBox mcbSetorRemetente;
        private Componentes.MultiColumnComboBox mcbDestinatario;
        private System.Windows.Forms.TextBox txtDestinacao;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label lbCNPJ_CPF;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Button btnConfirma;
        private System.Windows.Forms.Button btnCancela;
        private Componentes.MultiColumnComboBox mcbImportador;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtCodImportador;
        private System.Windows.Forms.MaskedTextBox txtDataEnvio;
        private System.Windows.Forms.Label label2;
    }
}
