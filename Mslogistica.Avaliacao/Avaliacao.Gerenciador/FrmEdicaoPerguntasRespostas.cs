using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Avaliacao.Gerenciador.Model;

namespace Avaliacao.Gerenciador
{
    public partial class FrmEdicaoPerguntasRespostas : Form
    {
        public int IdPergunta { get; set; }

        private Avaliacao_Perguntas _pergunta = new Avaliacao_Perguntas();

        private List<Avaliacao_Respostas> listaResposta = new List<Avaliacao_Respostas>();

        public FrmEdicaoPerguntasRespostas()
        {
            InitializeComponent();
        }

        void setRespostas(int flag = 0)
        {
            using (MS2000Context ctx = new MS2000Context())
            {
                _pergunta = ctx.Avaliacao_Perguntas.FirstOrDefault(c => c.ID == IdPergunta);
                listaResposta = _pergunta.Respostas.ToList();
                if (flag == 0)
                {
                    this.txtResposta.DataBindings.Add(new Binding("Text", listaResposta, "Descricao", true));
                    this.ckbCorreta.DataBindings.Add(new Binding("Checked", listaResposta, "Correta", true));    
                }              

                dataRepeater1.DataSource = listaResposta;
                dataRepeater1.Refresh();
            }
        }

        private void FrmEdicaoPerguntasRespostas_Load(object sender, EventArgs e)
        {
            using (MS2000Context ctx = new MS2000Context())
            {
                // Setores
                var setores = ctx.Setores.Where(c => c.Excluido == false).ToList();
                cbbSetores.DataSource = setores;
                cbbSetores.ValueMember = "Codigo";
                cbbSetores.DisplayMember = "Descricao";

                //-------------------
                var categorias = ctx.Avaliacao_Categoria.ToList();
                cbbCategoria.DataSource = categorias;
                cbbCategoria.ValueMember = "ID";
                cbbCategoria.DisplayMember = "Descricao";

                setRespostas();
                //_pergunta = ctx.Avaliacao_Perguntas.FirstOrDefault(c => c.ID == IdPergunta);

                cbbSetores.SelectedItem = setores.FirstOrDefault(c => c.Codigo == _pergunta.FK_Setor);

                cbbCategoria.SelectedItem = categorias.FirstOrDefault(c => c.ID == _pergunta.FK_Categoria);

                //listaResposta = _pergunta.Respostas.ToList();

                //this.txtResposta.DataBindings.Add(new Binding("Text", listaResposta, "Descricao", true));
                //this.ckbCorreta.DataBindings.Add(new Binding("Checked", listaResposta, "Correta", true));              

                txtPergunta.Text = _pergunta.Descricao;


                //dataRepeater1.DataSource = listaResposta;
                //dataRepeater1.Refresh();
            }
        }

        private void ckbCorreta_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void ckbCorreta_Click(object sender, EventArgs e)
        {
            //if (dataRepeater1.ItemCount > 0)
            //{
            //for (int i = 0; i < this.dataRepeater1.ItemCount; i++)
            //{
            //    this.dataRepeater1.CurrentItemIndex = i;

            //    CheckBox checkBox = (CheckBox)
            //                this.dataRepeater1.ItemTemplate.Controls["ckbCorreta"];

            //    if (checkBox.TabIndex != ((CheckBox)sender).TabIndex)
            //    {
            //        checkBox.Checked = false;
            //    }                       
            //}
            //int CurrentItemIndex = this.dataRepeater1.CurrentItemIndex;
            //int x = 0;
            //foreach (Control c in dataRepeater1.Controls)
            //{

            //    this.dataRepeater1.CurrentItemIndex = x
            //    CheckBox checkBox = (CheckBox)c.Controls["ckbCorreta"];



            //    var name = checkBox.TabIndex;
            //    x++;
            //}


            //foreach (Control c in dataRepeater1.Controls)
            //{
            //    CheckBox chk = (CheckBox)c.co //.FindControl("CheckBox1");
            //    //if (chk.Name != ((CheckBox)sender).Name)
            //    //{

            //    //}   
            //}               
            //}
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrEmpty(txtPergunta.Text))
            {
                MessageBox.Show("A descrição da pergunta e obrigatória!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtPergunta.Focus();
                return;
            }


            _pergunta.Descricao = txtPergunta.Text;
            _pergunta.FK_Setor = (cbbSetores.SelectedIndex >= 0 ? cbbSetores.SelectedValue.ToString() : "");
            _pergunta.FK_Categoria = (cbbCategoria.SelectedIndex >= 0 ? (int?)cbbCategoria.SelectedValue : null);


            using (MS2000Context ctx = new MS2000Context())
            {
                //perguntas
                ctx.Avaliacao_Perguntas.Attach(_pergunta);
                ctx.Entry(_pergunta).State = EntityState.Modified;
                // respostas

                List<Avaliacao_Respostas> lista_resposta = dataRepeater1.DataSource as List<Avaliacao_Respostas>;
                foreach (Avaliacao_Respostas resp in lista_resposta)
                {
                    ctx.Avaliacao_Respostas.Attach(resp);
                    ctx.Entry(resp).State = EntityState.Modified;
                }
                ctx.SaveChanges();
            }

            MessageBox.Show("Alteração Realizada com sucesso!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
            this.Close();
        }

        private void dataRepeater1_Click(object sender, EventArgs e)
        {

        }

        private void dataRepeater1_ItemValueNeeded(object sender, Microsoft.VisualBasic.PowerPacks.DataRepeaterItemValueEventArgs e)
        {

        }

        private void dataRepeater1_ItemTemplate_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            cbbCategoria.SelectedIndex = -1;
        }

        private void btnLimpar_Click(object sender, EventArgs e)
        {
            cbbSetores.SelectedIndex = -1;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtDescResp.Text))
            {
                return;
            }

            var new_rep = new Avaliacao_Respostas
            {
                Correta = checkBox1.Checked,
                Descricao = txtDescResp.Text,
                FK_Pergunta = _pergunta.ID
            };

            using (MS2000Context db = new MS2000Context())
            {
                db.Avaliacao_Respostas.Add(new_rep);
                db.SaveChanges();
            }


            txtDescResp.Clear();
            checkBox1.Checked = false;
            //dataRepeater1.DataSource = listaResposta;
            //dataRepeater1.Refresh();

            setRespostas(1);
            //MessageBox.Show("Resposta adicionada com sucesso!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
    }
}
