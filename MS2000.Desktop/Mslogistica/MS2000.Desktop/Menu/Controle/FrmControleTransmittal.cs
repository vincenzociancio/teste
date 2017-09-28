using System.Data.SqlClient;
using System.Diagnostics;
using System.IO;
using Microsoft.Reporting.WinForms;
using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmControleTransmittal : Componentes.MSForm01
    {
        public StatusCadastro statusCadastro;
        private List<RelatorioTransmittal> listaRelatorioTransmittal;
        public string subTipo_Doc { get; set; }
        public class RelatorioTransmittal
        {
            public string Codigo { get; set; }
            public string Descricao { get; set; }
            public string Quantidade { get; set; }
            public string Remarks { get; set; }
            public string Sequencial { get; set; }
        }

        public FrmControleTransmittal()
        {
            InitializeComponent();
        }

        public virtual void VerificaBotoes()
        {
            // btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);

        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            VerificaBotoes();
        }

        private void FrmControleTransmittal_Load(object sender, EventArgs e)
        {
            getDestinatario();
            getSetorRemetente();
            getRemetente();
            getImportadores();

            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
            cbLocalizar.Enabled = true;
            cbLocalizar.SelectedIndex = 0;
            txtLocalizar.Enabled = true;
            grvTransmittal.AutoGenerateColumns = false;
            bsTransmittal.DataSource = getTransmittal();
            grvTransmittal.DataSource = bsTransmittal;
            bindingNavigator.BindingSource = bsTransmittal;
        }

        private DataTable getTransmittal(string filtro = "")
        {
            string query;

            if (string.IsNullOrEmpty(filtro))
            {
                query =
                    "SELECT TOP 200 T.ID, T.Codigo,T.Data,T.Destinacao,T.Receptor,T.Data_Recebimento,t.processo ,T.Remetente, T.SubTipo, T.Importador, T.Destinatario, T.Setor, " +
                    "I.Razao_Social, S.descricao, T.Remetente, U.Nome_Completo,Destinatario.Destinatario as destinatario_nome " +
                    "FROM Transmittal AS T " +
                    "INNER JOIN Setores AS S ON T.Setor = S.codigo " +
                    "LEFT JOIN Importadores AS I ON T.Importador = I.Codigo " +
                    "LEFT JOIN Usuarios AS U ON T.Remetente = U.Usuario " +
                    "LEFT JOIN Destinatario ON T.Destinatario = Destinatario.ID " +
                    "WHERE T.Data >= '01/01/2011' " +
                    "ORDER BY T.Data desc, T.Codigo desc ";
            }
            else
            {
                query = filtro;
            }
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

        private void getImportadores()
        {
            string query =
                "select Codigo, Razao_Social FROM Importadores WHERE Ativo = 1 ORDER BY Razao_social";
            DataTable table;

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }

                mcbbImportador.DataSource = null;
                mcbbImportador.DataSource = table;
                mcbbImportador.DisplayMember = "Razao_Social";
                mcbbImportador.ValueMember = "Codigo";
                mcbbImportador.SelectedIndex = -1;
            }

        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Novo;
            CadastroTransmittalDados();
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            CadastroTransmittalDados();
        }

        public void CadastroTransmittalDados()
        {
            using (var frmCadastro = new FrmControleTransmittalCadastro())
            {
                frmCadastro.statusCadastro = statusCadastro;

                if (statusCadastro == StatusCadastro.Editar)
                {
                    frmCadastro.Text = "Alterar Transmittal";

                    frmCadastro.numTransmittal = ((DataRowView)this.bsTransmittal.Current).Row["codigo"].ToString();
                    frmCadastro.dataEnvio = ((DataRowView)this.bsTransmittal.Current).Row["data"].ToString();
                    frmCadastro.setorRemetente = ((DataRowView)this.bsTransmittal.Current).Row["Setor"].ToString();
                    frmCadastro.destinatario = ((DataRowView)this.bsTransmittal.Current).Row["destinatario"].ToString();
                    frmCadastro.tipoDocumento = ((DataRowView)this.bsTransmittal.Current).Row["SubTipo"].ToString();
                    frmCadastro.importador = ((DataRowView)this.bsTransmittal.Current).Row["Importador"].ToString();
                    frmCadastro.destinacao = ((DataRowView)this.bsTransmittal.Current).Row["destinacao"].ToString();
                    frmCadastro.numProcesso = ((DataRowView)this.bsTransmittal.Current).Row["processo"].ToString();
                    frmCadastro.dataRecebimento = ((DataRowView)this.bsTransmittal.Current).Row["data_recebimento"].ToString();
                    frmCadastro.receptor = ((DataRowView)this.bsTransmittal.Current).Row["receptor"].ToString();
                    frmCadastro.remetente = ((DataRowView)this.bsTransmittal.Current).Row["remetente"].ToString();

                    if (FrmPrincipal.ShowModalMdiChildren(frmCadastro) == DialogResult.OK)
                    {
                        frmCadastro.Close();
                    }
                }
                else
                {
                    frmCadastro.Text = "Cadastrar Transmittal";

                    if (FrmPrincipal.ShowModalMdiChildren(frmCadastro) == DialogResult.OK)
                    {
                        frmCadastro.Close();
                    }

                    bsTransmittal.DataSource = getTransmittal();
                }
            }
        }


        private void getDestinatario()
        {
            string query = "SELECT id, destinatario FROM Destinatario ORDER BY destinatario, id";

            DataTable table;

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
            }

            mcbbDestinatario.DataSource = null;
            mcbbDestinatario.DataSource = table;
            mcbbDestinatario.DisplayMember = "Destinatario";
            mcbbDestinatario.ValueMember = "id";
            mcbbDestinatario.SelectedIndex = -1;
        }

        private void getSetorRemetente()
        {
            string query = "SELECT Codigo, Descricao FROM Setores WHERE Excluido <> 1";

            DataTable table;

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
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
                mcbbSetor.ValueMember = "Codigo";
                mcbbSetor.SelectedIndex = -1;
            }

        }

        private void getRemetente()
        {
            string query = "SELECT PK_USUARIO, Nome_Completo FROM Usuarios WHERE (Ativo = 1 or Ferias = 1) and Setor <> '' ORDER BY Nome_Completo ";

            DataTable table;

            try
            {
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            table = new DataTable();
                            table.Load(reader);
                        }
                    }
                }

                mcbbRemetente.DataSource = null;
                mcbbRemetente.DataSource = table;
                mcbbRemetente.DisplayMember = "Nome_Completo";
                mcbbRemetente.ValueMember = "PK_USUARIO";
                mcbbRemetente.SelectedIndex = -1;
            }

            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        #region Ativa/Desativa Checkbox

        private void ckbProcesso_CheckedChanged(object sender, EventArgs e)
        {
            txtProcesso.Enabled = ckbProcesso.Checked;
            txtProcesso.Clear();
        }

        private void ckbTransmittal_CheckedChanged(object sender, EventArgs e)
        {
            txtTransmittal.Enabled = ckbTransmittal.Checked;
            txtTransmittal.Clear();
        }

        private void ckbSetor_CheckedChanged(object sender, EventArgs e)
        {
            mcbbSetor.Enabled = ckbSetor.Checked;
            mcbbSetor.SelectedIndex = -1;
        }

        private void ckbRemetente_CheckedChanged(object sender, EventArgs e)
        {
            mcbbRemetente.Enabled = ckbRemetente.Checked;
            mcbbRemetente.SelectedIndex = -1;
        }

        private void ckbDestinatario_CheckedChanged(object sender, EventArgs e)
        {
            mcbbDestinatario.Enabled = ckbDestinatario.Checked;
            mcbbDestinatario.SelectedIndex = -1;
        }

        private void ckbDestinacao_CheckedChanged(object sender, EventArgs e)
        {
            txtDestinacao.Enabled = ckbDestinacao.Checked;
            txtDestinacao.Clear();
        }

        private void ckbImportador_CheckedChanged(object sender, EventArgs e)
        {
            mcbbImportador.Enabled = ckbImportador.Checked;
            mcbbImportador.SelectedIndex = -1;
        }

        private void ckbData_CheckedChanged(object sender, EventArgs e)
        {
            txtDe.Enabled = ckbData.Checked;
            txtAte.Enabled = ckbData.Checked;
            txtDe.Clear();
            txtAte.Clear();
        }

        #endregion Ativa/Desativa Checkbox

        private void btnFiltrar_Click(object sender, EventArgs e)
        {
            string query =
                "SELECT TOP 200 T.ID, T.Codigo,T.Data,T.Destinacao,T.Receptor,T.Data_Recebimento,t.processo , T.SubTipo, T.Importador, T.Destinatario, T.Setor, " +
                "I.Razao_Social, S.descricao, T.Remetente, U.Nome_Completo, Destinatario.Destinatario as destinatario_nome " +
                "FROM Transmittal AS T " +
                "INNER JOIN Setores AS S ON T.Setor = S.codigo " +
                "LEFT JOIN Importadores AS I ON T.Importador = I.Codigo " +
                "LEFT JOIN Usuarios AS U ON T.Remetente = U.Usuario " +
                "LEFT JOIN Destinatario ON T.Destinatario = Destinatario.id " +
                "WHERE T.Data >= '01/01/2011' ";

            if (!ckbData.Checked && !ckbProcesso.Checked &&
                !ckbDestinacao.Checked && !ckbDestinatario.Checked &&
                !ckbImportador.Checked && !ckbRemetente.Checked &&
                !ckbSetor.Checked && !ckbTransmittal.Checked)
            {
                bsTransmittal.DataSource = getTransmittal();
                grvTransmittal.DataSource = bsTransmittal;
                bindingNavigator.BindingSource = bsTransmittal;
            }
            else
            {
                if (ckbData.Checked)
                {
                    if (string.IsNullOrEmpty(txtDe.Text.Replace("/", "").Trim()) &&
                        string.IsNullOrEmpty(txtAte.Text.Replace("/", "").Trim()))
                        ckbData.Checked = false;

                    if (!string.IsNullOrEmpty(txtDe.Text.Replace("/", "").Trim()))
                    {
                        query += " AND T.Data >= Cast('" + txtDe.Text + "'" + " as Datetime)";
                    }
                    if (!string.IsNullOrEmpty(txtAte.Text.Replace("/", "").Trim()))
                    {
                        query += " AND T.Data <= Cast('" + txtAte.Text + "'" + " as Datetime)";
                    }
                }

                if (ckbProcesso.Checked)
                    query += " AND T.Processo = '" + txtProcesso.Text + "'";

                if (ckbDestinacao.Checked)
                    query += " AND T.Destinacao like '%" + txtDestinacao.Text + "%'";

                if (ckbDestinatario.Checked)
                    query += " AND T.Destinatario = '" + mcbbDestinatario.SelectedValue + "'";

                if (ckbImportador.Checked)
                    query += " AND T.Importador = '" + mcbbImportador.SelectedValue + "'";

                if (ckbRemetente.Checked)
                    query += " AND U.PK_USUARIO = '" + mcbbRemetente.SelectedValue + "'";

                if (ckbSetor.Checked)
                    query += " AND T.Setor = '" + mcbbSetor.SelectedValue + "'";

                if (ckbTransmittal.Checked)
                    query += " AND T.Codigo = '" + txtTransmittal.Text + "'";

                query += " ORDER BY T.Data DESC ";

                bsTransmittal.DataSource = getTransmittal(query);
                grvTransmittal.DataSource = bsTransmittal;
                bindingNavigator.BindingSource = bsTransmittal;
            }
        }

        private void txtLocalizar_TextChanged(object sender, EventArgs e)
        {
            string query =
                "SELECT TOP 200 T.ID, T.Codigo,T.Data,T.Destinacao,T.Receptor,T.Data_Recebimento,t.processo , T.SubTipo, T.Importador, T.Destinatario, T.Setor, " +
                "I.Razao_Social, S.descricao, T.Remetente, U.Nome_Completo, Destinatario.Destinatario as destinatario_nome " +
                "FROM Transmittal AS T " +
                "INNER JOIN Setores AS S ON T.Setor = S.codigo " +
                "LEFT JOIN Importadores AS I ON T.Importador = I.Codigo " +
                "LEFT JOIN Usuarios AS U ON T.Remetente = U.Usuario " +
                "LEFT JOIN Destinatario ON T.Destinatario = Destinatario.id " +
                "WHERE T.Data >= '01/01/2011' ";

            switch (cbLocalizar.SelectedIndex)
            {
                case 0:
                    query += " and T.Codigo like '" + txtLocalizar.Text + "%'";
                    bsTransmittal.DataSource = getTransmittal(query);
                    grvTransmittal.DataSource = bsTransmittal;
                    break;

                case 1:
                    query += " and Convert(Varchar(15), T.Data, 103) like '" + txtLocalizar.Text + "%'";
                    bsTransmittal.DataSource = getTransmittal(query);
                    grvTransmittal.DataSource = bsTransmittal;
                    break;
                case 2:
                    query += " and I.Razao_Social like '" + txtLocalizar.Text + "%'";
                    bsTransmittal.DataSource = getTransmittal(query);
                    grvTransmittal.DataSource = bsTransmittal;
                    break;

                case 3:
                    query += " and Destinatario.Destinatario like '" + txtLocalizar.Text + "%'";
                    bsTransmittal.DataSource = getTransmittal(query);
                    grvTransmittal.DataSource = bsTransmittal;
                    break;
                case 4:
                    query += " and U.Nome_Completo like '" + txtLocalizar.Text + "%'";
                    bsTransmittal.DataSource = getTransmittal(query);
                    grvTransmittal.DataSource = bsTransmittal;
                    break;

                case 5:
                    query += " and S.descricao like '" + txtLocalizar.Text + "%'";
                    bsTransmittal.DataSource = getTransmittal(query);
                    grvTransmittal.DataSource = bsTransmittal;
                    break;
                case 6:
                    query += " and T.Destinacao like '" + txtLocalizar.Text + "%'";
                    bsTransmittal.DataSource = getTransmittal(query);
                    grvTransmittal.DataSource = bsTransmittal;
                    break;

                case 7:
                    query += " and t.processo like '" + txtLocalizar.Text + "%'";
                    bsTransmittal.DataSource = getTransmittal(query);
                    grvTransmittal.DataSource = bsTransmittal;
                    break;
            }

            if (string.IsNullOrEmpty(txtLocalizar.Text))
            {
                bsTransmittal.DataSource = getTransmittal();
                grvTransmittal.DataSource = bsTransmittal;
            }
        }

        private void btnItens_Click(object sender, EventArgs e)
        {
            var frmItens = new FrmControleTransmittalItens();

            frmItens.idTransmittal = ((DataRowView)this.bsTransmittal.Current).Row["ID"].ToString(); //bsTransmittal.GetRelatedCurrencyManager("ID").Current.ToString();
            frmItens.transmittal = ((DataRowView)this.bsTransmittal.Current).Row["codigo"].ToString();
            frmItens.dataEnviado = ((DataRowView)this.bsTransmittal.Current).Row["data"].ToString();
            frmItens.destinatario = ((DataRowView)this.bsTransmittal.Current).Row["destinatario_nome"].ToString();
            frmItens.importador = ((DataRowView)this.bsTransmittal.Current).Row["Razao_Social"].ToString();            
            FrmPrincipal.ShowModalMdiChildren(frmItens);
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (
                MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo,
                    MessageBoxIcon.Question) == DialogResult.Yes)
            {
                string codigo = ((DataRowView)this.bsTransmittal.Current).Row["Codigo"].ToString();
                try
                {
                    string query = "delete from Transmittal where Codigo = @Codigo";
                    using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Codigo",
                                ((DataRowView)this.bsTransmittal.Current).Row["Codigo"].ToString());
                            cmd.ExecuteNonQuery();
                        }
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir,
                        Convert.ToInt32(this.Tag),
                        string.Format("Codigo Transmittal: {0}", codigo));

                    bsTransmittal.RemoveCurrent();
                    statusCadastro = StatusCadastro.None;
                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK,
                        MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void btnImprimir_Click(object sender, EventArgs e)
        {
            Imprimir();
        }

        private List<RelatorioTransmittal> MontaReportView()
        {
            string query = "Select Distinct Codigo, Sequencial, Descricao, Quantidade, Remarks from Transmittal_Itens " +
                "where Codigo = @Codigo order by Sequencial asc";

            listaRelatorioTransmittal = new List<RelatorioTransmittal>();
            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Codigo", ((DataRowView)this.bsTransmittal.Current).Row["codigo"].ToString());
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                listaRelatorioTransmittal.Add(new RelatorioTransmittal
                                {
                                    Codigo = reader[0].ToString(),
                                    Sequencial = reader[1].ToString(),
                                    Descricao = reader[2].ToString(),
                                    Quantidade = reader[3].ToString(),
                                    Remarks = reader[4].ToString()
                                });
                            }
                        }
                        else
                        {
                            MessageBox.Show("Não há registros de Transmittal sobre esse Cliente", "Aviso",
                                MessageBoxButtons.OK, MessageBoxIcon.Information);
                            return listaRelatorioTransmittal;
                        }
                    }

                }
            }
            return listaRelatorioTransmittal;
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {

        }

        private void grvTransmittal_CellMouseDoubleClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            Imprimir();
        }

        private void Imprimir()
        {
            try
            {
                ReportViewer RV = new ReportViewer();
                RV.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Controle.rpTransmittal.rdlc";
                RV.ProcessingMode = ProcessingMode.Local;


                var dataset = new ReportDataSource("ds01", MontaReportView());
                RV.LocalReport.DataSources.Clear();
                RV.LocalReport.DataSources.Add(dataset);

                IList<ReportParameter> parameters = new List<ReportParameter>();
                parameters.Add(new ReportParameter("DataHora", "Rio de janeiro " + DateTime.Now.Day + " de " + string.Format("{0:MMMM}", DateTime.Now) + " de " + DateTime.Now.Year));
                parameters.Add(new ReportParameter("Empresa", ((DataRowView)this.bsTransmittal.Current).Row["Razao_Social"].ToString() == "" ? " " : ((DataRowView)this.bsTransmittal.Current).Row["Razao_Social"].ToString()));
                parameters.Add(new ReportParameter("DestNome", ((DataRowView)this.bsTransmittal.Current).Row["destinatario_nome"].ToString() == "" ? " " : ((DataRowView)this.bsTransmittal.Current).Row["destinatario_nome"].ToString()));
                parameters.Add(new ReportParameter("Destinacao", ((DataRowView)this.bsTransmittal.Current).Row["destinacao"].ToString()));
                parameters.Add(new ReportParameter("Usuario", ((DataRowView)this.bsTransmittal.Current).Row["Nome_Completo"].ToString()));
                parameters.Add(new ReportParameter("Setor", ((DataRowView)this.bsTransmittal.Current).Row["descricao"].ToString()));
                parameters.Add(new ReportParameter("Num_transmittal", ((DataRowView)this.bsTransmittal.Current).Row["codigo"].ToString()));
                RV.LocalReport.SetParameters(parameters);
                RV.LocalReport.Refresh();
                RV.RefreshReport();

                Warning[] warnings;
                string[] streamids;
                string mimeType;
                string encoding;
                string extension;

                byte[] bytePDF = RV.LocalReport.Render("Pdf", null, out mimeType, out encoding, out extension, out streamids, out warnings);

                FileStream fileStreamPDF = null;
                string nomeArquivoPDF = Path.GetTempPath() + "Transmittal_" + ((DataRowView)this.bsTransmittal.Current).Row["codigo"].ToString().Replace("/", "") + DateTime.Now.ToString("ddMMyyyyhhmmss") + ".pdf";

                fileStreamPDF = new FileStream(nomeArquivoPDF, FileMode.Create);
                fileStreamPDF.Write(bytePDF, 0, bytePDF.Length);
                fileStreamPDF.Close();

                Process.Start(nomeArquivoPDF);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }


    }
}
