namespace MS2000.Desktop.Menu.Consultas
{
    partial class FrmKPIPerformances
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
			if(disposing && (components != null))
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
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource2 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.KPIChegadaCargaXRecNumerarioBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.rptView = new Microsoft.Reporting.WinForms.ReportViewer();
            this.panel1 = new System.Windows.Forms.Panel();
            this.gbPorPlataforma = new System.Windows.Forms.GroupBox();
            this.ckbGraficoPorPlataforma = new System.Windows.Forms.CheckBox();
            this.cbbListaPlataformas = new System.Windows.Forms.ComboBox();
            this.gpbMesDes = new System.Windows.Forms.GroupBox();
            this.dtpMes = new System.Windows.Forms.DateTimePicker();
            this.label1 = new System.Windows.Forms.Label();
            this.gpbPeriodoDes = new System.Windows.Forms.GroupBox();
            this.dtpFinal = new System.Windows.Forms.DateTimePicker();
            this.dtpInicio = new System.Windows.Forms.DateTimePicker();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.cbbTpRelatorio = new System.Windows.Forms.ComboBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnGerarGrafico = new System.Windows.Forms.Button();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.ltvClientes = new System.Windows.Forms.ListView();
            this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader2 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader3 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.ImpostoConsolidadoBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.label2 = new System.Windows.Forms.Label();
            this.dtpAno = new System.Windows.Forms.DateTimePicker();
            ((System.ComponentModel.ISupportInitialize)(this.KPIChegadaCargaXRecNumerarioBindingSource)).BeginInit();
            this.panel1.SuspendLayout();
            this.gbPorPlataforma.SuspendLayout();
            this.gpbMesDes.SuspendLayout();
            this.gpbPeriodoDes.SuspendLayout();
            this.groupBox4.SuspendLayout();
            this.groupBox3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ImpostoConsolidadoBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // KPIChegadaCargaXRecNumerarioBindingSource
            // 
            this.KPIChegadaCargaXRecNumerarioBindingSource.DataSource = typeof(MS2000.Desktop.Menu.Consultas.FrmKPIPerformances.KPIChegadaCargaXRegAprova);
            // 
            // rptView
            // 
            this.rptView.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource1.Name = "dsKPIChegadaCargaXRecNumerarioAir";
            reportDataSource1.Value = this.KPIChegadaCargaXRecNumerarioBindingSource;
            reportDataSource2.Name = "dsKPIChegadaCargaXRecNumerarioSea";
            reportDataSource2.Value = this.KPIChegadaCargaXRecNumerarioBindingSource;
            this.rptView.LocalReport.DataSources.Add(reportDataSource1);
            this.rptView.LocalReport.DataSources.Add(reportDataSource2);
            this.rptView.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Consultas.rptKPICargaXRecNumerario.rdlc";
            this.rptView.Location = new System.Drawing.Point(0, 249);
            this.rptView.Name = "rptView";
            this.rptView.Size = new System.Drawing.Size(860, 407);
            this.rptView.TabIndex = 0;
            this.rptView.Tag = "31703";
            this.rptView.ZoomMode = Microsoft.Reporting.WinForms.ZoomMode.PageWidth;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.gbPorPlataforma);
            this.panel1.Controls.Add(this.gpbMesDes);
            this.panel1.Controls.Add(this.gpbPeriodoDes);
            this.panel1.Controls.Add(this.groupBox4);
            this.panel1.Controls.Add(this.btnGerarGrafico);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 118);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(860, 131);
            this.panel1.TabIndex = 8;
            // 
            // gbPorPlataforma
            // 
            this.gbPorPlataforma.Controls.Add(this.ckbGraficoPorPlataforma);
            this.gbPorPlataforma.Controls.Add(this.cbbListaPlataformas);
            this.gbPorPlataforma.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.gbPorPlataforma.Location = new System.Drawing.Point(0, 67);
            this.gbPorPlataforma.Name = "gbPorPlataforma";
            this.gbPorPlataforma.Size = new System.Drawing.Size(488, 57);
            this.gbPorPlataforma.TabIndex = 19;
            this.gbPorPlataforma.TabStop = false;
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
            this.cbbListaPlataformas.Size = new System.Drawing.Size(473, 21);
            this.cbbListaPlataformas.TabIndex = 1;
            // 
            // gpbMesDes
            // 
            this.gpbMesDes.Controls.Add(this.label2);
            this.gpbMesDes.Controls.Add(this.dtpAno);
            this.gpbMesDes.Controls.Add(this.dtpMes);
            this.gpbMesDes.Controls.Add(this.label1);
            this.gpbMesDes.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.gpbMesDes.Location = new System.Drawing.Point(635, 3);
            this.gpbMesDes.Name = "gpbMesDes";
            this.gpbMesDes.Size = new System.Drawing.Size(222, 63);
            this.gpbMesDes.TabIndex = 18;
            this.gpbMesDes.TabStop = false;
            this.gpbMesDes.Text = "Mês de Desembaraço";
            // 
            // dtpMes
            // 
            this.dtpMes.CustomFormat = "MMMM";
            this.dtpMes.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpMes.Location = new System.Drawing.Point(129, 29);
            this.dtpMes.Name = "dtpMes";
            this.dtpMes.Size = new System.Drawing.Size(84, 20);
            this.dtpMes.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(96, 32);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(27, 13);
            this.label1.TabIndex = 20;
            this.label1.Text = "Mês";
            // 
            // gpbPeriodoDes
            // 
            this.gpbPeriodoDes.Controls.Add(this.dtpFinal);
            this.gpbPeriodoDes.Controls.Add(this.dtpInicio);
            this.gpbPeriodoDes.Controls.Add(this.label4);
            this.gpbPeriodoDes.Controls.Add(this.label3);
            this.gpbPeriodoDes.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.gpbPeriodoDes.Location = new System.Drawing.Point(366, 3);
            this.gpbPeriodoDes.Name = "gpbPeriodoDes";
            this.gpbPeriodoDes.Size = new System.Drawing.Size(265, 63);
            this.gpbPeriodoDes.TabIndex = 8;
            this.gpbPeriodoDes.TabStop = false;
            this.gpbPeriodoDes.Text = "Período de Desembaraço";
            // 
            // dtpFinal
            // 
            this.dtpFinal.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpFinal.Location = new System.Drawing.Point(164, 32);
            this.dtpFinal.MinDate = new System.DateTime(2000, 1, 1, 0, 0, 0, 0);
            this.dtpFinal.Name = "dtpFinal";
            this.dtpFinal.Size = new System.Drawing.Size(94, 20);
            this.dtpFinal.TabIndex = 1;
            this.dtpFinal.Value = new System.DateTime(2014, 12, 9, 0, 0, 0, 0);
            // 
            // dtpInicio
            // 
            this.dtpInicio.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpInicio.Location = new System.Drawing.Point(35, 32);
            this.dtpInicio.MinDate = new System.DateTime(2000, 1, 1, 0, 0, 0, 0);
            this.dtpInicio.Name = "dtpInicio";
            this.dtpInicio.Size = new System.Drawing.Size(94, 20);
            this.dtpInicio.TabIndex = 0;
            this.dtpInicio.Value = new System.DateTime(2014, 12, 8, 0, 0, 0, 0);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(135, 34);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(23, 13);
            this.label4.TabIndex = 8;
            this.label4.Text = "Até";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(8, 34);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(21, 13);
            this.label3.TabIndex = 7;
            this.label3.Text = "De";
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.cbbTpRelatorio);
            this.groupBox4.Controls.Add(this.groupBox1);
            this.groupBox4.Location = new System.Drawing.Point(0, 3);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(363, 63);
            this.groupBox4.TabIndex = 7;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = " Gerar gráfico de ";
            // 
            // cbbTpRelatorio
            // 
            this.cbbTpRelatorio.FormattingEnabled = true;
            this.cbbTpRelatorio.Location = new System.Drawing.Point(6, 22);
            this.cbbTpRelatorio.Name = "cbbTpRelatorio";
            this.cbbTpRelatorio.Size = new System.Drawing.Size(351, 21);
            this.cbbTpRelatorio.TabIndex = 0;
            this.cbbTpRelatorio.SelectedIndexChanged += new System.EventHandler(this.cbbTpRelatorio_SelectedIndexChanged);
            // 
            // groupBox1
            // 
            this.groupBox1.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.groupBox1.Location = new System.Drawing.Point(582, 55);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(278, 60);
            this.groupBox1.TabIndex = 18;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Período de Desembaraço";
            // 
            // btnGerarGrafico
            // 
            this.btnGerarGrafico.Location = new System.Drawing.Point(496, 99);
            this.btnGerarGrafico.Name = "btnGerarGrafico";
            this.btnGerarGrafico.Size = new System.Drawing.Size(135, 23);
            this.btnGerarGrafico.TabIndex = 0;
            this.btnGerarGrafico.Text = "Gerar o Gráfico";
            this.btnGerarGrafico.UseVisualStyleBackColor = true;
            this.btnGerarGrafico.Click += new System.EventHandler(this.btnGerarGrafico_Click);
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.ltvClientes);
            this.groupBox3.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox3.Location = new System.Drawing.Point(0, 0);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(860, 118);
            this.groupBox3.TabIndex = 0;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Selecione o(s) Cliente(s)";
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
            this.ltvClientes.Size = new System.Drawing.Size(854, 99);
            this.ltvClientes.TabIndex = 0;
            this.ltvClientes.UseCompatibleStateImageBehavior = false;
            this.ltvClientes.View = System.Windows.Forms.View.Details;
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
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 34);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(26, 13);
            this.label2.TabIndex = 23;
            this.label2.Text = "Ano";
            // 
            // dtpAno
            // 
            this.dtpAno.CustomFormat = "yyyy";
            this.dtpAno.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpAno.Location = new System.Drawing.Point(38, 29);
            this.dtpAno.Name = "dtpAno";
            this.dtpAno.ShowUpDown = true;
            this.dtpAno.Size = new System.Drawing.Size(54, 20);
            this.dtpAno.TabIndex = 22;
            // 
            // FrmKPIPerformances
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(860, 656);
            this.Controls.Add(this.rptView);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.groupBox3);
            this.MaximizeBox = true;
            this.Name = "FrmKPIPerformances";
            this.StartPosition = System.Windows.Forms.FormStartPosition.WindowsDefaultLocation;
            this.Text = "KPI - Performances";
            this.Load += new System.EventHandler(this.FrmKPIImportProcess_Load);
            ((System.ComponentModel.ISupportInitialize)(this.KPIChegadaCargaXRecNumerarioBindingSource)).EndInit();
            this.panel1.ResumeLayout(false);
            this.gbPorPlataforma.ResumeLayout(false);
            this.gbPorPlataforma.PerformLayout();
            this.gpbMesDes.ResumeLayout(false);
            this.gpbMesDes.PerformLayout();
            this.gpbPeriodoDes.ResumeLayout(false);
            this.gpbPeriodoDes.PerformLayout();
            this.groupBox4.ResumeLayout(false);
            this.groupBox3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.ImpostoConsolidadoBindingSource)).EndInit();
            this.ResumeLayout(false);

		}

		#endregion

        private Microsoft.Reporting.WinForms.ReportViewer rptView;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button btnGerarGrafico;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.ListView ltvClientes;
        private System.Windows.Forms.ColumnHeader columnHeader1;
        private System.Windows.Forms.ColumnHeader columnHeader2;
        private System.Windows.Forms.ColumnHeader columnHeader3;
        private System.Windows.Forms.GroupBox gpbPeriodoDes;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.DateTimePicker dtpFinal;
        private System.Windows.Forms.DateTimePicker dtpInicio;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.GroupBox gpbMesDes;
        private System.Windows.Forms.DateTimePicker dtpMes;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ComboBox cbbTpRelatorio;
        private System.Windows.Forms.GroupBox gbPorPlataforma;
        private System.Windows.Forms.CheckBox ckbGraficoPorPlataforma;
        private System.Windows.Forms.ComboBox cbbListaPlataformas;
        private System.Windows.Forms.BindingSource KPIChegadaCargaXRecNumerarioBindingSource;
        private System.Windows.Forms.BindingSource ImpostoConsolidadoBindingSource;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DateTimePicker dtpAno;
	}
}
