using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Ferramenta.Repetro
{
    public partial class FrmControleRepetroEspecifica : MS2000.Desktop.Componentes.MSForm01
    {
        string CodSit;
        public FrmControleRepetroEspecifica()
        {
            InitializeComponent();
        }

        private DataTable getControleEspecifico()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo,Razao_Social,CNPJ,CNPJ_COMPLETO,Contrato,Contratos_Descricao " +
                           ",Vigencia_inicial,Vigencia_final,Contratos_Tipo,Local,Locais_Inventario_Descricao " +
                           ",Tipo_local,Unidade_Jur,Processo_Adm,DI,datadi,DT_DESEMBARACO,Tipo_Declaracao " +
                           ",COD_SIT,QSIT,QSIT_Ing,Moeda,Taxa_conversao,qpro,Processos_Tipo,Produto " +
                           ",Numero_serie,DESCBEM,NCM,Destaque_NCM,Unidade,DESC_UNIDCO,Unidade_Medida_Estat " +
                           ",DESC_UNIDEST,Quantidade,Saldo,VALOR,Adicao,Seq_Adicaostr,Regime_Tributacao_II " +
                           ",Valor_II_Devido,Valor_II_a_recolher,Regime_Tributacao_IPI,Valor_IPI_Devido,Valor_IPI_a_recolher " +
                           ",Codigo_Fiel,CNPJ_Empresa_Fiel,Razao_Social_Fiel,Endereco,Descricao,Nome_Fiel " +
                           ",CPF_Fiel,DESCBEM_Ing,Saldo_MOV,LancamentoManual " +
                           "FROM Repetro where di =@DI and adicao =@Adicao and seq_adicaostr =@Seq";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@DI", txtDI.Text);
                cmd.Parameters.AddWithValue("@Adicao", txtAdicao.Text);
                cmd.Parameters.AddWithValue("@Seq", txtSequencia.Text);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    if (table.Rows.Count > 0)
                    {
                        txtDescricao.Text = table.Rows[0]["DESCBEM"].ToString();
                        CodSit = table.Rows[0]["COD_SIT"].ToString();
                        txtNumeroSerie.Text = table.Rows[0]["Numero_serie"].ToString();
                        txtPartNumber.Text = table.Rows[0]["Produto"].ToString();
                        getSituacao(CodSit);
                    }
                    else
                    {
                        MessageBox.Show("DI não localizada!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                        LimparCampos();
                        txtDI.Focus();
                    }
                    return table;
                }
            }
        }

        private DataTable getControleMovimentacao()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Movimento,CNPJ " +
                           ",DI,ADICAO,Seq_Adicaostr,Data_movimentacao,Tipo_Movimentacao " +
                           ",Quantidade,Saldo,DDE,RE,Processo_ADM,Requerimento,Termo_Recebimento " +
                           ",DI_MOV,ADICAO_MOV,Seq_Adicao_MOV,Novo_benef,cnpj_novo " +
                           ",Situacao_Fiscal,Codigo_Fiel " +
                           "FROM Movimentacao_Repetro where di =@DI and adicao =@Adicao and seq_adicaostr =@Seq";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@DI", txtDI.Text);
                cmd.Parameters.AddWithValue("@Adicao", txtAdicao.Text);
                cmd.Parameters.AddWithValue("@Seq", txtSequencia.Text);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void txtDI_KeyPress(object sender, KeyPressEventArgs e)
        {
            Util.SomenteNumero(e);
        }

        private void txtAdicao_KeyPress(object sender, KeyPressEventArgs e)
        {
            Util.SomenteNumero(e);
        }

        private void txtSequencia_KeyPress(object sender, KeyPressEventArgs e)
        {
            Util.SomenteNumero(e);
        }

        private void btnConsultaEspecifica_Click(object sender, EventArgs e)
        {
            if (VerificaCampos())
            {
                dgvSaldo.AutoGenerateColumns = false;
                dgvMovimentacao.AutoGenerateColumns = false;
                dgvSaldo.DataSource = getControleEspecifico();
                dgvMovimentacao.DataSource = getControleMovimentacao();               
            }
        }

        private void txtDescricao_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar != 8)
            {
                e.Handled = true;
            }
        }

        private void btnValor_Click(object sender, EventArgs e)
        {
            if (VerificaCampos())
            {
                string query = "update update repetro set valor = 0 " +
                               "where di =@DI and adicao =@Adicao and seq_adicaostr =@Seq";

                using (var conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@DI", txtDI.Text);
                        cmd.Parameters.AddWithValue("@Adicao", txtAdicao.Text);
                        cmd.Parameters.AddWithValue("@Seq", txtSequencia.Text);
                        cmd.ExecuteNonQuery();
                    }
                }
                LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format(" Valor Atualizado, DI:{0} , Adicao{1}, Sequencia{2} ", txtDI.Text, txtAdicao.Text, txtSequencia.Text));
                MessageBox.Show("Valor do item atualizado com sucesso.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
            }
        }

        private void btnSaldo_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtSaldo.Text.Trim()))
            {
                MessageBox.Show("O Saldo é Obrigatório.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtSaldo.Focus();
                return;
            }

            if (VerificaCampos())
            {
                string query = "update repetro set saldo =@Saldo " +
                               "where di =@DI and adicao =@Adicao and seq_adicaostr =@Seq";

                using (var conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Saldo", Convert.ToDouble(txtSaldo.Text));
                        cmd.Parameters.AddWithValue("@DI", txtDI.Text);
                        cmd.Parameters.AddWithValue("@Adicao", txtAdicao.Text);
                        cmd.Parameters.AddWithValue("@Seq", txtSequencia.Text);
                        cmd.ExecuteNonQuery();
                    }
                }
                dgvSaldo.AutoGenerateColumns = false;
                dgvMovimentacao.AutoGenerateColumns = false;
                dgvSaldo.DataSource = getControleEspecifico();
                dgvMovimentacao.DataSource = getControleMovimentacao();
                txtSaldo.Clear();
                LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format(" Saldo Atualizado, DI:{0} , Adicao{1}, Sequencia{2} ", txtDI.Text, txtAdicao.Text, txtSequencia.Text));
                MessageBox.Show("Saldo do item atualizado com sucesso.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private bool VerificaCampos()
        {
            bool GoOn = true;
            if (string.IsNullOrEmpty(txtDI.Text.Trim()))
            {
                MessageBox.Show("Informe a DI, por favor.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDI.Focus();
                GoOn = false;
            }

            if (string.IsNullOrEmpty(txtAdicao.Text.Trim()))
            {
                MessageBox.Show("Informe a Adição, por favor.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtAdicao.Focus();
                GoOn = false;
            }

            if (string.IsNullOrEmpty(txtSequencia.Text.Trim()))
            {
                MessageBox.Show("Informe a Sequência, por favor.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtSequencia.Focus();
                GoOn = false;
            }
            return GoOn;
        }

        private void txtDI_TextChanged(object sender, EventArgs e)
        {
            if (txtDI.TextLength != 10)
            {
                LimparCampos();
            }
        }

        private void txtAdicao_TextChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtAdicao.Text.Trim()))
            {
                LimparCampos();
            }
        }

        private void txtSequencia_TextChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtSequencia.Text.Trim()))
            {
                LimparCampos();
            }
        }

        private void LimparCampos()
        {
            dgvSaldo.DataSource = null;
            dgvMovimentacao.DataSource = null;
            txtDescricao.Clear();
            txtSaldo.Clear();
        }

        private void btnQuantidade_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtQuantidade.Text.Trim()))
            {
                MessageBox.Show("A Quantidade é Obrigatória.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtQuantidade.Focus();
                return;
            }

            if (VerificaCampos())
            {
                string query = "update repetro set quantidade =@quantidade " +
                               "where di =@DI and adicao =@Adicao and seq_adicaostr =@Seq";

                using (var conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@quantidade", txtQuantidade.Text);
                        cmd.Parameters.AddWithValue("@DI", txtDI.Text);
                        cmd.Parameters.AddWithValue("@Adicao", txtAdicao.Text);
                        cmd.Parameters.AddWithValue("@Seq", txtSequencia.Text);
                        cmd.ExecuteNonQuery();
                    }
                }
                dgvSaldo.AutoGenerateColumns = false;
                dgvMovimentacao.AutoGenerateColumns = false;
                dgvSaldo.DataSource = getControleEspecifico();
                dgvMovimentacao.DataSource = getControleMovimentacao();
                txtQuantidade.Clear();
                LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format(" Quantidade Atualizada, DI:{0} , Adicao{1}, Sequencia{2} ", txtDI.Text, txtAdicao.Text, txtSequencia.Text));
                MessageBox.Show("Quantidade do item atualizado com sucesso.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }

        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {

            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "delete from Movimentacao_Repetro where Movimento = @Movimento";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Movimento", dgvMovimentacao.SelectedRows[0].Cells["Movimento"].Value);
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(dgvMovimentacao.SelectedRows[0].Cells["Movimento"].Value.ToString(),
                      FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir,
                      Convert.ToInt32(this.Tag),
                      string.Format("DI:{0},Adição:{1},Sequencia:{2}",
                      dgvMovimentacao.SelectedRows[0].Cells["DI"].Value.ToString(),
                      dgvMovimentacao.SelectedRows[0].Cells["Adicao"].Value.ToString(),
                      dgvMovimentacao.SelectedRows[0].Cells["Sequencia"].Value.ToString()));

                    btnConsultaEspecifica_Click(null, null);
                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void getSituacao(string Codigo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "select CODIGO, DESCRICAO,Descricao_Ingles from Tipos_situacao_fiscal "+
                          // "where CODIGO = @CODIGO " +
                           "order by DESCRICAO";

            DataTable table;

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                 //   cmd.Parameters.AddWithValue("@CODIGO ", Codigo);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }

                cbbSituacao.DataSource = null;
                cbbSituacao.DataSource = table;
                cbbSituacao.DisplayMember = "DESCRICAO";
                cbbSituacao.ValueMember = "CODIGO";
                cbbSituacao.SelectedIndex = -1;
                cbbSituacao.SelectedValue = Codigo;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnSituacao_Click(object sender, EventArgs e)
        {
            if (VerificaCampos())
            {
                string query = "UPDATE Repetro " +
                                "SET COD_SIT = i.CODIGO, " +
                                "    QSIT = i.DESCRICAO, " +
                                "	QSIT_Ing =  i.Descricao_Ingles " +
                                "FROM ( " +
                                "    SELECT CODIGO, DESCRICAO,Descricao_Ingles " +
                                "    FROM Tipos_situacao_fiscal where CODIGO = @COD_SIT) i " +
                                "WHERE  " +
                                " di =@DI and adicao =@Adicao and seq_adicaostr =@Seq " ;
                
         
                using (var conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@COD_SIT", cbbSituacao.SelectedValue.ToString());                  
                        cmd.Parameters.AddWithValue("@DI", txtDI.Text);
                        cmd.Parameters.AddWithValue("@Adicao", txtAdicao.Text);
                        cmd.Parameters.AddWithValue("@Seq", txtSequencia.Text);
                        cmd.ExecuteNonQuery();
                    }
                }
                dgvSaldo.AutoGenerateColumns = false;
                dgvMovimentacao.AutoGenerateColumns = false;
                dgvSaldo.DataSource = getControleEspecifico();
                dgvMovimentacao.DataSource = getControleMovimentacao();

                LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format(" Situação Fiscal Atualizada, DI:{0} , Adicao{1}, Sequencia{2}, Codigo Situação - De: {3}  Para: {4}   ", txtDI.Text, txtAdicao.Text, txtSequencia.Text, CodSit , cbbSituacao.SelectedValue.ToString()));
                MessageBox.Show("Situação Fiscal atualizada com sucesso.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void btnNumeroSerie_Click(object sender, EventArgs e)
        {
            if (VerificaCampos())
            {
                string query = "update repetro set Numero_serie =@Numero_serie " +
                               "where di =@DI and adicao =@Adicao and seq_adicaostr =@Seq";      


                using (var conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Numero_serie", txtNumeroSerie.Text);
                        cmd.Parameters.AddWithValue("@DI", txtDI.Text);
                        cmd.Parameters.AddWithValue("@Adicao", txtAdicao.Text);
                        cmd.Parameters.AddWithValue("@Seq", txtSequencia.Text);
                        cmd.ExecuteNonQuery();
                    }
                }
                dgvSaldo.AutoGenerateColumns = false;
                dgvMovimentacao.AutoGenerateColumns = false;
                dgvSaldo.DataSource = getControleEspecifico();
                dgvMovimentacao.DataSource = getControleMovimentacao();

                LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Numero de Serie Atualizado , DI:{0} , Adicao{1}, Sequencia{2}, Numero de Serie {3}   ", txtDI.Text, txtAdicao.Text, txtSequencia.Text, txtNumeroSerie.Text));
                MessageBox.Show("Número de série atualizado com sucesso.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void btnPartNumber_Click(object sender, EventArgs e)
        {
            if (VerificaCampos())
            {
                string query = "update repetro set Produto =@Part_Number " +
                               "where di =@DI and adicao =@Adicao and seq_adicaostr =@Seq";


                using (var conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Part_Number", txtPartNumber.Text);
                        cmd.Parameters.AddWithValue("@DI", txtDI.Text);
                        cmd.Parameters.AddWithValue("@Adicao", txtAdicao.Text);
                        cmd.Parameters.AddWithValue("@Seq", txtSequencia.Text);
                        cmd.ExecuteNonQuery();
                    }
                }
                dgvSaldo.AutoGenerateColumns = false;
                dgvMovimentacao.AutoGenerateColumns = false;
                dgvSaldo.DataSource = getControleEspecifico();
                dgvMovimentacao.DataSource = getControleMovimentacao();

                LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Numero de Serie Atualizado , DI:{0} , Adicao{1}, Sequencia{2}, Part Number {3}   ", txtDI.Text, txtAdicao.Text, txtSequencia.Text, txtPartNumber.Text));
                MessageBox.Show("Part Number atualizado com sucesso.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void btnDescricao_Click(object sender, EventArgs e)
        {
            if (VerificaCampos())
            {
                string query = "update repetro set DESCBEM =@DESCBEM " +
                               "where di =@DI and adicao =@Adicao and seq_adicaostr =@Seq";

                using (var conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@DESCBEM", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@DI", txtDI.Text);
                        cmd.Parameters.AddWithValue("@Adicao", txtAdicao.Text);
                        cmd.Parameters.AddWithValue("@Seq", txtSequencia.Text);
                        cmd.ExecuteNonQuery();
                    }
                }
                dgvSaldo.AutoGenerateColumns = false;
                dgvMovimentacao.AutoGenerateColumns = false;
                dgvSaldo.DataSource = getControleEspecifico();
                dgvMovimentacao.DataSource = getControleMovimentacao();               
                LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format(" Quantidade Atualizada, DI:{0} , Adicao{1}, Sequencia{2} ", txtDI.Text, txtAdicao.Text, txtSequencia.Text));
                btnConsultaEspecifica_Click(null, null);
                MessageBox.Show("Descrição atualizado com sucesso.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }
    }
}
