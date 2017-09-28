using Avaliacao.Gerenciador.Model;
using Avaliacao.Gerenciador.ViewModel;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Avaliacao.Gerenciador
{
    public partial class FrmListaPerguntasRespostas : Form
    {
        public FrmListaPerguntasRespostas()
        {
            InitializeComponent();
        }

        BindingSource bsDetail = new BindingSource();

        List<Avaliacao_Respostas> aresp = new List<Avaliacao_Respostas>();

        void GetPerguntasSetGrid()
        {
            using (MS2000Context ctx = new MS2000Context())
            {
                aresp = ctx.Avaliacao_Respostas.ToList();

                
                BindingList<ViewPergunta> lista_perguntas = new BindingList<ViewPergunta>(

                (from p in ctx.Avaliacao_Perguntas
                 from c in ctx.Avaliacao_Categoria
                 where p.FK_Categoria == c.ID
                     select(new ViewPergunta { ID = p.ID, Descricao = p.Descricao, Categoria = c.Descricao })).ToList()

                );


                //BindingSource bs = new BindingSource();

                //bs.DataSource = lista_perguntas;
                
                //var perguntas = ctx.Avaliacao_Perguntas.ToList();

                this.avaliacaoPerguntasBindingSource.DataSource = lista_perguntas;

                this.gridMain.AutoGenerateColumns = false;

                this.gridMain.DataSource = null;
                this.gridMain.DataSource = this.avaliacaoPerguntasBindingSource;

                this.avaliacaoPerguntasBindingNavigator.BindingSource = this.avaliacaoPerguntasBindingSource;
            }
        }

        private void FrmCadastroPerguntasRespostas_Load(object sender, EventArgs e)
        {
            this.dataGridView1.AutoGenerateColumns = false;
            GetPerguntasSetGrid();
        }

        private void gridMain_SelectionChanged(object sender, EventArgs e)
        {
            //var id = ((Avaliacao_Perguntas)avaliacaoPerguntasBindingSource.Current).ID;
            var dts = (((DataGridView)sender).DataSource);

            var id = ((ViewPergunta)((BindingSource)dts).Current).ID;
            
            if(aresp != null)
            {
                bsDetail.DataSource = aresp.Where(c => c.FK_Pergunta == id);
                dataGridView1.DataSource = bsDetail;
            }
        }

        private void newToolStripButton_Click(object sender, EventArgs e)
        {
            FrmNovoPerguntasRespostas novo = new FrmNovoPerguntasRespostas();
            novo.ShowDialog();
            novo.Dispose();
            GetPerguntasSetGrid();
        }

        private void openToolStripButton_Click(object sender, EventArgs e)
        {
            FrmEdicaoPerguntasRespostas edicao = new FrmEdicaoPerguntasRespostas();
            edicao.IdPergunta = ((ViewPergunta)avaliacaoPerguntasBindingSource.Current).ID;
            edicao.ShowDialog();
            edicao.Dispose();
            GetPerguntasSetGrid();
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            string searchValue = textBox1.Text.ToLower();

            gridMain.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            try
            {
                foreach (DataGridViewRow row in gridMain.Rows)
                {
                    var texto = row.Cells[1].Value.ToString().ToLower();
                    if (texto.Contains(searchValue))
                    {
                        row.Selected = true;
                        gridMain.FirstDisplayedScrollingRowIndex = row.Index;
                        break;
                    }
                }
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }
      
    }
}
