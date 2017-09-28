using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Ferramenta
{
    public partial class FrmExtracaoDocumentos : Form
    {
        const int CODIGO_CAMINHO_DOCUMENTOS_PROCESSO = 2;
        string _caminho_doc_processos;

        public FrmExtracaoDocumentos()
        {
            InitializeComponent();
            AtualizaGrid();

            _caminho_doc_processos = (new CaminhoDiretorioServidor().GetCaminhoById(CODIGO_CAMINHO_DOCUMENTOS_PROCESSO)).Caminho;
        }

        private DataTable GetImportadores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "Select codigo,Razao_Social, CNPJ_CPF_COMPLETO from Importadores where " +
                //"Ativo = 1 and not codigo like '00%' order by Razao_Social";
                           "not codigo like '00%' and  Razao_Social like @razao_social  order by Razao_Social";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@razao_social", string.Format("{0}%", txtLocaliza.Text));
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private string VerificaFaixa(string a)
        {
            string v = a.Substring(4, 7);
            int n = Convert.ToInt32(v);
            var f = Convert.ToInt32(n / 10000);
            string d = string.Empty;

            if (n % 10000 != 0)
            {
                f += 1;
            }

            switch (Convert.ToString(f).Length)
            {
                case 1:
                    d = "000" + f + "0000"; // 1..9
                    break;
                case 2:
                    d = "00" + f + "0000"; // 10..99
                    break;
                case 3:
                    d = "0" + f + "0000"; // 100..999
                    break;
                case 4:
                    d = "" + f + "0000"; // 1000..9999                    
                    break;
            }
            return d;
        }

        private void CopiandoDocumentos(List<Documentos> documentos)
        {
            //ProgresssBar
            pbDoc.Visible = true;
            pbDoc.Minimum = 1;
            pbDoc.Value = 1;
            pbDoc.Step = 1;
            int cont = documentos.ToList().Count();
            pbDoc.Maximum = cont;
            //-------------

            foreach (var doc in documentos)
            {
                lbDoc.Text = string.Format("Documentos do processo: {0} - {1}", doc.Processo, cont);
                string extensao = doc.PDF == 1 ? ".pdf" : ".jpg";
                string pathFull = string.Format(@"{0}\{1}\{2}{3}", _caminho_doc_processos, VerificaFaixa(doc.Codigo), doc.Arquivo, extensao);
                string pathDestino = FD.SelectedPath + @"\" +
                    doc.Razao_Social + "(CNPJ " + doc.CNPJ_CPF_COMPLETO + ")" + @"\" +
                    dtpAno.Value.Year + @"\" +
                  //  doc.DtDesembaraco.Value.ToString("yyyy") + @"\" +
                    //  doc.Local + @"\" +
                    doc.DtDesembaraco.Value.ToString("MMMM") + @"\" +
                    //"Contrato " + doc.Contrato.Replace(".", "").Replace("/", "").Replace(":", "") + " - " + doc.Local.Replace(".", "").Replace("/", "").Replace(":", "") +
                    /*doc.DtDesembaraco.Value.Year + @"\" +
                    doc.DtDesembaraco.Value.ToString("MMMM") +*/

                    @"\" + doc.Processo.Replace('/', '_');
                // @"\" + doc.DI;


                if (File.Exists(pathFull))
                {
                    if (!Directory.Exists(pathDestino))
                    {
                        Directory.CreateDirectory(pathDestino);
                    }

                    if (!File.Exists(pathDestino + @"\" + doc.Descricao + doc.Pagina + "-" + doc.Numero_Doc.Replace("/", "").Replace(":", "").Replace(@"\", "") + extensao))
                    {
                        File.Copy(pathFull, pathDestino + @"\" + doc.Descricao + doc.Pagina + "-" + doc.Numero_Doc.Replace("/", "").Replace(":", "").Replace(@"\", "") + extensao);
                    }
                }
                pbDoc.PerformStep();
                Application.DoEvents();
            }
        }

        private List<string> GetClientes(DataGridView gridView)
        {
            var cliente = new List<string>();

            foreach (DataGridViewRow row in gridView.Rows)
            {
                if (Convert.ToBoolean(row.Cells[0].Value))
                {
                    cliente.Add(row.Cells[2].Value.ToString());
                }
            }
            return cliente;
        }

        private void ExtrairDocumentos()
        {

            pbProcesso.Minimum = 1;
            pbProcesso.Value = 1;
            pbProcesso.Step = 1;

            var codCliente = GetClientes(grvClientes);
            if (ckbMes.Checked)
            {
                for (int i = 1; i <= 12; i++)
                {
                    if (rbDesembaracados.Checked)
                    {
                        foreach (var codigo in codCliente)
                        {
                            var processos = (new Processo()).BuscarPorCodigoDesembaracados(codigo, dtpAno.Value.Year.ToString(), i.ToString());

                            int cont = processos.ToList().Count();
                            pbProcesso.Maximum = cont;
                            lbProgress.Text = "Quantidade de Processos: " + cont.ToString();
                            int etapa = 0;
                            foreach (var processo in processos)
                            {
                                var documentos = (new Documentos()).BuscarPorDocumentodeExtracao(processo.Codigo, processo.DT_DESEMBARACO, processo.DescricaoContrato, processo.DescricaoLocal);
                                CopiandoDocumentos(documentos);
                                pbProcesso.PerformStep();
                                etapa++;
                                lbEtapa.Text = "Etapa: " + etapa.ToString() + " de " + cont.ToString();
                                pnlProgress.Visible = true;
                                Application.DoEvents();
                            }
                        }
                    }
                    else
                    {
                        foreach (var codigo in codCliente)
                        {
                            var processos = (new Processo()).BuscarPorCodigoFaturados(codigo, dtpAno.Value.Year.ToString(), i.ToString()); ;

                            int cont = processos.ToList().Count();
                            pbProcesso.Maximum = cont;
                            lbProgress.Text = "Quantidade de Processos: " + cont.ToString();
                            int etapa = 0;
                            foreach (var processo in processos)
                            {
                                var documentos = (new Documentos()).BuscarPorDocumentodeExtracao(processo.Codigo, processo.Data_emissao, processo.DescricaoContrato, processo.DescricaoLocal);
                                CopiandoDocumentos(documentos);
                                pbProcesso.PerformStep();
                                etapa++;
                                lbEtapa.Text = "Etapa: " + etapa.ToString() + " de " + cont.ToString();
                                pnlProgress.Visible = true;
                                Application.DoEvents();
                            }
                        }
                    }
                }
            }
            else
            {
                if (rbDesembaracados.Checked)
                {
                    //var processos = (new Processo()).BuscarPorCodigoDesembaracados("296", "2013", "01");

                    //int cont = processos.ToList().Count();
                    //pbProcesso.Maximum = cont;
                    //lbProgress.Text = "Quantidade de Processos: " + cont.ToString();
                    //int etapa = 0;
                    //foreach (var processo in processos)
                    //{
                    //    var documentos = (new Documentos()).BuscarPorDocumentodeExtracao("14905/12", processo.DT_DESEMBARACO, processo.DescricaoContrato, processo.DescricaoLocal);
                    //    CopiandoDocumentos(documentos);
                    //    pbProcesso.PerformStep();
                    //    etapa++;
                    //    lbEtapa.Text = "Etapa: " + etapa.ToString() + " de " + cont.ToString();
                    //    pnlProgress.Visible = true;
                    //    Application.DoEvents();
                    //}

                    foreach (var codigo in codCliente)
                    {
                        var processos = (new Processo()).BuscarPorCodigoDesembaracados(codigo, dtpAno.Value.Year.ToString(), DTPMes.Value.Month.ToString());

                        int cont = processos.ToList().Count();
                        pbProcesso.Maximum = cont;
                        lbProgress.Text = "Quantidade de Processos: " + cont.ToString();
                        int etapa = 0;
                        foreach (var processo in processos)
                        {
                            var documentos = (new Documentos()).BuscarPorDocumentodeExtracao(processo.Codigo, processo.DT_DESEMBARACO, processo.DescricaoContrato, processo.DescricaoLocal);
                            CopiandoDocumentos(documentos);
                            pbProcesso.PerformStep();
                            etapa++;
                            lbEtapa.Text = "Etapa: " + etapa.ToString() + " de " + cont.ToString();
                            pnlProgress.Visible = true;
                            Application.DoEvents();
                        }
                    }
                }
                else
                {
                    foreach (var codigo in codCliente)
                    {
                        var processos = (new Processo()).BuscarPorCodigoFaturados(codigo, dtpAno.Value.Year.ToString(), DTPMes.Value.Month.ToString()); ;

                        int cont = processos.ToList().Count();
                        pbProcesso.Maximum = cont;
                        lbProgress.Text = "Quantidade de Processos: " + cont.ToString();
                        int etapa = 0;
                        foreach (var processo in processos)
                        {
                            var documentos = (new Documentos()).BuscarPorDocumentodeExtracao(processo.Codigo, processo.Data_emissao, processo.DescricaoContrato, processo.DescricaoLocal);
                            CopiandoDocumentos(documentos);
                            pbProcesso.PerformStep();
                            etapa++;
                            lbEtapa.Text = "Etapa: " + etapa.ToString() + " de " + cont.ToString();
                            pnlProgress.Visible = true;
                            Application.DoEvents();
                        }
                    }
                }
            }
        }


        private void btnExtrair_Click(object sender, EventArgs e)
        {
            if (FD.ShowDialog() == DialogResult.OK)
            {
                ExtrairDocumentos();
                MessageBox.Show("Operação realizada com sucesso!");
                LogSistemas.AddLogSistema(dtpAno.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.None, Convert.ToInt32(this.Tag), "");
                pnlProgress.Visible = false;
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void txtLocaliza_TextChanged(object sender, EventArgs e)
        {
            GetImportadores();
            AtualizaGrid();
        }

        private void AtualizaGrid()
        {
            grvClientes.AutoGenerateColumns = false;
            grvClientes.DataSource = GetImportadores();
        }
    }
}
