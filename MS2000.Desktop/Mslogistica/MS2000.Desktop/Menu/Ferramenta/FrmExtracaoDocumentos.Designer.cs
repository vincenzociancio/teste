namespace MS2000.Desktop.Menu.Ferramenta
{
    partial class FrmExtracaoDocumentos
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
            this.grvClientes = new System.Windows.Forms.DataGridView();
            this.selecao = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.cgc_cnpj_completo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Código = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Razao_Social = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel1 = new System.Windows.Forms.Panel();
            this.rbFaturados = new System.Windows.Forms.RadioButton();
            this.rbDesembaracados = new System.Windows.Forms.RadioButton();
            this.DTPMes = new System.Windows.Forms.DateTimePicker();
            this.label1 = new System.Windows.Forms.Label();
            this.dtpAno = new System.Windows.Forms.DateTimePicker();
            this.label2 = new System.Windows.Forms.Label();
            this.btnExtrair = new System.Windows.Forms.Button();
            this.btnFechar = new System.Windows.Forms.Button();
            this.pnlProgress = new System.Windows.Forms.Panel();
            this.lbEtapa = new System.Windows.Forms.Label();
            this.lbDoc = new System.Windows.Forms.Label();
            this.lbProgress = new System.Windows.Forms.Label();
            this.pbDoc = new System.Windows.Forms.ProgressBar();
            this.pbProcesso = new System.Windows.Forms.ProgressBar();
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            this.SD = new System.Windows.Forms.SaveFileDialog();
            this.FD = new System.Windows.Forms.FolderBrowserDialog();
            this.ckbMes = new System.Windows.Forms.CheckBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.txtLocaliza = new System.Windows.Forms.TextBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.mcbbLocal = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.grvClientes)).BeginInit();
            this.panel1.SuspendLayout();
            this.pnlProgress.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // grvClientes
            // 
            this.grvClientes.AllowUserToAddRows = false;
            this.grvClientes.AllowUserToDeleteRows = false;
            this.grvClientes.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grvClientes.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.selecao,
            this.cgc_cnpj_completo,
            this.Código,
            this.Razao_Social});
            this.grvClientes.Location = new System.Drawing.Point(12, 145);
            this.grvClientes.Name = "grvClientes";
            this.grvClientes.Size = new System.Drawing.Size(760, 347);
            this.grvClientes.TabIndex = 4;
            // 
            // selecao
            // 
            this.selecao.Frozen = true;
            this.selecao.HeaderText = "";
            this.selecao.Name = "selecao";
            this.selecao.Width = 50;
            // 
            // cgc_cnpj_completo
            // 
            this.cgc_cnpj_completo.DataPropertyName = "cnpj_cpf_completo";
            this.cgc_cnpj_completo.HeaderText = "CNPJ";
            this.cgc_cnpj_completo.Name = "cgc_cnpj_completo";
            this.cgc_cnpj_completo.ReadOnly = true;
            this.cgc_cnpj_completo.Width = 110;
            // 
            // Código
            // 
            this.Código.DataPropertyName = "Codigo";
            this.Código.HeaderText = "Código";
            this.Código.Name = "Código";
            this.Código.ReadOnly = true;
            this.Código.Width = 60;
            // 
            // Razao_Social
            // 
            this.Razao_Social.DataPropertyName = "Razao_Social";
            this.Razao_Social.HeaderText = "Cliente";
            this.Razao_Social.Name = "Razao_Social";
            this.Razao_Social.ReadOnly = true;
            this.Razao_Social.Width = 470;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.Info;
            this.panel1.Controls.Add(this.groupBox2);
            this.panel1.Controls.Add(this.groupBox1);
            this.panel1.Controls.Add(this.ckbMes);
            this.panel1.Controls.Add(this.DTPMes);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.btnFechar);
            this.panel1.Controls.Add(this.dtpAno);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.btnExtrair);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(778, 84);
            this.panel1.TabIndex = 9;
            // 
            // rbFaturados
            // 
            this.rbFaturados.AutoSize = true;
            this.rbFaturados.Location = new System.Drawing.Point(132, 15);
            this.rbFaturados.Name = "rbFaturados";
            this.rbFaturados.Size = new System.Drawing.Size(72, 17);
            this.rbFaturados.TabIndex = 15;
            this.rbFaturados.Text = "Faturados";
            this.rbFaturados.UseVisualStyleBackColor = true;
            // 
            // rbDesembaracados
            // 
            this.rbDesembaracados.AutoSize = true;
            this.rbDesembaracados.Checked = true;
            this.rbDesembaracados.Location = new System.Drawing.Point(17, 15);
            this.rbDesembaracados.Name = "rbDesembaracados";
            this.rbDesembaracados.Size = new System.Drawing.Size(108, 17);
            this.rbDesembaracados.TabIndex = 14;
            this.rbDesembaracados.TabStop = true;
            this.rbDesembaracados.Text = "Desembaraçados";
            this.rbDesembaracados.UseVisualStyleBackColor = true;
            // 
            // DTPMes
            // 
            this.DTPMes.CustomFormat = "MMMM";
            this.DTPMes.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.DTPMes.Location = new System.Drawing.Point(144, 15);
            this.DTPMes.Name = "DTPMes";
            this.DTPMes.Size = new System.Drawing.Size(84, 20);
            this.DTPMes.TabIndex = 13;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(108, 18);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(30, 13);
            this.label1.TabIndex = 12;
            this.label1.Text = "Mês:";
            // 
            // dtpAno
            // 
            this.dtpAno.CustomFormat = "yyyy";
            this.dtpAno.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpAno.Location = new System.Drawing.Point(42, 15);
            this.dtpAno.Name = "dtpAno";
            this.dtpAno.ShowUpDown = true;
            this.dtpAno.Size = new System.Drawing.Size(54, 20);
            this.dtpAno.TabIndex = 4;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(10, 19);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(26, 13);
            this.label2.TabIndex = 7;
            this.label2.Text = "Ano";
            // 
            // btnExtrair
            // 
            this.btnExtrair.Image = global::MS2000.Desktop.Properties.Resources.copy16;
            this.btnExtrair.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnExtrair.Location = new System.Drawing.Point(344, 6);
            this.btnExtrair.Name = "btnExtrair";
            this.btnExtrair.Size = new System.Drawing.Size(123, 28);
            this.btnExtrair.TabIndex = 9;
            this.btnExtrair.Text = "Extrair documentos";
            this.btnExtrair.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnExtrair.UseVisualStyleBackColor = true;
            this.btnExtrair.Click += new System.EventHandler(this.btnExtrair_Click);
            // 
            // btnFechar
            // 
            this.btnFechar.Image = global::MS2000.Desktop.Properties.Resources.sair;
            this.btnFechar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnFechar.Location = new System.Drawing.Point(708, 6);
            this.btnFechar.Name = "btnFechar";
            this.btnFechar.Size = new System.Drawing.Size(64, 29);
            this.btnFechar.TabIndex = 10;
            this.btnFechar.Text = "Fechar";
            this.btnFechar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnFechar.UseVisualStyleBackColor = true;
            this.btnFechar.Click += new System.EventHandler(this.btnFechar_Click);
            // 
            // pnlProgress
            // 
            this.pnlProgress.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlProgress.Controls.Add(this.lbEtapa);
            this.pnlProgress.Controls.Add(this.lbDoc);
            this.pnlProgress.Controls.Add(this.lbProgress);
            this.pnlProgress.Controls.Add(this.pbDoc);
            this.pnlProgress.Controls.Add(this.pbProcesso);
            this.pnlProgress.Location = new System.Drawing.Point(12, 498);
            this.pnlProgress.Name = "pnlProgress";
            this.pnlProgress.Size = new System.Drawing.Size(760, 109);
            this.pnlProgress.TabIndex = 17;
            this.pnlProgress.Visible = false;
            // 
            // lbEtapa
            // 
            this.lbEtapa.Location = new System.Drawing.Point(476, 12);
            this.lbEtapa.Name = "lbEtapa";
            this.lbEtapa.Size = new System.Drawing.Size(254, 13);
            this.lbEtapa.TabIndex = 18;
            this.lbEtapa.Text = "Etapas";
            this.lbEtapa.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // 
            // lbDoc
            // 
            this.lbDoc.AutoSize = true;
            this.lbDoc.Location = new System.Drawing.Point(16, 54);
            this.lbDoc.Name = "lbDoc";
            this.lbDoc.Size = new System.Drawing.Size(67, 13);
            this.lbDoc.TabIndex = 17;
            this.lbDoc.Text = "Documentos";
            // 
            // lbProgress
            // 
            this.lbProgress.AutoSize = true;
            this.lbProgress.Location = new System.Drawing.Point(16, 13);
            this.lbProgress.Name = "lbProgress";
            this.lbProgress.Size = new System.Drawing.Size(56, 13);
            this.lbProgress.TabIndex = 16;
            this.lbProgress.Text = "Processos";
            // 
            // pbDoc
            // 
            this.pbDoc.Location = new System.Drawing.Point(19, 68);
            this.pbDoc.Name = "pbDoc";
            this.pbDoc.Size = new System.Drawing.Size(712, 23);
            this.pbDoc.TabIndex = 15;
            // 
            // pbProcesso
            // 
            this.pbProcesso.Location = new System.Drawing.Point(19, 28);
            this.pbProcesso.Name = "pbProcesso";
            this.pbProcesso.Size = new System.Drawing.Size(711, 23);
            this.pbProcesso.TabIndex = 14;
            // 
            // statusStrip1
            // 
            this.statusStrip1.Location = new System.Drawing.Point(0, 610);
            this.statusStrip1.Name = "statusStrip1";
            this.statusStrip1.Size = new System.Drawing.Size(778, 22);
            this.statusStrip1.TabIndex = 18;
            this.statusStrip1.Text = "statusStrip1";
            // 
            // FD
            // 
            this.FD.RootFolder = System.Environment.SpecialFolder.MyComputer;
            this.FD.SelectedPath = "D:\\teste";
            // 
            // ckbMes
            // 
            this.ckbMes.AutoSize = true;
            this.ckbMes.ForeColor = System.Drawing.Color.Red;
            this.ckbMes.Location = new System.Drawing.Point(234, 17);
            this.ckbMes.Name = "ckbMes";
            this.ckbMes.Size = new System.Drawing.Size(104, 17);
            this.ckbMes.TabIndex = 16;
            this.ckbMes.Text = "Todos os Meses";
            this.ckbMes.UseVisualStyleBackColor = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.rbDesembaracados);
            this.groupBox1.Controls.Add(this.rbFaturados);
            this.groupBox1.Location = new System.Drawing.Point(12, 38);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(215, 41);
            this.groupBox1.TabIndex = 17;
            this.groupBox1.TabStop = false;
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.txtLocaliza);
            this.groupBox3.Location = new System.Drawing.Point(12, 90);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(588, 49);
            this.groupBox3.TabIndex = 19;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Localiza Importador";
            // 
            // txtLocaliza
            // 
            this.txtLocaliza.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtLocaliza.Location = new System.Drawing.Point(6, 19);
            this.txtLocaliza.Name = "txtLocaliza";
            this.txtLocaliza.Size = new System.Drawing.Size(461, 20);
            this.txtLocaliza.TabIndex = 0;
            this.txtLocaliza.TextChanged += new System.EventHandler(this.txtLocaliza_TextChanged);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.mcbbLocal);
            this.groupBox2.Location = new System.Drawing.Point(234, 38);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(366, 41);
            this.groupBox2.TabIndex = 23;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Local de Inventário";
            // 
            // mcbbLocal
            // 
            this.mcbbLocal.AutoComplete = true;
            this.mcbbLocal.AutoDropdown = true;
            this.mcbbLocal.DisplayMember = "Descricao";
            this.mcbbLocal.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbbLocal.FormattingEnabled = true;
            this.mcbbLocal.Location = new System.Drawing.Point(6, 15);
            this.mcbbLocal.Name = "mcbbLocal";
            this.mcbbLocal.NumberColumnsDisplay = 0;
            this.mcbbLocal.Size = new System.Drawing.Size(352, 21);
            this.mcbbLocal.TabIndex = 22;
            this.mcbbLocal.ValueMember = "Local";
            // 
            // FrmExtracaoDocumentos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(778, 632);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.statusStrip1);
            this.Controls.Add(this.pnlProgress);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.grvClientes);
            this.Name = "FrmExtracaoDocumentos";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Tag = "902";
            this.Text = "Ferramenta -  Extração de Documentos";
            ((System.ComponentModel.ISupportInitialize)(this.grvClientes)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.pnlProgress.ResumeLayout(false);
            this.pnlProgress.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView grvClientes;
        private System.Windows.Forms.DataGridViewCheckBoxColumn selecao;
        private System.Windows.Forms.DataGridViewTextBoxColumn cgc_cnpj_completo;
        private System.Windows.Forms.DataGridViewTextBoxColumn Código;
        private System.Windows.Forms.DataGridViewTextBoxColumn Razao_Social;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.RadioButton rbFaturados;
        private System.Windows.Forms.RadioButton rbDesembaracados;
        private System.Windows.Forms.DateTimePicker DTPMes;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DateTimePicker dtpAno;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnExtrair;
        private System.Windows.Forms.Button btnFechar;
        private System.Windows.Forms.Panel pnlProgress;
        private System.Windows.Forms.Label lbEtapa;
        private System.Windows.Forms.Label lbDoc;
        private System.Windows.Forms.Label lbProgress;
        private System.Windows.Forms.ProgressBar pbDoc;
        private System.Windows.Forms.ProgressBar pbProcesso;
        private System.Windows.Forms.StatusStrip statusStrip1;
        private System.Windows.Forms.SaveFileDialog SD;
        private System.Windows.Forms.FolderBrowserDialog FD;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.CheckBox ckbMes;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.TextBox txtLocaliza;
        private System.Windows.Forms.GroupBox groupBox2;
        private Componentes.MultiColumnComboBox mcbbLocal;
    }
}