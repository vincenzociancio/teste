using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Financeiro.Contas_Correntes
{
    public partial class FrmCadastroContaCorrente : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }
        public FrmCadastroContaCorrente()
        {
            InitializeComponent();
        }

        private DataTable getContaCorrente()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT CC.Empresa, CC.Filial, CC.Codigo, CC.Banco_Caixa, CC.Banco, CC.Agencia, " +
                           "CC.Conta_Corrente, CC.Saldo, CC.Nivel, CC.Data, E.Razao_Social AS QEMPRESA, "+
                           "F.Descricao AS QFILIAL, CC.Descricao,CC.AtivaSolicitacaoRegistro " +
                           "FROM Contas_Correntes CC "+
                           "LEFT JOIN Empresas E ON CC.Empresacc = E.Codigo "+
                           "LEFT JOIN Filiais F ON (CC.Filialcc = F.Codigo_Filial) AND "+
                           "(CC.Empresacc = F.Codigo_Empresa) "+
                           "ORDER BY E.Razao_Social, F.Descricao";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void getEmpresa()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Razao_Social FROM Empresas order by Razao_Social";
            DataTable table;
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                cbbEmpresa.DataSource = table;
                cbbEmpresa.DisplayMember = "Razao_Social";
                cbbEmpresa.ValueMember = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getFilial()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Codigo_Filial, Descricao from Filiais where Codigo_Empresa = @Codigo_Empresa";
            DataTable table;

            if (cbbEmpresa.SelectedValue == null)
                cbbEmpresa.SelectedIndex = -1;
            else
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Codigo_Empresa", cbbEmpresa.SelectedValue.ToString());
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            table = new DataTable();
                            table.Load(reader);
                        }
                    }
                    cbbFilial.DataSource = table;
                    cbbFilial.DisplayMember = "Descricao";
                    cbbFilial.ValueMember = "Codigo_Filial";
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }         
        }
        private void FrmCadastroContaCorrente_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;

            getEmpresa();
            getFilial();

            statusCadastro = StatusCadastro.None;
            
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getContaCorrente();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            cbbEmpresa.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Empresa", true));
            cbbFilial.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Filial", true));
            txtDescricao.DataBindings.Add(new Binding("Text", bindingSource, "Descricao", true));
            txtBanco.DataBindings.Add(new Binding("Text", bindingSource, "Banco", true));
            txtAgencia.DataBindings.Add(new Binding("Text", bindingSource, "Agencia", true));
            txtContaCorrente.DataBindings.Add(new Binding("Text", bindingSource, "Conta_Corrente", true));
            chkAtiva.DataBindings.Add(new Binding("Checked", bindingSource, "AtivaSolicitacaoRegistro", true));

            Binding b = new Binding("Checked", bindingSource, "Banco_Caixa", true);
            b.Format += new ConvertEventHandler(FormatRadio);
            rdbCaixa.DataBindings.Add(b);
        }

        private void FormatRadio(object sender, ConvertEventArgs e)
        {
            if (e.Value.GetType() != typeof(string)) return;

            string n = (string)e.Value;
           
            switch (n)
            {
                case "B":
                    rdbBanco.Checked = true;
                    break;
                case "C":
                    rdbCaixa.Checked = true;
                    break;
            }
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "UPDATE Contas_Correntes "+
                                   "SET Empresa = @Empresa "+
                                   "   ,Filial = @Filial " +   
                                   "   ,Banco_Caixa = @Banco_Caixa "+
                                   "   ,Descricao = @Descricao "+
                                   "   ,Banco = @Banco "+
                                   "   ,Agencia = @Agencia "+
                                   "   ,Conta_Corrente = @Conta_Corrente "+
                                   "   ,AtivaSolicitacaoRegistro = @AtivaSolicitacaoRegistro  "+                                   
                                   "WHERE Codigo = @Codigo ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Empresa", cbbEmpresa.SelectedValue);
                        cmd.Parameters.AddWithValue("@Filial", cbbFilial.SelectedValue);
                        cmd.Parameters.AddWithValue("@Banco_Caixa",(rdbBanco.Checked == true) ? "B" : "C");
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@Banco", txtBanco.Text);
                        cmd.Parameters.AddWithValue("@Agencia", txtAgencia.Text);
                        cmd.Parameters.AddWithValue("@Conta_Corrente", txtContaCorrente.Text);
                        cmd.Parameters.AddWithValue("@AtivaSolicitacaoRegistro", Convert.ToBoolean(chkAtiva.Checked));                        
                        cmd.Parameters.AddWithValue("@Codigo", bindingSource.GetRelatedCurrencyManager("Codigo").Current.ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtBanco.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De:{0} Para:{1}", ((DataRowView)this.bindingSource.Current).Row["Codigo"].ToString(), txtBanco.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Contas_Correntes "+
                                   "(Empresa,Filial,Banco_Caixa,Descricao,Banco,Agencia " +
                                   ",Conta_Corrente,AtivaSolicitacaoRegistro ) "+
                                   "VALUES "+
                                  " (@Empresa,@Filial,@Banco_Caixa,@Descricao,@Banco,@Agencia " +
                                  " ,@Conta_Corrente,@AtivaSolicitacaoRegistro) ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Empresa", cbbEmpresa.SelectedValue);
                        cmd.Parameters.AddWithValue("@Filial", cbbFilial.SelectedValue);
                        cmd.Parameters.AddWithValue("@Banco_Caixa", (rdbBanco.Checked == true) ? "B" : "C");
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@Banco", txtBanco.Text);
                        cmd.Parameters.AddWithValue("@Agencia", txtAgencia.Text);
                        cmd.Parameters.AddWithValue("@Conta_Corrente", txtContaCorrente.Text);
                        cmd.Parameters.AddWithValue("@AtivaSolicitacaoRegistro", Convert.ToBoolean(chkAtiva.Checked));                     

                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Codigo:{0}", txtBanco.Text));
                }

                if (statusCadastro == StatusCadastro.Editar)
                {
                    MessageBox.Show("Registro alterado com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }

                statusCadastro = StatusCadastro.None;

                HabilitarDesabilitaControles(false);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);     
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
          
        }
        private Boolean CodigoEmUso(String Codigo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " SELECT TOP 1 Empresa, Filial, Codigo "+
                           "FROM Movimentacao_Contas_Correntes "+
                           "WHERE Codigo = @Codigo";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Codigo", Codigo);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            MessageBox.Show("Existe Movimentação com esta Conta Corrente. Não pode ser excluído!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
        }


        private void btnExcluir_Click(object sender, EventArgs e)
        {
            string codigo = bindingSource.GetRelatedCurrencyManager("Codigo").Current.ToString();
            if (CodigoEmUso(codigo) == true) return;

            if (MessageBox.Show("Tem certeza que deseja excluir o registro ?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = " DELETE FROM Contas_Correntes WHERE Codigo = @Codigo ";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Codigo", codigo);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(codigo, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Descricao: {0}", txtDescricao.Text));
                    bindingSource.RemoveCurrent();
                    statusCadastro = StatusCadastro.None;
                    MessageBox.Show("Registro excluído com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void txtPesquisar_TextChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtPesquisar.Text))
            {
                bindingSource.RemoveFilter();
            }
            else
            {
                bindingSource.Filter = "Descricao LIKE '" + txtPesquisar.Text + "%'";
            }
        }
    }
}
