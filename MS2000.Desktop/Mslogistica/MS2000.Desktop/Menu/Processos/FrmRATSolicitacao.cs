using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Windows.Forms;
using Microsoft.Reporting.WinForms;
using System.Linq;
using iTextSharp.text.pdf;
using System.Drawing;

namespace MS2000.Desktop.Menu.Processos
{
    public partial class FrmRATSolicitacao : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        // readonly string[] _arrayTermo = { "REPA", "1361", "BAGA", "rep1", "ER", "TEST", "maqu", "REP", "PROR", "1404" };

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
            groupBox1.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmRATSolicitacao()
        {
            InitializeComponent();
        }

        private DataTable getRat()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT " +
                           "ID,Fk_Processo,Fund_Pedido,Data_Criacao,Tipo_Requerimento,Opcao_Tributario " +
                           ",Inst_Requerimento,Descricao,Inf_Complementares,Interessado,Numero_Rat,Outros " +
                           "FROM RAT order by ID desc";
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

        private void FrmRATSolicitacao_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;

            getNome();

            cbbFundamentacao.DataSource = getFundamentacao(null);
            cbbFundamentacao.DisplayMember = "Descricao";
            cbbFundamentacao.ValueMember = "Codigo";

            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getRat();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtProcesso.DataBindings.Add(new Binding("Text", bindingSource, "Fk_Processo", true));
            txtCodigoFundamentacao.DataBindings.Add(new Binding("Text", bindingSource, "Fund_pedido", true));
            cbbFundamentacao.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Fund_pedido"));
            txtRAT.DataBindings.Add(new Binding("Text", bindingSource, "Numero_Rat", true));
            txtDescricao.DataBindings.Add(new Binding("Text", bindingSource, "Descricao", true));
            txtInformacoesComplementares.DataBindings.Add(new Binding("Text", bindingSource, "Inf_Complementares", true));
            ccbNome.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Interessado"));
            txtOutros.DataBindings.Add(new Binding("Text", bindingSource, "Outros", true));

            Binding a = new Binding("Checked", bindingSource, "Tipo_Requerimento", true);
            a.Format += new ConvertEventHandler(FormatRadioRequerimento);
            rdbConcessao.DataBindings.Add(a);

