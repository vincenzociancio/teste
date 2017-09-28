namespace MS2000.Desktop.Menu.ISO
{
    partial class FrmWebCam
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
       // private System.ComponentModel.IContainer components = null;

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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmWebCam));
            this.btnCaptura = new System.Windows.Forms.Button();
            this.btnContinue = new System.Windows.Forms.Button();
            this.pbWebcam = new System.Windows.Forms.PictureBox();
            this.WebCamCapture = new WebCam_Capture.WebCamCapture();
            this.bindingNavigator = new System.Windows.Forms.BindingNavigator(this.components);
            this.btnFoto = new System.Windows.Forms.ToolStripButton();
            this.btnCapturar = new System.Windows.Forms.ToolStripButton();
            this.btnRecortar = new System.Windows.Forms.ToolStripButton();
            this.btnSalvar = new System.Windows.Forms.ToolStripButton();
            this.btnCancelar = new System.Windows.Forms.ToolStripButton();
            this.btnFechar = new System.Windows.Forms.ToolStripButton();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.pbFoto = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pbWebcam)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator)).BeginInit();
            this.bindingNavigator.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbFoto)).BeginInit();
            this.SuspendLayout();
            // 
            // btnCaptura
            // 
            this.btnCaptura.Location = new System.Drawing.Point(19, 274);
            this.btnCaptura.Name = "btnCaptura";
            this.btnCaptura.Size = new System.Drawing.Size(75, 23);
            this.btnCaptura.TabIndex = 0;
            this.btnCaptura.Text = "Capturar";
            this.btnCaptura.UseVisualStyleBackColor = true;
            this.btnCaptura.Click += new System.EventHandler(this.btnCaptura_Click);
            // 
            // btnContinue
            // 
            this.btnContinue.Location = new System.Drawing.Point(264, 274);
            this.btnContinue.Name = "btnContinue";
            this.btnContinue.Size = new System.Drawing.Size(75, 23);
            this.btnContinue.TabIndex = 2;
            this.btnContinue.Text = "Continue";
            this.btnContinue.UseVisualStyleBackColor = true;
            this.btnContinue.Visible = false;
            this.btnContinue.Click += new System.EventHandler(this.btnContinue_Click);
            // 
            // pbWebcam
            // 
            this.pbWebcam.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pbWebcam.Location = new System.Drawing.Point(19, 28);
            this.pbWebcam.Name = "pbWebcam";
            this.pbWebcam.Size = new System.Drawing.Size(320, 240);
            this.pbWebcam.TabIndex = 1;
            this.pbWebcam.TabStop = false;
            this.pbWebcam.Paint += new System.Windows.Forms.PaintEventHandler(this.pictureBox1_Paint);
            this.pbWebcam.MouseDown += new System.Windows.Forms.MouseEventHandler(this.pictureBox1_MouseDown);
            this.pbWebcam.MouseMove += new System.Windows.Forms.MouseEventHandler(this.pictureBox1_MouseMove);
            this.pbWebcam.MouseUp += new System.Windows.Forms.MouseEventHandler(this.pictureBox1_MouseUp);
            // 
            // WebCamCapture
            // 
            this.WebCamCapture.CaptureHeight = 240;
            this.WebCamCapture.CaptureWidth = 320;
            this.WebCamCapture.FrameNumber = ((ulong)(0ul));
            this.WebCamCapture.Location = new System.Drawing.Point(0, 0);
            this.WebCamCapture.Name = "WebCamCapture";
            this.WebCamCapture.Size = new System.Drawing.Size(342, 252);
            this.WebCamCapture.TabIndex = 0;
            this.WebCamCapture.TimeToCapture_milliseconds = 100;
            this.WebCamCapture.ImageCaptured += new WebCam_Capture.WebCamCapture.WebCamEventHandler(this.webCamCapture_ImageCaptured);
            // 
            // bindingNavigator
            // 
            this.bindingNavigator.AddNewItem = null;
            this.bindingNavigator.CountItem = null;
            this.bindingNavigator.CountItemFormat = "de {0}";
            this.bindingNavigator.DeleteItem = null;
            this.bindingNavigator.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.btnFoto,
            this.btnCapturar,
            this.btnRecortar,
            this.btnSalvar,
            this.btnCancelar,
            this.btnFechar});
            this.bindingNavigator.Location = new System.Drawing.Point(0, 0);
            this.bindingNavigator.MoveFirstItem = null;
            this.bindingNavigator.MoveLastItem = null;
            this.bindingNavigator.MoveNextItem = null;
            this.bindingNavigator.MovePreviousItem = null;
            this.bindingNavigator.Name = "bindingNavigator";
            this.bindingNavigator.PositionItem = null;
            this.bindingNavigator.Size = new System.Drawing.Size(680, 25);
            this.bindingNavigator.TabIndex = 20;
            this.bindingNavigator.Text = "bindingNavigator1";
            // 
            // btnFoto
            // 
            this.btnFoto.Image = global::MS2000.Desktop.Properties.Resources.product;
            this.btnFoto.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnFoto.Name = "btnFoto";
            this.btnFoto.Size = new System.Drawing.Size(100, 22);
            this.btnFoto.Text = "Importar Foto";
            this.btnFoto.Click += new System.EventHandler(this.btnFoto_Click);
            // 
            // btnCapturar
            // 
            this.btnCapturar.Image = ((System.Drawing.Image)(resources.GetObject("btnCapturar.Image")));
            this.btnCapturar.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnCapturar.Name = "btnCapturar";
            this.btnCapturar.Size = new System.Drawing.Size(73, 22);
            this.btnCapturar.Text = "Capturar";
            this.btnCapturar.Click += new System.EventHandler(this.btnCapturar_Click);
            // 
            // btnRecortar
            // 
            this.btnRecortar.Enabled = false;
            this.btnRecortar.Image = ((System.Drawing.Image)(resources.GetObject("btnRecortar.Image")));
            this.btnRecortar.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnRecortar.Name = "btnRecortar";
            this.btnRecortar.Size = new System.Drawing.Size(71, 22);
            this.btnRecortar.Text = "&Recortar";
            this.btnRecortar.Click += new System.EventHandler(this.btnRecortar_Click);
            // 
            // btnSalvar
            // 
            this.btnSalvar.Enabled = false;
            this.btnSalvar.Image = ((System.Drawing.Image)(resources.GetObject("btnSalvar.Image")));
            this.btnSalvar.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnSalvar.Name = "btnSalvar";
            this.btnSalvar.Size = new System.Drawing.Size(58, 22);
            this.btnSalvar.Text = "&Salvar";
            this.btnSalvar.Click += new System.EventHandler(this.btnSalvar_Click);
            // 
            // btnCancelar
            // 
            this.btnCancelar.Enabled = false;
            this.btnCancelar.Image = ((System.Drawing.Image)(resources.GetObject("btnCancelar.Image")));
            this.btnCancelar.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(73, 22);
            this.btnCancelar.Text = "&Cancelar";
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
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
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // pbFoto
            // 
            this.pbFoto.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pbFoto.Location = new System.Drawing.Point(345, 28);
            this.pbFoto.Name = "pbFoto";
            this.pbFoto.Size = new System.Drawing.Size(320, 240);
            this.pbFoto.TabIndex = 21;
            this.pbFoto.TabStop = false;
            this.pbFoto.Paint += new System.Windows.Forms.PaintEventHandler(this.pbFoto_Paint);
            this.pbFoto.MouseDown += new System.Windows.Forms.MouseEventHandler(this.pbFoto_MouseDown);
            this.pbFoto.MouseMove += new System.Windows.Forms.MouseEventHandler(this.pbFoto_MouseMove);
            this.pbFoto.MouseUp += new System.Windows.Forms.MouseEventHandler(this.pbFoto_MouseUp);
            // 
            // FrmWebCam
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(680, 271);
            this.Controls.Add(this.pbFoto);
            this.Controls.Add(this.bindingNavigator);
            this.Controls.Add(this.btnContinue);
            this.Controls.Add(this.pbWebcam);
            this.Controls.Add(this.btnCaptura);
            this.Name = "FrmWebCam";
            this.Text = "WebCam";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FrmWebCam_FormClosing);
            this.Load += new System.EventHandler(this.FrmWebCam_Load_1);
            ((System.ComponentModel.ISupportInitialize)(this.pbWebcam)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator)).EndInit();
            this.bindingNavigator.ResumeLayout(false);
            this.bindingNavigator.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbFoto)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnCaptura;
        private System.Windows.Forms.PictureBox pbWebcam;
        private System.Windows.Forms.Button btnContinue;
        private WebCam_Capture.WebCamCapture WebCamCapture;
        private System.ComponentModel.IContainer components;
        private System.Windows.Forms.BindingNavigator bindingNavigator;
        private System.Windows.Forms.ToolStripButton btnSalvar;
        private System.Windows.Forms.ToolStripButton btnRecortar;
        private System.Windows.Forms.ToolStripButton btnCancelar;
        private System.Windows.Forms.ToolStripButton btnFechar;
        private System.Windows.Forms.ToolStripButton btnFoto;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private System.Windows.Forms.PictureBox pbFoto;
        private System.Windows.Forms.ToolStripButton btnCapturar;
    }
}
