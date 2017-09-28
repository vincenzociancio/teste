using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmControleCaixa : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        private int Pk_Processo;
        private bool Fechamento;
        private string tipo;
        private string tipo_declaracao;
        private string status;

        Processo RefMS = new Processo();
        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnFechar.Enabled = (statusCadastro == StatusCadastro.None);

            btnCadastroTipoDeArquivo.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panel1.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmControleCaixa()
        {
            InitializeComponent();
        }

        private void FrmControleCaixa_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            getItensPesquisar();

            getLocalizacao();
            getSetores();
            getTrimestre();
            getPrevisao();

            dataGridView.AutoGenerateColumns = false;

            AtualizaGrid();

            bindingNavigator.BindingSource = bindingSource;

            txtCaixa.DataBindings.Add(new Binding("Text", bindingSource, "ID", true));
            txtDataAbertura.DataBindings.Add(new Binding("Text", bindingSource, "Data_Abertura", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            mcbbLocalizacao.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Localizacao", true));
            mcbbSetor.DataBindings.Add(new Binding("SelectedValue", bindingSource, "FK_Setor", true));
            txtDataArquivamento.DataBindings.Add(new Binding("Text", bindingSource, "Data_Arquivamento", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtResponsavel.DataBindings.Add(new Binding("Text", bindingSource, "Nome_Completo", true));
            mccbTrimestre.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Trimestre", true));
            txtNumeroRecall.DataBindings.Add(new Binding("Text", bindingSource, "Numero_Recall", true));
            txtDataFechamento.DataBindings.Add(new Binding("Text", bindingSource, "Data_Fechamento", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            cbbDescartePrevisao.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Descarte_Previsao", true));
            txtDataPrevisao.DataBindings.Add(new Binding("Text", bindingSource, "Data_Previsao", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtDataEfetiva.DataBindings.Add(new Binding("Text", bindingSource, "Data_Efetiva", true, DataSourceUpdateMode.OnValidation, "  /  /"));
        }

        private DataTable getControleCaixas()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT CC.ID, CC.Data_Abertura, case when (CC.Localizacao = 1) then 'Ms Logística' else case when (CC.Localizacao = 2) then 'Teófilo Otoni' else case when (CC.Localizacao = 3) then 'Recall' else ''  end end end as Nome_Localizacao, Localizacao, " +
                           "       case when (CC.Trimestre = 1) then 'Primeiro' else case when (CC.Trimestre = 2) then 'Segundo' else case when (CC.Trimestre = 3) then 'Terceiro' else case when (CC.Trimestre = 4) then 'Quarto' else '' end end end end as Desc_Trimestre," +
                           "       CC.Localizacao, CC.Data_Arquivamento, S.Descricao AS Setor, CC.FK_Setor, U.Nome_Completo, CC.Numero_Recall, CC.Data_Fechamento, CC.Data_Previsao, CC.Data_Efetiva, CC.Trimestre,            " +
                           "       CC.Descarte_Previsao, CASE WHEN (CC.Descarte_Previsao = 0) THEN 'Não' ELSE 'Sim' END AS Descarte_Previsao_Descricao                                                                         " +
                           "  FROM Controle_Caixas CC                                                 " +
                           "        INNER JOIN Usuarios U ON CC.FK_Usuario_Responsavel = U.PK_USUARIO " +
                           "        LEFT JOIN Setores S ON CC.FK_Setor = S.ID                         " +
                           "ORDER BY CC.ID DESC                                                       ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    table.Columns["ID"].AutoIncrement = false;
                    return table;
                }
            }
        }

        private DataTable getControleCaixasDocumentos(string ID_Caixa)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " SELECT CCD.ID, CCD.FK_Tipo, CCTA.Descricao, P.Codigo, CCD.Mes_Ano, P.Codigo     " +
                           "   FROM Controle_Caixas_Documentos CCD                                           " +
                           "        INNER JOIN Controle_Caixas_Tipos_Arquivos CCTA ON CCTA.ID = CCD.FK_Tipo  " +
                           "         LEFT JOIN Processos P ON P.ID = CCD.FK_Processo                         " +
                           "  WHERE CCD.FK_Controle_Caixa = @FK_Controle_Caixa                               " +
                           " ORDER BY CCD.ID                                                                 ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@FK_Controle_Caixa", ID_Caixa);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private DataTable getControleCaixasMovimentacoes(string ID_Caixa, string ID_Documento)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT CCM.ID, P.Codigo, U.Nome_Completo, CCM.Data                                     " +
                           "  FROM Controle_Caixas_Movimentacoes CCM                      	   	                   " +
                           "       INNER JOIN Usuarios U ON U.PK_USUARIO = CCM.FK_Usuario                          " +
                           "       INNER JOIN Controle_Caixas_Documentos CCD ON CCD.ID = CCM.FK_Controle_Documento " +
                           "       INNER JOIN Processos P ON P.ID = CCD.FK_Processo                                " +
                           " WHERE CCM.FK_Controle_Caixa     = @FK_Controle_Caixa                                  " +
                //"   AND CCM.FK_Controle_Documento = @FK_Controle_Documento                              " +
                           " ORDER BY CCM.ID                                                                       ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@FK_Controle_Caixa", ID_Caixa);
                //cmd.Parameters.AddWithValue("@FK_Controle_Documento", ID_Documento);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void getSetores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT id, descricao                        " +
                           "  FROM setores                              " +
                           " WHERE excluido = 0 AND controle_caixas = 1 " +
                           "ORDER BY descricao                          ";

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

                mcbbSetor.DataSource = null;
                mcbbSetor.DataSource = table;
                mcbbSetor.DisplayMember = "Descricao";
                mcbbSetor.ValueMember = "id";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getTiposArquivos()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT id, descricao                  " +
                           "  FROM Controle_Caixas_Tipos_Arquivos " +
                           " WHERE lixo = 0                       ";

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

                mccbTipoArquivo.DataSource = null;
                mccbTipoArquivo.DataSource = table;
                mccbTipoArquivo.DisplayMember = "descricao";
                mccbTipoArquivo.ValueMember = "id";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getUsuarios()
        {
            Usuario Usuarios = new Usuario();

            mcbbUsuario.DataSource = null;
            mcbbUsuario.DataSource = Usuarios.getUsuarios();
            mcbbUsuario.DisplayMember = "Nome_Completo";
            mcbbUsuario.ValueMember = "PK_USUARIO";
        }

        private void getLocalizacao()
        {
            Dictionary<int, string> itensLocalizacao = new Dictionary<int, string>();

            itensLocalizacao.Add(0, "");
            itensLocalizacao.Add(1, "MS Logística");
            itensLocalizacao.Add(2, "Teófilo Otoni");
            itensLocalizacao.Add(3, "Recall");

            mcbbLocalizacao.DataSource = null;
            mcbbLocalizacao.DisplayMember = "Value";
            mcbbLocalizacao.ValueMember = "Key";
            mcbbLocalizacao.DataSource = new BindingSource(itensLocalizacao, null);
        }

        private void getTrimestre()
        {
            Dictionary<int, string> itensTrimestre = new Dictionary<int, string>();

            itensTrimestre.Add(1, "Primeiro");
            itensTrimestre.Add(2, "Segundo");
            itensTrimestre.Add(3, "Terceiro");
            itensTrimestre.Add(4, "Quarto");

            mccbTrimestre.DisplayMember = "Value";
            mccbTrimestre.ValueMember = "Key";
            mccbTrimestre.DataSource = new BindingSource(itensTrimestre, null);
        }

        private void getPrevisao()
        {
            Dictionary<bool, string> itensPrevisao = new Dictionary<bool, string>();

            itensPrevisao.Add(false, "Não");
            itensPrevisao.Add(true, "Sim");

            cbbDescartePrevisao.DataSource = null;
            cbbDescartePrevisao.DisplayMember = "Value";
            cbbDescartePrevisao.ValueMember = "Key";
            cbbDescartePrevisao.DataSource = new BindingSource(itensPrevisao, null);
        }

        private void IncluiDocumentoPasta(string ID_Caixa)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "INSERT INTO Controle_Caixas_Documentos                                     " +
                           "           (  FK_Controle_Caixa,  FK_Tipo,  FK_Processo,  Mes_Ano ) VALUES " +
                           "           ( @FK_Controle_Caixa, @FK_Tipo, @FK_Processo, @Mes_Ano )        ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@FK_Controle_Caixa", ID_Caixa);
                cmd.Parameters.AddWithValue("@FK_Tipo", (mccbTipoArquivo.SelectedValue == null ? DBNull.Value : (object)mccbTipoArquivo.SelectedValue));
                cmd.Parameters.AddWithValue("@FK_Processo", (Pk_Processo == 0 ? DBNull.Value : (object)Pk_Processo));
                cmd.Parameters.AddWithValue("@Mes_Ano", txtMesAno.Text);

                cmd.ExecuteNonQuery();

                //TP ARQUIVO PROCESSO
                if ((mccbTipoArquivo.SelectedValue.ToString() == "1") && (txtRefMs.MaskCompleted))
                {
                    LancaFollowArquivado();


                }
            }

            LogSistemas.AddLogSistema(ID_Caixa, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Documento/Pasta incluída para Caixa:{0}, Tipo de Arquivo: {1}, Ref. MS:{2}, Mes/Ano:{3} ", txtCaixa.Text, mccbTipoArquivo.Text, txtRefMs.Text, txtMesAno.Text));

            MessageBox.Show("Documento incluído com sucesso!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);

            AtualizaGridsDocumentos();
        }

        private void IncluiMovimentacao(string ID_Caixa)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "INSERT INTO Controle_Caixas_Movimentacoes                    " +
                           "           (  FK_Controle_Caixa,  FK_Controle_Documento,  FK_Usuario,  Data ) VALUES " +
                           "           ( @FK_Controle_Caixa, @FK_Controle_Documento, @FK_Usuario, @Data )        ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@FK_Controle_Caixa", ID_Caixa);
                cmd.Parameters.AddWithValue("@FK_Controle_Documento", bindingSource1.GetRelatedCurrencyManager("ID").Current);
                cmd.Parameters.AddWithValue("@FK_Usuario", (mcbbUsuario.SelectedValue == null ? DBNull.Value : (object)mcbbUsuario.SelectedValue));
                cmd.Parameters.AddWithValue("@Data", DateTime.Now.ToString("dd/MM/yyyy"));

                cmd.ExecuteNonQuery();
            }

            LogSistemas.AddLogSistema(ID_Caixa, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Movimentacão incluída para Caixa:{0}, Usuário: {1}, Data:{2}", txtCaixa.Text, mcbbUsuario.Text, DateTime.Now.ToString("dd/MM/yyyy")));

            AtualizaGridsMovimentacoes();
        }

        private Boolean ValidaCamposDocumentos()
        {
            if (txtDataFechamento.MaskCompleted)
            {
                MessageBox.Show("Caixa fechada!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                return false;
            }

            if (string.IsNullOrEmpty(mccbTipoArquivo.Text.Trim()))
            {
                MessageBox.Show("Tipo de Arquivo obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mccbTipoArquivo.Focus();
                return false;
            }

            if (!txtMesAno.MaskCompleted)
            {
                MessageBox.Show("Mês/Ano obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtMesAno.Focus();
                return false;
            }

            if (txtRefMs.MaskCompleted)
            {
                if (LocalizaCaixaPorProcesso(txtRefMs.Text) > 0)
                {
                    MessageBox.Show("Processo já está vinculado a uma caixa, não será possível inclui-lo novamente!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    txtRefMs.Focus();
                    return false;
                }

                if (txtRefMs.MaskCompleted)
                {
                    int ano = Convert.ToInt16(txtRefMs.Text.Substring(6, 2));

                    if (ano >= 15)
                    {
                        if (Processo.Saldo(txtRefMs.Text) != 0)
                        {
                            if (!Documentos.ExisteDocumento(txtRefMs.Text, "FINA", "108"))
                            {
                                MessageBox.Show("Processo sem documento de Transmittal de Prestação de Contas digitalizado não pode ser arquivado, favor verificar com o Faturamento.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                                txtRefMs.Focus();

                                return false;
                            }
                        }
                    }
                }

                tipo = RefMS.BuscarPorCodigo(txtRefMs.Text).Tipo;
                tipo_declaracao = RefMS.BuscarPorCodigo(txtRefMs.Text).Tipo_Declaracao;
                status = RefMS.BuscarPorCodigo(txtRefMs.Text).Status;                

                if (TiposDeProcesso.ResponsabilidadeSetorDocumental(tipo))
                {
                    if (!FrmPrincipal.Documentador)
                    {
                        MessageBox.Show("Não é possivel enviar o processo para arquivo. Processo de responsabildade do setor documental, somente documentador!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        txtRefMs.Focus();
                        return false;   
                    }                    
                }

                /*      Vincenzo - 14/09/2017 :   Solicitação Sule
                 *
                 *      Correção para não considerar processos cancelados e de nacionalização na regra
                 */

                string strSql =             string.Empty;
                string sPasta_Usuario =     string.Empty;                
                string sDe_usuario =        string.Empty;
                string sLocalizacao =       string.Empty;
                string sPasta_Aceite =      "0";                
                
                strSql = "select * from controle_pastas where processo = @pProcesso";
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(strSql, conn))
                {
                    cmd.CommandTimeout = 9999;
                    cmd.Parameters.AddWithValue("@pProcesso", txtRefMs.Text);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            sPasta_Aceite = reader["Aceite"].ToString();
                            sPasta_Usuario = reader["Usuario"].ToString();
                        }
                    }

                }
                strSql = "SELECT top 1 De_usuario FROM Movimentacao_pastas WHERE PROCESSO = @pProc ORDER BY Movimento desc";
                using (SqlCommand cmd = new SqlCommand(strSql, conn))
                {
                    cmd.Parameters.AddWithValue("@pProc", txtRefMs.Text);
                
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read()) {sDe_usuario = reader["De_usuario"].ToString();}
                    }
                }
                
                strSql = "SELECT Nome_Completo FROM Usuarios WHERE usuario = @pUsu";
                using (SqlCommand cmd = new SqlCommand(strSql, conn))
                {
                    if (sPasta_Aceite.Trim().ToUpper() == "1") 
                    {                    
                        cmd.Parameters.AddWithValue("@pUsu", sPasta_Usuario);                   
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@pUsu", sDe_usuario);
                    }
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read()) { sLocalizacao = reader["Nome_Completo"].ToString(); }                   
                    }

                cmd.Connection.Close(); 
                }
            
       
                //********************************************************
                if ((status != "4") && (sLocalizacao.Trim() != "CANCELADO") && (tipo != "NC")  )
                {
                    if (TiposDeProcesso.VerificaDespachoDecisorio(tipo))
                    {
                        //Importações...
                        if ((tipo == "11") || (tipo == "20") || (tipo == "IB") || (tipo == "43") || (tipo == "19") || (tipo == "12") || (tipo == "13") || (tipo == "40"))
                        {
                            //Admissão temporária / Consumo e Admissão 
                            if ((tipo_declaracao == "05") || (tipo_declaracao == "12"))
                            {
                                if (!Documentos.VerificaSeDespachoDecisorioTemVencimento(txtRefMs.Text))
                                {
                                    MessageBox.Show("Processo pendente de despacho decisório com vencimento, favor encaminhar processo para o supervisor responsável!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                    txtRefMs.Focus();
                                    return false;
                                }
                            }
                        }
                        else
                        {
                            if (!Documentos.VerificaSeDespachoDecisorioTemVencimento(txtRefMs.Text))
                            {
                                if ((tipo != "34") && (tipo != "35"))
                                {
                                    MessageBox.Show("Processo pendente de despacho decisório com vencimento, favor encaminhar processo para o supervisor responsável!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                    txtRefMs.Focus();
                                    return false;
                                }
                            }
                        }
                    }     
                }

                Pk_Processo = RefMS.BuscarPorCodigo(txtRefMs.Text).ID;

                try
                {
                    //SOMENTE PARA LOCALIZAÇÃO RECALL 
                    if (mcbbLocalizacao.SelectedIndex == 3)
                    {
                        if (!RefMS.ProcessoSemDesembaraco(txtRefMs.Text))
                        {
                            string DT_Desembaraco_str = RefMS.BuscarPorCodigo(txtRefMs.Text).DT_DESEMBARACO.ToString();

                            if (string.IsNullOrEmpty(DT_Desembaraco_str.ToString()))
                            {
                                MessageBox.Show("Processo não desembaraçado, favor verificar.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                                txtRefMs.Focus();
                                return false;
                            }
                            else
                            {
                                DateTime DT_Desembaraco = (DateTime)RefMS.BuscarPorCodigo(txtRefMs.Text).DT_DESEMBARACO;

                                string Ano_Desembaraco = DT_Desembaraco.Year.ToString();

                                string Mes_Desembaraco = DT_Desembaraco.Month.ToString();

                                if (((mccbTrimestre.SelectedValue.ToString() == "1") & (((Mes_Desembaraco != "1") & (Mes_Desembaraco != "2") & (Mes_Desembaraco != "3")) || (Ano_Desembaraco != DateTime.Now.Year.ToString()))) ||
                                    ((mccbTrimestre.SelectedValue.ToString() == "2") & (((Mes_Desembaraco != "4") & (Mes_Desembaraco != "5") & (Mes_Desembaraco != "6")) || (Ano_Desembaraco != DateTime.Now.Year.ToString()))) ||
                                    ((mccbTrimestre.SelectedValue.ToString() == "3") & (((Mes_Desembaraco != "7") & (Mes_Desembaraco != "8") & (Mes_Desembaraco != "9")) || (Ano_Desembaraco != DateTime.Now.Year.ToString()))) ||
                                    ((mccbTrimestre.SelectedValue.ToString() == "4") & (((Mes_Desembaraco != "10") & (Mes_Desembaraco != "11") & (Mes_Desembaraco != "12")) || (Ano_Desembaraco != DateTime.Now.Year.ToString()))))
                                {
                                    if (MessageBox.Show("Processo não foi desembaraçado no trimestre informado na caixa, confirma a inclusão ?", "Atenção", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                                    {
                                        return true;
                                    }
                                    else
                                    {
                                        MessageBox.Show("Processo não incluído.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                                        txtRefMs.Focus();
                                        return false;
                                    }
                                }
                            }
                        }
                    }
                }
                catch (Exception)
                {
                    return false;
                }
            }

            return true;
        }

        private Boolean ValidaCampos()
        {
            if (string.IsNullOrEmpty(mcbbLocalizacao.Text.Trim()))
            {
                MessageBox.Show("Localização obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mcbbLocalizacao.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(mcbbSetor.Text.Trim()))
            {
                MessageBox.Show("Setor obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mcbbSetor.Focus();
                return false;
            }

            if (mcbbLocalizacao.SelectedValue.ToString() == "3")
            {
                if (string.IsNullOrEmpty(mccbTrimestre.Text.Trim()))
                {
                    MessageBox.Show("Trimestre obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    mccbTrimestre.Focus();
                    return false;
                }


                if (string.IsNullOrEmpty(txtNumeroRecall.Text.Trim()))
                {
                    MessageBox.Show("Número Recall obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    txtNumeroRecall.Focus();
                    return false;
                }
                else
                {
                    if (statusCadastro == StatusCadastro.Editar)
                    {
                        if (JaExisteCaixaComNumeroRecall(txtNumeroRecall.Text, bindingSource.GetRelatedCurrencyManager("ID").Current.ToString()))
                        {
                            MessageBox.Show("Número Recall já vinculado a outra coisa!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            txtNumeroRecall.Focus();
                            return false;
                        }
                    }
                    else
                    {
                        if (JaExisteCaixaComNumeroRecall(txtNumeroRecall.Text, "0"))
                        {
                            MessageBox.Show("Número Recall já vinculado a outra coisa!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            txtNumeroRecall.Focus();
                            return false;
                        }
                    }
                }
            }

            return true;
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (ValidaCampos() == false) return;

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "UPDATE Controle_Caixas SET Data_Abertura = @Data_Abertura, Localizacao = @Localizacao, FK_Setor = @FK_Setor, Data_Arquivamento = @Data_Arquivamento, FK_Usuario_Responsavel = @FK_Usuario_Responsavel, Data_Fechamento = @Data_Fechamento, Numero_Recall = @Numero_Recall, Trimestre = @Trimestre, Descarte_Previsao = @Descarte_Previsao, Data_Previsao = @Data_Previsao, Data_Efetiva = @Data_Efetiva WHERE ID = @ID";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Data_Abertura", !txtDataAbertura.MaskCompleted ? DBNull.Value : (object)txtDataAbertura.Text);
                        cmd.Parameters.AddWithValue("@Localizacao", (mcbbLocalizacao.SelectedValue == null ? DBNull.Value : (object)mcbbLocalizacao.SelectedValue));
                        cmd.Parameters.AddWithValue("@FK_Setor", (mcbbSetor.SelectedValue == null ? DBNull.Value : (object)mcbbSetor.SelectedValue));
                        cmd.Parameters.AddWithValue("@Data_Arquivamento", !txtDataArquivamento.MaskCompleted ? DBNull.Value : (object)txtDataArquivamento.Text);
                        cmd.Parameters.AddWithValue("@FK_Usuario_Responsavel", FrmPrincipal.PK_UsuarioLogado);
                        cmd.Parameters.AddWithValue("@Data_Fechamento", !txtDataFechamento.MaskCompleted ? DBNull.Value : (object)txtDataFechamento.Text);
                        cmd.Parameters.AddWithValue("@Numero_Recall", txtNumeroRecall.Text);
                        cmd.Parameters.AddWithValue("@Trimestre", (mccbTrimestre.SelectedValue == null ? 0 : (object)mccbTrimestre.SelectedValue));
                        cmd.Parameters.AddWithValue("@Descarte_Previsao", (cbbDescartePrevisao.SelectedValue == null ? 0 : (object)cbbDescartePrevisao.SelectedValue));
                        cmd.Parameters.AddWithValue("@Data_Previsao", !txtDataPrevisao.MaskCompleted ? DBNull.Value : (object)txtDataPrevisao.Text);
                        cmd.Parameters.AddWithValue("@Data_Efetiva", !txtDataEfetiva.MaskCompleted ? DBNull.Value : (object)txtDataEfetiva.Text);
                        cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("ID").Current);

                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De:{0} Para:{1}", ((DataRowView)this.bindingSource.Current).Row["ID"].ToString(), bindingSource.GetRelatedCurrencyManager("ID").Current));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Controle_Caixas                                                                                                                                                                                                  " +
                                   "           ( Data_Abertura,  Localizacao,  FK_Setor,  Data_Arquivamento,  FK_Usuario_Responsavel,  Data_Fechamento,  Numero_Recall,  Trimestre,  Descarte_Previsao,  Data_Previsao,  Data_Efetiva) VALUES                    " +
                                   "           (@Data_Abertura, @Localizacao, @FK_Setor, @Data_Arquivamento, @FK_Usuario_Responsavel, @Data_Fechamento, @Numero_Recall, @Trimestre, @Descarte_Previsao, @Data_Previsao, @Data_Efetiva); SELECT SCOPE_IDENTITY()  ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Data_Abertura", !txtDataAbertura.MaskCompleted ? DBNull.Value : (object)txtDataAbertura.Text);
                        cmd.Parameters.AddWithValue("@Localizacao", (mcbbLocalizacao.SelectedValue == null ? DBNull.Value : (object)mcbbLocalizacao.SelectedValue));
                        cmd.Parameters.AddWithValue("@FK_Setor", (mcbbSetor.SelectedValue == null ? DBNull.Value : (object)mcbbSetor.SelectedValue));
                        cmd.Parameters.AddWithValue("@Data_Arquivamento", !txtDataArquivamento.MaskCompleted ? DBNull.Value : (object)txtDataArquivamento.Text);
                        cmd.Parameters.AddWithValue("@FK_Usuario_Responsavel", FrmPrincipal.PK_UsuarioLogado);
                        cmd.Parameters.AddWithValue("@Data_Fechamento", !txtDataFechamento.MaskCompleted ? DBNull.Value : (object)txtDataFechamento.Text);
                        cmd.Parameters.AddWithValue("@Numero_Recall", txtNumeroRecall.Text);
                        cmd.Parameters.AddWithValue("@Trimestre", (mccbTrimestre.SelectedValue == null ? 0 : (object)mccbTrimestre.SelectedValue));
                        cmd.Parameters.AddWithValue("@Descarte_Previsao", (cbbDescartePrevisao.SelectedValue == null ? 0 : (object)cbbDescartePrevisao.SelectedValue));
                        cmd.Parameters.AddWithValue("@Data_Previsao", !txtDataPrevisao.MaskCompleted ? DBNull.Value : (object)txtDataPrevisao.Text);
                        cmd.Parameters.AddWithValue("@Data_Efetiva", !txtDataEfetiva.MaskCompleted ? DBNull.Value : (object)txtDataEfetiva.Text);

                        var returnValue = cmd.ExecuteScalar();

                        txtCaixa.Text = returnValue.ToString();

                        MessageBox.Show("O caixa de número " + returnValue.ToString() + " foi criada.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }

                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Codigo:{0}", bindingSource.GetRelatedCurrencyManager("ID").Current));
                }

                if (statusCadastro == StatusCadastro.Editar)
                {
                    MessageBox.Show("Registro alterado com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }

                AtualizaGrid();

                statusCadastro = StatusCadastro.None;

                HabilitarDesabilitaControles(false);

                dataGridView.Enabled = true;

                tabControl.SelectedTab = tabSearch;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnIncluiDocumentoPasta_Click(object sender, EventArgs e)
        {
            if (ValidaCamposDocumentos() == false) return;            
            
            IncluiDocumentoPasta(((DataRowView)this.bindingSource.Current).Row["ID"].ToString());

            txtMesAno.Clear();
            txtRefMs.Clear();
        }

        private void btnIncluiMovimentacao_Click(object sender, EventArgs e)
        {
            IncluiMovimentacao(((DataRowView)this.bindingSource.Current).Row["ID"].ToString());
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabPage1;

            VerificaComponentes();

            btnFechamentoCaixa.Enabled = ((!txtDataFechamento.MaskCompleted));

            dataGridView.Enabled = false;
            mccbTrimestre.Enabled = false;

            getTiposArquivos();
            getUsuarios();
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabPage1;

            grbDocumentosPastas.Enabled = false;
            grbMovimentacoes.Enabled = false;
            mccbTrimestre.Enabled = true;

            dataGridView.Enabled = false;

            txtDataAbertura.Text = DateTime.Today.ToString();
            txtResponsavel.Text = FrmPrincipal.UsuarioNomeCompleto;
            mcbbLocalizacao.Focus();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            dataGridView.Enabled = true;

            tabControl.SelectedTab = tabSearch;
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (bindingSource.Count == 0) return;

            if (MessageBox.Show("Tem certeza que deseja excluir o registro ?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = " DELETE FROM Controle_Caixas WHERE ID = @ID ";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("ID").Current);
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("ID: {0}", bindingSource.GetRelatedCurrencyManager("ID").Current));

                    bindingSource.RemoveCurrent();

                    statusCadastro = StatusCadastro.None;

                    AtualizaGrid();

                    MessageBox.Show("Registro excluído com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void AtualizaGrid()
        {
            bindingSource.DataSource = getControleCaixas();

            dataGridView.DataSource = bindingSource;

            if ((statusCadastro == StatusCadastro.Novo) || (statusCadastro == StatusCadastro.Editar))
            {
                if (bindingSource.Count > 0)
                {
                    AtualizaGridsDocumentos();

                    if (bindingSource1.Count > 0)
                    {
                        AtualizaGridsMovimentacoes();
                    }
                }
            }
        }

        private void AtualizaGridsDocumentos()
        {
            dtgrdDocumentos.AutoGenerateColumns = false;

            bindingSource1.DataSource = getControleCaixasDocumentos(((DataRowView)this.bindingSource.Current).Row["ID"].ToString());

            dtgrdDocumentos.DataSource = bindingSource1;
        }

        private void AtualizaGridsMovimentacoes()
        {
            dtgrdMovimentacoes.AutoGenerateColumns = false;

            bindingSource2.DataSource = getControleCaixasMovimentacoes(((DataRowView)this.bindingSource.Current).Row["ID"].ToString(), ((DataRowView)this.bindingSource1.Current).Row["ID"].ToString());

            dtgrdMovimentacoes.DataSource = bindingSource2;
        }

        private void HabilitaDatasPrevisao()
        {
            label2.Visible = ((bool)cbbDescartePrevisao.SelectedValue == true);
            txtDataPrevisao.Visible = ((bool)cbbDescartePrevisao.SelectedValue == true);

            label3.Visible = ((bool)cbbDescartePrevisao.SelectedValue == true);
            txtDataEfetiva.Visible = ((bool)cbbDescartePrevisao.SelectedValue == true);
        }

        private void mcbbLocalizacao_SelectedIndexChanged(object sender, EventArgs e)
        {
            VerificaComponentes();
        }

        private void txtPesquisa_TextChanged(object sender, EventArgs e)
        {
        }

        private void btnCadastroTipoDeArquivo_Click(object sender, EventArgs e)
        {
            var form = new FrmTiposArquivos();
            FrmPrincipal.ShowModalMdiChildren(form);
        }

        private void tabControl_Selecting(object sender, TabControlCancelEventArgs e)
        {
            e.Cancel = !((Control)e.TabPage).Enabled;
        }

        private void tabControl_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (tabControl.SelectedTab == tabPage1)
            {
                if (bindingSource.Count > 0)
                {
                    AtualizaGridsDocumentos();

                    if (bindingSource1.Count > 0)
                    {
                        AtualizaGridsMovimentacoes();
                    }
                }
            }
        }

        private void cbbDescartePrevisao_SelectedIndexChanged(object sender, EventArgs e)
        {
            if ((tabControl.SelectedTab == tabPage1) & (cbbDescartePrevisao.SelectedValue != null))
            {
                HabilitaDatasPrevisao();
            }
        }

        private void txtDataFechamento_TextChanged(object sender, EventArgs e)
        {
            if (Fechamento == true)
            {
                string Data = FecharCaixa(((DataRowView)this.bindingSource.Current).Row["ID"].ToString());

                if (Data == "")
                {
                    MessageBox.Show("Não foi possível prever o descarte dessa caixa, favor comunique ao mssistemas.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Error);

                    txtDataPrevisao.Clear();
                }
                else
                {
                    cbbDescartePrevisao.SelectedValue = (bool)(txtDataFechamento.MaskCompleted);

                    txtDataPrevisao.Text = Data;
                }
            }
        }

        private void dtgrdDocumentos_CellEnter(object sender, DataGridViewCellEventArgs e)
        {
            //if (bindingSource1.Count > 0)
            //{
            //    AtualizaGridsMovimentacoes();
            //}
        }

        private int LocalizaCaixaPorProcesso(string Processo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "SELECT TOP 1 FK_Controle_Caixa                      " +
                           "  FROM Controle_Caixas_Documentos                   " +
                           "       INNER JOIN Processos P ON P.ID = FK_Processo " +
                           " WHERE P.Codigo = @Processo                         ";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", Processo);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        reader.Read();

                        if (reader.HasRows)
                        {
                            return (int)reader["FK_Controle_Caixa"];
                        }
                        else
                        {
                            return 0;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);

                return 0;
            }
        }

        private bool JaExisteCaixaComNumeroRecall(string NumeroRecall, string ID_Caixa)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "SELECT TOP 1 Numero_Recall            " +
                           "  FROM Controle_Caixas                " +
                           " WHERE Numero_Recall = @Numero_Recall ";

            if (statusCadastro != StatusCadastro.Novo)
            {
                query = query + " AND ID <> @ID ";
            }

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Numero_Recall", NumeroRecall);

                    if (statusCadastro != StatusCadastro.Novo)
                    {
                        cmd.Parameters.AddWithValue("@ID", ID_Caixa);
                    }

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        reader.Read();

                        if (reader.HasRows)
                        {
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

        private void btnFechamentoCaixa_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Confirma o fechamento da caixa ?", "Atenção", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                Fechamento = true;

                if (bindingSource1.Count > 0)
                {
                    txtDataFechamento.Text = DateTime.Now.ToString("dd/MM/yyyy");

                    btnFechamentoCaixa.Enabled = ((!txtDataFechamento.MaskCompleted));
                }
                else
                {
                    MessageBox.Show("Não existem processos vinculados a caixa.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }

            Fechamento = false;
        }


        private string FecharCaixa(string ID_Caixa)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "SELECT MAX(P.DT_DESEMBARACO) AS DT_DESEMBARACO, CAST('01/'+MAX(CCD.Mes_Ano) AS datetime) AS MES_ANO " +
                           "  FROM Controle_Caixas_Documentos CCD                                                               " +
                           "       LEFT JOIN Processos P ON CCD.FK_Processo = P.ID                                              " +
                           " WHERE CCD.FK_Controle_Caixa = @FK_Controle_Caixa                                                   ";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_Controle_Caixa", ID_Caixa);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        reader.Read();

                        if (reader.HasRows)
                        {
                            if (reader["DT_DESEMBARACO"].ToString() != "")
                            {
                                return (((DateTime)reader["DT_DESEMBARACO"]).AddMonths(66)).ToString("dd/MM/yyyy");
                            }
                            else
                            {
                                return (((DateTime)reader["MES_ANO"]).AddMonths(66)).ToString("dd/MM/yyyy");
                            }


                        }
                        else
                        {
                            return "";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);

                return DateTime.Now.ToString("dd/MM/yyyy");
            }
        }

        private void btnTransferirPasta_Click(object sender, EventArgs e)
        {
            pnlTransferenciaCaixa.Visible = true;

            txtCaixaMS.Focus();
        }

        private void VerificaComponentes()
        {
            gpbRecall.Visible = (mcbbLocalizacao.SelectedIndex == 3);
            txtDataArquivamento.Enabled = (mcbbLocalizacao.SelectedIndex != 3);
            btnFechamentoCaixa.Visible = (mcbbLocalizacao.SelectedIndex == 3);
            grpDescarte.Visible = (mcbbLocalizacao.SelectedIndex == 3);
            btnTransferirPasta.Visible = (mcbbLocalizacao.SelectedIndex == 3);
        }

        private void btnOKVolume_Click(object sender, EventArgs e)
        {
            if (!CaixaHabilitadaParaTransferencia(txtCaixaMS.Text))
            {
                MessageBox.Show("Caixa não encontrada ou não habilitada para transferência.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (MessageBox.Show("Confirma a transferência dos Documentos/Pastas da Caixa " + txtCaixaMS.Text + " para a Caixa atual ?", "Transferência de Caixa", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    TransferindoDocumentosOuPastasdaCaixaAntigaParaCaixaAtual(txtCaixaMS.Text);

                    LancandoFollowArquivadoParaPastasTransferidas(txtCaixa.Text);

                    AtualizaGridsDocumentos();

                    TransferindoMovimentacoesDocumentosOuPastasdaCaixaAntigaParaCaixaAtual(txtCaixaMS.Text);

                    txtCaixaMS.Clear();

                    pnlTransferenciaCaixa.Visible = false;

                    MessageBox.Show("Transferência de Caixa realizada com sucesso.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);

                    return;
                }
            }
        }

        private void btnFecharVolume_Click(object sender, EventArgs e)
        {
            txtCaixaMS.Clear();

            pnlTransferenciaCaixa.Visible = false;
        }

        private bool CaixaHabilitadaParaTransferencia(string Caixa)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "SELECT TOP 1 ID                       " +
                           "  FROM Controle_Caixas                " +
                           " WHERE Localizacao <> 3 AND ID = @ID  ";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@ID", Caixa);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        reader.Read();

                        if (reader.HasRows)
                        {
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

                return false;
            }
        }

        private void TransferindoDocumentosOuPastasdaCaixaAntigaParaCaixaAtual(string Caixa)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = "UPDATE Controle_Caixas_Documentos SET FK_Controle_Caixa = @CaixaAtual WHERE FK_Controle_Caixa = @CaixaAntiga ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@CaixaAntiga", Caixa);
                    cmd.Parameters.AddWithValue("@CaixaAtual", txtCaixa.Text);
                    cmd.ExecuteNonQuery();
                }

                LogSistemas.AddLogSistema(txtCaixa.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Caixa: {0} para a Caixa: {1}", txtCaixa.Text, txtCaixaMS.Text));
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void LancandoFollowArquivadoParaPastasTransferidas(string Caixa)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = "INSERT INTO Followup                                                                                                                  " +
                               "			(Processo,  FK_Processo,  Codevento,  Codobs,  Obs_especifica,  Data,  Hora, Duracao,  Usuario,  FK_Usuario, Ref_Follow)  " +
                               "     SELECT  P.Codigo,         P.ID,      '761',     '0', @Obs_especifica, @Data, @Hora,       0, @Usuario, @FK_Usuario,          0	  " +
                               "       FROM Controle_Caixas_Documentos                                                                                                " +
                               "            INNER JOIN Processos P ON FK_Processo = P.ID                                                                              " +
                               "      WHERE FK_Controle_Caixa = @CaixaAtual                                                                                           " +
                               "   ORDER BY P.Data                                                                                                                    ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@Obs_especifica", "Recall");
                    cmd.Parameters.AddWithValue("@Data", DateTime.Now.Date);
                    cmd.Parameters.AddWithValue("@Hora", DateTime.Now.ToString("HH:mm"));
                    cmd.Parameters.AddWithValue("@Usuario", FrmPrincipal.UsuarioLogado);
                    cmd.Parameters.AddWithValue("@FK_Usuario", FrmPrincipal.PK_UsuarioLogado);
                    cmd.Parameters.AddWithValue("@CaixaAtual", Caixa);

                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void TransferindoMovimentacoesDocumentosOuPastasdaCaixaAntigaParaCaixaAtual(string Caixa)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = "UPDATE Controle_Caixas_Movimentacoes SET FK_Controle_Caixa = @CaixaAtual WHERE FK_Controle_Caixa = @CaixaAntiga ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@CaixaAntiga", Caixa);
                    cmd.Parameters.AddWithValue("@CaixaAtual", txtCaixa.Text);
                    cmd.ExecuteNonQuery();
                }

                AtualizaGridsMovimentacoes();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getItensPesquisar()
        {
            Dictionary<int, string> itensPesquisar = new Dictionary<int, string>();

            itensPesquisar.Add(0, "Processo");
            itensPesquisar.Add(1, "Nº Caixa");
            itensPesquisar.Add(2, "Nº Recall");

            cbbPesquisarPor.DisplayMember = "Value";
            cbbPesquisarPor.ValueMember = "Key";
            cbbPesquisarPor.DataSource = new BindingSource(itensPesquisar, null);

            txtPesquisa.Visible = false;
            txtPesquisaCaixa.Visible = false;
        }

        private void LancaFollowArquivado()
        {
            if ((mcbbLocalizacao.SelectedValue.ToString() == "1"))
            {
                FollowUp.IncluirFollowResumido(txtRefMs.Text, Pk_Processo, "761", "0", "MS Logística", "");

                EnviaPastaParaUsuarioArquivo();

                insertMovimentacaoPasta();
            }

            if ((mcbbLocalizacao.SelectedValue.ToString() == "2"))
            {
                FollowUp.IncluirFollowResumido(txtRefMs.Text, Pk_Processo, "761", "0", "Teófilo Otoni", "");
            }

            if ((mcbbLocalizacao.SelectedValue.ToString() == "3"))
            {
                FollowUp.IncluirFollowResumido(txtRefMs.Text, Pk_Processo, "761", "0", "Recall", "");
            }
        }

        private void EnviaPastaParaUsuarioArquivo()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "UPDATE Controle_Pastas SET Usuario = @Usuario, Fk_Usuario = @Fk_Usuario, Data = @Data, Aceite = 1 WHERE Processo = @Processo ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Usuario", "ARQUIVO");
                cmd.Parameters.AddWithValue("@Fk_Usuario", 28);
                cmd.Parameters.AddWithValue("@Processo", txtRefMs.Text);
                cmd.Parameters.AddWithValue("@Data", DateTime.Now);
                cmd.ExecuteNonQuery();
            }
        }

        private void insertMovimentacaoPasta()
        {
            string query = "INSERT INTO Movimentacao_pastas " +
                           "(Processo,De_usuario,Para_usuario,Data,Hora) " +
                           "VALUES " +
                           "(@Processo,@De_usuario,@Para_usuario,@Data,@Hora) ";

            using (var conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtRefMs.Text);
                    cmd.Parameters.AddWithValue("@De_usuario", FrmPrincipal.UsuarioLogado);
                    cmd.Parameters.AddWithValue("@Para_usuario", "ARQUIVO");
                    cmd.Parameters.AddWithValue("@Data", DateTime.Now);
                    cmd.Parameters.AddWithValue("@Hora", DateTime.Now);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        private void cbbPesquisarPor_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtPesquisaMS.Visible = (((int)cbbPesquisarPor.SelectedValue == 0));
            txtPesquisa.Visible = (((int)cbbPesquisarPor.SelectedValue == 1) || ((int)cbbPesquisarPor.SelectedValue == 2));

            if (txtPesquisaMS.Visible == true)
            {
                txtPesquisa.Clear();

                txtPesquisaMS.Focus();
            }
            else
            {
                txtPesquisaMS.Clear();

                txtPesquisa.Focus();
            }
        }

        private void txtPesquisaMS_TextChanged(object sender, EventArgs e)
        {
            if (!txtPesquisaMS.MaskCompleted)
            {
                bindingSource.RemoveFilter();
            }
            else
            {
                bindingSource.Filter = "ID = '" + LocalizaCaixaPorProcesso(txtPesquisaMS.Text).ToString() + "' ";
            }
        }

        private void txtPesquisa_TextChanged_1(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtPesquisa.Text.Trim()))
            {
                bindingSource.RemoveFilter();
            }
            else
            {
                if ((int)cbbPesquisarPor.SelectedValue == 1)
                {
                    bindingSource.Filter = "ID = " + txtPesquisa.Text.ToString();
                }
                else
                {
                    bindingSource.Filter = "Numero_Recall LIKE '" + txtPesquisa.Text.ToString() + "%'";
                }


            }
        }
    }
}