            Binding b = new Binding("Checked", bindingSource, "Opcao_Tributario", true);
            b.Format += new ConvertEventHandler(FormatRadioTributario);
            rdbSim.DataBindings.Add(b);

        }

        private void FormatRadioRequerimento(object sender, ConvertEventArgs e)
        {
            if (e.Value.GetType() != typeof(bool)) return;

            bool n = (bool)e.Value;
            switch (n)
            {
                case true:
                    rdbConcessao.Checked = true;
                    break;
                case false:
                    rdbProrrogacao.Checked = true;
                    break;
            }
        }
        private void FormatRadioTributario(object sender, ConvertEventArgs e)
        {
            if (e.Value.GetType() != typeof(bool)) return;

            bool n = (bool)e.Value;
            switch (n)
            {
                case true:
                    rdbSim.Checked = true;
                    break;
                case false:
                    rdbNao.Checked = true;
                    break;
            }
        }

        private void getNome()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Codigo,upper(Razao_Social) as Razao_Social,CGC_CPF from Procuradores order by Razao_Social";
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
                ccbNome.DataSource = table;
                ccbNome.DisplayMember = "Razao_Social";
                ccbNome.ValueMember = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private DataTable getFundamentacao(string codigo)
        {

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query;
            DataTable table;
            if (!string.IsNullOrEmpty(codigo))
            {
                query = "SELECT Descricao,Codigo FROM Fundamentacao_RCR Where  codigo = @codigo and Ativo = 1 order by descricao";
            }
            else
            {
                query = "SELECT Descricao,Codigo FROM Fundamentacao_RCR Where Ativo = 1 order by descricao";
            }

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                if (!string.IsNullOrEmpty(codigo))
                {
                    cmd.Parameters.AddWithValue("@codigo", codigo);
                }

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
            //return table;
        }

        private void txtCodigoFundamentacao_TextChanged(object sender, EventArgs e)
        {
            if (txtCodigoFundamentacao.Text.Length > 0)
            {
                DataTable table = new DataTable();
                table = getFundamentacao(txtCodigoFundamentacao.Text);
                cbbFundamentacao.SelectedValue = ((table.Rows.Count > 0) ? table.Rows[0]["codigo"].ToString() : "");
            }
            else
            {
                cbbFundamentacao.SelectedIndex = -1;
            }
        }

        private void cbbFundamentacao_SelectedIndexChanged(object sender, EventArgs e)
        {
            ComboBox cb = (ComboBox)sender;
            if (cb.Focused)
            {
                txtCodigoFundamentacao.Text = Convert.ToString(cbbFundamentacao.SelectedValue);
            }
            else
            {
                return;
            }
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            txtRAT.Enabled = false;
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            txtProcesso.Enabled = false;
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private bool RatEmUso()
        {
            var query = "SELECT ID FROM Rat WHERE Fk_Processo =@Fk_Processo  ";
            var GoOn = false;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Fk_Processo", txtProcesso.Text);

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

        private bool TipodedeclaraçãoEmUso()
        {
            var query = "select * from Processos " +
                        "where Tipo_Declaracao in ('05','12') and Codigo = @Processo";
            var GoOn = true;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            GoOn = false;
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

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    string query = "UPDATE RAT " +
                                   "SET Fund_Pedido = @Fund_Pedido,Tipo_Requerimento = @Tipo_Requerimento " +
                                   ",Opcao_Tributario = @Opcao_Tributario,Inst_Requerimento = @Inst_Requerimento " +
                                   ",Descricao = @Descricao,Inf_Complementares = @Inf_Complementares " +
                                   ",Interessado = @Interessado,Numero_Rat = @Numero_Rat " +
                                  "WHERE ID = @ID ";
                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {

                            cmd.Parameters.AddWithValue("@Fund_Pedido", (cbbFundamentacao.SelectedValue == null) ? (object)DBNull.Value : cbbFundamentacao.SelectedValue);
                            cmd.Parameters.AddWithValue("@Tipo_Requerimento", (rdbConcessao.Checked == true) ? true : false);
                            cmd.Parameters.AddWithValue("@Opcao_Tributario", (rdbSim.Checked == true) ? true : false);
                            if (rdbContratoArrendamento.Checked == true)
                            {
                                cmd.Parameters.AddWithValue("@Inst_Requerimento", 1);
                            }
                            else if (rdbContratoPrestacao.Checked == true)
                            {
                                cmd.Parameters.AddWithValue("@Inst_Requerimento", 2);
                            }
                            else if (rdbProcuracao.Checked == true)
                            {
                                cmd.Parameters.AddWithValue("@Inst_Requerimento", 3);
                            }
                            else
                            {
                                cmd.Parameters.AddWithValue("@Inst_Requerimento", 4);
                            }
                            cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                            cmd.Parameters.AddWithValue("@Inf_Complementares", txtInformacoesComplementares.Text);
                            cmd.Parameters.AddWithValue("@Interessado", (ccbNome.SelectedValue == null) ? (object)DBNull.Value : ccbNome.SelectedValue);
                            cmd.Parameters.AddWithValue("@Numero_Rat", txtRAT.MaskCompleted ? txtRAT.Text : (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("ID").Current.ToString());
                            cmd.ExecuteNonQuery();
                        }
                    }
                    LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),
                      string.Format("Fundamentação:{0} N° RAT:{1}  ", cbbFundamentacao.Text, txtRAT.Text));

                    bindingSource.DataSource = getRat();
                    dataGridView.DataSource = bindingSource;
                    bindingNavigator.BindingSource = bindingSource;
                }
                else
                {
                    if (RatEmUso())
                    {
                        MessageBox.Show("Já existe um RAT para este processo!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return;
                    }

                    if (TipodedeclaraçãoEmUso())
                    {
                        MessageBox.Show("Não foi possível realizar o cadastro, pois se trata de um processo do REPETRO.Favor realizar o cadastro em: Processos/Emissão de Rat/Solicitação Repetro.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return;
                    }

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO RAT " +
                                   "(Fk_Processo,Fund_Pedido,Data_Criacao,Tipo_Requerimento,Opcao_Tributario " +
                                   ",Inst_Requerimento,Descricao,Inf_Complementares,Interessado,Numero_Rat) " +
                                   "VALUES " +
                                   "(@Fk_Processo,@Fund_Pedido,@Data_Criacao,@Tipo_Requerimento,@Opcao_Tributario " +
                                   ",@Inst_Requerimento,@Descricao,@Inf_Complementares,@Interessado,@Numero_Rat)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Fk_Processo", txtProcesso.Text);
                        cmd.Parameters.AddWithValue("@Fund_Pedido", (cbbFundamentacao.SelectedValue == null) ? (object)DBNull.Value : cbbFundamentacao.SelectedValue);
                        cmd.Parameters.AddWithValue("@Data_Criacao", DateTime.Now.Date);
                        cmd.Parameters.AddWithValue("@Tipo_Requerimento", (rdbConcessao.Checked == true) ? true : false);
                        cmd.Parameters.AddWithValue("@Opcao_Tributario", (rdbSim.Checked == true) ? true : false);
                        if (rdbContratoArrendamento.Checked == true)
                        {
                            cmd.Parameters.AddWithValue("@Inst_Requerimento", 1);
                        }
                        else if (rdbContratoPrestacao.Checked == true)
                        {
                            cmd.Parameters.AddWithValue("@Inst_Requerimento", 2);
                        }
                        else if (rdbProcuracao.Checked == true)
                        {
                            cmd.Parameters.AddWithValue("@Inst_Requerimento", 3);
                        }
                        else
                        {
                            cmd.Parameters.AddWithValue("@Inst_Requerimento", 4);
                        }
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@Inf_Complementares", txtInformacoesComplementares.Text);
                        cmd.Parameters.AddWithValue("@Interessado", (ccbNome.SelectedValue == null) ? (object)DBNull.Value : ccbNome.SelectedValue);
                        cmd.Parameters.AddWithValue("@Numero_Rat", txtRAT.MaskCompleted ? txtRAT.Text : (object)DBNull.Value);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag),
                       string.Format("Fundamentação:{0} N° RAT:{1} ", cbbFundamentacao.Text, txtRAT.Text));
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

                var Id = bindingSource.GetRelatedCurrencyManager("Id").Current.ToString();
                bindingSource.DataSource = getRat();
                bindingSource.Position = bindingSource.Find("ID", Id);
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

        private void txtLocalizaProcesso_TextChanged(object sender, EventArgs e)
        {
            string processo;

            processo = txtLocalizaProcesso.Text.Replace("/", "").Trim();

            if (processo.Length >= 6)
            {
                processo = txtLocalizaProcesso.Text;
            }
            else
            {
                processo = txtLocalizaProcesso.Text.Replace("/", "").Trim();
            }

            bindingSource.Filter = "Fk_processo LIKE '" + processo + "%'";
        }

        private DataTable getItens(string processo)
        {

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            //var query = "Select I.Numero_serie, "+
            //            "CASE WHEN (P.Importador = '252' OR P.Importador = '265') THEN " +
            //            "REPLACE(REPLACE(I.Descricao_Produto, CHAR(13), ''), CHAR(10), '') + ' PN('+ I.Produto +');'+'SN{'+I.Numero_serie+'}SN' ELSE " +
            //            "REPLACE(REPLACE(I.Descricao_Produto, CHAR(13), ''), CHAR(10), '') + ' Part.Number: #PN=' + I.Produto +'#'+' Nº. Serie: #SN='+ I.Numero_serie + '#' END AS 'Descricao_Produto' " +
            //            "from ItensFaturas I "+
            //            "inner join Processos P on P.Codigo = I.Processo " +
            //            "inner join Tributacao_Item_Fatura T on i.Fatura_Id = t.Fatura_Id and i.Sequencial = t.Sequencial_Item " +
            //            "and t.Regime_Tributacao_II = '5' and i.Processo =@processo";

            var query = "Select I.Numero_serie,                                                                                                                                                       " +
            "CASE WHEN (P.Importador = '252' OR P.Importador = '265') THEN                                                                                                                " +
            "REPLACE(REPLACE(I.Descricao_Produto, CHAR(13), ''), CHAR(10), '') + ' PN('+ I.Produto +');'+'SN{'+I.Numero_serie+'}SN' ELSE                                                  " +
            "REPLACE(REPLACE(I.Descricao_Produto, CHAR(13), ''), CHAR(10), '') + ' Part.Number: #PN=' + I.Produto +'#'+' Nº. Serie: #SN='+ I.Numero_serie + '#' END AS 'Descricao_Produto'" +
            "from Processos P                                                                                                                                                             " +
            "inner join Faturas F on P.Codigo = F.Processo                                                                                                                                " +
            "inner join ItensFaturas I on I.Fatura_Id = F.Fatura_Id                                                                                                                       " +
            "inner join Tributacao_Item_Fatura T on I.Fatura_Id = T.Fatura_Id and I.Sequencial = T.Sequencial_Item                                                                        " +
            "and T.Regime_Tributacao_II = '5' and P.Codigo =@processo                                                                                                                   ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@processo", processo);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        //private string CodigoFatura(string processo)
        //{
        //    string Cod_fatura = "";
        //    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
        //    var query = "Select Codigo from Faturas where Processo  =@processo";

        //    using (SqlCommand cmd = new SqlCommand(query, conn))
        //    {
        //        cmd.Parameters.AddWithValue("@processo", processo);
        //        using (SqlDataReader reader = cmd.ExecuteReader())
        //        {
        //            if (reader.HasRows)
        //            {
        //                while (reader.Read())
        //                {
        //                    Cod_fatura = Cod_fatura + reader[0].ToString() + " / ";
        //                }
        //            }
        //        }
        //    }
        //    return Cod_fatura;
        //}

        private void dataGridView_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dataGridView.Columns[e.ColumnIndex].Name == "PDF")
            {
                var Id = dataGridView.Rows[e.RowIndex].Cells["ID"].Value;

                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "select r.Tipo_Requerimento,r.Fk_Processo,i.Razao_Social,i.CNPJ_CPF_COMPLETO,p.Codigo_Cliente,i.Tipo_Importador, " +
                                "r.Opcao_Tributario,r.Numero_Rat,r.Descricao,f.Descricao as Fundamentacao, " +
                                "p.RCR_LOCAL,(i.Endereco + ' - '+ i.Numero + ' - ' + case when i.Complemento is null then '' else i.Complemento +' - '  " +
                                "end +i.Bairro + ' - ' +i.Cidade + ' - ' +i.CEP + ' - ' +i.UF) as Endereco, " +
                                "r.Inf_Complementares,r.ID,c.ProcessoContratoDIANA ,Cast(C.Vigencia_inicial as Date) as Vigencia_inicial,Cast(C.Vigencia_final as Date) as Vigencia_final ,Cast(C.Data_prorrogacao as Date) as Data_prorrogacao, " +
                                "R.Inst_Requerimento,u.Razao_Social as interessado,r.Outros " +
                                "from rat r " +
                                "inner join processos p on (r.fk_processo = p.codigo)  " +
                                "inner join importadores i on (i.codigo = p.Importador) " +
                                "inner join Contratos c on (p.Contrato = c.Contrato and p.Importador = c.Importador) " +
                                "left join Fundamentacao_RCR f on (f.codigo = r.Fund_Pedido)  " +
                                 "left join Procuradores u on (u.Codigo = r.Interessado) " +
                                "where r.id = @id";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    //     cmd.Parameters.AddWithValue("@codigo", txtCodigo.Text);
                    cmd.Parameters.AddWithValue("@id", Id);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            reader.Read();
                            try
                            {

                                SaveFileDialog dlg = new SaveFileDialog();
                                dlg.Filter = "*PDF files (*.pdf)|*.pdf";
                                dlg.FilterIndex = 2;
                                dlg.RestoreDirectory = true;
                                dlg.FileName = "RAT_" + txtProcesso.Text.Replace("/", "");


                                string fileName = string.Empty;

                                if (dlg.ShowDialog() == DialogResult.OK)
                                {
                                    fileName = dlg.FileName;

                                    ReportViewer RV = new ReportViewer();
                                    RV.ProcessingMode = ProcessingMode.Local;
                                    RV.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Processos.rptRAT.rdlc";

                                    ReportDataSource rps = new ReportDataSource("DataSet1", getItens(reader["Fk_Processo"].ToString()));
                                    RV.LocalReport.DataSources.Clear();
                                    RV.LocalReport.DataSources.Add(rps);

                                    IList<ReportParameter> parametros = new List<ReportParameter>();


                                    if (Convert.ToBoolean(reader["Tipo_Requerimento"].ToString()) == true)
                                    {
                                        parametros.Add(new ReportParameter("TipoRequerimento", "1"));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("TipoRequerimento", "0"));
                                    }

                                    if (Convert.ToBoolean(reader["Opcao_Tributario"].ToString()) == true)
                                    {
                                        parametros.Add(new ReportParameter("OpcaoTributario", "1"));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("OpcaoTributario", "0"));
                                    }

                                    if (reader["Tipo_Importador"].ToString() == "1")
                                    {
                                        parametros.Add(new ReportParameter("CPFCNPJ", "1"));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("CPFCNPJ", "0"));
                                    }

                                    if (Convert.ToInt32(reader["Inst_Requerimento"].ToString()) == 1)
                                    {
                                        parametros.Add(new ReportParameter("InstrucaoRequerimento1", "1"));
                                        parametros.Add(new ReportParameter("InstrucaoRequerimento2", "0"));
                                        parametros.Add(new ReportParameter("InstrucaoRequerimento3", "0"));
                                        parametros.Add(new ReportParameter("InstrucaoRequerimento4", "0"));
                                    }
                                    else
                                        if (Convert.ToInt32(reader["Inst_Requerimento"].ToString()) == 2)
                                        {
                                            parametros.Add(new ReportParameter("InstrucaoRequerimento1", "0"));
                                            parametros.Add(new ReportParameter("InstrucaoRequerimento2", "1"));
                                            parametros.Add(new ReportParameter("InstrucaoRequerimento3", "0"));
                                            parametros.Add(new ReportParameter("InstrucaoRequerimento4", "0"));
                                        }
                                        else
                                            if (Convert.ToInt32(reader["Inst_Requerimento"].ToString()) == 3)
                                            {
                                                parametros.Add(new ReportParameter("InstrucaoRequerimento1", "0"));
                                                parametros.Add(new ReportParameter("InstrucaoRequerimento2", "0"));
                                                parametros.Add(new ReportParameter("InstrucaoRequerimento3", "1"));
                                                parametros.Add(new ReportParameter("InstrucaoRequerimento4", "0"));
                                            }
                                            else
                                                if (Convert.ToInt32(reader["Inst_Requerimento"].ToString()) == 4)
                                                {
                                                    parametros.Add(new ReportParameter("InstrucaoRequerimento1", "0"));
                                                    parametros.Add(new ReportParameter("InstrucaoRequerimento2", "0"));
                                                    parametros.Add(new ReportParameter("InstrucaoRequerimento3", "0"));
                                                    parametros.Add(new ReportParameter("InstrucaoRequerimento4", "1"));
                                                }
                                                else
                                                {
                                                    parametros.Add(new ReportParameter("InstrucaoRequerimento1", "0"));
                                                    parametros.Add(new ReportParameter("InstrucaoRequerimento2", "0"));
                                                    parametros.Add(new ReportParameter("InstrucaoRequerimento3", "0"));
                                                    parametros.Add(new ReportParameter("InstrucaoRequerimento4", "0"));
                                                }

                                    parametros.Add(new ReportParameter("Processo", txtProcesso.Text));
                                    parametros.Add(new ReportParameter("Outros", reader["Outros"].ToString()));
                                    parametros.Add(new ReportParameter("RazaoSocial", reader["Razao_Social"].ToString()));
                                    parametros.Add(new ReportParameter("CNPJ", reader["CNPJ_CPF_COMPLETO"].ToString()));
                                    parametros.Add(new ReportParameter("Endereco", reader["Endereco"].ToString()));
                                    parametros.Add(new ReportParameter("Fundamentacao", reader["Fundamentacao"].ToString()));

                                    //string _info_complementar = string.Empty;
                                    //if (string.IsNullOrEmpty(reader["ProcessoContratoDIANA"].ToString()))
                                    //{
                                    //    _info_complementar = reader["Descricao"].ToString();
                                    //}
                                    //else
                                    //{
                                    //    _info_complementar = reader[18].ToString();
                                    //    _info_complementar += string.Format("\n\nNo. de processo de contratos SRRF07/DIANA:\n\nOs contratos completos, que justificam a aplicação do regime aduaneiro especial, e seus eventuais aditivos, autorizações de serviços e documentos complementares estão juntados no dossiê digital No.{0}",
                                    //        reader["ProcessoContratoDIANA"].ToString());
                                    //}

                                    parametros.Add(new ReportParameter("DataInicial", reader["Vigencia_inicial"].ToString()));
                                    if (!string.IsNullOrEmpty(reader["Data_prorrogacao"].ToString()))
                                    {
                                        parametros.Add(new ReportParameter("DataFinal", reader["Data_prorrogacao"].ToString()));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("DataFinal", reader["Vigencia_final"].ToString()));
                                    }

                                    parametros.Add(new ReportParameter("Descricao", reader["Descricao"].ToString()));
                                    parametros.Add(new ReportParameter("InfComplementares", reader["Inf_Complementares"].ToString()));
                                    parametros.Add(new ReportParameter("Interessado", reader["interessado"].ToString()));
                                    parametros.Add(new ReportParameter("Data", DateTime.Now.Date.ToString()));

                                    RV.LocalReport.SetParameters(parametros);

                                    Warning[] warnings;
                                    string[] streamids;
                                    string mimeType;
                                    string encoding;
                                    string extension;

                                    byte[] bytePDF = RV.LocalReport.Render("Pdf", null, out mimeType, out encoding, out extension, out streamids, out warnings);

                                    //  FileStream fileStreamPDF = null;
                                    //  string nomeArquivoPDF = Path.GetTempPath() + "RAT_" + DateTime.Now.ToString("dd-MM-yyyy") + ".pdf";

                                    //   fileStreamPDF = new FileStream(nomeArquivoPDF, FileMode.Create);
                                    //  fileStreamPDF.Write(bytePDF, 0, bytePDF.Length);
                                    //  fileStreamPDF.Close();


                                    FileStream newFile = new FileStream(dlg.FileName, FileMode.Create);
                                    newFile.Write(bytePDF, 0, bytePDF.Length);
                                    newFile.Close();


                                }                           
                            }
                            catch (Exception ex)
                            {
                                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            }
                        }
                    }
                }
            }
        }

        private void dataGridView_CellMouseEnter(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex < 0 || e.RowIndex < 0)
            {
                return;
            }
            var dataGridView = (sender as DataGridView);
            //Check the condition as per the requirement casting the cell value to the appropriate type
            if (e.ColumnIndex == 0)
                dataGridView.Cursor = Cursors.Hand;
            else
                dataGridView.Cursor = Cursors.Default;
        }

        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            if (txtProcesso.MaskCompleted)
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                var query = "select C.Descricao,c.ProcessoContratoDIANA from Processos P "+
                            "inner join Contratos C on P.Contrato = C.Contrato and P.Importador = C.Importador "+
                            "where Codigo = @processo";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@processo", txtProcesso.Text);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            reader.Read();

                            string _info_complementar = string.Empty;

                            _info_complementar += string.Format("\n\nNo. de processo de contratos SRRF07/DIANA:\n\nOs contratos completos, que justificam a aplicação do regime aduaneiro especial, e seus eventuais aditivos, autorizações de serviços e documentos complementares estão juntados no dossiê digital No.{0}" + System.Environment.NewLine + System.Environment.NewLine + " N°. Do Contrato:{1}" + System.Environment.NewLine + "Artigo/Item:" + System.Environment.NewLine + "Escopo:",
                                    reader["ProcessoContratoDIANA"].ToString(), reader["Descricao"].ToString());
                            txtDescricao.Text = _info_complementar;
                        }
                    }
                }
            }
            else
            {
                txtDescricao.Clear();
            }
        }

        private void dataGridView_SelectionChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(bindingSource.GetRelatedCurrencyManager("Inst_Requerimento").Current.ToString()))
            {
                int n = Convert.ToInt32(bindingSource.GetRelatedCurrencyManager("Inst_Requerimento").Current.ToString());
                switch (n)
                {
                    case 0:
                        rdbContratoPrestacao.Checked = false;
                        rdbProcuracao.Checked = false;
                        rdbOutros.Checked = false;
                        rdbContratoArrendamento.Checked = false;
                        break;
                    case 1:
                        rdbContratoPrestacao.Checked = false;
                        rdbProcuracao.Checked = false;
                        rdbOutros.Checked = false;
                        rdbContratoArrendamento.Checked = true;
                        break;
                    case 2:
                        rdbProcuracao.Checked = false;
                        rdbOutros.Checked = false;
                        rdbContratoArrendamento.Checked = false;
                        rdbContratoPrestacao.Checked = true;
                        break;
                    case 3:
                        rdbContratoPrestacao.Checked = false;
                        rdbOutros.Checked = false;
                        rdbContratoArrendamento.Checked = false;
                        rdbProcuracao.Checked = true;
                        break;
                    case 4:
                        rdbContratoPrestacao.Checked = false;
                        rdbProcuracao.Checked = false;
                        rdbContratoArrendamento.Checked = false;
                        rdbOutros.Checked = true;
                        break;
                }
            }
        }
    }
}
