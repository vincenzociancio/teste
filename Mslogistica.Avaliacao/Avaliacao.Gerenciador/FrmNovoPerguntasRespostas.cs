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
    public partial class FrmNovoPerguntasRespostas : Form
    {
        List<Avaliacao_Respostas> tempResp;

        public FrmNovoPerguntasRespostas()
        {
            InitializeComponent();
            this.gridResp.AutoGenerateColumns = false;
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            if (tempResp == null)
            {
                tempResp = new List<Avaliacao_Respostas>();
            }

            tempResp.Add(new Avaliacao_Respostas
            {
                Descricao = txtDescResp.Text,
                Correta = checkBox1.Checked
            });

            RespostaBindingSource.DataSource = tempResp.ToList();

            gridResp.DataSource = this.RespostaBindingSource;

            txtDescResp.Clear();
            checkBox1.Checked = false;
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(sender.ToString()))
            {
                btnAdd.Enabled = false;
            }
            else
            {
                btnAdd.Enabled = true;
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnDel_Click(object sender, EventArgs e)
        {
            if (tempResp != null)
            {
                var resposta = (Avaliacao_Respostas)RespostaBindingSource.Current;
                tempResp.Remove(resposta);
                RespostaBindingSource.DataSource = tempResp.ToList();
                gridResp.DataSource = this.RespostaBindingSource;
            }
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtPergunta.Text))
            {
                MessageBox.Show("A descrição da pergunta e obrigatória!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtPergunta.Focus();
                return;
            }

            if (tempResp == null)
            {
                MessageBox.Show("Nenhuma resposta foi cadastrada!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtDescResp.Focus();
            }

            var pergunta = new Avaliacao_Perguntas
            {
                Descricao = txtPergunta.Text,
                FK_Setor = (cbbSetores.SelectedIndex >= 0 ? cbbSetores.SelectedValue.ToString() : ""),
                FK_Categoria = (cbbCategoria.SelectedIndex >= 0 ? (int?)cbbCategoria.SelectedValue : null),
            };

            using (MS2000Context ctx = new MS2000Context())
            {
                //perguntas
                ctx.Avaliacao_Perguntas.Add(pergunta);

                // respostas
                foreach (var resp in tempResp)
                {
                    resp.Pergunta = pergunta;
                    ctx.Avaliacao_Respostas.Add(resp);
                }
                ctx.SaveChanges();
            }

            MessageBox.Show("Pergunta gravada com sucesso!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
            this.Close();
        }

        private void FrmNovoPerguntasRespostas_Load(object sender, EventArgs e)
        {
            using (MS2000Context ctx = new MS2000Context())
            {
                cbbSetores.DataSource = ctx.Setores.Where(c => c.Excluido == false).ToList();
                cbbSetores.ValueMember = "Codigo";
                cbbSetores.DisplayMember = "Descricao";
                cbbSetores.SelectedIndex = -1;

                //-------------------
                cbbCategoria.DataSource = ctx.Avaliacao_Categoria.ToList();
                cbbCategoria.ValueMember = "ID";
                cbbCategoria.DisplayMember = "Descricao";
                cbbCategoria.SelectedIndex = -1;
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            cbbSetores.SelectedIndex = -1;
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            cbbCategoria.SelectedIndex = -1;
        }
    }
}
