using Avaliacao.Gerenciador.Model;
using Avaliacao.Gerenciador.ViewModel;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Windows.Forms;
using System.Globalization;
using System.Threading;
using System.Resources;


namespace Avaliacao.Gerenciador
{
    public partial class FrmMain : Form
    {
        public ListBox.ObjectCollection _colaboradores { get; set; }

        public FrmMain()
        {
            InitializeComponent();
             //Thread.CurrentThread.CurrentUICulture = new CultureInfo("en-Us");
            Thread.CurrentThread.CurrentUICulture = new CultureInfo("pt-BR");
        
        }

        private void btnGerar_Click(object sender, EventArgs e)
        {
            FrmAvaliacaoColaborador frm = new FrmAvaliacaoColaborador();


            if (frm.ShowDialog(this) == DialogResult.OK)
            {
                if (frm.tabControl1.SelectedIndex == 0)
                {
                    this._colaboradores = frm.ltbSelecionados.Items;
                }
                else
                {
                    this._colaboradores = frm.ltbAuto.Items;
                }

                if (this._colaboradores.Count < 1)
                {
                    pictureBox1.Image = imageList1.Images[0];
                }
                else
                {
                    pictureBox1.Image = imageList1.Images[1];
                }
            }
            else
            {
                Image img1 = imageList1.Images[0];
                pictureBox1.Image = img1;
                pictureBox1.Size = new Size(48, 48);
            }
            frm.Dispose();
        }

        void TrocarIdioma()
        {
            /*************Idiomas***********/
            ResourceManager LocRM = new ResourceManager("Avaliacao.Gerenciador.res", typeof(FrmMain).Assembly);

            this.Text = LocRM.GetString("gerenciador_de_avaliacoes");

            newToolStripButton.Text = LocRM.GetString("novo");
            canceltoolStripButton.Text = LocRM.GetString("cancelar");
            saveToolStripButton.Text = LocRM.GetString("salvar");
            bindingNavigatorDeleteItem.Text = LocRM.GetString("deletar");
            printToolStripButton.Text = LocRM.GetString("relatorios");
            toolStripButton1.Text = LocRM.GetString("cadastro_de_perguntas");
            grpDados.Text = LocRM.GetString("dados_da_avaliacao");
            label1.Text = LocRM.GetString("data_de_criacao");
            label4.Text = LocRM.GetString("descricao_da_avaliacao");
            label2.Text = LocRM.GetString("data_da_aplicacao");
            groupBox1.Text = LocRM.GetString("selecionar_quantidade_de_perguntas");

            tabPage1.Text = LocRM.GetString("aleatoriamente");
            tabPage2.Text = LocRM.GetString("categoria");
            label3.Text = LocRM.GetString("quantidade");

            grdCategoria.Columns[0].HeaderText = LocRM.GetString("categoria");
            grdCategoria.Columns[1].HeaderText = LocRM.GetString("perguntas");

            gridMain.Columns[0].HeaderText = LocRM.GetString("data_de_criacao");
            gridMain.Columns[1].HeaderText = LocRM.GetString("descricao_da_avaliacao");
            gridMain.Columns[2].HeaderText = LocRM.GetString("quantidade");
            gridMain.Columns[3].HeaderText = LocRM.GetString("data_da_aplicacao");

            btnGerar.Text = LocRM.GetString("participantes");

            toolStripSplitButton1.Text = LocRM.GetString("idioma");
            /*******************************/
        }

        private void FrmMain_Load(object sender, EventArgs e)
        {


            //System.Security.Principal.WindowsIdentity.GetCurrent().User.Value;
            pictureBox1.Image = imageList1.Images[1];
            this.AvaliacaoBindingSource.DataSource = new AvaliacaoFacade().GetAvaliacoes();
            this.gridMain.AutoGenerateColumns = false;
            this.gridMain.DataSource = this.AvaliacaoBindingSource;
            this.AvaliacaoBindingNavigator.BindingSource = this.AvaliacaoBindingSource;
            this.txtDescricao.DataBindings.Add(new Binding("Text", this.AvaliacaoBindingSource, "Descricao", true));
            this.dtpCriacao.DataBindings.Add(new Binding("Text", this.AvaliacaoBindingSource, "Data_Criacao", true));
            this.dtpAplicacao.DataBindings.Add(new Binding("Text", this.AvaliacaoBindingSource, "Data_de_Aplicacao", true));
            this.nudQuantidade.DataBindings.Add(new Binding("Text", this.AvaliacaoBindingSource, "Quantidade_Pergunta", true));
            this.AvaliacaoBindingNavigator.DeleteItem = null;
        }

