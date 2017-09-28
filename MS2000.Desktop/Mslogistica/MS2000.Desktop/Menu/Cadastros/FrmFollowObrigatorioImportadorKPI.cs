using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Cadastros
{
    public partial class FrmFollowObrigatorioImportadorKPI : MS2000.Desktop.Componentes.MSForm01
    {
        public string CodigoImportador { get; set; }
        protected StatusCadastro statusCadastro;

        bool _canInclui;
        bool _canEdita;
        bool _canExclui;
        bool _canImportarParametros;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled    = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None) && (_canExclui);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None) && (_canInclui);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None) && (_canEdita);
            btnCancelar.Enabled  = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            groupBox1.Enabled    = (statusCadastro == StatusCadastro.None);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
            btnImportar.Enabled = (statusCadastro == StatusCadastro.None) && (_canImportarParametros);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmFollowObrigatorioImportadorKPI()
        {
            InitializeComponent();

            _canInclui = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Cadastros - Importadores - KPI Obrigatório - Inclui",
                Chave_Busca = "btnNovoImportadoresKPIObrig"
            });

            _canEdita = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Cadastros - Importadores - KPI Obrigatório - Edita",
                Chave_Busca = "btnEditarImportadoresKPIObrig"
            });

            _canExclui = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Cadastros - Importadores - KPI Obrigatório - Exclui",
                Chave_Busca = "btnExcluirImportadoresKPIObrig"
            });

            _canImportarParametros = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Cadastros - Importadores - KPI Obrigatório - Importa Parâmetros",
                Chave_Busca = "btnImportarParamImportadoresKPIObrig"
            });
        }


        private void FrmFollowObrigatorioIMportadorKPI_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;
            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);
            dataGridView.AutoGenerateColumns = false;
            //getEventos();

            mcbbEventos.DataSource = getEventos(); 
            mcbbEventos.DisplayMember = "Descricao";
            mcbbEventos.ValueMember = "Codigo";
            mcbbEventos.SelectedValue = -1;

            mcbbEventosPreReq.DataSource = getEventos(); 
            mcbbEventosPreReq.DisplayMember = "Descricao";
            mcbbEventosPreReq.ValueMember = "Codigo";
            mcbbEventosPreReq.SelectedValue = -1;

            bindingSource.DataSource = getFollowObrigatorios(CodigoImportador);

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            mcbbEventos.DataBindings.Add(new Binding("SelectedValue", bindingSource, "ECodigo"));
            mcbbObs.DataBindings.Add(new Binding("SelectedValue", bindingSource, "OCodigo"));

            mcbbEventosPreReq.DataBindings.Add(new Binding("SelectedValue", bindingSource, "FK_Evento_Pre_Requisito"));
            mcbbObsPreReq.DataBindings.Add(new Binding("SelectedValue", bindingSource, "FK_Obs_Evento_Pre_Requisito"));
            txtCodigoEventoPreReq.DataBindings.Add(new Binding("Text", bindingSource, "FK_Evento_Pre_Requisito"));
            txtNotas.DataBindings.Add(new Binding("Text", bindingSource, "Nota"));
            txtOrdem.DataBindings.Add(new Binding("Text", bindingSource, "Ordem"));
        }

        private DataTable getEventos()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Codigo, Descricao from Eventos where Ativo = 1";
            DataTable table = null;
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
                //mcbbEventos.DataSource = table;
                //mcbbEventos.DisplayMember = "Descricao";
                //mcbbEventos.ValueMember = "Codigo";
                //mcbbEventos.SelectedValue = -1;
                //
                //mcbbEventosPreReq.DataSource = table;
                //mcbbEventosPreReq.DisplayMember = "Descricao";
                //mcbbEventosPreReq.ValueMember = "Codigo";
                //mcbbEventosPreReq.SelectedValue = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            return table;
        }

        private DataTable getObs_Eventos(string evento)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Codigo, Descricao from Obs_Eventos where Ativo = 1 and Evento='" + evento + "'";
            DataTable table = null;
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
               
                //mcbbObs.DataSource = null;
                //mcbbObs.DataSource = table;
                //mcbbObs.DisplayMember = "Descricao";
                //mcbbObs.ValueMember = "Codigo";
                //mcbbObs.SelectedValue = -1;
                ////
                //mcbbObsPreReq.DataSource = null;
                //mcbbObsPreReq.DataSource = table;
                //mcbbObsPreReq.DisplayMember = "Descricao";
                //mcbbObsPreReq.ValueMember = "Codigo";
                //mcbbObsPreReq.SelectedValue = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            return table;
        }

        private void getTiposDoFollow(int fk_follow_obrigatorio)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select TF.ID, T.Codigo, T.Descricao " +
                           "from Tipos_Processos_Follow_Obrigatorio_Importador_KPI TF " +
                           "inner join Tipos_de_Processos T ON T.Codigo = TF.FK_Tipo_Processo " +
                           "where T.Ativo = 1 and TF.FK_Follow_Obrigatorio_Importador_KPI = @fk_follow_obrigatorio " +
                           "order by T.Descricao";
            DataTable table;
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@fk_follow_obrigatorio", fk_follow_obrigatorio);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                ltbDestino.DataSource = table;
                ltbDestino.DisplayMember = "Descricao";
                ltbDestino.ValueMember = "ID";

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getTiposProcessos(int fk_follow_obrigatorio)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select T.Codigo, T.Descricao " +
                           "from Tipos_de_Processos T " +
                           "where Not Exists(select * from Tipos_Processos_Follow_Obrigatorio_Importador_KPI TF where T.CODIGO = TF.FK_Tipo_Processo and TF.FK_Follow_Obrigatorio_Importador_KPI = @fk_follow_obrigatorio) and T.Ativo = 1 " +
                           "order by T.Descricao";
            DataTable table;
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@fk_follow_obrigatorio", fk_follow_obrigatorio);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                ltbOrigem.DataSource = table;
                ltbOrigem.DisplayMember = "Descricao";
                ltbOrigem.ValueMember = "Codigo";

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private DataTable getFollowObrigatorios(string importador)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select F.ID, E.Codigo as ECodigo, E.Descricao as Evento, O.Codigo as OCodigo, O.Descricao as Observacao, F.Grupo, F.FK_Evento_Pre_Requisito, F.FK_Obs_Evento_Pre_Requisito, F.Nota, F.Ordem " +
                           "from Follow_Obrigatorio_Importador_KPI F " +
                           "inner join Eventos E ON E.codigo = F.FK_Evento " +
                           "left join Obs_Eventos O ON O.codigo = F.FK_Obs_Evento and O.Evento = F.FK_Evento  " +
                           "where FK_Importador = @FK_Importador";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@FK_Importador", importador);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            mcbbEventos.SelectedValue = -1;
            mcbbObs.SelectedValue = -1;
            mcbbEventosPreReq.SelectedValue = -1;
            mcbbObsPreReq.SelectedValue = -1;
            txtCodigoEvento.Clear();
            txtCodigoObs.Clear();
            txtCodigoEventoPreReq.Clear();
            txtCodigoObsPreReq.Clear();            
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void mcbbEventos_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (mcbbEventos.SelectedValue == null)
                return;
            if (mcbbEventos.SelectedValue is DataRowView)
                return;

            mcbbObs.DataSource = null;
            mcbbObs.DataSource = getObs_Eventos(mcbbEventos.SelectedValue.ToString()); ;
            mcbbObs.DisplayMember = "Descricao";
            mcbbObs.ValueMember = "Codigo";
            mcbbObs.SelectedValue = -1;   

            txtCodigoEvento.Text = mcbbEventos.SelectedValue.ToString();
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(mcbbEventos.Text) || mcbbEventos.SelectedValue == null)
            {
                MessageBox.Show("O Evento é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mcbbEventos.Focus();
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    string query = "update Follow_Obrigatorio_Importador_KPI set FK_Importador = @FK_Importador,FK_Evento=@FK_Evento,FK_Obs_Evento=@FK_Obs_Evento, FK_Evento_Pre_Requisito=@FK_Evento_Pre_Requisito, FK_Obs_Evento_Pre_Requisito=@FK_Obs_Evento_Pre_Requisito, Nota=@Nota, Ordem=@Ordem where ID = @ID";

                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@FK_Importador", CodigoImportador);
                            cmd.Parameters.AddWithValue("@FK_Evento", mcbbEventos.SelectedValue.ToString());
                            cmd.Parameters.AddWithValue("@FK_Obs_Evento", (mcbbObs.SelectedValue == null) ? 0 : (object)mcbbObs.SelectedValue);
                            cmd.Parameters.AddWithValue("@FK_Evento_Pre_Requisito", (mcbbEventosPreReq.SelectedValue == null) ? DBNull.Value : (object)mcbbEventosPreReq.SelectedValue);
                            cmd.Parameters.AddWithValue("@FK_Obs_Evento_Pre_Requisito", (mcbbObsPreReq.SelectedValue == null) ? DBNull.Value : (object)mcbbObsPreReq.SelectedValue);
                            cmd.Parameters.AddWithValue("@Nota",  string.IsNullOrEmpty(txtNotas.Text) ? DBNull.Value : (object)txtNotas.Text);
                            cmd.Parameters.AddWithValue("@Ordem", string.IsNullOrEmpty(txtOrdem.Text) ? 0 : (object)txtOrdem.Text);

                            cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("ID").Current);
                            cmd.ExecuteNonQuery();
                        }
                    }

                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Importador:{0}, Evento:{1}-{2}", CodigoImportador, mcbbEventos.SelectedValue.ToString(), mcbbEventos.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query = "insert into Follow_Obrigatorio_Importador_KPI(FK_Importador, FK_Evento, FK_Obs_Evento,FK_Evento_Pre_Requisito,FK_Obs_Evento_Pre_Requisito,Nota,Ordem) values(@FK_Importador, @FK_Evento, @FK_Obs_Evento,@FK_Evento_Pre_Requisito,@FK_Obs_Evento_Pre_Requisito,@Nota,@Ordem)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@FK_Importador", CodigoImportador);
                        cmd.Parameters.AddWithValue("@FK_Evento", mcbbEventos.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@FK_Obs_Evento", (mcbbObs.SelectedValue == null) ? 0 : (object)mcbbObs.SelectedValue);
                        cmd.Parameters.AddWithValue("@FK_Evento_Pre_Requisito", (mcbbEventosPreReq.SelectedValue == null) ? DBNull.Value : (object)mcbbEventosPreReq.SelectedValue);
                        cmd.Parameters.AddWithValue("@FK_Obs_Evento_Pre_Requisito", (mcbbObsPreReq.SelectedValue == null) ? DBNull.Value : (object)mcbbObsPreReq.SelectedValue);
                        cmd.Parameters.AddWithValue("@Nota", string.IsNullOrEmpty(txtNotas.Text) ? DBNull.Value : (object)txtNotas.Text);
                        cmd.Parameters.AddWithValue("@Ordem", string.IsNullOrEmpty(txtOrdem.Text) ? 0 : (object)txtOrdem.Text);
                        cmd.ExecuteNonQuery();
                    }
                    
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Importador:{0}, Evento:{1}-{2}", CodigoImportador, mcbbEventos.SelectedValue.ToString(), mcbbEventos.Text));
                }

                if (statusCadastro == StatusCadastro.Editar)
                {
                    MessageBox.Show("Registro alterado com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }

                bindingSource.DataSource = getFollowObrigatorios(CodigoImportador);
                statusCadastro = StatusCadastro.None;
                HabilitarDesabilitaControles(false);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "delete from Follow_Obrigatorio_Importador_KPI where ID = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("ID").Current);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(mcbbEventos.SelectedValue.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Evento: {0}", mcbbEventos.Text));
                    bindingSource.RemoveCurrent();
                    statusCadastro = StatusCadastro.None;
                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void bindingSource_BindingComplete(object sender, BindingCompleteEventArgs e)
        {

        }

        private void dataGridView_DataBindingComplete(object sender, DataGridViewBindingCompleteEventArgs e)
        {
            if (bindingSource.Current != null)
            {
                getTiposDoFollow(Convert.ToInt32(bindingSource.GetRelatedCurrencyManager("ID").Current));
                getTiposProcessos(Convert.ToInt32(bindingSource.GetRelatedCurrencyManager("ID").Current));
            }
        }

        private void btnIncluiTipo_Click(object sender, EventArgs e)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            //string query = "insert into Tipos_Processos_Follow_Obrigatorio_Importador_KPI (FK_Follow_Obrigatorio_Importador_KPI, FK_Tipo_Processo)values(@FK_Follow_Obrigatorio_Importador_KPI, @FK_Tipo_Processo)";
            //using (SqlCommand cmd = new SqlCommand(query, conn))
            //{
            //    cmd.Parameters.AddWithValue("@FK_Follow_Obrigatorio_Importador_KPI", Convert.ToInt32(bindingSource.GetRelatedCurrencyManager("ID").Current));
            //    cmd.Parameters.AddWithValue("@FK_Tipo_Processo", ltbOrigem.SelectedValue.ToString());
            //    cmd.ExecuteNonQuery();
            //}
            foreach (DataRowView i in ltbOrigem.SelectedItems)
            {
                string query = "insert into Tipos_Processos_Follow_Obrigatorio_Importador_KPI (FK_Follow_Obrigatorio_Importador_KPI, FK_Tipo_Processo)values(@FK_Follow_Obrigatorio_Importador_KPI, @FK_Tipo_Processo)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Tipo Incluído: {0}", ltbOrigem.Text));
                    cmd.Parameters.AddWithValue("@FK_Follow_Obrigatorio_Importador_KPI", Convert.ToInt32(bindingSource.GetRelatedCurrencyManager("ID").Current));
                    cmd.Parameters.AddWithValue("@FK_Tipo_Processo", i.Row.ItemArray[0].ToString());
                    cmd.ExecuteNonQuery();                    
                }
            }
            dataGridView_DataBindingComplete(null, null);
        }

        private void btnExcluiTipo_Click(object sender, EventArgs e)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "Delete from Tipos_Processos_Follow_Obrigatorio_Importador_KPI where ID = @ID";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Tipo Excluido: {0}", ltbDestino.Text));
                cmd.Parameters.AddWithValue("@ID", Convert.ToInt32(ltbDestino.SelectedValue));
                cmd.ExecuteNonQuery();               
            }
            dataGridView_DataBindingComplete(null, null);
        }

        private void bindingSource_PositionChanged(object sender, EventArgs e)
        {
            dataGridView_DataBindingComplete(null, null);
        }

        private void txtCodigoEvento_TextChanged(object sender, EventArgs e)
        {
            mcbbEventos.SelectedValue = ((TextBox)sender).Text;
            txtCodigoObs.Clear();
        }

        private void txtCodigoObs_TextChanged(object sender, EventArgs e)
        {
            if (((TextBox)sender).Text == "System.Data.DataRowView")
                return;
            mcbbObs.SelectedValue = ((TextBox)sender).Text;
        }

        private void mcbbObs_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (mcbbObs.SelectedValue == null)
                return;
            txtCodigoObs.Text = mcbbObs.SelectedValue.ToString();
        }

        private void btnAgrupar_Click(object sender, EventArgs e)
        {
            List<int> ids_grupos = new List<int>();
            foreach (DataGridViewRow r in dataGridView.SelectedRows)
            {
                ids_grupos.Add((int)r.Cells[0].Value);
            }

            if (ids_grupos.Count > 1)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Follow_Obrigatorio_Importador_KPI set Grupo = (select COALESCE(MAX(CONVERT(float, Grupo)),0)+1 from Follow_Obrigatorio_Importador_KPI) " +
                                    "where ID IN  ('" + String.Join("','", ids_grupos.ToArray()) + "')";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                dataGridView_DataBindingComplete(null, null);
                bindingSource.DataSource = getFollowObrigatorios(CodigoImportador);
                MessageBox.Show("Registros agrupados com sucesso!", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                MessageBox.Show("É necessário selecionar no mínimo 2 registro para realizar o agrupamento.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void btnDesagrupar_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(ntxtGrupo.Text))
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Follow_Obrigatorio_Importador_KPI set Grupo = NULL " +
                                    "where Grupo = @Grupo ";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Grupo", Convert.ToInt32(ntxtGrupo.Text));
                        cmd.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                
                dataGridView_DataBindingComplete(null, null);
                bindingSource.DataSource = getFollowObrigatorios(CodigoImportador);
                MessageBox.Show("Registros desagrupados com sucesso!", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                MessageBox.Show("Específique o grupo para desagrupar.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void tabFormulario_Click(object sender, EventArgs e)
        {

        }

        private void mcbbEventosPreReq_SelectedIndexChanged(object sender, EventArgs e)
        {            
            if (mcbbEventosPreReq.SelectedValue == null)                            
                return;            
            if (mcbbEventosPreReq.SelectedValue is DataRowView)
                return;          

            ////
            mcbbObsPreReq.DataSource = null;
            mcbbObsPreReq.DataSource = getObs_Eventos(mcbbEventosPreReq.SelectedValue.ToString());
            mcbbObsPreReq.DisplayMember = "Descricao";
            mcbbObsPreReq.ValueMember = "Codigo";
            mcbbObsPreReq.SelectedValue = -1;

            txtCodigoEventoPreReq.Text = mcbbEventosPreReq.SelectedValue.ToString();
        }

        private void txtCodigoEventoPreReq_TextChanged(object sender, EventArgs e)
        {
            mcbbEventosPreReq.SelectedValue = ((TextBox)sender).Text;
            txtCodigoObsPreReq.Clear();
        }

        private void txtCodigoObsPreReq_TextChanged(object sender, EventArgs e)
        {
            if (((TextBox)sender).Text == "System.Data.DataRowView")
                return;
            mcbbObsPreReq.SelectedValue = ((TextBox)sender).Text;
        }

        private void mcbbObsPreReq_SelectedIndexChanged(object sender, EventArgs e)
        {            
            if (mcbbObsPreReq.SelectedValue == null)
                return;
            txtCodigoObsPreReq.Text = mcbbObsPreReq.SelectedValue.ToString();
        }

        private void getImportarParametrosOrigem()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "  SELECT Codigo, Razao_Social       " +
                           "    FROM Importadores               " +
                           "   WHERE Codigo = @ImportadorOrigem " +
                           "ORDER BY Razao_Social               ";

            DataTable table;

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@ImportadorOrigem", CodigoImportador);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }

                ccbImportadorParametrosOrigem.DataSource    = null;
                ccbImportadorParametrosOrigem.DataSource    = table;
                ccbImportadorParametrosOrigem.DisplayMember = "Razao_Social";
                ccbImportadorParametrosOrigem.ValueMember   = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getImportarParametrosDestino()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "  SELECT Codigo, Razao_Social                                               " +
                           "    FROM Importadores                                                       " +
                           "   WHERE Ativo = 1 AND Codigo NOT LIKE 'X%' AND Codigo <> @ImportadorOrigem " +
                           "ORDER BY Razao_Social                                                       ";

            DataTable table;

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@ImportadorOrigem", CodigoImportador);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }

                ccbImportadorParametrosDestino.DataSource    = null;
                ccbImportadorParametrosDestino.DataSource    = table;
                ccbImportadorParametrosDestino.DisplayMember = "Razao_Social";
                ccbImportadorParametrosDestino.ValueMember   = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnImportar_Click(object sender, EventArgs e)
        {
            bindingNavigator.Enabled = false;            

            getImportarParametrosOrigem();
            getImportarParametrosDestino();

            pnlExportarParametros.Visible = true;
        }

        private void btnPnlCancelar_Click(object sender, EventArgs e)
        {
            pnlExportarParametros.Visible = false;

            bindingNavigator.Enabled = true;
        }

        private void btnPnlConfirmar_Click(object sender, EventArgs e)
        {
            if (ValidaImportacao() == false) return;

            if (MessageBox.Show("Todos os parâmetros atuais do Importador de destino serão excluídos para inclusão dos novos. Confirma a exportação dos novos parâmetros ?", "Exportação de parâmetros", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    ExportarParametros();

                    pnlExportarParametros.Visible = false;

                    bindingNavigator.Enabled = true;                    
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }                        
        }

        private Boolean ValidaImportacao()
        {
            if (string.IsNullOrEmpty(ccbImportadorParametrosOrigem.Text.Trim()))
            {
                MessageBox.Show("Importador de origem obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                ccbImportadorParametrosOrigem.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(ccbImportadorParametrosDestino.Text.Trim()))
            {
                MessageBox.Show("Importador de destino obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                ccbImportadorParametrosDestino.Focus();
                return false;
            }

            return true;
        }

        private void ExportarParametros()
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = "DELETE Follow_Obrigatorio_Importador_KPI WHERE FK_Importador = @ImportadorDestino ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@ImportadorDestino", ccbImportadorParametrosDestino.SelectedValue);
                    cmd.ExecuteNonQuery();
                }

                query = "INSERT INTO Follow_Obrigatorio_Importador_KPI ( FK_Importador, FK_Evento, FK_Obs_Evento, Grupo, FK_Evento_Pre_Requisito, FK_Obs_Evento_Pre_Requisito, Nota, Ordem) " +
                        "								(SELECT @ImportadorDestino, FK_Evento, FK_Obs_Evento, Grupo, FK_Evento_Pre_Requisito, FK_Obs_Evento_Pre_Requisito, Nota, Ordem      " +
                        "								   FROM Follow_Obrigatorio_Importador_KPI                                                                                           " +
                        "							   	  WHERE FK_Importador = @ImportadorOrigem)                                                                                          ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@ImportadorOrigem",  CodigoImportador);
                    cmd.Parameters.AddWithValue("@ImportadorDestino", ccbImportadorParametrosDestino.SelectedValue);
                    cmd.ExecuteNonQuery();
                }

                query = "INSERT INTO Tipos_Processos_Follow_Obrigatorio_Importador_KPI ( FK_Follow_Obrigatorio_Importador_KPI, FK_Tipo_Processo )        " +
                        " (SELECT F2.ID, T1.FK_Tipo_Processo                                                                                             " +
                        "    FROM Tipos_Processos_Follow_Obrigatorio_Importador_KPI T1                                                                   " +
                        "         INNER JOIN Follow_Obrigatorio_Importador_KPI F1 ON F1.ID = T1.FK_Follow_Obrigatorio_Importador_KPI                     " +
                        "         INNER JOIN Follow_Obrigatorio_Importador_KPI F2 ON F1.FK_Evento = F2.FK_Evento AND ((F1.FK_Obs_Evento = F2.FK_Obs_Evento) OR (F1.FK_Obs_Evento IS NULL)) " +
                        "         LEFT JOIN Tipos_Processos_Follow_Obrigatorio_Importador_KPI T2 ON F2.ID = T2.FK_Follow_Obrigatorio_Importador_KPI      " +
                        "   WHERE F1.FK_Importador = @ImportadorOrigem AND F2.FK_Importador = @ImportadorDestino)                                         ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@ImportadorOrigem", CodigoImportador);
                    cmd.Parameters.AddWithValue("@ImportadorDestino", ccbImportadorParametrosDestino.SelectedValue);
                    cmd.ExecuteNonQuery();
                }

                LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.None, Convert.ToInt32(this.Tag), string.Format("Follows obrigatórios exportados do importador:{0}, para o Importador:{1}", CodigoImportador, ccbImportadorParametrosDestino.SelectedValue));
                statusCadastro = StatusCadastro.None;
                MessageBox.Show("Parâmetros exportados com sucesso.", "Inclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        
    }
}
