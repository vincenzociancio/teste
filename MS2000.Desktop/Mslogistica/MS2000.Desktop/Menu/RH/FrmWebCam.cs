using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using MS2000.Desktop.Componentes;
using WebCam_Capture;
using System.Drawing.Drawing2D;
using MS2000.Desktop.Classes;
using System.Drawing.Imaging;
using System.IO;


namespace MS2000.Desktop.Menu.ISO
{

    public partial class FrmWebCam : MS2000.Desktop.Componentes.MSForm01
    {
        //private WebCamCapture UserControl1;
        public string FK_Empregado { get; set; }
        public string Caminho { get; set; }
        private bool _selecting;
        private Rectangle _selection;
        private Image _originalImage;

        private void pictureBox1_MouseDown(object sender, MouseEventArgs e)
        {
            //if (e.Button == MouseButtons.Left)
            //{
            //    _selecting = true;
            //    _selection = new Rectangle(new Point(e.X, e.Y), new Size());
            //}
        }

        private void pictureBox1_MouseMove(object sender, MouseEventArgs e)
        {
            //if (_selecting)
            //{
            //    _selection.Width = e.X - _selection.X;
            //    _selection.Height = e.Y - _selection.Y;

            //    // Redraw the picturebox:
            //    pbFoto.Refresh();
            //}
        }

        private void pictureBox1_Paint(object sender, PaintEventArgs e)
        {
        //    if (_selecting)
        //    {
        //        // Draw a rectangle displaying the current selection
        //        Pen pen = Pens.GreenYellow;
        //        e.Graphics.DrawRectangle(pen, _selection);
        //    }
        }

        private void pictureBox1_MouseUp(object sender, MouseEventArgs e)
        {
            //_selecting = false;
        }

        //private void WebCamCapture1_ImageCaptured(object source, WebCam_Capture.WebcamEventArgs e)
        //{
        //    this.pbFoto.Image = e.WebCamImage;
        //}
        public FrmWebCam()
        {
            InitializeComponent();
        }


        private void btnCaptura_Click(object sender, EventArgs e)
        {
          //  this.WebCamCapture.Stop();
          
        }

        private void FrmWebCam_Load_1(object sender, EventArgs e)
        {
            WebCamCapture.CaptureHeight = pbWebcam.Height;
            WebCamCapture.CaptureWidth = pbWebcam.Width;
            //WebCamCapture.TimeToCapture_milliseconds = (int)numCaptureTime.Value;
            WebCamCapture.Start(0);
        }

        private void webCamCapture_ImageCaptured(object source, WebcamEventArgs e)
        {
            this.pbWebcam.Image = e.WebCamImage;
        }

        private void btnContinue_Click(object sender, EventArgs e)
        {
            this.WebCamCapture.Start(this.WebCamCapture.FrameNumber);
            btnRecortar.Enabled = false;
            btnCancelar.Enabled = false;
            btnCaptura.Enabled = true;
        }

        private void btnRecortar_Click(object sender, EventArgs e)
        {
            if (_selection.Size != new Size())
            {
                Image imagemEscalonada = redimensionarImagem(pbFoto.Image, new Size(320, 240));
                pbFoto.Image = imagemEscalonada;
                // Create cropped image:
                Image img = pbFoto.Image.Crop(_selection);

                // Fit image to the picturebox:
                pbFoto.Image = img.Fit2PictureBox(pbFoto);

                _selecting = false;
            }
            else
                _selecting = false;

            btnCancelar.Enabled = true;
            btnSalvar.Enabled = true;
            btnRecortar.Enabled = false;
           // this.WebCamCapture.Start(this.WebCamCapture.FrameNumber);
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            pbFoto.Image = _originalImage.Clone() as Image;
            btnSalvar.Enabled = false;
            btnCancelar.Enabled = false;
            btnRecortar.Enabled = true;
            //btnContinue.Enabled = true;
           // btnCaptura.Enabled = true;
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            WebCamCapture.Stop();
            Close();
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                if (File.Exists(Caminho + FK_Empregado + ".jpg"))
                {
                    File.Delete(Caminho + FK_Empregado + ".jpg");
                    Bitmap bmpScreenshot;

                    bmpScreenshot = pbFoto.Image as Bitmap;//Aqui ele recebe sua imagem do picturebox
                    bmpScreenshot.Save(Caminho + FK_Empregado + ".JPG", ImageFormat.Jpeg); //comando pra salva
                    Close();
                }
                else
                {
                    Bitmap bmpScreenshot;

                    bmpScreenshot = pbFoto.Image as Bitmap;//Aqui ele recebe sua imagem do picturebox
                    bmpScreenshot.Save(Caminho + FK_Empregado + ".JPG", ImageFormat.Jpeg); //comando pra salva
                    Close();
                }
                this.DialogResult = DialogResult.OK;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }        
        }

