namespace MS2000.Desktop.Menu.ISO.PesquisaDeSatisfacao
{
    partial class FrmPesquisaDeSatisfacao
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
            this.ClienteNotaBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnVisualizar = new System.Windows.Forms.Button();
            this.cbbAvaliacao = new System.Windows.Forms.ComboBox();
            this.rptView = new Microsoft.Reporting.WinForms.ReportViewer();
            ((System.ComponentModel.ISupportInitialize)(this.ClienteNotaBindingSource)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // ClienteNotaBindingSource
            // 
            this.ClienteNotaBindingSource.DataSource = typeof(MS2000.Desktop.Menu.ISO.PesquisaDeSatisfacao.FrmPesquisaDeSatisfacao.ClienteNota);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnVisualizar);
            this.groupBox1.Controls.Add(this.cbbAvaliacao);
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(991, 53);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Selecione a pesquisa";
            // 
            // btnVisualizar
            // 
            this.btnVisualizar.Location = new System.Drawing.Point(468, 17);
            this.btnVisualizar.Name = "btnVisualizar";
            this.btnVisualizar.Size = new System.Drawing.Size(101, 23);
            this.btnVisualizar.TabIndex = 1;
            this.btnVisualizar.Text = "Visualizar";
            this.btnVisualizar.UseVisualStyleBackColor = true;
            this.btnVisualizar.Click += new System.EventHandler(this.btnVisualizar_Click);
            // 
            // cbbAvaliacao
            // 
            this.cbbAvaliacao.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbbAvaliacao.FormattingEnabled = true;
            this.cbbAvaliacao.Location = new System.Drawing.Point(6, 19);
            this.cbbAvaliacao.Name = "cbbAvaliacao";
            this.cbbAvaliacao.Size = new System.Drawing.Size(456, 21);
            this.cbbAvaliacao.TabIndex = 0;
            // 
            // rptView
            // 
            reportDataSource1.Name = "DataSet1";
            reportDataSource1.Value = this.ClienteNotaBindingSource;
            this.rptView.LocalReport.DataSources.Add(reportDataSource1);
            this.rptView.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.ISO.PesquisaDeSatisfacao.rptClientesVsNotas.rdlc";
            this.rptView.Location = new System.Drawing.Point(12, 71);
            this.rptView.Name = "rptView";
            this.rptView.Size = new System.Drawing.Size(991, 470);
            this.rptView.TabIndex = 1;
            // 
            // FrmPesquisaDeSatisfacao
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1015, 553);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.rptView);
            this.Name = "FrmPesquisaDeSatisfacao";
            this.Tag = "808";
            this.Text = "ISO - Pesquisa de Satisfação";
            this.Load += new System.EventHandler(this.FrmPesquisaDeSatisfacao_Load);
            ((System.ComponentModel.ISupportInitialize)(this.ClienteNotaBindingSource)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ComboBox cbbAvaliacao;
        private Microsoft.Reporting.WinForms.ReportViewer rptView;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnVisualizar;
        private System.Windows.Forms.BindingSource ClienteNotaBindingSource;
    }
}