        private void newToolStripButton_Click(object sender, EventArgs e)
        {
            pictureBox1.Image = imageList1.Images[0];
            this.AvaliacaoBindingSource.AddNew();
            this.grpDados.Enabled = true;
            this.gridMain.Enabled = false;
            this.saveToolStripButton.Enabled = true;
            this.newToolStripButton.Enabled = false;
            this.canceltoolStripButton.Enabled = true;            
            this.txtDescricao.Focus();
            
            tbcTipoAvaliacao.SelectedIndex = 0;
        }

        private void saveToolStripButton_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtDescricao.Text))
            {
                MessageBox.Show("A descrição é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricao.Focus();
                return;
            }

            if (nudQuantidade.Value < 1 && tbcTipoAvaliacao.SelectedIndex == 0)
            {
                MessageBox.Show("A quantidade é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                nudQuantidade.Focus();
                return;
            }

            int qtd_perguntas = 0;

            List<ViewCategoria> tem_categoria = new List<ViewCategoria>();

            if (tbcTipoAvaliacao.SelectedIndex == 1)// Perguntas Categrias
            {
                bool OK = false;

                foreach (DataGridViewRow row in this.grdCategoria.Rows)
                {
                    if (row.Cells[1].Value != null && !row.Cells[1].Value.Equals(""))
                    {
                        tem_categoria.Add(new ViewCategoria
                        {
                            Descricao = row.Cells[0].Value.ToString(),
                            Quantidade = Convert.ToInt32(row.Cells[1].Value),
                            ID = Convert.ToInt32(row.Cells[2].Value),

                        });
                    }

                    foreach (DataGridViewCell cell in row.Cells)
                    {
                        if (cell.ColumnIndex == 1)
                        {
                            if (cell.Value == null || cell.Value.Equals(""))
                            {

                            }
                            else
                            {
                                OK = true;
                                qtd_perguntas += Convert.ToInt32(cell.Value);
                            }
                        }
                    }
                }
                if (!OK)
                {
                    MessageBox.Show("A quantidade da categoria é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    return;
                }
            }
            else // Perguntas Aleatória
            {
                qtd_perguntas = Convert.ToInt32(nudQuantidade.Value);
            }

            if (this._colaboradores == null || this._colaboradores.Count < 1)
            {
                MessageBox.Show("Colaborador(es) não cadastrado(s)!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                btnGerar.Focus();
                return;
            }

            MS2000Context ctx = new MS2000Context();

            // Preparando avaliação para gravar
            var _avaliacao = new Avaliacao_Avaliacao()
            {
                Data_Criacao = DateTime.Now,
                Data_de_Aplicacao = dtpAplicacao.Value,
                Descricao = txtDescricao.Text,
                Quantidade_Pergunta = qtd_perguntas,//Convert.ToInt32(nudQuantidade.Value),
                Tipo = (tbcTipoAvaliacao.SelectedIndex == 0 ? "A" : "C"),
            };

            // add avaliação
            ctx.Avaliacao_Avaliacao.Add(_avaliacao);

            //Buscando perguntas

            //Array de DEMO
            int[] arrayDemo = { 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 217, 216, 214, 213, 212, 211};

            List<Avaliacao_Perguntas> _lista_de_perguntas = new List<Avaliacao_Perguntas>();
            _lista_de_perguntas = ctx.Avaliacao_Perguntas.Where(c => !arrayDemo.Contains(c.ID)).ToList();


            //-------------------

            // add participantes
            foreach (object o in _colaboradores)
            {
                PropertyInfo p = o.GetType().GetProperty("Usuario");
                var usuario = p.GetValue(o, null);

                ctx.Avaliacao_Colaboradores.Add(new Avaliacao_Colaboradores
                {
                    FK_Colaborador = usuario.ToString(),
                    Avaliacao = _avaliacao
                });

                if (tbcTipoAvaliacao.SelectedIndex == 0)
                {
                    // Montando perguntas
                    var _lista_de_perguntas_random = _lista_de_perguntas.Select(x => x).OrderBy(s => Guid.NewGuid()).Take(qtd_perguntas).ToList();//alterado para qtd_perguntas

                    foreach (var pergunta in _lista_de_perguntas_random)
                    {
                        ctx.Avaliacao_Respostas_Colaboradores.Add(new Avaliacao_Respostas_Colaboradores
                        {
                            FK_Colaborador = usuario.ToString(),
                            Avaliacao = _avaliacao,
                            FK_Pergunta = pergunta.ID,
                            FK_Resposta = 0
                        });
                    }
                    //---------------------
                }
                else//buscando por categoria
                {
                    foreach (ViewCategoria item in tem_categoria)
                    {
                        var _lista_de_perguntas_random = _lista_de_perguntas.Where(c => c.FK_Categoria == item.ID).Select(x => x).OrderBy(s => Guid.NewGuid()).Take(item.Quantidade).ToList();//alterado para qtd_perguntas

                        foreach (var pergunta in _lista_de_perguntas_random)
                        {
                            ctx.Avaliacao_Respostas_Colaboradores.Add(new Avaliacao_Respostas_Colaboradores
                            {
                                FK_Colaborador = usuario.ToString(),
                                Avaliacao = _avaliacao,
                                FK_Pergunta = pergunta.ID
                            });
                        }
                    }
                }
            }

            // Gravando tudo            
            ctx.SaveChanges();

            //Atribuido no Temp
            ((Avaliacao_Avaliacao)this.AvaliacaoBindingSource.Current).ID = _avaliacao.ID;
            ((Avaliacao_Avaliacao)this.AvaliacaoBindingSource.Current).Data_Criacao = _avaliacao.Data_Criacao;
            ((Avaliacao_Avaliacao)this.AvaliacaoBindingSource.Current).Data_de_Aplicacao = _avaliacao.Data_de_Aplicacao;
            ((Avaliacao_Avaliacao)this.AvaliacaoBindingSource.Current).Descricao = _avaliacao.Descricao;
            ((Avaliacao_Avaliacao)this.AvaliacaoBindingSource.Current).Quantidade_Pergunta = _avaliacao.Quantidade_Pergunta;

            //Gravando Temp
            this.AvaliacaoBindingSource.EndEdit();

            // Controles
            this.saveToolStripButton.Enabled = false;
            this.newToolStripButton.Enabled = true;
            this.canceltoolStripButton.Enabled = false;
            this.grpDados.Enabled = false;
            this.gridMain.Enabled = true;

            MessageBox.Show("Avaliação gravada com sucesso!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void bindingNavigatorDeleteItem_Click(object sender, EventArgs e)
        {
            //using (MS2000Context ctx = new MS2000Context())
            //{
            //    var avaliacao = ctx.Avaliacao_Avaliacao.Find(((Avaliacao_Avaliacao)this.AvaliacaoBindingSource.Current).ID);
            //    ctx.Avaliacao_Avaliacao.Remove(avaliacao);
            //    ctx.SaveChanges();
            //}

            //this.saveToolStripButton.Enabled = false;
            //this.newToolStripButton.Enabled = true;
            //this.grpDados.Enabled = false;
            //this.gridMain.Enabled = true;

            //this.AvaliacaoBindingSource.RemoveCurrent();
        }

        private void canceltoolStripButton_Click(object sender, EventArgs e)
        {
            pictureBox1.Image = imageList1.Images[1];
            this.AvaliacaoBindingSource.CancelEdit();
            this.canceltoolStripButton.Enabled = false;
            this.saveToolStripButton.Enabled = false;
            this.newToolStripButton.Enabled = true;
            this.grpDados.Enabled = false;
            this.gridMain.Enabled = true;
        }

        private void printToolStripButton_Click(object sender, EventArgs e)
        {
            //FrmPrint print = new FrmPrint();
            //print.AvaliacaoID = ((Avaliacao_Avaliacao)this.AvaliacaoBindingSource.Current).ID;
            //print.Show();
        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            FrmListaPerguntasRespostas listaPergunta = new FrmListaPerguntasRespostas();
            listaPergunta.ShowDialog();
            listaPergunta.Dispose();
        }

        private void tabControl1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (tbcTipoAvaliacao.SelectedIndex == 0)
            {
                grdCategoria.DataSource = null;
            }
            else
            {
                //nudQuantidade.Value = 0;

                //---
                using (MS2000Context db = new MS2000Context())
                {
                    var categorias = db.Avaliacao_Categoria.Select(c => new ViewCategoria { ID = c.ID, Descricao = c.Descricao, Quantidade = 0 }).ToList();

                    this.grdCategoria.AutoGenerateColumns = false;
                    grdCategoria.DataSource = null;
                    grdCategoria.DataSource = categorias;
                }
            }
        }

        private void gridMain_SelectionChanged(object sender, EventArgs e)
        {
            var dts = (((DataGridView)sender).DataSource);
            var avaliacao = ((Avaliacao_Avaliacao)((BindingSource)dts).Current);

            if (avaliacao.Tipo == "A")
            {
                tbcTipoAvaliacao.SelectedIndex = 0;
                //nudQuantidade.Value = avaliacao.Quantidade_Pergunta;
            }
            else
            {
                tbcTipoAvaliacao.SelectedIndex = 1;

                using (MS2000Context db = new MS2000Context())
                {
                    var query = "select c.Descricao, ap.FK_Categoria as ID, (COUNT(ap.FK_Categoria)/COUNT(DISTINCT(rc.FK_Colaborador))) AS Quantidade " +
                    "from Avaliacao_Respostas_Colaboradores rc " +
                    "inner join Avaliacao_Perguntas ap on (ap.ID = rc.FK_Pergunta) " +
                    "inner join Avaliacao_Categoria c on (c.ID = ap.FK_Categoria) " +
                    "where FK_Avaliacao = @ID " +
                    "group by c.Descricao,ap.FK_Categoria";

                    var categoria = db.Database.SqlQuery<ViewCategoria>(query, new SqlParameter("@ID", avaliacao.ID)).ToList();
                    this.grdCategoria.AutoGenerateColumns = false;
                    grdCategoria.DataSource = null;
                    grdCategoria.DataSource = categoria;

                }
            }
        }

        private void sintéticoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmPrint print = new FrmPrint();
            print.AvaliacaoID = ((Avaliacao_Avaliacao)this.AvaliacaoBindingSource.Current).ID;
            print.TipoRelatorio = 1;
            print.Show();
        }

        private void analíticoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmPrint print = new FrmPrint();
            print.AvaliacaoID = ((Avaliacao_Avaliacao)this.AvaliacaoBindingSource.Current).ID;
            print.TipoRelatorio = 2;
            print.Show();
        }

        private void analíticoPorColunaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmPrint print = new FrmPrint();
            print.AvaliacaoID = ((Avaliacao_Avaliacao)this.AvaliacaoBindingSource.Current).ID;
            print.TipoRelatorio = 3;
            print.Show();
        }

        private void gráficoDeAvaliaçãoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmPrint print = new FrmPrint();
            print.AvaliacaoID = ((Avaliacao_Avaliacao)this.AvaliacaoBindingSource.Current).ID;
            print.TipoRelatorio = 4;
            print.Show();
        }

        private void inglêsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Thread.CurrentThread.CurrentUICulture = new CultureInfo("en-Us");            
            TrocarIdioma();
        }

        private void portuguesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Thread.CurrentThread.CurrentUICulture = new CultureInfo("pt-BR");
            TrocarIdioma();
        }

 
    }
}
