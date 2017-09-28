using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.RH
{
    public partial class FrmControleHierarquicoCelula : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        private string _gerente_old;
        private string _coordenador_old;
        private string _supervisor_old;
        private string _colaborador_independente_old;

        private string _gerente_new;
        private string _coordenador_new;
        private string _supervisor_new;
        private string _colaborador_independente_new;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dgvCelulas.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }
            VerificaBotoes();
        }

        public FrmControleHierarquicoCelula()
        {
            InitializeComponent();
        }

        private void FrmControleHierarquicoCelula_Load(object sender, EventArgs e)
        {
            getAllGestores();
            preecherGrid();
        }

        private class Funcionario
        {
            public int Id { get; set; }
            public string Usuario { get; set; }
            public string NomeCompleto { get; set; }
        }

        private void preecherGrid()
        {
            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);

            dgvCelulas.AutoGenerateColumns = false;
            bindingSource.DataSource = getAllCelula();

            dgvCelulas.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtDescricaoCelula.DataBindings.Add(new Binding("Text", bindingSource, "Descricao", true));
            cbbColaboradorIndependente.DataBindings.Add(new Binding("SelectedValue", bindingSource, "FK_Colaborador_Independente"));
            cbbGerente.DataBindings.Add(new Binding("SelectedValue", bindingSource, "FK_Gerente"));
            cbbCoordenador.DataBindings.Add(new Binding("SelectedValue", bindingSource, "FK_Coordenador"));
            cbbSupervisor.DataBindings.Add(new Binding("SelectedValue", bindingSource, "FK_Supervisor"));
            ckbIndependente.DataBindings.Add(new Binding("Checked", bindingSource, "Tipo", true));
        }

        private void getAllGestores()
        {
            cbbGerente.DataSource = getGerente();
            cbbGerente.DisplayMember = "NomeCompleto";
            cbbGerente.ValueMember = "Usuario";

            cbbCoordenador.DataSource = getCoordenador();
            cbbCoordenador.DisplayMember = "NomeCompleto";
            cbbCoordenador.ValueMember = "Usuario";

            cbbSupervisor.DataSource = getSupervisor();
            cbbSupervisor.DisplayMember = "NomeCompleto";
            cbbSupervisor.ValueMember = "Usuario";

            cbbColaboradorIndependente.DataSource = getAllColaboradores();
            cbbColaboradorIndependente.DisplayMember = "NomeCompleto";
            cbbColaboradorIndependente.ValueMember = "Usuario";
        }

        private List<Funcionario> getGerente()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT U.Usuario, U.Nome_Completo FROM " +
                           "Controle_Hierarquico_Colaborador H " +
                           "INNER JOIN Usuarios U on U.Usuario = H.Colaborador " +
                           "WHERE ((U.ativo = 1) or (U.ferias = 1)) and H.Nivel = 0 ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    List<Funcionario> lista = new List<Funcionario>();
                    while (reader.Read())
                    {
                        lista.Add(new Funcionario
                        {
                            Usuario = reader["Usuario"].ToString(),
                            NomeCompleto = reader["Nome_Completo"].ToString()
                        });
                    }
                    return lista;
                }
            }
        }

        private List<Funcionario> getCoordenador()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT U.Usuario, U.Nome_Completo FROM " +
                           "Controle_Hierarquico_Colaborador H " +
                           "INNER JOIN Usuarios U on U.Usuario = H.Colaborador " +
                           "WHERE ((U.ativo = 1) or (U.ferias = 1)) and H.Nivel = 1 ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    List<Funcionario> lista = new List<Funcionario>();
                    while (reader.Read())
                    {
                        lista.Add(new Funcionario
                        {
                            Usuario = reader["Usuario"].ToString(),
                            NomeCompleto = reader["Nome_Completo"].ToString()
                        });
                    }
                    return lista;
                }
            }
        }

        private List<Funcionario> getSupervisor()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT U.Usuario, U.Nome_Completo FROM " +
                           "Controle_Hierarquico_Colaborador H " +
                           "INNER JOIN Usuarios U on U.Usuario = H.Colaborador " +
                           "WHERE ((U.ativo = 1) or (U.ferias = 1)) and H.Nivel = 2 ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    List<Funcionario> lista = new List<Funcionario>();
                    while (reader.Read())
                    {
                        lista.Add(new Funcionario
                        {
                            Usuario = reader["Usuario"].ToString(),
                            NomeCompleto = reader["Nome_Completo"].ToString()
                        });
                    }
                    return lista;
                }
            }
        }

        private List<Funcionario> getAllColaboradores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT PK_USUARIO, Usuario, Nome_Completo " +
                    "FROM Usuarios WHERE (Ativo = 1 or Ferias = 1) and Setor <> '' ORDER BY Nome_Completo ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    List<Funcionario> lista = new List<Funcionario>();
                    while (reader.Read())
                    {
                        lista.Add(new Funcionario
                        {
                            Id = (int)reader["PK_USUARIO"],
                            Usuario = reader["Usuario"].ToString(),
                            NomeCompleto = reader["Nome_Completo"].ToString()
                        });
                    }
                    return lista;
                }
            }
        }

        private class Celula
        {
            public int PK_Celula { get; set; }
            public string Descricao { get; set; }
            public string FK_Supervisor { get; set; }
            public string FK_Coordenador { get; set; }
            public string FK_Colaborador_Independente { get; set; }
            public string FK_Gerente { get; set; }
            public bool Tipo { get; set; }
        }

        private List<Celula> getAllCelula()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT * FROM Controle_Hierarquico_Celulas WHERE Excluido = 0";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    List<Celula> lista = new List<Celula>();
                    while (reader.Read())
                    {
                        lista.Add(new Celula
                        {
                            PK_Celula = (int)reader["PK_Celula"],
                            Descricao = reader["Descricao"].ToString(),
                            FK_Supervisor = reader["FK_Supervisor"].ToString(),
                            FK_Coordenador = reader["FK_Coordenador"].ToString(),
                            FK_Colaborador_Independente = reader["FK_Colaborador_Independente"].ToString(),
                            FK_Gerente = reader["FK_Gerente"].ToString(),
                            Tipo = (bool)reader["Tipo"]
                        });
                    }
                    return lista;
                }
            }
        }

        private void setNewAutorizador(string autorizadoNew, string autorizadorOld)
        {
            string query = "UPDATE Controle_Numerarios_Solicitacao " +
                           "SET Autorizador_Atual=@AutorizadoNew " +
                           "WHERE Status_Atual = 1 and Autorizador_Atual=@AutorizadorOld";
            using (var conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@AutorizadoNew", autorizadoNew);
                    cmd.Parameters.AddWithValue("@AutorizadorOld", autorizadorOld);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
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
            if (string.IsNullOrEmpty(txtDescricaoCelula.Text))
            {
                MessageBox.Show("A descriçção da célula é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricaoCelula.Focus();
                return;
            }

            if (ckbIndependente.Checked && cbbColaboradorIndependente.SelectedValue == null)
            {
                MessageBox.Show("Campo Colaborador Independente não pode ser vazio!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbColaboradorIndependente.Focus();
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    _gerente_new = cbbGerente.SelectedValue == null ? string.Empty : cbbGerente.SelectedValue.ToString();
                    _coordenador_new = cbbCoordenador.SelectedValue == null ? string.Empty : cbbCoordenador.SelectedValue.ToString();
                    _supervisor_new = cbbSupervisor.SelectedValue == null ? string.Empty : cbbSupervisor.SelectedValue.ToString();
                    _colaborador_independente_new = cbbColaboradorIndependente.SelectedValue == null ? string.Empty : cbbColaboradorIndependente.SelectedValue.ToString();


                    string query = "UPDATE Controle_Hierarquico_Celulas SET Descricao =@Descricao,FK_Supervisor=@FK_Supervisor, " +
                    "FK_Coordenador=@FK_Coordenador,FK_Colaborador_Independente=@FK_Colaborador_Independente,Tipo=@Tipo,FK_Gerente=@FK_Gerente " +
                    "WHERE PK_Celula=@PK_Celula";
                    int ID = (int)bindingSource.GetRelatedCurrencyManager("PK_Celula").Current;
                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Descricao", txtDescricaoCelula.Text);
                            cmd.Parameters.AddWithValue("@FK_Supervisor", (cbbSupervisor.SelectedValue == null ? (object)DBNull.Value : cbbSupervisor.SelectedValue));
                            cmd.Parameters.AddWithValue("@FK_Coordenador", (cbbCoordenador.SelectedValue == null ? (object)DBNull.Value : cbbCoordenador.SelectedValue));
                            cmd.Parameters.AddWithValue("@FK_Colaborador_Independente", (cbbColaboradorIndependente.SelectedValue == null ? (object)DBNull.Value : cbbColaboradorIndependente.SelectedValue));
                            cmd.Parameters.AddWithValue("@FK_Gerente", (cbbGerente.SelectedValue == null ? (object)DBNull.Value : cbbGerente.SelectedValue));
                            cmd.Parameters.AddWithValue("@Tipo", ckbIndependente.Checked);
                            cmd.Parameters.AddWithValue("@PK_Celula", ID);
                            cmd.ExecuteNonQuery();
                        }
                    }

                    if (!string.IsNullOrEmpty(_gerente_new) && _gerente_old != _gerente_new)
                    {
                        setNewAutorizador(_gerente_new, _gerente_old);
                    }

                    if (!string.IsNullOrEmpty(_coordenador_new) && _coordenador_old != _coordenador_new)
                    {
                        setNewAutorizador(_coordenador_new, _coordenador_old);
                    }

                    if (!string.IsNullOrEmpty(_supervisor_new) && _supervisor_old != _supervisor_new)
                    {
                        setNewAutorizador(_supervisor_new, _supervisor_old);
                    }

                    LogSistemas.AddLogSistema(ID.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Descricao:{0}", txtDescricaoCelula.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT into Controle_Hierarquico_Celulas " +
                                "(Descricao,FK_Supervisor,FK_Coordenador,FK_Colaborador_Independente,Tipo,FK_Gerente) " +
                                "VALUES(@Descricao,@FK_Supervisor,@FK_Coordenador,@FK_Colaborador_Independente,@Tipo,@FK_Gerente)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricaoCelula.Text);
                        cmd.Parameters.AddWithValue("@FK_Supervisor", (cbbSupervisor.SelectedValue == null ? (object)DBNull.Value : cbbSupervisor.SelectedValue));
                        cmd.Parameters.AddWithValue("@FK_Coordenador", (cbbCoordenador.SelectedValue == null ? (object)DBNull.Value : cbbCoordenador.SelectedValue));
                        cmd.Parameters.AddWithValue("@FK_Colaborador_Independente", (cbbColaboradorIndependente.SelectedValue == null ? (object)DBNull.Value : cbbColaboradorIndependente.SelectedValue));
                        cmd.Parameters.AddWithValue("@FK_Gerente", (cbbGerente.SelectedValue == null ? (object)DBNull.Value : cbbGerente.SelectedValue));
                        cmd.Parameters.AddWithValue("@Tipo", ckbIndependente.Checked);
                        cmd.ExecuteNonQuery();
                    }
                    bindingSource.DataSource = getAllCelula();
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Descricao:{0}", txtDescricaoCelula.Text));
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
            _gerente_old = cbbGerente.SelectedValue == null ? string.Empty : cbbGerente.SelectedValue.ToString();
            _coordenador_old = cbbCoordenador.SelectedValue == null ? string.Empty : cbbCoordenador.SelectedValue.ToString();
            _supervisor_old = cbbSupervisor.SelectedValue == null ? string.Empty : cbbSupervisor.SelectedValue.ToString();
            _colaborador_independente_old = cbbColaboradorIndependente.SelectedValue == null ? string.Empty : cbbColaboradorIndependente.SelectedValue.ToString();

            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;

            ckbIndependente_CheckedChanged(null,null);
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Controle_Hierarquico_Celulas set Excluido = 1 where PK_Celula =@id";
                    int ID = (int)bindingSource.GetRelatedCurrencyManager("PK_Celula").Current;
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@id", ID);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(ID.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Descricao: {0}", txtDescricaoCelula.Text));
                    bindingSource.RemoveCurrent();
                    //preecherGrid();
                    statusCadastro = StatusCadastro.None;
                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void cbbGerente_Leave(object sender, EventArgs e)
        {
            MessageBox.Show("O Gerente atual herdará todas as solicitações de autorização de numerários pendentes do Gerente anterior", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void cbbCoordenador_Leave(object sender, EventArgs e)
        {
            MessageBox.Show("O Coordenador atual herdará todas as solicitações de autorização de numerários pendentes do Coordenador anterior", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void cbbSupervisor_Leave(object sender, EventArgs e)
        {
            MessageBox.Show("O Supervisor atual herdará todas as solicitações de autorização de numerários pendentes do Supervisor anterior", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void btnClearGerente_Click(object sender, EventArgs e)
        {
            cbbGerente.SelectedIndex = -1;
        }

        private void btnClearCoordenador_Click(object sender, EventArgs e)
        {
            cbbCoordenador.SelectedIndex = -1;
        }

        private void btnClearSupervisor_Click(object sender, EventArgs e)
        {
            cbbSupervisor.SelectedIndex = -1;
        }

        private void btnClearIndependente_Click(object sender, EventArgs e)
        {
            cbbColaboradorIndependente.SelectedIndex = -1;
        }

        private void btnColaboradoresCelula_Click(object sender, EventArgs e)
        {
            //using (var colaboradorDaCelula = new FrmControleHierarquicoColaboradorDaCelula())
            //{
                var colaboradorDaCelula = new FrmControleHierarquicoColaboradorDaCelula();
                int ID = (int)bindingSource.GetRelatedCurrencyManager("PK_Celula").Current;
                colaboradorDaCelula.PK_Celula = ID;
                colaboradorDaCelula.MdiParent = (FrmPrincipal)this.ParentForm;
                colaboradorDaCelula.Show();
            //}
        }

        private void ckbIndependente_CheckedChanged(object sender, EventArgs e)
        {
            if (StatusCadastro.None != statusCadastro)
            {
                if (ckbIndependente.Checked)
                {
                    cbbColaboradorIndependente.Enabled = true;

                    cbbCoordenador.Enabled = false;
                    cbbGerente.Enabled = false;
                    cbbSupervisor.Enabled = false;

                    cbbCoordenador.SelectedIndex = -1;
                    cbbGerente.SelectedIndex = -1;
                    cbbSupervisor.SelectedIndex = -1;
                }
                else
                {
                    cbbColaboradorIndependente.Enabled = false;
                    cbbColaboradorIndependente.SelectedIndex = -1;
                    cbbCoordenador.Enabled = true;
                    cbbGerente.Enabled = true;
                    cbbSupervisor.Enabled = true;
                }
            }
        }
    }
}
