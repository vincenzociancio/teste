using Avaliacao.Gerenciador.Model;
using System;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace Avaliacao.Questionario
{
    public partial class FrmMain : Form
    {
        // ... { GLOBAL HOOK }
        [DllImport("user32.dll")]
        static extern IntPtr SetWindowsHookEx(int idHook, LowLevelKeyboardProc callback, IntPtr hInstance, uint threadId);

        [DllImport("user32.dll")]
        static extern bool UnhookWindowsHookEx(IntPtr hInstance);

        [DllImport("user32.dll")]
        static extern IntPtr CallNextHookEx(IntPtr idHook, int nCode, int wParam, IntPtr lParam);

        [DllImport("kernel32.dll")]
        static extern IntPtr LoadLibrary(string lpFileName);

        private delegate IntPtr LowLevelKeyboardProc(int nCode, IntPtr wParam, IntPtr lParam);

        const int WH_KEYBOARD_LL = 13;
        const int WM_KEYDOWN = 0x100;

        private LowLevelKeyboardProc _proc = hookProc;

        private static IntPtr hhook = IntPtr.Zero;

        public void SetHook()
        {
            IntPtr hInstance = LoadLibrary("User32");
            hhook = SetWindowsHookEx(WH_KEYBOARD_LL, _proc, hInstance, 0);
        }

        public static void UnHook()
        {
            UnhookWindowsHookEx(hhook);
        }

        public static IntPtr hookProc(int code, IntPtr wParam, IntPtr lParam)
        {
            if (code >= 0 && wParam == (IntPtr)WM_KEYDOWN)
            {
                int vkCode = Marshal.ReadInt32(lParam);
                return (IntPtr)1;
            }
            else
                return CallNextHookEx(hhook, code, (int)wParam, lParam);
        }

        private KeyboardHook kb;

        [DllImport("user32.dll")]
        public static extern int FindWindow(String sClassName, String sAppName);

        [DllImport("User32.dll")]
        public static extern int SendMessage(
        int hWnd, // handle to destination window
        int Msg, // message
        int wParam, // first message parameter
        int lParam);

        public string[] StrParametro { get; set; }

        public FrmMain(string[] args)
        {
            InitializeComponent();
            // Para usuário DEMO

            if (args.Length > 0)
            {
                StrParametro = args;
            }
            else
            {
                StrParametro = null;
            }
            //string[] teste = { "DEMO", "39" };
            //StrParametro = teste;
        }

        public void GetResposta(string usuario, int avalicao)
        {
            int x = 3;
            int y = 10;
            int z = 10;

            MS2000Context db = new MS2000Context();
            // var _perguntas = db.Avaliacao_Perguntas.ToList();
            //   y = y + 10;
            var _perguntas = (from ap in db.Avaliacao_Perguntas
                              from avr in db.Avaliacao_Respostas_Colaboradores
                              where ap.ID == avr.FK_Pergunta &&
                                    avr.FK_Colaborador == usuario &&
                                    avr.FK_Avaliacao == avalicao
                              select new
                              {
                                  ap.Descricao,
                                  ap.ID,
                                  Id_resp_colaborador = avr.ID
                              }).ToList();


            panel1.Controls.Clear();
            //panel1.AutoSize = true;
            foreach (var item in _perguntas)
            {
                GroupBox G = new GroupBox()
                {
                    Name = "group" + item.ID,
                    Tag = item.Id_resp_colaborador,
                    Text = item.Descricao.ToString(),
                    Font = new Font("Arial", 10, FontStyle.Regular),
                    ForeColor = Color.Blue,
                    AutoSize = true,
                    Size = new Size(1400, 140),
                    Location = new Point(x, y)
                };
                //y = y + 200; esouza
                var _Respostas = db.Avaliacao_Respostas.Where(c => c.FK_Pergunta == item.ID);

                foreach (var Resp in _Respostas)
                {
                    z = z + 30;//40
                    G.Controls.Add(new RadioButton()
                        {
                            Name = "radio" + Resp.ID,
                            Tag = Resp.ID,
                            Text = Resp.Descricao.ToString(),
                            AutoSize = true,
                            ForeColor = Color.Black,
                            Location = new Point(x + 15, z),
                        });
                    y = y + 50;
                };
                z = 10;
                panel1.Controls.Add(G);
            }
            //   y = y + 140;
            //panel2.Size = new Size(1400, 30);
            //panel2.Location = new Point(x, y);
        }

        private void BtnFinalizar_Click(object sender, EventArgs e)
        {
            bool Goon;
            string Usuario = "";
            int Avaliacao = 0;
            using (MS2000Context db = new MS2000Context())
            {
                foreach (Control panel in panel1.Controls)
                {
                    GroupBox gbox = (GroupBox)panel;
                    Goon = false;
                    foreach (Control cb in gbox.Controls)
                    {
                        RadioButton r = (RadioButton)cb;

                        if (r.Checked)
                        {
                            int id = Convert.ToInt32(gbox.Tag.ToString());
                            var _resp_colaborador = db.Avaliacao_Respostas_Colaboradores.FirstOrDefault(x => x.ID == id);
                            int resposta = Convert.ToInt32(r.Tag.ToString());
                            _resp_colaborador.FK_Resposta = resposta;
                            _resp_colaborador.Correta = db.Avaliacao_Respostas.FirstOrDefault(c => c.ID == resposta).Correta;
                            db.Entry(_resp_colaborador).State = EntityState.Modified;
                            Goon = true;
                            Usuario = _resp_colaborador.FK_Colaborador;
                            Avaliacao = _resp_colaborador.FK_Avaliacao;

                        }
                    }
                    if (Goon == false)
                    {
                        MessageBox.Show("Favor Responder Todas as Questões!");
                        return;
                    }
                }

                var _Realizado = db.Avaliacao_Colaboradores.FirstOrDefault(x => x.FK_Avaliacao == Avaliacao && x.FK_Colaborador == Usuario);

                _Realizado.Realizado = true;
                _Realizado.Data_de_Realizacao = DateTime.Now;
                db.Entry(_Realizado).State = EntityState.Modified;
                db.SaveChanges();
            }
            HabilitarControles();
            Application.Exit();
        }

        void HabilitarControles()
        {
            const int WM_CLOSE = 0x0010;
            int taskManager = FindWindow("#32770", "Windows Task Manager");
            SendMessage(taskManager, WM_CLOSE, 0, 0);
            UnHook();
            kb.UnhookKeyboard();
        }

        private void FrmMain_FormClosed(object sender, FormClosedEventArgs e)
        {
            HabilitarControles();
        }

        private void FrmMain_Load(object sender, EventArgs e)
        {
            using (MS2000Context db = new MS2000Context())
            {
                var _user = System.Environment.UserName;
                if (_user.ToLower() == "maria.eduarda")
                {
                    _user = "duda.ms2000";
                }
                var _avaliacao = (from ac in db.Avaliacao_Colaboradores
                                  from aa in db.Avaliacao_Avaliacao
                                  from u in db.Usuarios
                                  where ac.FK_Avaliacao == aa.ID &&
                                   ac.Realizado == false &&
                                   aa.Data_de_Aplicacao <= DateTime.Now &&
                                   ac.FK_Colaborador == u.Usuario &&
                                   u.Email.Replace("@mslogistica.com.br", "").ToLower() == _user.ToLower()
                                  select new
                                  {
                                      ac.FK_Avaliacao,
                                      ac.FK_Colaborador
                                  }).FirstOrDefault();

                if (_avaliacao != null && StrParametro == null)
                {
                    //Bloqueando
                    Process p = new Process();
                    p.StartInfo.WorkingDirectory = Environment.GetFolderPath(Environment.SpecialFolder.System);
                    p.StartInfo.FileName = "taskmgr.exe";
                    p.StartInfo.CreateNoWindow = true;
                    p.StartInfo.WindowStyle = ProcessWindowStyle.Hidden;
                    p.Start();

                    SetHook();
                    kb = new KeyboardHook();
                    kb.HookKeyboard();
                    //----------

                    //Para teste
                    //GetResposta("DUDA", 30);
                    //--------

                    GetResposta(_avaliacao.FK_Colaborador, _avaliacao.FK_Avaliacao);
                    this.WindowState = FormWindowState.Maximized;
                }
                else //Demo
                    if (StrParametro != null)
                    {                        
                        //Bloquiando
                        Process p = new Process();
                        p.StartInfo.WorkingDirectory = Environment.GetFolderPath(Environment.SpecialFolder.System);
                        p.StartInfo.FileName = "taskmgr.exe";
                        p.StartInfo.CreateNoWindow = true;
                        p.StartInfo.WindowStyle = ProcessWindowStyle.Hidden;
                        p.Start();
                        //DEMO
                        BtnFinalizar.Text = "Finalize";
                        label1.Text = "Dear Employee,";
                        label2.Text = "In order to ensure and reinforce MS Logística commitment with the continuous improvement in our performance and reinforce our accomplishment with the FCPA, UK Bribery, Brazilian Anti-corruption Law, Anticorruption Company Policy, Code of Ethics and offer innovative solutions to our clients, please answer the following questionnaire immediately. After completion, your systems will be released to you to continue your work.";
                        //---
                        SetHook();
                        kb = new KeyboardHook();
                        kb.HookKeyboard();

                        GetResposta(StrParametro[0], Convert.ToInt32(StrParametro[1]));
                        this.WindowState = FormWindowState.Maximized;
                        //}
                    }
                    else
                    {
                        Application.Exit();
                    }
            }
            //GetResposta("LSERRA", 28);           
        }

        private void FrmMain_Shown(object sender, EventArgs e)
        {
            this.Top = 0;
            this.Left = 0;
            this.Width = Screen.PrimaryScreen.Bounds.Width;
            this.Height = Screen.PrimaryScreen.Bounds.Height;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            HabilitarControles();
            this.Close();
        }

        private void FrmMain_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Escape)
            {
                button1.PerformClick();
            }
        }

        private void label2_DoubleClick(object sender, EventArgs e)
        {
            if (StrParametro != null)
            {
                HabilitarControles();
                this.Close();
            }
        }
    }
}
