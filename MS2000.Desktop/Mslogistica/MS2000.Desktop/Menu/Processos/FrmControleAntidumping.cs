using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Processos
{
    public partial class FrmControleAntidumping : MS2000.Desktop.Componentes.MSForm01
    {
        string codImportador;
        string statusFechado;
        Importador importador = new Importador();
        Processo processo = new Processo();


        public FrmControleAntidumping()
        {
            InitializeComponent();
        }

        private void FrmControleAntidumping_Load(object sender, EventArgs e)
        {
            dataGridView.AutoGenerateColumns = false;
        }

        class ProcessoAdicoes
        {
            public string Adicao { get; set; }
            public string NCM { get; set; }
            public string Descricao_Item { get; set; }
            public int ID_Processo { get; set; }
        }

        private void getAdicoes(string processo)
        {
            string query = "SELECT T.Adicao, I.NCM,  MAX(I.Descricao_Produto) AS 'Descricao_Produto', P.ID FROM Processos P " +
                           "INNER JOIN Faturas F ON P.Codigo  = F.Processo " +
                           "INNER JOIN Tributacao_Item_Fatura T ON  T.Fatura_Id = F.Fatura_Id " +
                           "INNER JOIN ItensFaturas I ON F.Fatura_Id = I.Fatura_Id AND I.Sequencial = T.Sequencial_Item " +
                           "WHERE P.Codigo = @Processo GROUP BY T.Adicao, I.NCM, P.ID";

            DataTable table;
            try
            {
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    List<ProcessoAdicoes> dados = new List<ProcessoAdicoes>();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                dados.Add(new ProcessoAdicoes
                                {
                                    Adicao = reader["Adicao"].ToString(),
                                    NCM = reader["NCM"].ToString(),
                                    Descricao_Item = reader["Descricao_Produto"].ToString(),
                                    ID_Processo = (int)reader["ID"]
                                });
                            }
                        }
                    }
                    cbbAdicoes.DataSource = null;
                    cbbAdicoes.DataSource = dados;
                    cbbAdicoes.DisplayMember = "Adicao";
                    cbbAdicoes.ValueMember = "Adicao";
                    cbbAdicoes.SelectedIndex = -1;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private DataTable getControle(string processo)
        {
            string query = "SELECT V.ID, V.Numero_Adicao, V.Aliq_Ad_Valorem, V.Base_Calc_Ad_Valorem, V.Valor_Especifica, " +
                           "V.Unidade_Medida_Especifica,V.Quantidade_Especifica " +
                           "FROM Controle_Antidumping V " +
                           "INNER JOIN Processos P ON P.ID = V.ID_Processo " +
                           "WHERE P.Codigo = @Processo " +
                           "ORDER BY V.Numero_Adicao";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        DataTable table = new DataTable();
                        table.Load(reader);
                        return table;
                    }
                }
            }
        }

        private void populaGrid()
        {
            getAdicoes(txtProcesso.Text);
            //  getNivel();
            dataGridView.DataSource = getControle(txtProcesso.Text);
        }

        private void PopulaVariaveisUsuario()
        {
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Importador", out codImportador);
        }

        private void LimpaCampos()
        {
            dataGridView.DataSource = null;
            cbbAdicoes.DataSource = null;
            panelControl.Enabled = false;
            txtAdValorem.Clear();
            txtBaseCalculo.Clear();
            txtValorEspecifica.Clear();
            txtUnidadeEspecifica.Clear();
            txtQuantidadeEspecifica.Clear();
        }

        private bool VerificaProcesso()
        {
            bool GoOn = true;

            importador = importador.BuscarPorCodigo(codImportador);
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Fechado", out statusFechado);

            if (importador.Ativo == 0 && !FrmPrincipal.editaClienteInativo)
            {
                MessageBox.Show("Este cliente está inativo. Somente usuários habilitados para editar clientes inativos poderão alterar as informações do processo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                GoOn = GoOn && true;
            }
            if (importador.Ativo == 0 && FrmPrincipal.editaClienteInativo)
            {
                MessageBox.Show("Este cliente está inativo, porém você tem permissão para edita-lo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                GoOn = GoOn && true;
            }
            if (statusFechado == "1" && !FrmPrincipal.editaProcessoFechado)
            {
                MessageBox.Show("Este processo está fechado. Somente usuários habilitados em editar processos fechados poderão alterar as informações do processo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                GoOn = GoOn && true;
            }
            if (statusFechado == "1" && FrmPrincipal.editaProcessoFechado)
            {
                MessageBox.Show("Este processo esta fechado, porém você tem permissão para edita-lo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                GoOn = GoOn && true;
            }
            if (processo.BuscarPorCodigoStatus(txtProcesso.Text).Count == 0)
            {
                MessageBox.Show("Processo não encontrado.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                GoOn = GoOn && false;
            }
            if (statusFechado == "0")
            {
                GoOn = GoOn && true;
            }
            return GoOn;
        }

        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            LimpaCampos();
            if (txtProcesso.MaskCompleted)
            {
                PopulaVariaveisUsuario();
                if (VerificaProcesso())
                {
                    if ((new Usuario()).AcessaCliente(codImportador))
                    {
                        populaGrid();
                        if (Usuario.AcessaPasta(txtProcesso.Text, this))
                        {
                            panelControl.Enabled = (statusFechado == "0");
                        }
                    }
                    else
                    {
                        MessageBox.Show(@"Este Processo pertence a um Cliente que seu acesso não está permitido!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        txtProcesso.Clear();
                        return;
                    }
                }
            }
        }

        private void btnAdicionar_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "INSERT INTO dbo.Controle_Antidumping " +
                               "(ID_Processo,Numero_Adicao,Aliq_Ad_Valorem,Base_Calc_Ad_Valorem,Valor_Especifica,Unidade_Medida_Especifica,Quantidade_Especifica) " +
                               "VALUES " +
                               "(@ID_Processo,@Numero_Adicao,@Aliq_Ad_Valorem,@Base_Calc_Ad_Valorem,@Valor_Especifica,@Unidade_Medida_Especifica,@Quantidade_Especifica)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@ID_Processo", ((ProcessoAdicoes)cbbAdicoes.SelectedItem).ID_Processo);
                    cmd.Parameters.AddWithValue("@Numero_Adicao", ((ProcessoAdicoes)cbbAdicoes.SelectedItem).Adicao);
                    cmd.Parameters.AddWithValue("@Aliq_Ad_Valorem", (txtAdValorem.Text == "") ? 0 : Convert.ToDouble(txtAdValorem.Text));
                    cmd.Parameters.AddWithValue("@Base_Calc_Ad_Valorem", (txtBaseCalculo.Text == "") ? 0 : Convert.ToDouble(txtBaseCalculo.Text));
                    cmd.Parameters.AddWithValue("@Valor_Especifica", (txtValorEspecifica.Text == "") ? 0 : Convert.ToDouble(txtValorEspecifica.Text));
                    cmd.Parameters.AddWithValue("@Unidade_Medida_Especifica", txtUnidadeEspecifica.Text);
                    cmd.Parameters.AddWithValue("@Quantidade_Especifica", (txtQuantidadeEspecifica.Text == "") ? 0 : Convert.ToDouble(txtQuantidadeEspecifica.Text));
                    cmd.ExecuteNonQuery();
                }
                LogSistemas.AddLogSistema(((ProcessoAdicoes)cbbAdicoes.SelectedItem).ID_Processo.ToString(),
                    FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo,
                    Convert.ToInt32(this.Tag),
                    string.Format("Adicao:{0},Ad Valorem:{1},Base de Calc:{2},Valor Especifica{3},Base de Calc:{4},Valor Especifica{5}",
                    ((ProcessoAdicoes)cbbAdicoes.SelectedItem).Adicao.ToString(),
                    txtAdValorem.Text,
                    txtBaseCalculo.Text,
                    txtValorEspecifica.Text,
                    txtUnidadeEspecifica.Text,
                    txtQuantidadeEspecifica.Text));
                txtProcesso_TextChanged(null, null);
                MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnRemover_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "delete from Controle_Antidumping where ID = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", Convert.ToInt32(dataGridView.SelectedRows[0].Cells["ID"].Value));
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(dataGridView.SelectedRows[0].Cells["ID"].Value.ToString(),
                      FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir,
                      Convert.ToInt32(this.Tag),
                      string.Format("Adicao:{0},Ad Valorem:{1},Base de Calc:{2},Valor Especifica{3},Base de Calc:{4},Valor Especifica{5}",
                      dataGridView.SelectedRows[0].Cells["Adicao"].Value.ToString(),
                      dataGridView.SelectedRows[0].Cells["Aliq_Ad_Valorem"].Value.ToString(),
                      dataGridView.SelectedRows[0].Cells["Base_Calc_Ad_Valorem"].Value.ToString(),
                      dataGridView.SelectedRows[0].Cells["Valor_Especifica"].Value.ToString(),
                      dataGridView.SelectedRows[0].Cells["Unidade_Medida_Especifica"].Value.ToString(),
                      dataGridView.SelectedRows[0].Cells["Quantidade_Especifica"].Value.ToString()));

                    txtProcesso_TextChanged(null, null);
                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void txtAdValorem_KeyPress(object sender, KeyPressEventArgs e)
        {
            Util.SomenteNumero(e);
        }

        private void txtBaseCalculo_KeyPress(object sender, KeyPressEventArgs e)
        {
            Util.SomenteNumero(e);
        }

        private void txtValorEspecifica_KeyPress(object sender, KeyPressEventArgs e)
        {
            Util.SomenteNumero(e);
        }

        private void txtQuantidadeEspecifica_KeyPress(object sender, KeyPressEventArgs e)
        {
            Util.SomenteNumero(e);
        }
    }
}
