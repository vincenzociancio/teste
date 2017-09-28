using Microsoft.Reporting.WinForms;
using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmControleValidadeDocumentos : MS2000.Desktop.Componentes.MSForm01
    {
        internal delegate void SetDataSourceDelegate(DataTable table);
        DataTable table;
        public FrmControleValidadeDocumentos()
        {
            InitializeComponent();
        }

        private void getClientes()
        {
            string query = "select Codigo, Razao_Social+'  ( '+CNPJ_CPF_COMPLETO+' )' as 'campo' from Importadores WHERE Codigo NOT IN ('X111','X000') order by Razao_Social";

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

            mcbbClientes.DataSource = null;
            mcbbClientes.DataSource = table;
            mcbbClientes.DisplayMember = "campo";
            mcbbClientes.ValueMember = "Codigo";
            mcbbClientes.SelectedIndex = -1;
        }

        private void getContratos(string importador)
        {
            string query = "SELECT Contrato, Descricao FROM Contratos WHERE Importador = @Importador";

            DataTable table;

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Importador", importador);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
            }

            mcbbContratos.DataSource = null;
            mcbbContratos.DataSource = table;
            mcbbContratos.DisplayMember = "Descricao";
            mcbbContratos.ValueMember = "Contrato";
            mcbbContratos.SelectedIndex = -1;
        }

        private void getLocalInventerio(string importador, string contrato)
        {
            string query = "SELECT Local, Descricao FROM Locais_Inventario WHERE Importador = @Importador and Contrato = @Contrato";

            DataTable table;

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Importador", importador);
                    cmd.Parameters.AddWithValue("@Contrato", contrato);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
            }

            mcbbLocalInventario.DataSource = null;
            mcbbLocalInventario.DataSource = table;
            mcbbLocalInventario.DisplayMember = "Descricao";
            mcbbLocalInventario.ValueMember = "Local";
            mcbbLocalInventario.SelectedIndex = -1;
        }

        private void getTipoDocumento()
        {
            string query = "SELECT codigo, descricao FROM Tipo_Documentos order by descricao";

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

            mcbbTipoDocumento.DataSource = null;
            mcbbTipoDocumento.DataSource = table;
            mcbbTipoDocumento.DisplayMember = "descricao";
            mcbbTipoDocumento.ValueMember = "codigo";
            mcbbTipoDocumento.SelectedIndex = -1;
        }

        private void getSubTipoDocumentos(string tipo)
        {
            string query = "SELECT Tipo_doc, codigo, Descricao " +
                           "FROM Sub_Tipo_Documentos Where Tipo_doc = @Tipo_doc ";

            DataTable table;

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Tipo_doc", tipo);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
            }

            mcbbSubTipoDocumento.DataSource = null;
            mcbbSubTipoDocumento.DataSource = table;
            mcbbSubTipoDocumento.DisplayMember = "Descricao";
            mcbbSubTipoDocumento.ValueMember = "codigo";
            mcbbSubTipoDocumento.SelectedIndex = -1;
        }

        private void getStatus()
        {
            string query = "SELECT CODIGO, DESCRICAO FROM Tipos_status_documentos";

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

            mcbbStatus.DataSource = null;
            mcbbStatus.DataSource = table;
            mcbbStatus.DisplayMember = "DESCRICAO";
            mcbbStatus.ValueMember = "CODIGO";
            mcbbStatus.SelectedIndex = -1;
        }

        //private DataTable getControle()
        //{
        //    string query;

        //    if (!ckbStatus.Checked && !ckbContratos.Checked &&
        //        !ckbTipoDocumento.Checked && !ckbLocal.Checked &&
        //        !ckbSubTipoDocumento.Checked && !ckbClientes.Checked &&
        //        !txtProcesso.MaskCompleted && !txtDe.MaskCompleted &&
        //        !txtAte.MaskCompleted)
        //    {
        //        query = "SELECT Top 20000 D.Arquivo, D.Importador, D.Processo, D.contrato, D.local, D.Tipo_Doc, TD.descricao as DescTipo, D.Sub_Tipo_Doc, STD.Descricao as DescSubTipo, D.Numero_Doc, D.Pagina, D.Codigo, D.Vigencia_inicial, D.Vigencia_final, D.Data_baixa, D.Data_renovacao, D.Status, TSD.DESCRICAO as DescStatus, D.Pdf ";
        //    }
        //    else
        //    {
        //        query = "SELECT  D.Arquivo, D.Importador, D.Processo, D.contrato, D.local, D.Tipo_Doc, TD.descricao as DescTipo, D.Sub_Tipo_Doc, STD.Descricao as DescSubTipo, D.Numero_Doc, D.Pagina, D.Codigo, D.Vigencia_inicial, D.Vigencia_final, D.Data_baixa, D.Data_renovacao, D.Status, TSD.DESCRICAO as DescStatus, D.Pdf ";
        //    }


        //    query = query + ",P.NR_DECLARACAO_IMP,P.Numero_RCR, P.TR_VAL_II,P.TR_VAL_IPI,P.TR_VAL_PIS,P.TR_VAL_COFINS,P.Nome_seguradora_GAR,P.nome_fiador_GAR,p.Fk_Fiador  " +
        //                   "FROM Documentos D " +
        //                   "INNER JOIN Processos P on D.Processo = P.Codigo " +
        //                   "LEFT JOIN Tipo_Documentos TD ON D.Tipo_Doc = TD.codigo " +
        //                   "LEFT JOIN Sub_Tipo_Documentos STD ON D.Tipo_Doc = STD.Tipo_doc AND D.Sub_Tipo_Doc = STD.codigo " +
        //                   "LEFT JOIN Tipos_status_documentos AS TSD ON D.Status = TSD.CODIGO " +
        //                   "WHERE D.Pagina = '1' ";

        //    //if (!ckbStatus.Checked && !ckbContratos.Checked &&
        //    //    !ckbTipoDocumento.Checked && !ckbLocal.Checked &&
        //    //    !ckbSubTipoDocumento.Checked && !ckbClientes.Checked &&
        //    //    !txtProcesso.MaskCompleted && !txtDe.MaskCompleted &&
        //    //    !txtAte.MaskCompleted)
        //    //{
        //    //    bsControleDocumento.DataSource = getControle(query);
        //    //    grvControle.DataSource = bsControleDocumento;
        //    //    bindingNavigator.BindingSource = bsControleDocumento;
        //    //}
        //    //else
        //    //{
        //    if (!ckbStatus.Checked)
        //    {
        //        query += " AND D.Status = '" + mcbbStatus.SelectedValue + "'";
        //    }

        //    if (!string.IsNullOrEmpty(txtDe.Text.Replace("/", "").Trim()))
        //    {
        //        query += " AND D.Vigencia_final >= '" + txtDe.Text + "'";
        //    }

        //    if (!string.IsNullOrEmpty(txtAte.Text.Replace("/", "").Trim()))
        //    {
        //        query += " AND D.Vigencia_final <= '" + txtAte.Text + "'";
        //    }

        //    if (txtProcesso.MaskCompleted)
        //        query += " AND D.Processo = '" + txtProcesso.Text + "'";

        //    if (!ckbContratos.Checked)
        //        query += " AND D.Contrato = '" + mcbbContratos.SelectedValue + "'";

        //    if (!ckbSubTipoDocumento.Checked)
        //        query += " AND  D.Sub_Tipo_Doc = '" + mcbbSubTipoDocumento.SelectedValue + "'";

        //    if (!ckbTipoDocumento.Checked)
        //        query += " AND D.Tipo_Doc  = '" + mcbbTipoDocumento.SelectedValue + "'";

        //    if (!ckbLocal.Checked)
        //        query += " AND D.Local = '" + mcbbLocalInventario.SelectedValue + "'";

        //    if (!ckbClientes.Checked)
        //        query += " AND D.Importador = '" + mcbbClientes.SelectedValue + "'";

        //    using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
        //    {

        //        using (SqlCommand cmd = new SqlCommand(query, conn))
        //        {
        //            using (SqlDataReader reader = cmd.ExecuteReader())
        //            {
        //                DataTable table = new DataTable();
        //                table.Load(reader);
        //                return table;
        //            }
        //        }
        //    }
        //}

        private void setDataSource(DataTable table)
        {
            // Invoke method if required:
            if (this.InvokeRequired)
            {
                this.Invoke(new SetDataSourceDelegate(setDataSource), table);
            }
            else
            {
                //  grvControle.DataSource = table;
                bsControleDocumento.DataSource = table;
                grvControle.DataSource = bsControleDocumento;
                bindingNavigator.BindingSource = bsControleDocumento;
                pnlProcessa.Visible = false;
            }
        }

        private void FrmControleValidadeDocumentos_Load(object sender, EventArgs e)
        {
            //  
            getClientes();
            getTipoDocumento();
            // getSubTipoDocumentos();
            getStatus();

            bindingNavigator.DeleteItem = null;

            txtLocalizar.Enabled = true;
            grvControle.AutoGenerateColumns = false;
            // bsControleDocumento.DataSource = getControle();
            // grvTransmittal.DataSource = bsControleDocumento;
            // bindingNavigator.BindingSource = bsControleDocumento;
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            using (var frmCadastro = new FrmControleValidadeDocumentosCadastro())
            {
                frmCadastro.processo = ((DataRowView)this.bsControleDocumento.Current).Row["Processo"].ToString();
                frmCadastro.arquivo = ((DataRowView)this.bsControleDocumento.Current).Row["Arquivo"].ToString();
                frmCadastro.vigenciaInicial = ((DataRowView)this.bsControleDocumento.Current).Row["Vigencia_Inicial"].ToString();
                frmCadastro.vigenciaFinal = ((DataRowView)this.bsControleDocumento.Current).Row["Vigencia_Final"].ToString();
                frmCadastro.dataBaixa = ((DataRowView)this.bsControleDocumento.Current).Row["Data_Baixa"].ToString();
                frmCadastro.dataProrrogacao = ((DataRowView)this.bsControleDocumento.Current).Row["Data_renovacao"].ToString();
                frmCadastro.status = ((DataRowView)this.bsControleDocumento.Current).Row["CodStatus"].ToString();
                frmCadastro.PDF = ((DataRowView)this.bsControleDocumento.Current).Row["Pdf"].ToString();
                frmCadastro.tipoDoc = ((DataRowView)this.bsControleDocumento.Current).Row["Tipo_Doc"].ToString();
                frmCadastro.subTipoDoc = ((DataRowView)this.bsControleDocumento.Current).Row["Sub_Tipo_Doc"].ToString();
                frmCadastro.numeroDoc = ((DataRowView)this.bsControleDocumento.Current).Row["Numero_Doc"].ToString();
                frmCadastro.codigo = ((DataRowView)this.bsControleDocumento.Current).Row["Codigo"].ToString();
                frmCadastro.di = txtDI.Text;
                frmCadastro.rcr = txtRCR.Text;
                frmCadastro.valorII = txtValorII.Text;
                frmCadastro.valorIPI = txtValorIPI.Text;
                frmCadastro.valorPIS = txtValorPIS.Text;
                frmCadastro.valorCOFINS = txtValorCOFINS.Text;
                frmCadastro.seguradora = txtSeguradora.Text;
                frmCadastro.fiador = string.IsNullOrEmpty(txtFiador.Text) ? "-1" : ((DataRowView)this.bsControleDocumento.Current).Row["Fk_Fiador"].ToString();

                if (FrmPrincipal.ShowModalMdiChildren(frmCadastro) == DialogResult.OK)
                {
                    frmCadastro.Close();                   
                }
                btnFiltrar_Click(null, null);
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnFiltrar_Click(object sender, EventArgs e)
        {
            pnlProcessa.Visible = true;
            progressBar1.Style = ProgressBarStyle.Marquee;
            System.Threading.Thread thread = new System.Threading.Thread(new System.Threading.ThreadStart(loadTable));
            thread.Start();
            // progressBar1.Value = 0;     
        }
        private string GetSelecetedValueCliente()
        {
            if (mcbbClientes.InvokeRequired)
                return (string)mcbbClientes.Invoke(new Func<string>(GetSelecetedValueCliente));
            else
                return mcbbClientes.SelectedValue.ToString();
        }
        private string GetSelecetedValueStatus()
        {
            if (mcbbStatus.InvokeRequired)
                return (string)mcbbStatus.Invoke(new Func<string>(GetSelecetedValueStatus));
            else
                return mcbbStatus.SelectedValue.ToString();
        }

        private string GetSelecetedValueContratos()
        {
            if (mcbbContratos.InvokeRequired)
                return (string)mcbbContratos.Invoke(new Func<string>(GetSelecetedValueContratos));
            else
                return mcbbContratos.SelectedValue.ToString();
        }
        private string GetSelecetedValueLocal()
        {
            if (mcbbLocalInventario.InvokeRequired)
                return (string)mcbbLocalInventario.Invoke(new Func<string>(GetSelecetedValueLocal));
            else
                return mcbbLocalInventario.SelectedValue.ToString();
        }
        private string GetSelecetedValueTipo()
        {
            if (mcbbTipoDocumento.InvokeRequired)
                return (string)mcbbTipoDocumento.Invoke(new Func<string>(GetSelecetedValueTipo));
            else
                return mcbbTipoDocumento.SelectedValue.ToString();
        }
        private string GetSelecetedValueSubTipo()
        {
            if (mcbbSubTipoDocumento.InvokeRequired)
                return (string)mcbbSubTipoDocumento.Invoke(new Func<string>(GetSelecetedValueSubTipo));
            else
                return mcbbSubTipoDocumento.SelectedValue.ToString();
        }
        private void loadTable()
        {
            try
            {
                string query;

                if (!ckbStatus.Checked && !ckbContratos.Checked &&
                    !ckbTipoDocumento.Checked && !ckbLocal.Checked &&
                    !ckbSubTipoDocumento.Checked && !ckbClientes.Checked &&
                    !txtProcesso.MaskCompleted && !txtDe.MaskCompleted &&
                    !txtAte.MaskCompleted)
                {
                    query = "SELECT Top 20000 D.Arquivo, D.Importador, D.Processo, D.contrato, D.local, D.Tipo_Doc, TD.descricao as DescTipo, D.Sub_Tipo_Doc, STD.Descricao as DescSubTipo, D.Numero_Doc, D.Pagina, D.Codigo, D.Vigencia_inicial, D.Vigencia_final, D.Data_baixa, D.Data_renovacao, D.Status as CodStatus, TSD.DESCRICAO as Status, D.Pdf ";
                }
                else
                {
                    query = "SELECT  D.Arquivo, D.Importador, D.Processo, D.contrato, D.local, D.Tipo_Doc, TD.descricao as DescTipo, D.Sub_Tipo_Doc, STD.Descricao as DescSubTipo, D.Numero_Doc, D.Pagina, D.Codigo, D.Vigencia_inicial, D.Vigencia_final, D.Data_baixa, D.Data_renovacao, D.Status as CodStatus, TSD.DESCRICAO as Status, D.Pdf ";
                }


                query = query + ",P.NR_DECLARACAO_IMP,P.Numero_RCR, P.TR_VAL_II,P.TR_VAL_IPI,P.TR_VAL_PIS,P.TR_VAL_COFINS,P.Nome_seguradora_GAR,P.nome_fiador_GAR,p.Fk_Fiador  " +
                               "FROM Documentos D " +
                               "INNER JOIN Processos P on D.Processo = P.Codigo " +
                               "LEFT JOIN Tipo_Documentos TD ON D.Tipo_Doc = TD.codigo " +
                               "LEFT JOIN Sub_Tipo_Documentos STD ON D.Tipo_Doc = STD.Tipo_doc AND D.Sub_Tipo_Doc = STD.codigo " +
                               "LEFT JOIN Tipos_status_documentos AS TSD ON D.Status = TSD.CODIGO " +
                               "WHERE D.Pagina = '1' ";


                if (!ckbStatus.Checked)
                {
                    query += " AND D.Status = '" + GetSelecetedValueStatus() + "'";
                }

                if (!string.IsNullOrEmpty(txtDe.Text.Replace("/", "").Trim()))
                {
                    query += " AND D.Vigencia_final >= '" + txtDe.Text + "'";
                }

                if (!string.IsNullOrEmpty(txtAte.Text.Replace("/", "").Trim()))
                {
                    query += " AND D.Vigencia_final <= '" + txtAte.Text + "'";
                }

                if (txtProcesso.MaskCompleted)
                    query += " AND D.Processo = '" + txtProcesso.Text + "'";

                if (!ckbContratos.Checked)
                    query += " AND D.Contrato = '" + GetSelecetedValueContratos() + "'";

                if (!ckbSubTipoDocumento.Checked)
                    query += " AND  D.Sub_Tipo_Doc = '" + GetSelecetedValueSubTipo() + "'";

                if (!ckbTipoDocumento.Checked)
                    query += " AND D.Tipo_Doc  = '" + GetSelecetedValueTipo() + "'";

                if (!ckbLocal.Checked)
                    query += " AND D.Local = '" + GetSelecetedValueLocal() + "'";

                if (!ckbClientes.Checked)
                    query += " AND D.Importador = '" + GetSelecetedValueCliente() + "'";

                query += " ORDER BY D.Processo ";

                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            table = new DataTable();
                            table.Load(reader);
                            setDataSource(table);
                            // return table;
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void ckbStatus_CheckedChanged(object sender, EventArgs e)
        {
            mcbbStatus.Enabled = !ckbStatus.Checked;
            mcbbStatus.SelectedIndex = -1;
        }

        private void ckbClientes_CheckedChanged(object sender, EventArgs e)
        {
            mcbbClientes.Enabled = !ckbClientes.Checked;
            mcbbClientes.SelectedIndex = -1;
        }

        private void ckbLocal_CheckedChanged(object sender, EventArgs e)
        {
            mcbbLocalInventario.Enabled = !ckbLocal.Checked;
            mcbbLocalInventario.SelectedIndex = -1;
        }

        private void ckbSubTipoDocumento_CheckedChanged(object sender, EventArgs e)
        {
            mcbbSubTipoDocumento.Enabled = !ckbSubTipoDocumento.Checked;
            mcbbSubTipoDocumento.SelectedIndex = -1;
        }

        private void ckbContratos_CheckedChanged(object sender, EventArgs e)
        {
            mcbbContratos.Enabled = !ckbContratos.Checked;
            mcbbContratos.SelectedIndex = -1;
        }

        private void ckbTipoDocumento_CheckedChanged(object sender, EventArgs e)
        {
            mcbbTipoDocumento.Enabled = !ckbTipoDocumento.Checked;
            mcbbTipoDocumento.SelectedIndex = -1;
        }

        private void txtLocalizar_TextChanged(object sender, EventArgs e)
        {
            bsControleDocumento.Filter = "Numero_Doc LIKE '" + txtLocalizar.Text + "%'";
        }

        private void mcbbClientes_SelectionChangeCommitted(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(mcbbClientes.SelectedValue.ToString()))
                getContratos(mcbbClientes.SelectedValue.ToString());
        }

        private void mcbbContratos_SelectionChangeCommitted(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(mcbbClientes.SelectedValue.ToString()))
                getLocalInventerio(mcbbClientes.SelectedValue.ToString(), mcbbContratos.SelectedValue.ToString());
            else
                MessageBox.Show("Favor informar o importador.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }


        private void grvControle_SelectionChanged(object sender, EventArgs e)
        {

            if ((bsControleDocumento.Count > 0) && (grvControle.SelectedRows.Count > 0))
            {
                if ((grvControle.SelectedRows[0].Cells["Tipo_Doc"].Value.ToString() == "PROC") &&
                    (grvControle.SelectedRows[0].Cells["Sub_Tipo_Doc"].Value.ToString() == "11"))
                {
                    txtDI.Text = grvControle.SelectedRows[0].Cells["NR_DECLARACAO_IMP"].Value.ToString();
                    txtRCR.Text = grvControle.SelectedRows[0].Cells["Numero_RCR"].Value.ToString();
                    txtValorII.Text = grvControle.SelectedRows[0].Cells["TR_VAL_II"].Value.ToString();
                    txtValorIPI.Text = grvControle.SelectedRows[0].Cells["TR_VAL_IPI"].Value.ToString();
                    txtValorPIS.Text = grvControle.SelectedRows[0].Cells["TR_VAL_PIS"].Value.ToString();
                    txtValorCOFINS.Text = grvControle.SelectedRows[0].Cells["TR_VAL_COFINS"].Value.ToString();
                    txtSeguradora.Text = grvControle.SelectedRows[0].Cells["Nome_seguradora_GAR"].Value.ToString();
                    txtFiador.Text = grvControle.SelectedRows[0].Cells["nome_fiador_GAR"].Value.ToString();
                }
                else
                {
                    txtDI.Clear();
                    txtRCR.Clear();
                    txtValorII.Clear();
                    txtValorIPI.Clear();
                    txtValorPIS.Clear();
                    txtValorCOFINS.Clear();
                    txtSeguradora.Clear();
                    txtFiador.Clear();
                }
            }
        }

        private void mcbbTipoDocumento_SelectionChangeCommitted(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(mcbbTipoDocumento.SelectedValue.ToString()))
                getSubTipoDocumentos(mcbbTipoDocumento.SelectedValue.ToString());
        }

        private void btnItens_Click(object sender, EventArgs e)
        {
            try
            {
                SaveFileDialog saveFileDialog1 = new SaveFileDialog();

                saveFileDialog1.Filter = "*PDF files (*.pdf)|*.pdf";
                saveFileDialog1.FilterIndex = 2;
                saveFileDialog1.RestoreDirectory = true;
                saveFileDialog1.FileName = "ControleValidadeDocumento" ;

                if (saveFileDialog1.ShowDialog() == DialogResult.OK)
                {

                    ReportViewer RV = new ReportViewer();
                    RV.ProcessingMode = ProcessingMode.Local;
                    RV.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Controle.rptControleDocumento.rdlc";

                    ReportDataSource rps = new ReportDataSource("ds01", table);
                    RV.LocalReport.DataSources.Clear();
                    RV.LocalReport.DataSources.Add(rps);

                    IList<ReportParameter> parametros = new List<ReportParameter>();
                    parametros.Add(new ReportParameter("RazaoSocial", "Teste"));
                    //parametros.Add(new ReportParameter("Status", table.Columns["DescStatus"].ToString()));
                 
                    RV.LocalReport.SetParameters(parametros);

                    Warning[] warnings;
                    string[] streamids;
                    string mimeType;
                    string encoding;
                    string extension;

                    byte[] bytePDF = RV.LocalReport.Render("Pdf", null, out mimeType, out encoding, out extension, out streamids, out warnings);

                    FileStream newFile = new FileStream(saveFileDialog1.FileName, FileMode.Create);
                    newFile.Write(bytePDF, 0, bytePDF.Length);
                    newFile.Close();

                    MessageBox.Show("Arquivo gerado com Sucesso", "Alteração", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
