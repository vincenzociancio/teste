namespace MS2000.Desktop.Menu.Sistema
{
    partial class FrmUsuarioCheck
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
            this.btnFechar = new System.Windows.Forms.Button();
            this.btnTipoProcesso = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.lstUnselected = new System.Windows.Forms.ListBox();
            this.btnDeselectAll = new System.Windows.Forms.Button();
            this.btnDeselect = new System.Windows.Forms.Button();
            this.btnSelectAll = new System.Windows.Forms.Button();
            this.btnSelect = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.lstSelected = new System.Windows.Forms.ListBox();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnFechar
            // 
            this.btnFechar.Image = global::MS2000.Desktop.Properties.Resources.sair;
            this.btnFechar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnFechar.Location = new System.Drawing.Point(648, 334);
            this.btnFechar.Name = "btnFechar";
            this.btnFechar.Size = new System.Drawing.Size(67, 24);
            this.btnFechar.TabIndex = 47;
            this.btnFechar.Text = "Fechar";
            this.btnFechar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnFechar.UseVisualStyleBackColor = true;
            this.btnFechar.Click += new System.EventHandler(this.btnFechar_Click);
            // 
            // btnTipoProcesso
            // 
            this.btnTipoProcesso.Image = global::MS2000.Desktop.Properties.Resources.cadastre;
            this.btnTipoProcesso.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnTipoProcesso.Location = new System.Drawing.Point(520, 334);
            this.btnTipoProcesso.Name = "btnTipoProcesso";
            this.btnTipoProcesso.Size = new System.Drawing.Size(122, 24);
            this.btnTipoProcesso.TabIndex = 45;
            this.btnTipoProcesso.Text = "Tipos de Processo";
            this.btnTipoProcesso.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnTipoProcesso.UseVisualStyleBackColor = true;
            this.btnTipoProcesso.Click += new System.EventHandler(this.btnTipoProcesso_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.lstUnselected);
            this.groupBox1.Location = new System.Drawing.Point(8, 23);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(330, 305);
            this.groupBox1.TabIndex = 43;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Selecione o(s) cliente(s)";
            // 
            // lstUnselected
            // 
            this.lstUnselected.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lstUnselected.FormattingEnabled = true;
            this.lstUnselected.HorizontalScrollbar = true;
            this.lstUnselected.Location = new System.Drawing.Point(3, 16);
            this.lstUnselected.Name = "lstUnselected";
            this.lstUnselected.SelectionMode = System.Windows.Forms.SelectionMode.MultiExtended;
            this.lstUnselected.Size = new System.Drawing.Size(324, 286);
            this.lstUnselected.TabIndex = 30;
            this.lstUnselected.SelectedIndexChanged += new System.EventHandler(this.lstUnselected_SelectedIndexChanged);
            // 
            // btnDeselectAll
            // 
            this.btnDeselectAll.Location = new System.Drawing.Point(344, 198);
            this.btnDeselectAll.Name = "btnDeselectAll";
            this.btnDeselectAll.Size = new System.Drawing.Size(38, 23);
            this.btnDeselectAll.TabIndex = 42;
            this.btnDeselectAll.Text = "<<";
            this.btnDeselectAll.UseVisualStyleBackColor = true;
            this.btnDeselectAll.Click += new System.EventHandler(this.btnDeselectAll_Click);
            // 
            // btnDeselect
            // 
            this.btnDeselect.Location = new System.Drawing.Point(344, 169);
            this.btnDeselect.Name = "btnDeselect";
            this.btnDeselect.Size = new System.Drawing.Size(38, 23);
            this.btnDeselect.TabIndex = 41;
            this.btnDeselect.Text = "<";
            this.btnDeselect.UseVisualStyleBackColor = true;
            this.btnDeselect.Click += new System.EventHandler(this.btnDeselect_Click);
            // 
            // btnSelectAll
            // 
            this.btnSelectAll.Location = new System.Drawing.Point(344, 140);
            this.btnSelectAll.Name = "btnSelectAll";
            this.btnSelectAll.Size = new System.Drawing.Size(38, 23);
            this.btnSelectAll.TabIndex = 40;
            this.btnSelectAll.Text = ">>";
            this.btnSelectAll.UseVisualStyleBackColor = true;
            this.btnSelectAll.Click += new System.EventHandler(this.btnSelectAll_Click);
            // 
            // btnSelect
            // 
            this.btnSelect.Location = new System.Drawing.Point(344, 111);
            this.btnSelect.Name = "btnSelect";
            this.btnSelect.Size = new System.Drawing.Size(38, 23);
            this.btnSelect.TabIndex = 39;
            this.btnSelect.Text = ">";
            this.btnSelect.UseVisualStyleBackColor = true;
            this.btnSelect.Click += new System.EventHandler(this.btnSelect_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.lstSelected);
            this.groupBox2.Location = new System.Drawing.Point(388, 23);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(330, 305);
            this.groupBox2.TabIndex = 44;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Cliente(s) do Usuário";
            // 
            // lstSelected
            // 
            this.lstSelected.DisplayMember = "RazaoSocial";
            this.lstSelected.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lstSelected.FormattingEnabled = true;
            this.lstSelected.HorizontalScrollbar = true;
            this.lstSelected.Location = new System.Drawing.Point(3, 16);
            this.lstSelected.Name = "lstSelected";
            this.lstSelected.SelectionMode = System.Windows.Forms.SelectionMode.MultiExtended;
            this.lstSelected.Size = new System.Drawing.Size(324, 286);
            this.lstSelected.TabIndex = 31;
            this.lstSelected.ValueMember = "ID";
            this.lstSelected.SelectedIndexChanged += new System.EventHandler(this.lstSelected_SelectedIndexChanged);
            // 
            // FrmUsuarioCheck
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(725, 373);
            this.ControlBox = false;
            this.Controls.Add(this.btnFechar);
            this.Controls.Add(this.btnTipoProcesso);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.btnDeselectAll);
            this.Controls.Add(this.btnDeselect);
            this.Controls.Add(this.btnSelectAll);
            this.Controls.Add(this.btnSelect);
            this.Controls.Add(this.groupBox2);
            this.Name = "FrmUsuarioCheck";
            this.Tag = "603";
            this.Text = "Clientes Check";
            this.Load += new System.EventHandler(this.FrmUsuarioCheck_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ListBox lstUnselected;
        private System.Windows.Forms.Button btnDeselectAll;
        private System.Windows.Forms.Button btnDeselect;
        private System.Windows.Forms.Button btnSelectAll;
        private System.Windows.Forms.Button btnSelect;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.ListBox lstSelected;
        private System.Windows.Forms.Button btnTipoProcesso;
        private System.Windows.Forms.Button btnFechar;
    }
}