        private void FrmWebCam_FormClosing(object sender, FormClosingEventArgs e)
        {
            WebCamCapture.Stop();
        }

        private void btnFoto_Click(object sender, EventArgs e)
        {
            btnRecortar.Enabled = true;
            btnSalvar.Enabled = false;
            btnCancelar.Enabled = false;

            openFileDialog1.InitialDirectory = Caminho;           
            openFileDialog1.Filter = "Images (*.JPG)|*.JPG|" + "All files (*.*)|*.*";
            openFileDialog1.CheckFileExists = true;
            openFileDialog1.CheckPathExists = true;
            openFileDialog1.FilterIndex = 2;
            openFileDialog1.RestoreDirectory = true;
            openFileDialog1.ReadOnlyChecked = true;
            openFileDialog1.ShowReadOnly = true;

            DialogResult dr = this.openFileDialog1.ShowDialog();

            if (dr == System.Windows.Forms.DialogResult.OK)
            {              
                foreach (String arquivo in openFileDialog1.FileNames)
                {                  
                    try
                    {                      
                        Image Imagem = Image.FromFile(arquivo);                        
                      //  redimensionarImagem((System.Drawing.Image)Imagem,new Size(320, 240));
                        pbFoto.SizeMode = PictureBoxSizeMode.StretchImage;
                        pbFoto.Image = Imagem;                    
                        _originalImage = pbFoto.Image.Clone() as Image;
                    }                  
                    catch (Exception ex)
                    {                       
                        MessageBox.Show("Não é possível exibir a imagem");
                    }
                }
            }
        }       

        static Image redimensionarImagem(Image imgPhoto, Size tamanho)
        {
           // float nPorcentagem = ((float)Percent / 100);

            int fonteLargura = imgPhoto.Width;     //armazena a largura original da imagem origem
            int fonteAltura = imgPhoto.Height;   //armazena a altura original da imagem origem
            int origemX = 0;        //eixo x da imagem origem
            int origemY = 0;        //eixo y da imagem origem

            int destX = 0;          //eixo x da imagem destino
            int destY = 0;          //eixo y da imagem destino
            //Calcula a altura e largura da imagem redimensionada
            int destWidth = tamanho.Width;
            int destHeight = tamanho.Height;

            //Cria um novo objeto bitmap
            Bitmap bmImagem = new Bitmap(destWidth, destHeight,
                                     PixelFormat.Format24bppRgb);
            //Define a resolu~ção do bitmap.
            bmImagem.SetResolution(imgPhoto.HorizontalResolution, imgPhoto.VerticalResolution);
            //Crima um objeto graphics e defina a qualidade
            Graphics grImagem = Graphics.FromImage(bmImagem);
            grImagem.InterpolationMode = InterpolationMode.HighQualityBicubic;

            //Desenha a imge usando o método DrawImage() da classe grafica
            grImagem.DrawImage(imgPhoto,
                new Rectangle(destX, destY, destWidth, destHeight),
                new Rectangle(origemX, origemY, fonteLargura, fonteAltura),
                GraphicsUnit.Pixel);

            grImagem.Dispose();  //libera o objeto grafico
            return bmImagem;
        }

        private void pbFoto_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                _selecting = true;
                _selection = new Rectangle(new Point(e.X, e.Y), new Size());
            }
        }

        private void pbFoto_MouseMove(object sender, MouseEventArgs e)
        {
            if (_selecting)
            {
                _selection.Width = e.X - _selection.X;
                _selection.Height = e.Y - _selection.Y;

                // Redraw the picturebox:
                pbFoto.Refresh();
            }
        }

        private void pbFoto_Paint(object sender, PaintEventArgs e)
        {
            if (_selecting)
            {
                // Draw a rectangle displaying the current selection
                Pen pen = Pens.GreenYellow;
                e.Graphics.DrawRectangle(pen, _selection);
            }
        }

        private void pbFoto_MouseUp(object sender, MouseEventArgs e)
        {
            _selecting = false;
        }

        private void btnCapturar_Click(object sender, EventArgs e)
        {
            btnRecortar.Enabled = true;
            btnSalvar.Enabled = false;
            btnCancelar.Enabled = false;
            this.WebCamCapture.Stop();
            pbFoto.Image = pbWebcam.Image;
           _originalImage = pbFoto.Image.Clone() as Image;
            this.WebCamCapture.Start(this.WebCamCapture.FrameNumber);          
        }
    }
}
