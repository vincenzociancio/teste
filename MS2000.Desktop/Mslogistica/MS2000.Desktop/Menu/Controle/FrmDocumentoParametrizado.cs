using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmDocumentoParametrizado : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        string CGC_CPF;
        int DocID;
        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            gbDocumentos.Enabled = (statusCadastro == StatusCadastro.Novo);
            gbStatus.Enabled = (statusCadastro == StatusCadastro.Novo);
            gbParametrizacao.Enabled = (statusCadastro == StatusCadastro.Novo);
            btnExcluirLista.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnRemover.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);

        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in gbDocumentos.Controls)
                controle.Enabled = bValue;

            foreach (Control controle in gbParametrizacao.Controls)
                controle.Enabled = bValue;

            foreach (Control controle in gbStatus.Controls)
                controle.Enabled = bValue;


            VerificaBotoes();
        }

        public FrmDocumentoParametrizado()
        {
            InitializeComponent();
        }

        private void FrmDocumentoParametrizado_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;
            bsDocumentos.DataSource = getDocumentos();
            gvDocumentos.DataSource = bsDocumentos;
            bindingNavigator.BindingSource = bsDocumentos;
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
            getTipoDocumentos();
            GetImportador();
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }
        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            EditaConteudo();
            AcaoBotaoNovoEditar();

        }
        private void btnNovo_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Novo;
            AcaoBotaoNovoEditar();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            AcaoBotaoCancelarSalvar();
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtTitulo.Text))
            {
                MessageBox.Show("O campo Título é obrigatório.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtTitulo.Focus();
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Novo)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string queryImportador = "Select CGC_CPF from Importadores where CGC_CPF = @CGC_CPF";

                    using (SqlCommand cmd = new SqlCommand(queryImportador, conn))
                    {
                        cmd.Parameters.AddWithValue("@CGC_CPF", (mcbImportador.SelectedValue == null ? "" : mcbImportador.SelectedValue));
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                CGC_CPF = reader["CGC_CPF"].ToString();
                            }
                        }
                    }

                    string query = "INSERT INTO Documentos_Relatorios_parametrizacao " +
                                       "(Titulo,Email,ImportadorCgcCpf)" +
                                       " VALUES " +
                                       "(@Titulo,@Email,@Importador)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Titulo", txtTitulo.Text);
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Replace(" ", ""));
                        cmd.Parameters.AddWithValue("@Importador", (string.IsNullOrEmpty(CGC_CPF) ? "" : CGC_CPF));
                        // cmd.Parameters.AddWithValue("@Observacao", rtxtObservacao.Text);
                        cmd.ExecuteNonQuery();
                    }

                    string queryDocumento = "Select MAX(DocID) as DocID from Documentos_Relatorios_parametrizacao";

                    using (SqlCommand cmd = new SqlCommand(queryDocumento, conn))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                DocID = Convert.ToInt32(reader["DocID"].ToString());
                            }
                        }
                    }

                    foreach (int item in chklbStatus.CheckedIndices)
                    {
                        string queryStatus = "INSERT INTO Documentos_Relatorios_parametrizacao_status " +
                                       "(DocID, Status)" +
                                       " VALUES " +
                                       "(@DocID,@Status)";

                        using (SqlCommand cmd = new SqlCommand(queryStatus, conn))
                        {
                            cmd.Parameters.AddWithValue("@DocID", DocID);
                            cmd.Parameters.AddWithValue("@Status", item);
                            // cmd.Parameters.AddWithValue("@Observacao", rtxtObservacao.Text);
                            cmd.ExecuteNonQuery();
                        }
                    }

                    foreach (int item in chklbVencimento.CheckedIndices)
                    {
                        string queryVencimento = "INSERT INTO Documentos_Relatorios_parametrizacao_vencimento " +
                                       "(DocID, Vencimento)" +
                                       " VALUES " +
                                       "(@DocID,@Vencimento)";

                        using (SqlCommand cmd = new SqlCommand(queryVencimento, conn))
                        {
                            cmd.Parameters.AddWithValue("@DocID", DocID);
                            cmd.Parameters.AddWithValue("@Vencimento", item + 1);
                            // cmd.Parameters.AddWithValue("@Observacao", rtxtObservacao.Text);
                            cmd.ExecuteNonQuery();
                        }
                    }

                    SalvaSubTipoBanco();
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string queryImportador = "Select CGC_CPF from Importadores where CGC_CPF = @CGC_CPF";
                    DocID = Convert.ToInt32(bsDocumentos.GetRelatedCurrencyManager("DocID").Current.ToString());

                    using (SqlCommand cmd = new SqlCommand(queryImportador, conn))
                    {
                        cmd.Parameters.AddWithValue("@CGC_CPF", (mcbImportador.SelectedValue == null ? "" : mcbImportador.SelectedValue));
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                                CGC_CPF = reader["CGC_CPF"].ToString();
                        }
                    }

                    string query = "UPDATE Documentos_Relatorios_Parametrizacao " +
                                   "SET [Titulo] = @Titulo " +
                                   ",[ImportadorCgcCpf] = @ImportadorCgcCpf,[Email] = @Email " +
                                   "WHERE DocID = @DocID";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {                           
                        cmd.Parameters.AddWithValue("@DocID", Convert.ToInt32(bsDocumentos.GetRelatedCurrencyManager("DocID").Current.ToString()));
                        cmd.Parameters.AddWithValue("@Titulo", txtTitulo.Text);
                        cmd.Parameters.AddWithValue("@ImportadorCgcCpf", !string.IsNullOrEmpty(CGC_CPF) ? CGC_CPF : "");
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Replace(" ",""));
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(bsDocumentos.GetRelatedCurrencyManager("DocID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), "Parametrização de Documento Editada");

                    string queryDeletaStatus = "DELETE FROM Documentos_Relatorios_parametrizacao_status where DocID = @DocID";
                    using (SqlCommand cmdDeletaStatus = new SqlCommand(queryDeletaStatus, conn))
                    {
                        cmdDeletaStatus.Parameters.AddWithValue("@DocID", Convert.ToInt32(bsDocumentos.GetRelatedCurrencyManager("DocID").Current.ToString()));
                        cmdDeletaStatus.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(bsDocumentos.GetRelatedCurrencyManager("DocID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), "Exclusão de Status do documento parametrizado");

                    foreach (int item in chklbStatus.CheckedIndices)
                    {
                        string queryStatus = "INSERT INTO Documentos_Relatorios_parametrizacao_status " +
                                       "(DocID, Status)" +
                                       " VALUES " +
                                       "(@DocID,@Status)";

                        using (SqlCommand cmd = new SqlCommand(queryStatus, conn))
                        {
                            cmd.Parameters.AddWithValue("@DocID", Convert.ToInt32(bsDocumentos.GetRelatedCurrencyManager("DocID").Current.ToString()));
                            cmd.Parameters.AddWithValue("@Status", item);
                            // cmd.Parameters.AddWithValue("@Observacao", rtxtObservacao.Text);
                            cmd.ExecuteNonQuery();
                        }
                    }

                    string queryDeletaVencimento = "DELETE FROM Documentos_Relatorios_parametrizacao_Vencimento where DocID = @DocID";
                    using (SqlCommand cmdDeletaVencimento = new SqlCommand(queryDeletaVencimento, conn))
                    {
                        cmdDeletaVencimento.Parameters.AddWithValue("@DocID", Convert.ToInt32(bsDocumentos.GetRelatedCurrencyManager("DocID").Current.ToString()));
                        cmdDeletaVencimento.ExecuteNonQuery();
                    }
                    foreach (int item in chklbVencimento.CheckedIndices)
                    {
                        string queryVencimento = "INSERT INTO Documentos_Relatorios_parametrizacao_vencimento " +
                                       "(DocID, Vencimento)" +
                                       " VALUES " +
                                       "(@DocID,@Vencimento)";

                        using (SqlCommand cmd = new SqlCommand(queryVencimento, conn))
                        {
                            cmd.Parameters.AddWithValue("@DocID", Convert.ToInt32(bsDocumentos.GetRelatedCurrencyManager("DocID").Current.ToString()));
                            cmd.Parameters.AddWithValue("@Vencimento", item + 1);
                            // cmd.Parameters.AddWithValue("@Observacao", rtxtObservacao.Text);
                            cmd.ExecuteNonQuery();
                        }
                    }

                }

                SalvaSubTipoBanco();

                if (statusCadastro == StatusCadastro.Editar)
                {
                    MessageBox.Show("Registro alterado com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    tabControl.SelectedTab = tabControl.TabPages[0];
                    AcaoBotaoCancelarSalvar();
                    bsDocumentos.DataSource = getDocumentos();
                }
                else
                {
                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    tabControl.SelectedTab = tabControl.TabPages[0];
                    AcaoBotaoCancelarSalvar();
                    bsDocumentos.DataSource = getDocumentos();
                }

                statusCadastro = StatusCadastro.None;
                HabilitarDesabilitaControles(false);

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnInclui_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(mcbTipoDocumento.Text))
            {
                MessageBox.Show("O Tipo e Sub-Tipo devem ser preenchidos para a inclusão.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mcbTipoDocumento.Focus();
                return;
            }


            foreach (ListViewItem item in lvSubTipo.Items)
            {
                if (mcbSubTipoDocumento.Text == item.Text)
                {
                    MessageBox.Show("O Sub-Tipo não pode ser repetido!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    mcbSubTipoDocumento.Focus();
                    return;
                }
            }
            //if (bsSubTipo.Count > 0 && bsSubTipo.GetRelatedCurrencyManager("Sub_Tipo_Doc").Equals(mcbSubTipoDocumento.SelectedValue))
            //{
            //    MessageBox.Show("O Sub-Tipo não pode ser repetido!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
            //    mcbSubTipoDocumento.Focus();
            //    return;
            //}
            if (!string.IsNullOrEmpty(mcbSubTipoDocumento.Text) && !string.IsNullOrWhiteSpace(mcbSubTipoDocumento.Text))
            {
                lvSubTipo.Enabled = true;
                ListViewItem item1 = new ListViewItem(mcbSubTipoDocumento.Text);
                item1.SubItems.Add(mcbTipoDocumento.SelectedValue.ToString());
                item1.SubItems.Add(mcbSubTipoDocumento.SelectedValue.ToString());
                lvSubTipo.Items.AddRange(new ListViewItem[] { item1 });
                mcbSubTipoDocumento.SelectedIndex = -1;
            }
            else
                MessageBox.Show("O Sub-Tipo precisa ser selecionado!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);



        }
        private void getTipoDocumentos()
        {
            TipoDeDocumento tipoDocumento = new TipoDeDocumento();
            mcbTipoDocumento.DataSource = null;
            mcbTipoDocumento.DataSource = tipoDocumento.GetTipoDocumento();
            mcbTipoDocumento.DisplayMember = "descricao";
            mcbTipoDocumento.ValueMember = "codigo";
            mcbTipoDocumento.SelectedIndex = -1;
        }
        private void getSubTipoDocumentos()
        {
            SubTipoDeDocumento tipoDocumento = new SubTipoDeDocumento();
            mcbSubTipoDocumento.DataSource = null;
            mcbSubTipoDocumento.DataSource = tipoDocumento.GetSubTipoDocumento(mcbTipoDocumento.SelectedValue.ToString());
            mcbSubTipoDocumento.DisplayMember = "descricao";
            mcbSubTipoDocumento.ValueMember = "codigo";
            mcbSubTipoDocumento.SelectedIndex = -1;
        }
        public void GetImportador()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "SELECT CGC_CPF AS CGC_CPF, MAX(Razao_Social) AS Razao_Social  " +
                               "FROM Importadores WHERE Ativo = 1 " +
                               "GROUP BY CGC_CPF ORDER BY Razao_Social";

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
                mcbImportador.DataSource = null;
                mcbImportador.DataSource = table;
                mcbImportador.DisplayMember = "Razao_Social";
                mcbImportador.ValueMember = "CGC_CPF";
                mcbImportador.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private DataTable getDocumentos()
        {

            string query = "   Select DocID, Titulo, DP.Email, I.Razao_Social as Razao_Social " +
                               "from Documentos_Relatorios_parametrizacao DP left join " +
                               "Importadores I on I.CGC_CPF = DP.ImportadorCgcCpf where I.Codigo in " +
                               "( " +
                               "Select Max(Codigo) from Importadores where CGC_CPF = DP.ImportadorCgcCpf " +
                                ") " +
                               "Group by DocID, Titulo, DP.Email, I.Razao_Social";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
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
        }
        private void mcbTipoDocumento_SelectionChangeCommitted(object sender, EventArgs e)
        {
            getSubTipoDocumentos();
        }



        private void LimpaCampos()
        {
            txtEmail.Clear();
            txtTitulo.Clear();
            mcbImportador.SelectedIndex = -1;
            mcbSubTipoDocumento.SelectedIndex = -1;
            mcbTipoDocumento.SelectedIndex = -1;
            lvSubTipo.Items.Clear();
            gvSubTipo.DataSource = null;

            for (int i = 0; i < chklbStatus.Items.Count; i++)
                chklbStatus.SetItemCheckState(i, CheckState.Unchecked);

            for (int i = 0; i < chklbVencimento.Items.Count; i++)
                chklbVencimento.SetItemCheckState(i, CheckState.Unchecked);
        }

        private void gvDocumentos_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            EditaConteudo();
          //  AcaoBotaoNovoEditar();
            tabControl.SelectedTab = tabControl.TabPages[1];
        }

        private void EditaConteudo()
        {
            string query = "   Select DP.DocID as DocID, Titulo, ImportadorCgcCpf, DP.Email, V.Vencimento, Codigo, Status " +
                               "from Documentos_Relatorios_parametrizacao DP left join " +
                               "Documentos_Relatorios_parametrizacao_vencimento V on V.DocID = DP.DocID left join " +
                               "Importadores I on I.CGC_CPF = DP.ImportadorCgcCpf left join " +
                               "Documentos_Relatorios_parametrizacao_status S on S.DocID = DP.DocID where DP.DocID = @DocID";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@DocID", Convert.ToInt32(gvDocumentos.Rows[gvDocumentos.SelectedRows[0].Index].Cells["ID"].Value.ToString()));

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            txtEmail.Text = reader["Email"].ToString();
                            txtTitulo.Text = reader["Titulo"].ToString();
                            mcbImportador.SelectedValue = reader["ImportadorCgcCpf"].ToString();
                            if (!string.IsNullOrEmpty(reader["Vencimento"].ToString()))
                                chklbVencimento.SetItemChecked(Convert.ToInt32(reader["Vencimento"].ToString()) - 1, true);

                            if (!string.IsNullOrEmpty(reader["Status"].ToString()))
                                chklbStatus.SetItemChecked(Convert.ToInt32(reader["Status"].ToString()), true);
                        }
                    }
                }

            }
            bsSubTipo.DataSource = GetSubTipoDescricao();
            gvSubTipo.DataSource = bsSubTipo;
        }

        private void AcaoBotaoCancelarSalvar()
        {
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
           /* LimpaCampos();
           
                

                tabControl.SelectedTab = tabControl.TabPages[0];
                foreach (Control item in tabControl.TabPages[1].Controls)
                    item.Enabled = false;
            */
            foreach (Control item in tabControl.TabPages[0].Controls)
                item.Enabled = true;

        }
        private void AcaoBotaoNovoEditar()
        {
            HabilitarDesabilitaControles(true);
            LimpaCampos();
            foreach (Control item in tabControl.TabPages[0].Controls)
                item.Enabled = false;

            tabControl.SelectedTab = tabControl.TabPages[1];
            foreach (Control item in tabControl.TabPages[1].Controls)
                item.Enabled = true;

        }
        private DataTable GetSubTipoDescricao()
        {
            string query = "Select Distinct T.DocID, T.Sub_Tipo_Doc, T.Tipo_Doc, S.Descricao from Documentos_Relatorios_parametrizacao_Tipo T left join " +
                            "Documentos_Relatorios_parametrizacao DP on DP.DocID = T.DocID left join " +
                            "Sub_Tipo_Documentos S on S.codigo = T.Sub_Tipo_Doc and S.Tipo_doc = T.Tipo_Doc " +
                            "where T.DocID = @DocID";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@DocID", Convert.ToInt32(gvDocumentos.Rows[gvDocumentos.SelectedRows[0].Index].Cells["ID"].Value.ToString()));
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        DataTable table = new DataTable();
                        table.Load(reader);
                        return table;
                    }
                }
            }
        }
        private void SalvaSubTipoBanco()
        {
            if (lvSubTipo.Items.Count > 0)
            {
                foreach (ListViewItem item in lvSubTipo.Items)
                {
                    SqlConnection conn2 = DatabaseSqlConnection.Instance.Conexao;
                    string querySerie = "INSERT INTO [Documentos_Relatorios_Parametrizacao_Tipo]" +
                   " ([DocID],[Tipo_Doc],[Sub_Tipo_Doc]) " +
                   " VALUES " +
                   "(@DocID,@Tipo_Doc,@Sub_Tipo_Doc)";

                    using (SqlCommand cmd2 = new SqlCommand(querySerie, conn2))
                    {
                        cmd2.Parameters.AddWithValue("@DocID", DocID);
                        cmd2.Parameters.AddWithValue("@Tipo_Doc", item.SubItems[1].Text);
                        cmd2.Parameters.AddWithValue("@Sub_Tipo_Doc", item.SubItems[2].Text);
                        cmd2.ExecuteNonQuery();
                    }
                }
                LogSistemas.AddLogSistema(DocID.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), "Inserido Novo SubTipo.");
                lvSubTipo.Items.Clear();
            }
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "DELETE FROM Documentos_Relatorios_parametrizacao where DocID = @DocID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@DocID", Convert.ToInt32(bsDocumentos.GetRelatedCurrencyManager("DocID").Current.ToString()));
                        cmd.ExecuteNonQuery();
                        string query2 = "DELETE FROM Documentos_Relatorios_parametrizacao_Tipo where DocID = @DocID";
                        using (SqlCommand cmd2 = new SqlCommand(query2, conn))
                        {
                            cmd2.Parameters.AddWithValue("@DocID", Convert.ToInt32(bsDocumentos.GetRelatedCurrencyManager("DocID").Current.ToString()));
                            cmd2.ExecuteNonQuery();
                            string query3 = "DELETE FROM Documentos_Relatorios_parametrizacao_status where DocID = @DocID";
                            using (SqlCommand cmd3 = new SqlCommand(query3, conn))
                            {
                                cmd3.Parameters.AddWithValue("@DocID", Convert.ToInt32(bsDocumentos.GetRelatedCurrencyManager("DocID").Current.ToString()));
                                cmd3.ExecuteNonQuery();
                                string query4 = "DELETE FROM Documentos_Relatorios_parametrizacao_Vencimento where DocID = @DocID";
                                using (SqlCommand cmd4 = new SqlCommand(query4, conn))
                                {
                                    cmd4.Parameters.AddWithValue("@DocID", Convert.ToInt32(bsDocumentos.GetRelatedCurrencyManager("DocID").Current.ToString()));
                                    cmd4.ExecuteNonQuery();
                                }

                            }
                        }

                    }
                    LogSistemas.AddLogSistema(bsDocumentos.GetRelatedCurrencyManager("DocID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), "Deletada a Parametrização e seus registros de Documentos.");
                    statusCadastro = StatusCadastro.None;
                    bsDocumentos.RemoveCurrent();
                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void btnRemover_Click(object sender, EventArgs e)
        {
            if (gvSubTipo.RowCount > 0)
            {
                if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                {
                    try
                    {
                        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                        string query = "DELETE FROM Documentos_Relatorios_parametrizacao_tipo where DocID = @DocID and Tipo_Doc = @Tipo_Doc and Sub_Tipo_Doc = @SubTipo";
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@DocID", Convert.ToInt32(bsDocumentos.GetRelatedCurrencyManager("DocID").Current.ToString()));
                            cmd.Parameters.AddWithValue("@Tipo_Doc", ((DataRowView)this.bsSubTipo.Current).Row["Tipo_Doc"].ToString());
                            cmd.Parameters.AddWithValue("@SubTipo", ((DataRowView)this.bsSubTipo.Current).Row["Sub_Tipo_Doc"].ToString());
                            cmd.ExecuteNonQuery();
                        }
                        LogSistemas.AddLogSistema(bsDocumentos.GetRelatedCurrencyManager("DocID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), "Deletada a Parametrização e seus registros de Documentos.");
                        statusCadastro = StatusCadastro.None;
                        bsSubTipo.RemoveCurrent();
                        MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
            else
                MessageBox.Show("Não existe registro para ser excluído!", "Excluir", MessageBoxButtons.OK,
                    MessageBoxIcon.Warning);

        }

        private void txtPesquisar_TextChanged(object sender, EventArgs e)
        {
            bsDocumentos.Filter = "Razao_Social like '%" + txtPesquisar.Text + "%'";
        }

        private void btnExcluirLista_Click(object sender, EventArgs e)
        {
            if (lvSubTipo.Items.Count > 0 && lvSubTipo.SelectedItems.Count > 0)
            {
                try
                {
                    for (int i = lvSubTipo.Items.Count - 1; i >= 0; i--)
                        if (lvSubTipo.Items[i].Selected)
                            lvSubTipo.Items[i].Remove();

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
                MessageBox.Show("Selecione um registro na lista para ser removido!", "Excluir", MessageBoxButtons.OK,
                    MessageBoxIcon.Warning);
        }

        private void tabControl_Selected(object sender, TabControlEventArgs e)
        {
            EditaConteudo();
        }
    }

}
