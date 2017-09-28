namespace MS2000.Desktop.Menu.Consultas
{
    partial class FrmGraficoDeImpostos
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
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.ImpostoConsolidadoBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.rptView = new Microsoft.Reporting.WinForms.ReportViewer();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.ltvClientes = new System.Windows.Forms.ListView();
            this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader2 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader3 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.dtpFinal = new System.Windows.Forms.DateTimePicker();
            this.dtpInicio = new System.Windows.Forms.DateTimePicker();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.ckbGraficoPorPlataforma = new System.Windows.Forms.CheckBox();
            this.cbbListaPlataformas = new System.Windows.Forms.ComboBox();
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.rdbSuspensos = new System.Windows.Forms.RadioButton();
            this.rdbPagos = new System.Windows.Forms.RadioButton();
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.ckbSomenteImportacao = new System.Windows.Forms.CheckBox();
            this.btnGerarGrafico = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.ImpostoConsolidadoBindingSource)).BeginInit();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.tableLayoutPanel1.SuspendLayout();
            this.groupBox4.SuspendLayout();
            this.groupBox5.SuspendLayout();
            this.SuspendLayout();
            // 
            // rptView
            // 
            this.rptView.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource1.Name = "dsClasse";
            reportDataSource1.Value = this.ImpostoConsolidadoBindingSource;
            this.rptView.LocalReport.DataSources.Add(reportDataSource1);
            this.rptView.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Consultas.rptImpostosConsolidados.rdlc";
            this.rptView.Location = new System.Drawing.Point(0, 244);
            this.rptView.Name = "rptView";
            this.rptView.Size = new System.Drawing.Size(860, 412);
            this.rptView.TabIndex = 0;
            this.rptView.ZoomMode = Microsoft.Reporting.WinForms.ZoomMode.PageWidth;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.ltvClientes);
            this.groupBox2.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox2.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.groupBox2.Location = new System.Drawing.Point(0, 0);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(860, 121);
            this.groupBox2.TabIndex = 0;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Selecione o(s) Cliente(s)";
            // 
            // ltvClientes
            // 
            this.ltvClientes.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.ltvClientes.CheckBoxes = true;
            this.ltvClientes.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1,
            this.columnHeader2,
            this.columnHeader3});
            this.ltvClientes.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ltvClientes.FullRowSelect = true;
            this.ltvClientes.HeaderStyle = System.Windows.Forms.ColumnHeaderStyle.None;
            this.ltvClientes.Location = new System.Drawing.Point(3, 16);
            this.ltvClientes.Name = "ltvClientes";
            this.ltvClientes.Size = new System.Drawing.Size(854, 102);
            this.ltvClientes.TabIndex = 0;
            this.ltvClientes.UseCompatibleStateImageBehavior = false;
            this.ltvClientes.View = System.Windows.Forms.View.Details;
            this.ltvClientes.ItemChecked += new System.Windows.Forms.ItemCheckedEventHandler(this.ltvClientes_ItemChecked);
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "Código";
            this.columnHeader1.Width = 50;
            // 
            // columnHeader2
            // 
            this.columnHeader2.Text = "Cnpj";
            this.columnHeader2.Width = 116;
            // 
            // columnHeader3
            // 
            this.columnHeader3.Text = "Razão social";
            this.columnHeader3.Width = 440;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.dtpFinal);
            this.groupBox1.Controls.Add(this.dtpInicio);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.groupBox1.Location = new System.Drawing.Point(3, 3);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(339, 60);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Período de Desembaraço";
            // 
            // dtpFinal
            // 
            this.dtpFinal.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpFinal.Location = new System.Drawing.Point(200, 24);
            this.dtpFinal.Name = "dtpFinal";
            this.dtpFinal.Size = new System.Drawing.Size(132, 20);
            this.dtpFinal.TabIndex = 1;
            this.dtpFinal.ValueChanged += new System.EventHandler(this.dtpFinal_ValueChanged);
            // 
            // dtpInicio
            // 
            this.dtpInicio.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpInicio.Location = new System.Drawing.Point(33, 24);
            this.dtpInicio.Name = "dtpInicio";
            this.dtpInicio.Size = new System.Drawing.Size(132, 20);
            this.dtpInicio.TabIndex = 0;
            this.dtpInicio.Value = new System.DateTime(2014, 8, 1, 14, 15, 0, 0);
            this.dtpInicio.ValueChanged += new System.EventHandler(this.dtpInicio_ValueChanged);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(171, 27);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(23, 13);
            this.label4.TabIndex = 4;
            this.label4.Text = "Até";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 26);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(21, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "De";
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.ckbGraficoPorPlataforma);
            this.groupBox3.Controls.Add(this.cbbListaPlataformas);
            this.groupBox3.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.groupBox3.Location = new System.Drawing.Point(348, 3);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(509, 60);
            this.groupBox3.TabIndex = 1;
            this.groupBox3.TabStop = false;
            // 
            // ckbGraficoPorPlataforma
            // 
            this.ckbGraficoPorPlataforma.AutoSize = true;
            this.ckbGraficoPorPlataforma.Location = new System.Drawing.Point(6, 11);
            this.ckbGraficoPorPlataforma.Name = "ckbGraficoPorPlataforma";
            this.ckbGraficoPorPlataforma.Size = new System.Drawing.Size(158, 17);
            this.ckbGraficoPorPlataforma.TabIndex = 0;
            this.ckbGraficoPorPlataforma.Text = "Gerar gráfico por Plataforma";
            this.ckbGraficoPorPlataforma.UseVisualStyleBackColor = true;
            this.ckbGraficoPorPlataforma.CheckedChanged += new System.EventHandler(this.ckbGraficoPorPlataforma_CheckedChanged);
            // 
            // cbbListaPlataformas
            // 
            this.cbbListaPlataformas.Enabled = false;
            this.cbbListaPlataformas.FormattingEnabled = true;
            this.cbbListaPlataformas.Location = new System.Drawing.Point(6, 30);
            this.cbbListaPlataformas.Name = "cbbListaPlataformas";
            this.cbbListaPlataformas.Size = new System.Drawing.Size(494, 21);
            this.cbbListaPlataformas.TabIndex = 1;
            // 
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.ColumnCount = 2;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel1.Controls.Add(this.groupBox1, 0, 0);
            this.tableLayoutPanel1.Controls.Add(this.groupBox3, 1, 0);
            this.tableLayoutPanel1.Controls.Add(this.groupBox4, 0, 1);
            this.tableLayoutPanel1.Controls.Add(this.groupBox5, 1, 1);
            this.tableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.tableLayoutPanel1.Location = new System.Drawing.Point(0, 121);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 3;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(860, 123);
            this.tableLayoutPanel1.TabIndex = 11;
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.rdbSuspensos);
            this.groupBox4.Controls.Add(this.rdbPagos);
            this.groupBox4.Location = new System.Drawing.Point(3, 69);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(339, 49);
            this.groupBox4.TabIndex = 6;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Gerar gráfico de impostos:";
            // 
            // rdbSuspensos
            // 
            this.rdbSuspensos.AutoSize = true;
            this.rdbSuspensos.Location = new System.Drawing.Point(191, 22);
            this.rdbSuspensos.Name = "rdbSuspensos";
            this.rdbSuspensos.Size = new System.Drawing.Size(77, 17);
            this.rdbSuspensos.TabIndex = 1;
            this.rdbSuspensos.Text = "Suspensos";
            this.rdbSuspensos.UseVisualStyleBackColor = true;
            // 
            // rdbPagos
            // 
            this.rdbPagos.AutoSize = true;
            this.rdbPagos.Checked = true;
            this.rdbPagos.Location = new System.Drawing.Point(41, 22);
            this.rdbPagos.Name = "rdbPagos";
            this.rdbPagos.Size = new System.Drawing.Size(55, 17);
            this.rdbPagos.TabIndex = 0;
            this.rdbPagos.TabStop = true;
            this.rdbPagos.Text = "Pagos";
            this.rdbPagos.UseVisualStyleBackColor = true;
            // 
            // groupBox5
            // 
            this.groupBox5.Controls.Add(this.btnGerarGrafico);
            this.groupBox5.Controls.Add(this.ckbSomenteImportacao);
            this.groupBox5.Location = new System.Drawing.Point(348, 69);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Size = new System.Drawing.Size(509, 49);
            this.groupBox5.TabIndex = 9;
            this.groupBox5.TabStop = false;
            // 
            // ckbSomenteImportacao
            // 
            this.ckbSomenteImportacao.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.ckbSomenteImportacao.AutoSize = true;
            this.ckbSomenteImportacao.Location = new System.Drawing.Point(6, 11);
            this.ckbSomenteImportacao.Name = "ckbSomenteImportacao";
            this.ckbSomenteImportacao.Size = new System.Drawing.Size(122, 17);
            this.ckbSomenteImportacao.TabIndex = 0;
            this.ckbSomenteImportacao.Text = "somente Importação";
            this.ckbSomenteImportacao.UseVisualStyleBackColor = true;
            // 
            // btnGerarGrafico
            // 
            this.btnGerarGrafico.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnGerarGrafico.Location = new System.Drawing.Point(365, 19);
            this.btnGerarGrafico.Name = "btnGerarGrafico";
            this.btnGerarGrafico.Size = new System.Drawing.Size(135, 23);
            this.btnGerarGrafico.TabIndex = 1;
            this.btnGerarGrafico.Text = "Gerar o Gráfico";
            this.btnGerarGrafico.UseVisualStyleBackColor = true;
            this.btnGerarGrafico.Click += new System.EventHandler(this.button1_Click);
            // 
            // FrmGraficoDeImpostos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(860, 656);
            this.Controls.Add(this.rptView);
            this.Controls.Add(this.tableLayoutPanel1);
            this.Controls.Add(this.groupBox2);
            this.Name = "FrmGraficoDeImpostos";
            this.Tag = "31702";
            this.Text = "Gráfico de Impostos";
            this.Load += new System.EventHandler(this.FrmGraficoImpostosConsolidado_Load);
            ((System.ComponentModel.ISupportInitialize)(this.ImpostoConsolidadoBindingSource)).EndInit();
            this.groupBox2.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.tableLayoutPanel1.ResumeLayout(false);
            this.groupBox4.ResumeLayout(false);
            this.groupBox4.PerformLayout();
            this.groupBox5.ResumeLayout(false);
            this.groupBox5.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer rptView;
        private System.Windows.Forms.BindingSource ImpostoConsolidadoBindingSource;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.ListView ltvClientes;
        private System.Windows.Forms.ColumnHeader columnHeader1;
        private System.Windows.Forms.ColumnHeader columnHeader2;
        private System.Windows.Forms.ColumnHeader columnHeader3;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DateTimePicker dtpFinal;
        private System.Windows.Forms.DateTimePicker dtpInicio;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.ComboBox cbbListaPlataformas;
        private System.Windows.Forms.CheckBox ckbGraficoPorPlataforma;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.RadioButton rdbSuspensos;
        private System.Windows.Forms.RadioButton rdbPagos;
        private System.Windows.Forms.GroupBox groupBox5;
        private System.Windows.Forms.Button btnGerarGrafico;
        private System.Windows.Forms.CheckBox ckbSomenteImportacao;
    }
}