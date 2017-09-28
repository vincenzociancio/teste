using Avaliacao.Gerenciador.Model;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Avaliacao.Gerenciador
{
    public partial class FrmAvaliacaoColaborador : Form
    {
        private List<Usuarios> colaboradores = new List<Usuarios>();
        private AvaliacaoFacade facade = new AvaliacaoFacade();

        public FrmAvaliacaoColaborador()
        {
            InitializeComponent();
        }

        private void FrmAvaliacaoColaborador_Load(object sender, EventArgs e)
        {
            //AvaliacaoFacade facade = new AvaliacaoFacade();
            
            colaboradores = facade.GetColaboradores();

            ltbColaboradores.Items.Clear();
            ltbColaboradores.Items.AddRange(colaboradores.Select(x => new { x.Usuario, x.Nome_Completo }).ToArray());
            ltbColaboradores.DisplayMember = "Nome_Completo";
            ltbColaboradores.ValueMember = "Usuario";

            ltbSelecionados.DisplayMember = "Nome_Completo";
            ltbSelecionados.ValueMember = "Usuario";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (ltbColaboradores.Items.Count < 1 || ltbColaboradores.SelectedItems.Count < 1)
            {
                return;
            }

            ltbSelecionados.Items.Add(ltbColaboradores.SelectedItem);
            int i = 0;
            i = ltbColaboradores.SelectedIndex;
            ltbColaboradores.Items.Remove(ltbColaboradores.SelectedItem);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (ltbSelecionados.Items.Count < 1 || ltbSelecionados.SelectedItems.Count < 1)
            {
                return;
            }

            ltbColaboradores.Items.Add(ltbSelecionados.SelectedItem);
            int i = 0;
            i = ltbSelecionados.SelectedIndex;
            ltbSelecionados.Items.RemoveAt(i);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (ltbColaboradores.Items.Count < 1 || ltbColaboradores.SelectedItems.Count < 1)
            {
                return;
            }

            ArrayList tmpArr = new ArrayList();
            foreach (object obj in ltbColaboradores.SelectedItems)
            {
                ltbSelecionados.Items.Add(obj);
                tmpArr.Add(obj);
            }

            foreach (object obj in tmpArr.ToArray())
            {
                ltbColaboradores.Items.Remove(obj);
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            if (ltbSelecionados.Items.Count < 1 || ltbSelecionados.SelectedItems.Count < 1)
            {
                return;
            }

            ArrayList tmpArr = new ArrayList();
            foreach (object obj in ltbSelecionados.SelectedItems)
            {
                ltbColaboradores.Items.Add(obj);
                tmpArr.Add(obj);
            }

            foreach (object obj in tmpArr.ToArray())
            {
                ltbSelecionados.Items.Remove(obj);
            }
        }

        private void btnExecutar_Click(object sender, EventArgs e)
        {
            ltbAuto.Items.Clear();

            if (ckbDesconsiderar.Checked)
            {
                var _colaboradores_ultima_av = facade.GetIdUsuariosUltimaAv();
                ltbAuto.Items.AddRange(colaboradores.Where(c => !_colaboradores_ultima_av.Contains(c.Usuario.ToString())).Select(x => new { x.Usuario, x.Nome_Completo }).OrderBy(s => Guid.NewGuid()).Take((int)nupQtd.Value).ToArray());
            }
            else
            {
                ltbAuto.Items.AddRange(colaboradores.Select(x => new { x.Usuario, x.Nome_Completo }).OrderBy(s => Guid.NewGuid()).Take((int)nupQtd.Value).ToArray());
            }
            ltbAuto.DisplayMember = "Nome_Completo";
            ltbAuto.ValueMember = "Usuario";
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {            
            colaboradores = null;
            this.Close();
        }

        private void btnConfirmar_Click(object sender, EventArgs e)
        {   
            this.Close();
        }
    }
}
