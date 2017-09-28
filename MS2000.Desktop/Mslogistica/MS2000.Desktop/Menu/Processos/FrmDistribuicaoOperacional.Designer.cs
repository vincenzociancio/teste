namespace MS2000.Desktop.Menu.Processos
{
    partial class FrmDistribuicaoOperacional
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmDistribuicaoOperacional));
            this.tabControl = new System.Windows.Forms.TabControl();
            this.tabFormulario = new System.Windows.Forms.TabPage();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnAtualiza = new System.Windows.Forms.Button();
            this.dataGridView = new System.Windows.Forms.DataGridView();
            this.Nome_Completo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Tot_Processo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Tot_Itens_Fatura = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panelControl = new System.Windows.Forms.Panel();
            this.txtCNPJ = new System.Windows.Forms.TextBox();
            this.txtImportador = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.mcbbCoordenadorResp = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.mcbbRespCliente = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.mcbbRespMS = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.mcbbSupervisorResp = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.pnlLocalizarProcesso = new System.Windows.Forms.Panel();
            this.txtProcesso = new System.Windows.Forms.MaskedTextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.bindingSourceProcesso = new System.Windows.Forms.BindingSource(this.components);
            this.bindingNavigator = new System.Windows.Forms.BindingNavigator(this.components);
            this.btnNovo = new System.Windows.Forms.ToolStripButton();
            this.btnEditar = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.btnSalvar = new System.Windows.Forms.ToolStripButton();
            this.btnCancelar = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.printToolStripButton = new System.Windows.Forms.ToolStripButton();
            this.btnFechar = new System.Windows.Forms.ToolStripButton();
            this.bindingSourceAtualiza = new System.Windows.Forms.BindingSource(this.components);
            this.tabControl.SuspendLayout();
            this.tabFormulario.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).BeginInit();
            this.panelControl.SuspendLayout();
            this.pnlLocalizarProcesso.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSourceProcesso)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator)).BeginInit();
            this.bindingNavigator.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSourceAtualiza)).BeginInit();
            this.SuspendLayout();
            // 
            // tabControl
            // 
            this.tabControl.Controls.Add(this.tabFormulario);
            this.tabControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl.Location = new System.Drawing.Point(0, 25);
            this.tabControl.Name = "tabControl";
            this.tabControl.SelectedIndex = 0;
            this.tabControl.Size = new System.Drawing.Size(712, 375);
            this.tabControl.TabIndex = 13;
            // 
            // tabFormulario
            // 
            this.tabFormulario.Controls.Add(this.groupBox1);
            this.tabFormulario.Controls.Add(this.panelControl);
            this.tabFormulario.Controls.Add(this.pnlLocalizarProcesso);
            this.tabFormulario.Location = new System.Drawing.Point(4, 22);
            this.tabFormulario.Name = "tabFormulario";
            this.tabFormulario.Padding = new System.Windows.Forms.Padding(3);
            this.tabFormulario.Size = new System.Drawing.Size(704, 349);
            this.tabFormulario.TabIndex = 0;
            this.tabFormulario.Text = "Distribuição Operacional";
            this.tabFormulario.UseVisualStyleBackColor = true;
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.groupBox1.Controls.Add(this.btnAtualiza);
            this.groupBox1.Controls.Add(this.dataGridView);
            this.groupBox1.Location = new System.Drawing.Point(369, 43);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(329, 293);
            this.groupBox1.TabIndex = 24;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Processos em Andamento Por Usuário";
            // 
            // btnAtualiza
            // 
            this.btnAtualiza.BackColor = System.Drawing.SystemColors.Control;
            this.btnAtualiza.Image = global::MS2000.Desktop.Properties.Resources.Atualiza;
            this.btnAtualiza.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnAtualiza.Location = new System.Drawing.Point(116, 262);
            this.btnAtualiza.Name = "btnAtualiza";
            this.btnAtualiza.Size = new System.Drawing.Size(111, 23);
            this.btnAtualiza.TabIndex = 1;
            this.btnAtualiza.Text = "Atualizar";
            this.btnAtualiza.UseVisualStyleBackColor = false;
            this.btnAtualiza.Click += new System.EventHandler(this.btnAtualiza_Click);
            // 
            // dataGridView
            // 
            this.dataGridView.BackgroundColor = System.Drawing.SystemColors.Window;
            this.dataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Nome_Completo,
            this.Tot_Processo,
            this.Tot_Itens_Fatura});
            this.dataGridView.Location = new System.Drawing.Point(6, 19);
            this.dataGridView.Name = "dataGridView";
            this.dataGridView.RowHeadersVisible = false;
            this.dataGridView.Size = new System.Drawing.Size(321, 237);
            this.dataGridView.TabIndex = 0;
            // 
            // Nome_Completo
            // 
            this.Nome_Completo.DataPropertyName = "Nome_Completo";
            this.Nome_Completo.HeaderText = "Usuário";
            this.Nome_Completo.Name = "Nome_Completo";
            // 
            // Tot_Processo
            // 
            this.Tot_Processo.DataPropertyName = "Tot_Processo";
            this.Tot_Processo.HeaderText = "QTD Pastas";
            this.Tot_Processo.Name = "Tot_Processo";
            // 
            // Tot_Itens_Fatura
            // 
            this.Tot_Itens_Fatura.DataPropertyName = "Tot_Itens_Fatura";
            this.Tot_Itens_Fatura.HeaderText = "QTD Itens";
            this.Tot_Itens_Fatura.Name = "Tot_Itens_Fatura";
            // 
            // panelControl
            // 
            this.panelControl.Controls.Add(this.txtCNPJ);
            this.panelControl.Controls.Add(this.txtImportador);
            this.panelControl.Controls.Add(this.label3);
            this.panelControl.Controls.Add(this.label2);
            this.panelControl.Controls.Add(this.mcbbCoordenadorResp);
            this.panelControl.Controls.Add(this.label7);
            this.panelControl.Controls.Add(this.label5);
            this.panelControl.Controls.Add(this.label8);
            this.panelControl.Controls.Add(this.label9);
            this.panelControl.Controls.Add(this.mcbbRespCliente);
            this.panelControl.Controls.Add(this.mcbbRespMS);
            this.panelControl.Controls.Add(this.mcbbSupervisorResp);
            this.panelControl.Location = new System.Drawing.Point(3, 37);
            this.panelControl.Name = "panelControl";
            this.panelControl.Size = new System.Drawing.Size(361, 308);
            this.panelControl.TabIndex = 10;
            // 
            // txtCNPJ
            // 
            this.txtCNPJ.Enabled = false;
            this.txtCNPJ.Location = new System.Drawing.Point(1, 65);
            this.txtCNPJ.Name = "txtCNPJ";
            this.txtCNPJ.Size = new System.Drawing.Size(357, 20);
            this.txtCNPJ.TabIndex = 28;
            // 
            // txtImportador
            // 
            this.txtImportador.Enabled = false;
            this.txtImportador.Location = new System.Drawing.Point(1, 22);
            this.txtImportador.Name = "txtImportador";
            this.txtImportador.Size = new System.Drawing.Size(357, 20);
            this.txtImportador.TabIndex = 27;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(-2, 49);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(34, 13);
            this.label3.TabIndex = 24;
            this.label3.Text = "CNPJ";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(-2, 6);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(39, 13);
            this.label2.TabIndex = 22;
            this.label2.Text = "Cliente";
            // 
            // mcbbCoordenadorResp
            // 
            this.mcbbCoordenadorResp.AutoComplete = true;
            this.mcbbCoordenadorResp.AutoDropdown = true;
            this.mcbbCoordenadorResp.DisplayMember = "Descricao";
            this.mcbbCoordenadorResp.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbbCoordenadorResp.FormattingEnabled = true;
            this.mcbbCoordenadorResp.Location = new System.Drawing.Point(0, 278);
            this.mcbbCoordenadorResp.Name = "mcbbCoordenadorResp";
            this.mcbbCoordenadorResp.NumberColumnsDisplay = 0;
            this.mcbbCoordenadorResp.Size = new System.Drawing.Size(358, 21);
            this.mcbbCoordenadorResp.TabIndex = 11;
            this.mcbbCoordenadorResp.ValueMember = "Local";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(-3, 153);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(104, 13);
            this.label7.TabIndex = 15;
            this.label7.Text = "Responsável Cliente";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(-2, 99);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(88, 13);
            this.label5.TabIndex = 8;
            this.label5.Text = "Responsável MS";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(-2, 206);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(122, 13);
            this.label8.TabIndex = 18;
            this.label8.Text = "Supervisor Responsável";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(-2, 262);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(133, 13);
            this.label9.TabIndex = 21;
            this.label9.Text = "Coordenador Responsável";
            // 
            // mcbbRespCliente
            // 
            this.mcbbRespCliente.AutoComplete = true;
            this.mcbbRespCliente.AutoDropdown = true;
            this.mcbbRespCliente.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbbRespCliente.FormattingEnabled = true;
            this.mcbbRespCliente.Location = new System.Drawing.Point(1, 169);
            this.mcbbRespCliente.Name = "mcbbRespCliente";
            this.mcbbRespCliente.NumberColumnsDisplay = 0;
            this.mcbbRespCliente.Size = new System.Drawing.Size(357, 21);
            this.mcbbRespCliente.TabIndex = 9;
            // 
            // mcbbRespMS
            // 
            this.mcbbRespMS.AutoComplete = true;
            this.mcbbRespMS.AutoDropdown = true;
            this.mcbbRespMS.DisplayMember = "Descricao";
            this.mcbbRespMS.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbbRespMS.FormattingEnabled = true;
            this.mcbbRespMS.Location = new System.Drawing.Point(1, 115);
            this.mcbbRespMS.Name = "mcbbRespMS";
            this.mcbbRespMS.NumberColumnsDisplay = 0;
            this.mcbbRespMS.Size = new System.Drawing.Size(357, 21);
            this.mcbbRespMS.TabIndex = 2;
            this.mcbbRespMS.ValueMember = "Codigo";
            // 
            // mcbbSupervisorResp
            // 
            this.mcbbSupervisorResp.AutoComplete = true;
            this.mcbbSupervisorResp.AutoDropdown = true;
            this.mcbbSupervisorResp.DisplayMember = "Descricao";
            this.mcbbSupervisorResp.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbbSupervisorResp.FormattingEnabled = true;
            this.mcbbSupervisorResp.Location = new System.Drawing.Point(0, 222);
            this.mcbbSupervisorResp.Name = "mcbbSupervisorResp";
            this.mcbbSupervisorResp.NumberColumnsDisplay = 0;
            this.mcbbSupervisorResp.Size = new System.Drawing.Size(358, 21);
            this.mcbbSupervisorResp.TabIndex = 12;
            this.mcbbSupervisorResp.ValueMember = "Contrato";
            // 
            // pnlLocalizarProcesso
            // 
            this.pnlLocalizarProcesso.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pnlLocalizarProcesso.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlLocalizarProcesso.Controls.Add(this.txtProcesso);
            this.pnlLocalizarProcesso.Controls.Add(this.label1);
            this.pnlLocalizarProcesso.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlLocalizarProcesso.Location = new System.Drawing.Point(3, 3);
            this.pnlLocalizarProcesso.Name = "pnlLocalizarProcesso";
            this.pnlLocalizarProcesso.Size = new System.Drawing.Size(698, 34);
            this.pnlLocalizarProcesso.TabIndex = 11;
            // 
            // txtProcesso
            // 
            this.txtProcesso.Location = new System.Drawing.Point(128, 6);
            this.txtProcesso.Mask = "00000/00";
            this.txtProcesso.Name = "txtProcesso";
            this.txtProcesso.Size = new System.Drawing.Size(100, 20);
            this.txtProcesso.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(4, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(117, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Digite o nº do processo";
            // 
            // bindingSourceProcesso
            // 
            this.bindingSourceProcesso.DataSource = typeof(MS2000.Desktop.Classes.Processo);
            // 
            // bindingNavigator
            // 
            this.bindingNavigator.AddNewItem = null;
            this.bindingNavigator.BindingSource = this.bindingSourceProcesso;
            this.bindingNavigator.CountItem = null;
            this.bindingNavigator.DeleteItem = null;
            this.bindingNavigator.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.btnNovo,
            this.btnEditar,
            this.toolStripSeparator1,
            this.btnSalvar,
            this.btnCancelar,
            this.toolStripSeparator2,
            this.printToolStripButton,
            this.btnFechar});
            this.bindingNavigator.Location = new System.Drawing.Point(0, 0);
            this.bindingNavigator.MoveFirstItem = null;
            this.bindingNavigator.MoveLastItem = null;
            this.bindingNavigator.MoveNextItem = null;
            this.bindingNavigator.MovePreviousItem = null;
            this.bindingNavigator.Name = "bindingNavigator";
            this.bindingNavigator.PositionItem = null;
            this.bindingNavigator.Size = new System.Drawing.Size(712, 25);
            this.bindingNavigator.TabIndex = 12;
            this.bindingNavigator.Text = "bindingNavigator1";
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
            // btnEditar
            // 
            this.btnEditar.Image = ((System.Drawing.Image)(resources.GetObject("btnEditar.Image")));
            this.btnEditar.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnEditar.Name = "btnEditar";
            this.btnEditar.Size = new System.Drawing.Size(57, 22);
            this.btnEditar.Text = "&Editar";
            this.btnEditar.Click += new System.EventHandler(this.btnEditar_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(6, 25);
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
            // bindingSourceAtualiza
            // 
            this.bindingSourceAtualiza.DataSource = typeof(MS2000.Desktop.Classes.Processo);
            // 
            // FrmDistribuicaoOperacional
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(712, 400);
            this.Controls.Add(this.tabControl);
            this.Controls.Add(this.bindingNavigator);
            this.Name = "FrmDistribuicaoOperacional";
            this.Tag = "202";
            this.Text = "Processos  - Distribuição Operacional";
            this.Load += new System.EventHandler(this.FrmDistribuicaoOperacional_Load);
            this.tabControl.ResumeLayout(false);
            this.tabFormulario.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).EndInit();
            this.panelControl.ResumeLayout(false);
            this.panelControl.PerformLayout();
            this.pnlLocalizarProcesso.ResumeLayout(false);
            this.pnlLocalizarProcesso.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSourceProcesso)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator)).EndInit();
            this.bindingNavigator.ResumeLayout(false);
            this.bindingNavigator.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSourceAtualiza)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.BindingSource bindingSourceProcesso;
        private System.Windows.Forms.TabControl tabControl;
        private System.Windows.Forms.TabPage tabFormulario;
        private System.Windows.Forms.Panel panelControl;
        private System.Windows.Forms.Label label2;
        private Componentes.MultiColumnComboBox mcbbCoordenadorResp;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private Componentes.MultiColumnComboBox mcbbRespCliente;
        private Componentes.MultiColumnComboBox mcbbRespMS;
        private Componentes.MultiColumnComboBox mcbbSupervisorResp;
        private System.Windows.Forms.Panel pnlLocalizarProcesso;
        private System.Windows.Forms.MaskedTextBox txtProcesso;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.BindingNavigator bindingNavigator;
        private System.Windows.Forms.ToolStripButton btnNovo;
        private System.Windows.Forms.ToolStripButton btnSalvar;
        private System.Windows.Forms.ToolStripButton btnCancelar;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripButton btnEditar;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.ToolStripButton printToolStripButton;
        private System.Windows.Forms.ToolStripButton btnFechar;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.BindingSource bindingSourceAtualiza;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnAtualiza;
        private System.Windows.Forms.DataGridView dataGridView;
        private System.Windows.Forms.TextBox txtCNPJ;
        private System.Windows.Forms.TextBox txtImportador;
        private System.Windows.Forms.DataGridViewTextBoxColumn Nome_Completo;
        private System.Windows.Forms.DataGridViewTextBoxColumn Tot_Processo;
        private System.Windows.Forms.DataGridViewTextBoxColumn Tot_Itens_Fatura;
    }
}
