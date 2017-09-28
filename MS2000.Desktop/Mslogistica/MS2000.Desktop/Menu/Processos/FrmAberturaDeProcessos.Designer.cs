namespace MS2000.Desktop.Menu.Processos
{
    partial class FrmAberturaDeProcessos
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmAberturaDeProcessos));
            this.bindingNavigator = new System.Windows.Forms.BindingNavigator(this.components);
            this.bindingSourceProcesso = new System.Windows.Forms.BindingSource(this.components);
            this.btnNovo = new System.Windows.Forms.ToolStripButton();
            this.btnSalvar = new System.Windows.Forms.ToolStripButton();
            this.btnCancelar = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.btnEditar = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.printToolStripButton = new System.Windows.Forms.ToolStripButton();
            this.btnFechar = new System.Windows.Forms.ToolStripButton();
            this.tabControl = new System.Windows.Forms.TabControl();
            this.tabFormulario = new System.Windows.Forms.TabPage();
            this.pnlAvisos = new System.Windows.Forms.Panel();
            this.lbMessagens = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.label10 = new System.Windows.Forms.Label();
            this.panelControl = new System.Windows.Forms.Panel();
            this.ckbDrawback = new System.Windows.Forms.CheckBox();
            this.ckbProjeto = new System.Windows.Forms.CheckBox();
            this.label15 = new System.Windows.Forms.Label();
            this.ntxtQtdItensFatura = new MS2000.Desktop.Componentes.NumericTextBox();
            this.txtProcessoVinculado = new System.Windows.Forms.MaskedTextBox();
            this.label14 = new System.Windows.Forms.Label();
            this.mcbbUrgencia = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.label13 = new System.Windows.Forms.Label();
            this.chkMaterialUsado = new System.Windows.Forms.CheckBox();
            this.label12 = new System.Windows.Forms.Label();
            this.txtRTC = new System.Windows.Forms.TextBox();
            this.txtCNPJ = new System.Windows.Forms.MaskedTextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.btnClientes = new System.Windows.Forms.Button();
            this.txtCliente = new System.Windows.Forms.TextBox();
            this.mcbbLocal = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.LocalBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.txtReferenciaCliente = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtData = new System.Windows.Forms.MaskedTextBox();
            this.cbbCentroDeCusto = new System.Windows.Forms.ComboBox();
            this.bindingSourceCentroCusto = new System.Windows.Forms.BindingSource(this.components);
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.ckbPgProporcional = new System.Windows.Forms.CheckBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.mcbbTipoDeDeclaracao = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.mcbbTiposDeProcesso = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.TipoProcessoBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.mcbbContratos = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            this.contratoBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.pnlLocalizarProcesso = new System.Windows.Forms.Panel();
            this.txtProcesso = new System.Windows.Forms.MaskedTextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.multiColumnComboBox3 = new MS2000.Desktop.Componentes.MultiColumnComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator)).BeginInit();
            this.bindingNavigator.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSourceProcesso)).BeginInit();
            this.tabControl.SuspendLayout();
            this.tabFormulario.SuspendLayout();
            this.pnlAvisos.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panelControl.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.LocalBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSourceCentroCusto)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.TipoProcessoBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.contratoBindingSource)).BeginInit();
            this.pnlLocalizarProcesso.SuspendLayout();
            this.SuspendLayout();
            // 
            // bindingNavigator
            // 
            this.bindingNavigator.AddNewItem = null;
            this.bindingNavigator.BindingSource = this.bindingSourceProcesso;
            this.bindingNavigator.CountItem = null;
            this.bindingNavigator.CountItemFormat = "de {0}";
            this.bindingNavigator.DeleteItem = null;
            this.bindingNavigator.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.btnNovo,
            this.btnSalvar,
            this.btnCancelar,
            this.toolStripSeparator1,
            this.btnEditar,
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
            this.bindingNavigator.Size = new System.Drawing.Size(607, 25);
            this.bindingNavigator.TabIndex = 9;
            this.bindingNavigator.Text = "bindingNavigator1";
            // 
            // bindingSourceProcesso
            // 
            this.bindingSourceProcesso.DataSource = typeof(MS2000.Desktop.Classes.Processo);
            // 
            // btnNovo
            // 
            this.btnNovo.Image = ((System.Drawing.Image)(resources.GetObject("btnNovo.Image")));
            this.btnNovo.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnNovo.Name = "btnNovo";
            this.btnNovo.Size = new System.Drawing.Size(52, 22);
            this.btnNovo.Text = "&Novo";
            this.btnNovo.Click += new System.EventHandler(this.btnNovo_Click);
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
            // btnCancelar
            // 
            this.btnCancelar.Image = ((System.Drawing.Image)(resources.GetObject("btnCancelar.Image")));
            this.btnCancelar.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(69, 22);
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
            this.btnEditar.Size = new System.Drawing.Size(55, 22);
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
            this.printToolStripButton.Size = new System.Drawing.Size(70, 22);
            this.printToolStripButton.Text = "&Relatório";
            this.printToolStripButton.Visible = false;
            // 
            // btnFechar
            // 
            this.btnFechar.Image = global::MS2000.Desktop.Properties.Resources.sair;
            this.btnFechar.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnFechar.Name = "btnFechar";
            this.btnFechar.Size = new System.Drawing.Size(60, 22);
            this.btnFechar.Text = "Fechar";
            this.btnFechar.Click += new System.EventHandler(this.btnFechar_Click);
            // 
            // tabControl
            // 
            this.tabControl.Controls.Add(this.tabFormulario);
            this.tabControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl.Location = new System.Drawing.Point(0, 25);
            this.tabControl.Name = "tabControl";
            this.tabControl.SelectedIndex = 0;
            this.tabControl.Size = new System.Drawing.Size(607, 558);
            this.tabControl.TabIndex = 11;
            // 
            // tabFormulario
            // 
            this.tabFormulario.Controls.Add(this.pnlAvisos);
            this.tabFormulario.Controls.Add(this.panelControl);
            this.tabFormulario.Controls.Add(this.pnlLocalizarProcesso);
            this.tabFormulario.Location = new System.Drawing.Point(4, 22);
            this.tabFormulario.Name = "tabFormulario";
            this.tabFormulario.Padding = new System.Windows.Forms.Padding(3);
            this.tabFormulario.Size = new System.Drawing.Size(599, 532);
            this.tabFormulario.TabIndex = 0;
            this.tabFormulario.Text = "Abertura de Processos";
            this.tabFormulario.UseVisualStyleBackColor = true;
            // 
            // pnlAvisos
            // 
            this.pnlAvisos.BackColor = System.Drawing.Color.Orange;
            this.pnlAvisos.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.pnlAvisos.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlAvisos.Controls.Add(this.lbMessagens);
            this.pnlAvisos.Controls.Add(this.panel2);
            this.pnlAvisos.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlAvisos.Location = new System.Drawing.Point(3, 436);
            this.pnlAvisos.Name = "pnlAvisos";
            this.pnlAvisos.Size = new System.Drawing.Size(593, 93);
            this.pnlAvisos.TabIndex = 13;
            this.pnlAvisos.Visible = false;
            // 
            // lbMessagens
            // 
            this.lbMessagens.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbMessagens.ForeColor = System.Drawing.Color.Black;
            this.lbMessagens.Location = new System.Drawing.Point(4, 26);
            this.lbMessagens.Name = "lbMessagens";
            this.lbMessagens.Size = new System.Drawing.Size(574, 54);
            this.lbMessagens.TabIndex = 1;
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.DimGray;
            this.panel2.Controls.Add(this.label10);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(591, 23);
            this.panel2.TabIndex = 0;
            // 
            // label10
            // 
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.ForeColor = System.Drawing.Color.White;
            this.label10.Location = new System.Drawing.Point(-1, 2);
            this.label10.Margin = new System.Windows.Forms.Padding(0);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(591, 21);
            this.label10.TabIndex = 0;
            this.label10.Text = "Avisos do Sistema";
            this.label10.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // panelControl
            // 
            this.panelControl.Controls.Add(this.ckbDrawback);
            this.panelControl.Controls.Add(this.ckbProjeto);
            this.panelControl.Controls.Add(this.label15);
            this.panelControl.Controls.Add(this.ntxtQtdItensFatura);
            this.panelControl.Controls.Add(this.txtProcessoVinculado);
            this.panelControl.Controls.Add(this.label14);
            this.panelControl.Controls.Add(this.mcbbUrgencia);
            this.panelControl.Controls.Add(this.label13);
            this.panelControl.Controls.Add(this.chkMaterialUsado);
            this.panelControl.Controls.Add(this.label12);
            this.panelControl.Controls.Add(this.txtRTC);
            this.panelControl.Controls.Add(this.txtCNPJ);
            this.panelControl.Controls.Add(this.label11);
            this.panelControl.Controls.Add(this.btnClientes);
            this.panelControl.Controls.Add(this.txtCliente);
            this.panelControl.Controls.Add(this.mcbbLocal);
            this.panelControl.Controls.Add(this.txtReferenciaCliente);
            this.panelControl.Controls.Add(this.label6);
            this.panelControl.Controls.Add(this.label7);
            this.panelControl.Controls.Add(this.label5);
            this.panelControl.Controls.Add(this.label2);
            this.panelControl.Controls.Add(this.txtData);
            this.panelControl.Controls.Add(this.cbbCentroDeCusto);
            this.panelControl.Controls.Add(this.label3);
            this.panelControl.Controls.Add(this.label4);
            this.panelControl.Controls.Add(this.ckbPgProporcional);
            this.panelControl.Controls.Add(this.label8);
            this.panelControl.Controls.Add(this.label9);
            this.panelControl.Controls.Add(this.mcbbTipoDeDeclaracao);
            this.panelControl.Controls.Add(this.mcbbTiposDeProcesso);
            this.panelControl.Controls.Add(this.mcbbContratos);
            this.panelControl.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl.Location = new System.Drawing.Point(3, 37);
            this.panelControl.Name = "panelControl";
            this.panelControl.Size = new System.Drawing.Size(593, 399);
            this.panelControl.TabIndex = 10;
            // 
            // ckbDrawback
            // 
            this.ckbDrawback.AutoSize = true;
            this.ckbDrawback.DataBindings.Add(new System.Windows.Forms.Binding("CheckState", this.bindingSourceProcesso, "Drawback", true));
            this.ckbDrawback.Location = new System.Drawing.Point(458, 287);
            this.ckbDrawback.Name = "ckbDrawback";
            this.ckbDrawback.Size = new System.Drawing.Size(81, 17);
            this.ckbDrawback.TabIndex = 34;
            this.ckbDrawback.Text = "Drawback?";
            this.ckbDrawback.UseVisualStyleBackColor = true;
            // 
            // ckbProjeto
            // 
            this.ckbProjeto.AutoSize = true;
            this.ckbProjeto.DataBindings.Add(new System.Windows.Forms.Binding("Checked", this.bindingSourceProcesso, "TipoProjeto", true));
            this.ckbProjeto.Location = new System.Drawing.Point(196, 287);
            this.ckbProjeto.Name = "ckbProjeto";
            this.ckbProjeto.Size = new System.Drawing.Size(59, 17);
            this.ckbProjeto.TabIndex = 33;
            this.ckbProjeto.Text = "Projeto";
            this.ckbProjeto.UseVisualStyleBackColor = true;
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Location = new System.Drawing.Point(258, 138);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(98, 13);
            this.label15.TabIndex = 32;
            this.label15.Text = "Qtd Itens da Fatura";
            // 
            // ntxtQtdItensFatura
            // 
            this.ntxtQtdItensFatura.AllowSpace = false;
            this.ntxtQtdItensFatura.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bindingSourceProcesso, "Qtd_Itens_Fatura", true));
            this.ntxtQtdItensFatura.Location = new System.Drawing.Point(261, 154);
            this.ntxtQtdItensFatura.MaxLength = 4;
            this.ntxtQtdItensFatura.Name = "ntxtQtdItensFatura";
            this.ntxtQtdItensFatura.Size = new System.Drawing.Size(109, 20);
            this.ntxtQtdItensFatura.TabIndex = 5;
            // 
            // txtProcessoVinculado
            // 
            this.txtProcessoVinculado.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bindingSourceProcesso, "proc_vinc", true));
            this.txtProcessoVinculado.Location = new System.Drawing.Point(1, 155);
            this.txtProcessoVinculado.Mask = "00000/00";
            this.txtProcessoVinculado.Name = "txtProcessoVinculado";
            this.txtProcessoVinculado.Size = new System.Drawing.Size(115, 20);
            this.txtProcessoVinculado.TabIndex = 3;
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(-2, 139);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(100, 13);
            this.label14.TabIndex = 31;
            this.label14.Text = "Processo vinculado";
            // 
            // mcbbUrgencia
            // 
            this.mcbbUrgencia.AutoComplete = true;
            this.mcbbUrgencia.AutoDropdown = true;
            this.mcbbUrgencia.DataBindings.Add(new System.Windows.Forms.Binding("SelectedValue", this.bindingSourceProcesso, "FK_Processos_Tipo_Urgencia", true));
            this.mcbbUrgencia.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbbUrgencia.FormattingEnabled = true;
            this.mcbbUrgencia.Location = new System.Drawing.Point(122, 154);
            this.mcbbUrgencia.Name = "mcbbUrgencia";
            this.mcbbUrgencia.NumberColumnsDisplay = 0;
            this.mcbbUrgencia.Size = new System.Drawing.Size(133, 21);
            this.mcbbUrgencia.TabIndex = 4;
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(119, 138);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(51, 13);
            this.label13.TabIndex = 30;
            this.label13.Text = "Urgente?";
            // 
            // chkMaterialUsado
            // 
            this.chkMaterialUsado.AutoSize = true;
            this.chkMaterialUsado.DataBindings.Add(new System.Windows.Forms.Binding("Checked", this.bindingSourceProcesso, "Material_Usado", true));
            this.chkMaterialUsado.Location = new System.Drawing.Point(309, 287);
            this.chkMaterialUsado.Name = "chkMaterialUsado";
            this.chkMaterialUsado.Size = new System.Drawing.Size(131, 17);
            this.chkMaterialUsado.TabIndex = 6;
            this.chkMaterialUsado.Text = "Utiliza material usado?";
            this.chkMaterialUsado.UseVisualStyleBackColor = true;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(374, 138);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(69, 13);
            this.label12.TabIndex = 29;
            this.label12.Text = "Número RTC";
            // 
            // txtRTC
            // 
            this.txtRTC.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bindingSourceProcesso, "Numero_RTC", true));
            this.txtRTC.Location = new System.Drawing.Point(376, 154);
            this.txtRTC.MaxLength = 20;
            this.txtRTC.Name = "txtRTC";
            this.txtRTC.Size = new System.Drawing.Size(131, 20);
            this.txtRTC.TabIndex = 8;
            // 
            // txtCNPJ
            // 
            this.txtCNPJ.BackColor = System.Drawing.SystemColors.Control;
            this.txtCNPJ.Location = new System.Drawing.Point(1, 68);
            this.txtCNPJ.Mask = "00,000,000/0000-00";
            this.txtCNPJ.Name = "txtCNPJ";
            this.txtCNPJ.ReadOnly = true;
            this.txtCNPJ.Size = new System.Drawing.Size(115, 20);
            this.txtCNPJ.TabIndex = 27;
            this.txtCNPJ.Text = "00000000000000";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(-2, 52);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(77, 13);
            this.label11.TabIndex = 26;
            this.label11.Text = "Cnpj do cliente";
            // 
            // btnClientes
            // 
            this.btnClientes.BackColor = System.Drawing.SystemColors.Control;
            this.btnClientes.Image = global::MS2000.Desktop.Properties.Resources.consult;
            this.btnClientes.ImageAlign = System.Drawing.ContentAlignment.TopCenter;
            this.btnClientes.Location = new System.Drawing.Point(566, 66);
            this.btnClientes.Margin = new System.Windows.Forms.Padding(0);
            this.btnClientes.Name = "btnClientes";
            this.btnClientes.Size = new System.Drawing.Size(26, 24);
            this.btnClientes.TabIndex = 1;
            this.btnClientes.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            this.btnClientes.UseVisualStyleBackColor = false;
            this.btnClientes.Click += new System.EventHandler(this.btnClientes_Click);
            // 
            // txtCliente
            // 
            this.txtCliente.BackColor = System.Drawing.SystemColors.Control;
            this.txtCliente.Location = new System.Drawing.Point(122, 68);
            this.txtCliente.Name = "txtCliente";
            this.txtCliente.ReadOnly = true;
            this.txtCliente.Size = new System.Drawing.Size(441, 20);
            this.txtCliente.TabIndex = 23;
            // 
            // mcbbLocal
            // 
            this.mcbbLocal.AutoComplete = true;
            this.mcbbLocal.AutoDropdown = true;
            this.mcbbLocal.DataBindings.Add(new System.Windows.Forms.Binding("SelectedValue", this.bindingSourceProcesso, "Local_Inventario", true));
            this.mcbbLocal.DataSource = this.LocalBindingSource;
            this.mcbbLocal.DisplayMember = "Descricao";
            this.mcbbLocal.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbbLocal.FormattingEnabled = true;
            this.mcbbLocal.Location = new System.Drawing.Point(0, 364);
            this.mcbbLocal.Name = "mcbbLocal";
            this.mcbbLocal.NumberColumnsDisplay = 0;
            this.mcbbLocal.Size = new System.Drawing.Size(592, 21);
            this.mcbbLocal.TabIndex = 11;
            this.mcbbLocal.ValueMember = "Local";
            // 
            // LocalBindingSource
            // 
            this.LocalBindingSource.DataSource = typeof(MS2000.Desktop.Classes.LocalDeInventario);
            // 
            // txtReferenciaCliente
            // 
            this.txtReferenciaCliente.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bindingSourceProcesso, "Codigo_Cliente", true));
            this.txtReferenciaCliente.Location = new System.Drawing.Point(1, 197);
            this.txtReferenciaCliente.MaxLength = 600;
            this.txtReferenciaCliente.Multiline = true;
            this.txtReferenciaCliente.Name = "txtReferenciaCliente";
            this.txtReferenciaCliente.Size = new System.Drawing.Size(591, 42);
            this.txtReferenciaCliente.TabIndex = 7;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(-2, 181);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(109, 13);
            this.label6.TabIndex = 14;
            this.label6.Text = "Referência do Cliente";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(-3, 242);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(101, 13);
            this.label7.TabIndex = 15;
            this.label7.Text = "Tipo de Declaração";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(-2, 95);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(90, 13);
            this.label5.TabIndex = 8;
            this.label5.Text = "Tipo de Processo";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(-2, 9);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(88, 13);
            this.label2.TabIndex = 0;
            this.label2.Text = "Data de Abertura";
            // 
            // txtData
            // 
            this.txtData.BackColor = System.Drawing.SystemColors.Control;
            this.txtData.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bindingSourceProcesso, "Data", true, System.Windows.Forms.DataSourceUpdateMode.OnValidation, null, "d"));
            this.txtData.Location = new System.Drawing.Point(1, 25);
            this.txtData.Mask = "00/00/0000";
            this.txtData.Name = "txtData";
            this.txtData.ReadOnly = true;
            this.txtData.Size = new System.Drawing.Size(87, 20);
            this.txtData.TabIndex = 0;
            this.txtData.ValidatingType = typeof(System.DateTime);
            // 
            // cbbCentroDeCusto
            // 
            this.cbbCentroDeCusto.DataBindings.Add(new System.Windows.Forms.Binding("SelectedValue", this.bindingSourceProcesso, "Centro_Custo", true));
            this.cbbCentroDeCusto.DataSource = this.bindingSourceCentroCusto;
            this.cbbCentroDeCusto.DisplayMember = "Descricao";
            this.cbbCentroDeCusto.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbbCentroDeCusto.FormattingEnabled = true;
            this.cbbCentroDeCusto.Location = new System.Drawing.Point(94, 24);
            this.cbbCentroDeCusto.Name = "cbbCentroDeCusto";
            this.cbbCentroDeCusto.Size = new System.Drawing.Size(497, 21);
            this.cbbCentroDeCusto.TabIndex = 0;
            this.cbbCentroDeCusto.ValueMember = "Codigo";
            // 
            // bindingSourceCentroCusto
            // 
            this.bindingSourceCentroCusto.DataSource = typeof(MS2000.Desktop.Classes.CentroDeCusto);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(91, 9);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(83, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Centro de Custo";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(119, 52);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(117, 13);
            this.label4.TabIndex = 5;
            this.label4.Text = "Razão social do cliente";
            // 
            // ckbPgProporcional
            // 
            this.ckbPgProporcional.AutoSize = true;
            this.ckbPgProporcional.BackColor = System.Drawing.SystemColors.Control;
            this.ckbPgProporcional.DataBindings.Add(new System.Windows.Forms.Binding("Checked", this.bindingSourceProcesso, "Pag_proporcional", true));
            this.ckbPgProporcional.Location = new System.Drawing.Point(1, 283);
            this.ckbPgProporcional.Name = "ckbPgProporcional";
            this.ckbPgProporcional.Padding = new System.Windows.Forms.Padding(3, 3, 3, 1);
            this.ckbPgProporcional.Size = new System.Drawing.Size(147, 21);
            this.ckbPgProporcional.TabIndex = 10;
            this.ckbPgProporcional.Text = "Pagamento proporcional";
            this.ckbPgProporcional.UseVisualStyleBackColor = false;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(-2, 306);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(47, 13);
            this.label8.TabIndex = 18;
            this.label8.Text = "Contrato";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(-2, 348);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(97, 13);
            this.label9.TabIndex = 21;
            this.label9.Text = "Local de inventário";
            // 
            // mcbbTipoDeDeclaracao
            // 
            this.mcbbTipoDeDeclaracao.AutoComplete = true;
            this.mcbbTipoDeDeclaracao.AutoDropdown = true;
            this.mcbbTipoDeDeclaracao.DataBindings.Add(new System.Windows.Forms.Binding("SelectedValue", this.bindingSourceProcesso, "Tipo_Declaracao", true));
            this.mcbbTipoDeDeclaracao.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbbTipoDeDeclaracao.FormattingEnabled = true;
            this.mcbbTipoDeDeclaracao.Location = new System.Drawing.Point(1, 258);
            this.mcbbTipoDeDeclaracao.Name = "mcbbTipoDeDeclaracao";
            this.mcbbTipoDeDeclaracao.NumberColumnsDisplay = 0;
            this.mcbbTipoDeDeclaracao.Size = new System.Drawing.Size(593, 21);
            this.mcbbTipoDeDeclaracao.TabIndex = 9;
            // 
            // mcbbTiposDeProcesso
            // 
            this.mcbbTiposDeProcesso.AutoComplete = true;
            this.mcbbTiposDeProcesso.AutoDropdown = true;
            this.mcbbTiposDeProcesso.DataBindings.Add(new System.Windows.Forms.Binding("SelectedValue", this.bindingSourceProcesso, "Tipo", true));
            this.mcbbTiposDeProcesso.DataSource = this.TipoProcessoBindingSource;
            this.mcbbTiposDeProcesso.DisplayMember = "Descricao";
            this.mcbbTiposDeProcesso.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbbTiposDeProcesso.FormattingEnabled = true;
            this.mcbbTiposDeProcesso.Location = new System.Drawing.Point(1, 111);
            this.mcbbTiposDeProcesso.Name = "mcbbTiposDeProcesso";
            this.mcbbTiposDeProcesso.NumberColumnsDisplay = 0;
            this.mcbbTiposDeProcesso.Size = new System.Drawing.Size(593, 21);
            this.mcbbTiposDeProcesso.TabIndex = 2;
            this.mcbbTiposDeProcesso.ValueMember = "Codigo";
            // 
            // TipoProcessoBindingSource
            // 
            this.TipoProcessoBindingSource.DataSource = typeof(MS2000.Desktop.Classes.TiposDeProcesso);
            // 
            // mcbbContratos
            // 
            this.mcbbContratos.AutoComplete = true;
            this.mcbbContratos.AutoDropdown = true;
            this.mcbbContratos.DataBindings.Add(new System.Windows.Forms.Binding("SelectedValue", this.bindingSourceProcesso, "Contrato", true));
            this.mcbbContratos.DataSource = this.contratoBindingSource;
            this.mcbbContratos.DisplayMember = "Descricao";
            this.mcbbContratos.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.mcbbContratos.FormattingEnabled = true;
            this.mcbbContratos.Location = new System.Drawing.Point(0, 322);
            this.mcbbContratos.Name = "mcbbContratos";
            this.mcbbContratos.NumberColumnsDisplay = 0;
            this.mcbbContratos.Size = new System.Drawing.Size(593, 21);
            this.mcbbContratos.TabIndex = 12;
            this.mcbbContratos.ValueMember = "Contrato";
            // 
            // contratoBindingSource
            // 
            this.contratoBindingSource.DataSource = typeof(MS2000.Desktop.Classes.ContratoDeAdmissaoTemporaria);
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
            this.pnlLocalizarProcesso.Size = new System.Drawing.Size(593, 34);
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
            // multiColumnComboBox3
            // 
            this.multiColumnComboBox3.AutoComplete = true;
            this.multiColumnComboBox3.AutoDropdown = true;
            this.multiColumnComboBox3.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.multiColumnComboBox3.FormattingEnabled = true;
            this.multiColumnComboBox3.Location = new System.Drawing.Point(17, 284);
            this.multiColumnComboBox3.Name = "multiColumnComboBox3";
            this.multiColumnComboBox3.NumberColumnsDisplay = 0;
            this.multiColumnComboBox3.Size = new System.Drawing.Size(528, 21);
            this.multiColumnComboBox3.TabIndex = 16;
            // 
            // FrmAberturaDeProcessos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(607, 583);
            this.Controls.Add(this.tabControl);
            this.Controls.Add(this.bindingNavigator);
            this.Name = "FrmAberturaDeProcessos";
            this.Tag = "201";
            this.Text = "Processos - Abertura de Processos";
            this.Load += new System.EventHandler(this.FrmAberturaDeProcessos_Load);
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator)).EndInit();
            this.bindingNavigator.ResumeLayout(false);
            this.bindingNavigator.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSourceProcesso)).EndInit();
            this.tabControl.ResumeLayout(false);
            this.tabFormulario.ResumeLayout(false);
            this.pnlAvisos.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.panelControl.ResumeLayout(false);
            this.panelControl.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.LocalBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSourceCentroCusto)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.TipoProcessoBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.contratoBindingSource)).EndInit();
            this.pnlLocalizarProcesso.ResumeLayout(false);
            this.pnlLocalizarProcesso.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.BindingNavigator bindingNavigator;
        private System.Windows.Forms.ToolStripButton btnNovo;
        private System.Windows.Forms.ToolStripButton btnSalvar;
        private System.Windows.Forms.ToolStripButton btnCancelar;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripButton btnEditar;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.ToolStripButton printToolStripButton;
        private System.Windows.Forms.ToolStripButton btnFechar;
        private System.Windows.Forms.TabControl tabControl;
        private System.Windows.Forms.TabPage tabFormulario;
        private System.Windows.Forms.Panel panelControl;
        private System.Windows.Forms.Panel pnlLocalizarProcesso;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.MaskedTextBox txtProcesso;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cbbCentroDeCusto;
        private System.Windows.Forms.MaskedTextBox txtData;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private Componentes.MultiColumnComboBox mcbbTiposDeProcesso;
        private System.Windows.Forms.MaskedTextBox txtProcessoVinculado;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtReferenciaCliente;
        private Componentes.MultiColumnComboBox multiColumnComboBox3;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.CheckBox ckbPgProporcional;
        private Componentes.MultiColumnComboBox mcbbContratos;
        private System.Windows.Forms.Label label8;
        private Componentes.MultiColumnComboBox mcbbLocal;
        private System.Windows.Forms.Label label9;
        private Componentes.MultiColumnComboBox mcbbTipoDeDeclaracao;
        private System.Windows.Forms.BindingSource bindingSourceProcesso;
        private System.Windows.Forms.BindingSource bindingSourceCentroCusto;
        private Componentes.MultiColumnComboBox mcbbUrgencia;
        private System.Windows.Forms.CheckBox chkMaterialUsado;
        private System.Windows.Forms.Panel pnlAvisos;
        private System.Windows.Forms.Label lbMessagens;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtCliente;
        private System.Windows.Forms.Button btnClientes;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.MaskedTextBox txtCNPJ;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox txtRTC;
        private Componentes.NumericTextBox ntxtQtdItensFatura;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.BindingSource LocalBindingSource;
        private System.Windows.Forms.BindingSource contratoBindingSource;
        private System.Windows.Forms.BindingSource TipoProcessoBindingSource;
        private System.Windows.Forms.CheckBox ckbProjeto;
        private System.Windows.Forms.CheckBox ckbDrawback;
    }
}
