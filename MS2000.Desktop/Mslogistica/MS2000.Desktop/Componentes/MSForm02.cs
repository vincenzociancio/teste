using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Componentes
{
    public partial class MSForm02 : MS2000.Desktop.Componentes.MSForm01
    {        
        public enum StatusCadastro
        {
            scNovo, scEditar, scPesquisar, scNone
        }

        #region Variáves locais
        protected StatusCadastro scStatus;
        protected int _nCdCodigo;
        #endregion

        public MSForm02()
        {
            InitializeComponent();
        }

        #region Métodos virtuais
        public virtual void Pesquisar()
        {

        }

        public virtual void PreencheControles()
        {

        }

        public virtual bool Salvar()
        {
            return false;
        }

        public virtual bool Excluir()
        {
            return false;
        }

        public virtual void Relatorio()
        {

        }

        public virtual void VerificaBotoes()
        {
            //configuração padrão
            btnFechar.Enabled = true;

            //permissões se fosse o caso 
            btnSalvar.Enabled = (scStatus == StatusCadastro.scEditar) || (scStatus == StatusCadastro.scNovo);
            btnExcluir.Enabled = (scStatus == StatusCadastro.scEditar);
        }
        #endregion

        #region Métodos públicos
        public void Novo()
        {
            scStatus = StatusCadastro.scNovo;
            HabilitarControles(true);
            //LimpaControles();            
        }

        //public void LimpaControles()
        //{
        //    foreach (Control controle in this.pgDados.Controls)
        //    {
        //        if (controle is TextBox)
        //            (controle as TextBox).Text = "";

        //        if (controle is ComboBox)
        //            (controle as ComboBox).SelectedIndex = -1;

        //        if (controle is ListBox)
        //            (controle as ListBox).SelectedIndex = -1;

        //        if (controle is RadioButton)
        //            (controle as RadioButton).Checked = false;

        //        if (controle is CheckBox)
        //            (controle as CheckBox).Checked = false;
        //    }
        //}

        public void HabilitarControles(bool bValue)
        {
            //foreach (Control controle in this.pgDados.Controls)
            //{
            //    controle.Enabled = bValue;
            //}

            VerificaBotoes();
        }
        #endregion

        private void btnNovo_Click(object sender, EventArgs e)
        {
            Novo();
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (Salvar())
            {
                //LimpaControles();
                scStatus = StatusCadastro.scNone;
                MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                if (Excluir())
                {
                    //LimpaControles();
                    scStatus = StatusCadastro.scNone;
                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
        }

        private void btnRelatorio_Click(object sender, EventArgs e)
        {
            Relatorio();
        }

        //private void btnFechar_Click(object sender, EventArgs e)
        //{
        //    Close();
        //}

        private void MSForm02_Load(object sender, EventArgs e)
        {
            scStatus = StatusCadastro.scNone;
            //LimpaControles();
            HabilitarControles(false);
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }
     
    }
}
