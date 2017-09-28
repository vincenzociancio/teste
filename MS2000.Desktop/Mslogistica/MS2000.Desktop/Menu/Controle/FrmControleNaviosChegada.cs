using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmControleNaviosChegada : MS2000.Desktop.Componentes.MSForm01
    {

        private int PK_NAVIO_CHEGADA;
        private bool _canInsertEditAndDelete;

        public FrmControleNaviosChegada()
        {
            InitializeComponent();
            _canInsertEditAndDelete = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Controles - Controle Chegada de Navios - Inclui, Edita e Exclui",
                Chave_Busca = "OperaçõesChegadaNavios"
            });
        }
        protected StatusCadastro statusCadastro;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None) && (_canInsertEditAndDelete);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None) && (_canInsertEditAndDelete);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None) && (_canInsertEditAndDelete);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            gvChegadaNavios.Enabled = statusCadastro == StatusCadastro.None;
            //gbDocumentos.Enabled = (statusCadastro == StatusCadastro.Novo);
            //gbStatus.Enabled = (statusCadastro == StatusCadastro.Novo);
            //gbParametrizacao.Enabled = (statusCadastro == StatusCadastro.Novo);

        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in gbChegadaNavios.Controls)
            {
                controle.Enabled = bValue;
            }
            if (statusCadastro == StatusCadastro.Novo || statusCadastro == StatusCadastro.Editar)
            {
                foreach (Control controle in gbPesquisa.Controls)
                {
                    controle.Enabled = false;
                }
            }
            else
            {
                foreach (Control controle in gbPesquisa.Controls)
                {
                    controle.Enabled = true;
                }
            }

            VerificaBotoes();
        }

        private DataTable PopulaChegadaNavios()
        {
            if (chkExibirNavios.Checked)
            {
                string queryChegadaNavios = "SELECT C.PK_NAVIO_CHEGADA, C.FK_NAVIO, N.NOME_NAVIO, C.FK_TERMINAL, " +
                                            "T.NOME_TERMINAL, C.STATUS, C.DT_EMBARQUE, C.DT_ETA, C.EXCLUIDO " +
                                            "FROM Controle_Navios_Chegada C " +
                                            "INNER JOIN Controle_Navios N ON C.FK_NAVIO = N.PK_NAVIO " +
                                            "INNER JOIN Controle_Navios_Terminal T ON C.FK_TERMINAL = T.PK_TERMINAL " +
                                            "WHERE C.EXCLUIDO = 0 " +
                                            "ORDER BY C.DT_ETA";

                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(queryChegadaNavios, conn))
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
            else
            {
                string queryChegadaNavios = "SELECT C.PK_NAVIO_CHEGADA, C.FK_NAVIO, N.NOME_NAVIO, C.FK_TERMINAL, " +
                                              "T.NOME_TERMINAL, C.STATUS, C.DT_EMBARQUE, C.DT_ETA, C.EXCLUIDO " +
                                              "FROM Controle_Navios_Chegada C " +
                                              "INNER JOIN Controle_Navios N ON C.FK_NAVIO = N.PK_NAVIO " +
                                              "INNER JOIN Controle_Navios_Terminal T ON C.FK_TERMINAL = T.PK_TERMINAL " +
                                              "WHERE (STATUS <> 'TRANSBORDO') And C.EXCLUIDO = 0 " +
                                              "And Not( DATEDIFF(day,cast(C.DT_ETA as date),cast(GETDATE() as date))+1 > 15 " +
                                              "And STATUS ='CHEGADA DO NAVIO') ORDER BY C.DT_ETA";

                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(queryChegadaNavios, conn))
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
        }

        private void PopulaComboNavios()
        {
            string queryNavios = "Select PK_Navio, NOME_NAVIO from Controle_Navios where Excluido = 0";

            DataTable table;
            try
            {
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(queryNavios, conn))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            table = new DataTable();
                            table.Load(reader);
                        }
                    }
                }
                mcbNavios.DataSource = null;
                mcbNavios.DataSource = table;
                mcbNavios.DisplayMember = "Nome_Navio";
                mcbNavios.ValueMember = "PK_Navio";
                mcbNavios.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }
        private void PopulaComboTerminais()
        {
            string queryTerminais = "Select PK_Terminal, NOME_Terminal from Controle_Navios_Terminal where Excluido = 0";

            DataTable table;
            try
            {
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(queryTerminais, conn))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            table = new DataTable();
                            table.Load(reader);
                        }
                    }
                }
                mcbTerminal.DataSource = null;
                mcbTerminal.DataSource = table;
                mcbTerminal.DisplayMember = "Nome_Terminal";
                mcbTerminal.ValueMember = "PK_Terminal";
                mcbTerminal.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }
        private void PopulaComboStatus()
        {
            try
            {
                var list = new List<Status>();

                list.Add(new Status { Descricao = "AGUARDANDO CHEGADA" });
                list.Add(new Status { Descricao = "CHEGADA DO NAVIO" });
                list.Add(new Status { Descricao = "TRANSBORDO" });

                mcbStatus.DataSource = null;
                mcbStatus.DataSource = list;
                mcbStatus.DisplayMember = "Descricao";
                mcbStatus.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }
        private void FrmControleNaviosChegada_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
            gvChegadaNavios.AutoGenerateColumns = false;
            PopulaComboStatus();
            PopulaComboTerminais();
            PopulaComboNavios();
            bsChegadaNavio.DataSource = PopulaChegadaNavios();
            bindingNavigator.BindingSource = bsChegadaNavio;
            mcbNavios.DataBindings.Add(new Binding("SelectedValue", bsChegadaNavio, "FK_Navio", true));
            mcbStatus.DataBindings.Add(new Binding("Text", bsChegadaNavio, "Status", true));
            mcbTerminal.DataBindings.Add(new Binding("SelectedValue", bsChegadaNavio, "FK_TERMINAL", true));
            dt_embarque.DataBindings.Add(new Binding("Text", bsChegadaNavio, "DT_EMBARQUE", true));
            dt_eta.DataBindings.Add(new Binding("Text", bsChegadaNavio, "DT_ETA", true));
        }

        private void txtPesquisar_TextChanged(object sender, EventArgs e)
        {
            bsChegadaNavio.Filter = "Nome_Navio like '%" + txtPesquisar.Text + "%'";
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(mcbNavios.Text))
            {
                MessageBox.Show("O campo Navios é obrigatório.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                mcbNavios.Focus();
                return;
            }
            if (string.IsNullOrEmpty(mcbTerminal.Text))
            {
                MessageBox.Show("O campo Terminal é obrigatório.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                mcbTerminal.Focus();
                return;
            }
            if (dt_embarque.Text != "  /  /" && dt_eta.Text != "  /  /")
            {
                if (DateTime.ParseExact(dt_eta.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture) < DateTime.ParseExact(dt_embarque.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture))
                {
                    MessageBox.Show("A Data Eta não pode ser menor que a Data de Embarque!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    dt_eta.Focus();
                    return;
                }
            }
            try
            {
                if (statusCadastro == StatusCadastro.Novo)
                {
                    GeraIDChegada();
                    string query = "INSERT INTO CONTROLE_NAVIOS_CHEGADA VALUES (@PK_NAVIO_CHEGADA,@FK_NAVIO,@FK_TERMINAL,@STATUS,@DT_EMBARQUE,@DT_ETA,@EXCLUIDO)";

                    using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@PK_NAVIO_CHEGADA", PK_NAVIO_CHEGADA);
                            cmd.Parameters.AddWithValue("@FK_NAVIO", mcbNavios.SelectedValue);
                            cmd.Parameters.AddWithValue("@FK_TERMINAL", mcbTerminal.SelectedValue);
                            cmd.Parameters.AddWithValue("@STATUS", mcbStatus.Text);
                            cmd.Parameters.AddWithValue("@DT_EMBARQUE", !dt_embarque.MaskCompleted ? DBNull.Value : (object)dt_embarque.Text);
                            cmd.Parameters.AddWithValue("@DT_ETA", !dt_eta.MaskCompleted ? DBNull.Value : (object)dt_eta.Text);
                            cmd.Parameters.AddWithValue("@EXCLUIDO", 0);
                            cmd.ExecuteNonQuery();
                        }
                    }
                    LogSistemas.AddLogSistema(PK_NAVIO_CHEGADA.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Navio:{0} Terminal:{1}", mcbNavios.Text, mcbTerminal.Text));
                }
                else
                {
                    string query =
                       "UPDATE CONTROLE_NAVIOS_CHEGADA SET FK_NAVIO = @FK_NAVIO, FK_TERMINAL = @FK_TERMINAL, STATUS = @STATUS, " +
                       "DT_EMBARQUE = @DT_EMBARQUE, DT_ETA = @DT_ETA  WHERE PK_NAVIO_CHEGADA = @PK_NAVIO_CHEGADA";

                    using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@PK_NAVIO_CHEGADA", bsChegadaNavio.GetRelatedCurrencyManager("PK_NAVIO_CHEGADA").Current.ToString());
                            cmd.Parameters.AddWithValue("@FK_NAVIO", mcbNavios.SelectedValue);
                            cmd.Parameters.AddWithValue("@FK_TERMINAL", mcbTerminal.SelectedValue);
                            cmd.Parameters.AddWithValue("@STATUS", mcbStatus.Text);
                            cmd.Parameters.AddWithValue("@DT_EMBARQUE", !dt_embarque.MaskCompleted ? DBNull.Value : (object)dt_embarque.Text);
                            cmd.Parameters.AddWithValue("@DT_ETA", !dt_eta.MaskCompleted ? DBNull.Value : (object)dt_eta.Text);
                            //cmd.Parameters.AddWithValue("@EXCLUIDO", 0);
                            cmd.ExecuteNonQuery();
                        }
                    }
                    LogSistemas.AddLogSistema(bsChegadaNavio.GetRelatedCurrencyManager("PK_NAVIO_CHEGADA").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Navio:{0} Terminal:{1}", mcbNavios.Text, mcbTerminal.Text));
                }


                if (statusCadastro == StatusCadastro.Editar)
                {
                    MessageBox.Show("Registro alterado com sucesso.", "Editar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }

                statusCadastro = StatusCadastro.None;
                HabilitarDesabilitaControles(false);
                bsChegadaNavio.DataSource = PopulaChegadaNavios();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void GeraIDChegada()
        {

            string query = "SELECT MAX(PK_NAVIO_CHEGADA) as ID from Controle_Navios_Chegada";
            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                            PK_NAVIO_CHEGADA = Convert.ToInt32(reader["ID"].ToString()) + 1;
                    }
                }
            }

        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bsChegadaNavio.AddNew();
            mcbTerminal.SelectedIndex = -1;
            mcbStatus.SelectedIndex = -1;
            mcbNavios.SelectedIndex = -1;
            dt_embarque.Clear();
            dt_eta.Clear();
            txtPesquisar.Clear();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bsChegadaNavio.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
            gvChegadaNavios.DataSource = bsChegadaNavio;
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "delete from Controle_Navios_Chegada where PK_NAVIO_CHEGADA = @PK_NAVIO_CHEGADA";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@PK_NAVIO_CHEGADA", bsChegadaNavio.GetRelatedCurrencyManager("PK_NAVIO_CHEGADA").Current.ToString());
                        cmd.ExecuteNonQuery();
                    }

                    bsChegadaNavio.RemoveCurrent();
                    statusCadastro = StatusCadastro.None;
                    LogSistemas.AddLogSistema(bsChegadaNavio.GetRelatedCurrencyManager("PK_NAVIO_CHEGADA").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Navio: {0} Terminal: {1}", mcbNavios.Text, mcbTerminal.Text));
                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
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

        private void btnNavios_Click(object sender, EventArgs e)
        {
            var frmnavios = new FrmNavios();
            FrmPrincipal.ShowModalMdiChildren(frmnavios);
            PopulaComboNavios();
            bsChegadaNavio.DataSource = PopulaChegadaNavios();
        }

        private void btnTerminais_Click(object sender, EventArgs e)
        {
            var frmTerminais = new FrmTerminais();
            FrmPrincipal.ShowModalMdiChildren(frmTerminais);
            PopulaComboTerminais();
            bsChegadaNavio.DataSource = PopulaChegadaNavios();
        }

        private void chkExibirNavios_CheckedChanged(object sender, EventArgs e)
        {
            bsChegadaNavio.DataSource = PopulaChegadaNavios();
        }
    }
    struct Status
    {
        public string Descricao { get; set; }
    }
}
