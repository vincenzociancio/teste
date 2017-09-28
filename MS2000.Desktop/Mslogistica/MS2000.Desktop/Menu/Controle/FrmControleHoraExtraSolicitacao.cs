using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmControleHoraExtraSolicitacao : MS2000.Desktop.Componentes.MSForm01
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
            txtNome.Enabled = false;
            cbbSetor.Enabled = (statusCadastro == StatusCadastro.Novo);
            txtData.Enabled = (statusCadastro == StatusCadastro.Novo);
            txtDuracao.Enabled = false;
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmControleHoraExtraSolicitacao()
        {
            InitializeComponent();
        }

        private DataTable getControleHE()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT ID,Usuario,Setor,Data_Solicitacao,Hora_Inicio,Hora_Final,Intervalo_Inicio,Intervalo_Final " +
                           ",Lanche,Suporte_TI,Suporte_Sistemas,Suporte_Financeiro,Tarefa_Executar,Tarefa_Plenamente_Parcialmente " +
                           ",Motivo,(select Nome_Completo from Usuarios where PK_USUARIO = Chefia) as Chefia,Autorizacao_Chefia,(select Nome_Completo from Usuarios where PK_USUARIO = Gerencia) as Gerencia, " +
                           "Autorizacao_Gerencia,(select Nome_Completo from Usuarios where PK_USUARIO = Diretor) as Diretor,Autorizacao_Diretor,NaoAutorizado " +
                           "FROM Controle_Hora_Extra WHERE Usuario = @Usuario";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Usuario", FrmPrincipal.PK_UsuarioLogado);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        //private void getUsuario()
        //{
        //    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
        //    string query = "select PK_USUARIO, Nome_Completo from Usuarios  where Ativo = '1' order  by Nome_Completo ";
        //    DataTable table;
        //    try
        //    {
        //        using (SqlCommand cmd = new SqlCommand(query, conn))
        //        {
        //            using (SqlDataReader reader = cmd.ExecuteReader())
        //            {
        //                table = new DataTable();
        //                table.Load(reader);
        //            }
        //        }
        //        cbbNome.SelectedIndex = -1;
        //        cbbNome.DataSource = table;
        //        cbbNome.DisplayMember = "Nome_Completo";
        //        cbbNome.ValueMember = "PK_USUARIO";
        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
        //    }
        //}

        private void getSetor()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select ID, descricao from Setores where Excluido = '0' order by descricao ";
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
                cbbSetor.SelectedIndex = -1;
                cbbSetor.DataSource = table;
                cbbSetor.DisplayMember = "descricao";
                cbbSetor.ValueMember = "ID";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void FrmControleHoraExtra_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;

            getSetor();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getControleHE();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtNome.Text = FrmPrincipal.UsuarioNomeCompleto;
            cbbSetor.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Setor"));
            txtData.DataBindings.Add(new Binding("Text", bindingSource, "Data_Solicitacao", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtHoraInicio.DataBindings.Add(new Binding("Text", bindingSource, "Hora_Inicio", true));
            txtIntervaloInicio.DataBindings.Add(new Binding("Text", bindingSource, "Intervalo_Inicio", true));
            txtIntervaloTermino.DataBindings.Add(new Binding("Text", bindingSource, "Intervalo_Final", true));
            txtHoraTermino.DataBindings.Add(new Binding("Text", bindingSource, "Hora_Final", true));
            ckbLanche.DataBindings.Add(new Binding("Checked", bindingSource, "Lanche", true));
            ckbSuporteFinanceiro.DataBindings.Add(new Binding("Checked", bindingSource, "Suporte_Financeiro", true));
            ckbSuporteTI.DataBindings.Add(new Binding("Checked", bindingSource, "Suporte_TI", true));
            ckbSuporteSistemas.DataBindings.Add(new Binding("Checked", bindingSource, "Suporte_Sistemas", true));
            txtTarefa.DataBindings.Add(new Binding("Text", bindingSource, "Tarefa_Executar", true));
            txtMotivo.DataBindings.Add(new Binding("Text", bindingSource, "Motivo", true));

            Binding b = new Binding("Checked", bindingSource, "Tarefa_Plenamente_Parcialmente", true);
            b.Format += new ConvertEventHandler(FormatRadio);
            rdbParcialmente.DataBindings.Add(b);
        }

        private void FormatRadio(object sender, ConvertEventArgs e)
        {
            if (e.Value.GetType() != typeof(bool)) return;

            bool n = (bool)e.Value;
            switch (n)
            {
                case false:
                    rdbPlenamente.Checked = true;
                    break;
                case true:
                    rdbParcialmente.Checked = true;
                    break;
            }
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            btnSalvar.Text = "Solicitar";
            txtData.Text = DateTime.Now.Date.ToString();
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            //    if (string.IsNullOrEmpty(txtNumero.Text))
            //    {
            //        MessageBox.Show("O número é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
            //        txtNumero.Focus();
            //        return;
            //    }

            //    if (string.IsNullOrEmpty(cbbTipoDeAto.Text))
            //    {
            //        MessageBox.Show("O tipo de Ato é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
            //        cbbTipoDeAto.Focus();
            //        return;
            //    }

            //    if (string.IsNullOrEmpty(txtObs.Text))
            //    {
            //        MessageBox.Show("A Observação é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
            //        cbbTipoDeAto.Focus();
            //        return;
            //    }       

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "UPDATE Controle_Hora_Extra " +
                                   "SET Setor = @Setor,Data_Solicitacao = @Data_Solicitacao,Hora_Inicio = @Hora_Inicio,Hora_Final = @Hora_Final " +
                                   ",Intervalo_Inicio = @Intervalo_Inicio,Intervalo_Final = @Intervalo_Final,Lanche = @Lanche,Suporte_TI = @Suporte_TI,Suporte_Sistemas = @Suporte_Sistemas " +
                                   ",Suporte_Financeiro = @Suporte_Financeiro,Tarefa_Executar = @Tarefa_Executar,Tarefa_Plenamente_Parcialmente = @Tarefa_Plenamente_Parcialmente " +
                                   ",Motivo = @Motivo " +
                                   "WHERE ID = @ID";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Setor", (cbbSetor.SelectedValue == null ? "" : cbbSetor.SelectedValue));
                        cmd.Parameters.AddWithValue("@Data_Solicitacao", txtData.MaskCompleted ? (object)txtData.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Hora_Inicio", txtHoraInicio.MaskCompleted ? (object)txtHoraInicio.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Hora_Final", txtHoraTermino.MaskCompleted ? (object)txtHoraTermino.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Intervalo_Inicio", txtIntervaloInicio.MaskCompleted ? (object)txtIntervaloInicio.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Intervalo_Final", txtIntervaloTermino.MaskCompleted ? (object)txtIntervaloTermino.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Lanche", ckbLanche.Checked);
                        cmd.Parameters.AddWithValue("@Suporte_TI", ckbSuporteTI.Checked);
                        cmd.Parameters.AddWithValue("@Suporte_Sistemas", ckbSuporteSistemas.Checked);
                        cmd.Parameters.AddWithValue("@Suporte_Financeiro", ckbSuporteFinanceiro.Checked);
                        cmd.Parameters.AddWithValue("@Tarefa_Executar", txtTarefa.Text);
                        cmd.Parameters.AddWithValue("@Tarefa_Plenamente_Parcialmente", (rdbParcialmente.Checked == true) ? false : true);
                        cmd.Parameters.AddWithValue("@Motivo", txtMotivo.Text);
                        cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource.Current).Row["ID"].ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(((DataRowView)this.bindingSource.Current).Row["ID"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Funcionário:{0}  - Data Solicitação:{1}", txtNome.Text, txtData.Text));
                }
                else
                {
                    if (Solicitado())
                    {
                        MessageBox.Show("Data já solicitada!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return;
                    }


                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Controle_Hora_Extra " +
                                   "(Usuario,Setor,Data_Solicitacao,Hora_Inicio,Hora_Final,Intervalo_Inicio,Intervalo_Final,Lanche,Suporte_TI " +
                                   ",Suporte_Sistemas,Suporte_Financeiro,Tarefa_Executar,Tarefa_Plenamente_Parcialmente,Motivo) " +
                                   " VALUES " +
                                   "(@Usuario,@Setor,@Data_Solicitacao,@Hora_Inicio,@Hora_Final,@Intervalo_Inicio,@Intervalo_Final,@Lanche " +
                                   ",@Suporte_TI,@Suporte_Sistemas,@Suporte_Financeiro,@Tarefa_Executar,@Tarefa_Plenamente_Parcialmente,@Motivo)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Usuario", FrmPrincipal.PK_UsuarioLogado);
                        cmd.Parameters.AddWithValue("@Setor", (cbbSetor.SelectedValue == null ? "" : cbbSetor.SelectedValue));
                        cmd.Parameters.AddWithValue("@Data_Solicitacao", txtData.MaskCompleted ? (object)txtData.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Hora_Inicio", txtHoraInicio.MaskCompleted ? (object)txtHoraInicio.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Hora_Final", txtHoraTermino.MaskCompleted ? (object)txtHoraTermino.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Intervalo_Inicio", txtIntervaloInicio.MaskCompleted ? (object)txtIntervaloInicio.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Intervalo_Final", txtIntervaloTermino.MaskCompleted ? (object)txtIntervaloTermino.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Lanche", ckbLanche.Checked);
                        cmd.Parameters.AddWithValue("@Suporte_TI", ckbSuporteTI.Checked);
                        cmd.Parameters.AddWithValue("@Suporte_Sistemas", ckbSuporteSistemas.Checked);
                        cmd.Parameters.AddWithValue("@Suporte_Financeiro", ckbSuporteFinanceiro.Checked);
                        cmd.Parameters.AddWithValue("@Tarefa_Executar", txtTarefa.Text);
                        cmd.Parameters.AddWithValue("@Tarefa_Plenamente_Parcialmente", (rdbParcialmente.Checked == true) ? false : true);
                        cmd.Parameters.AddWithValue("@Motivo", txtMotivo.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Funcionário:{0} - Data Solicitação:{1}", txtNome.Text, txtData.Text));
                    bindingSource.DataSource = getControleHE();
                    dataGridView.DataSource = bindingSource;
                    EnviaEmail();
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
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja cancelar a solicitação?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "delete from Controle_Hora_Extra where ID = @ID ";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource.Current).Row["ID"].ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(((DataRowView)this.bindingSource.Current).Row["ID"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Funcionário:{0}  - Data Solicitação:{1}", txtNome.Text, txtData.Text));
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

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void txtHoraTermino_TextChanged(object sender, EventArgs e)
        {
            if ((txtHoraTermino.MaskCompleted) && (txtHoraInicio.MaskCompleted))
            {
                txtDuracao.Text = ((DateTime.Parse(txtHoraTermino.Text) - DateTime.Parse(txtHoraInicio.Text))).ToString();
            }
            else
            {
                txtDuracao.Clear();
            }
        }

        private bool Solicitado()
        {
            var query = "SELECT ID FROM Controle_Hora_Extra WHERE Data_Solicitacao =@Data  ";
            var GoOn = false;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Data", txtData.Text);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                GoOn = true;
                            }
                        }
                        return GoOn;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
        }

        private void EnviaEmail()
        {
            string corpo_email;
            string vDe, vPara, vCC, vCCo, vImp;
            string vAssunto;
            string vTitulo;
            string vBody;
            string vAnexo;
            int vHTML;

            vTitulo = "MS2000 - Solicitação de Hora Extra";
            vAssunto = "MS2000 - Solicitação de Hora Extra";
            vHTML = 1;

            vDe = "MS2000 <auditoria@logistic-ms.com.br>";
            vPara = "Leonardo.Alabarce@mslogistica.com.br";
            //if (FrmPrincipal.FK_SetorUsuario == "OPN")
            //{
            //    vPara = "Fabiano.Ferreira@mslogistica.com.br;Odilma.queiroz@mslogistica.com.br;Sandra.Freire@mslogistica.com.br;Maria.Eduarda@mslogistica.com.br";
            //}
            //else
            //{
            //    vPara = "Maria.Eduarda@mslogistica.com.br";
            //}
            vCC = "";
            vCCo = "";

            corpo_email = " Solicito Autorização de Hora extra do dia  " + txtData.Text + " - " + txtNome.Text + "<BR> Tarefa a executar:" + txtTarefa.Text;

            vBody = "<BR>"
                   + "Prezado(a),<BR>"
                   + "<BR>"
                   + corpo_email + "<BR><BR>"
                   + "Este e-mail é automático e não necessita de resposta. <BR>"
                   + "<BR><BR>"
                   + "Atenciosamente,"
                   + "<BR><BR>"
                   + "MS2000 - SISTEMA GERENCIAL ADUANEIRO<BR><BR>";

            EmailAuto.incluir("HE", vAssunto, vTitulo, vDe, vPara, vCC, vCCo, vBody, "", vHTML);

        }
    }
}
