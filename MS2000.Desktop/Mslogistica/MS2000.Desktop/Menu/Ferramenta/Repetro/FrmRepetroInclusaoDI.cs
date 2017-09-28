using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Linq;
using System.Xml.Linq;
using System.IO;


namespace MS2000.Desktop.Menu.Ferramenta.Repetro
{
    public partial class FrmRepetroInclusaoDI : MS2000.Desktop.Componentes.MSForm01
    {

        public class Adicao
        {
            public string DI { get; set; }
            public string NCM { get; set; }
            public string Descricao { get; set; }
            public int Quantidade { get; set; }
            public string adicao { get; set; }
            public string Sequencia { get; set; }
            public string unidade_jurisd { get; set; }
            public string CNPJ { get; set; }
            public string Unidade { get; set; }
            public string Data { get; set; }
            public double valor { get; set; }
        }


        public class DadosDI
        {
            public string DI { get; set; }
            public String Descricao { get; set; }
            public string NCM { get; set; }
            public string Quantidade { get; set; }
            public string Adicao { get; set; }
            public string Sequencia { get; set; }
            public string unidade_jurisd { get; set; }
            public string CNPJ { get; set; }
            public string Unidade { get; set; }
            public string Data { get; set; }
            public double valor { get; set; }
        }


        public class DadosContrato
        {
            public string Importador { get; set; }
            public string Contrato { get; set; }
            public string Local { get; set; }
        }



        public FrmRepetroInclusaoDI()
        {
            InitializeComponent();
        }

        private List<Adicao> getDI()
        {
            DataSet ds = new DataSet();
            ds.ReadXml(@"" + txtArquivo.Text + "");
            List<Adicao> di_dsi = new List<Adicao>();

            if (rdbDSI.Checked)
            {
                //DSI
                di_dsi = (from decl in ds.Tables["declaracaoImportacao"].AsEnumerable()
                          join bem in ds.Tables["bem"].AsEnumerable()
                          on decl.Field<Int32?>("declaracaoImportacao_id") equals bem.Field<Int32?>("declaracaoImportacao_id")
                          select new Adicao
                          {
                              DI = decl.Field<string>("numero"),
                              NCM = bem.Field<string>("codigoNCM"),
                              Descricao = bem.Field<string>("especificacaoMercadoria"),
                              Quantidade = Convert.ToInt32(bem.Field<string>("quantidade").Substring(0, 9)),
                              //adicao = bem.Field<Int32>("bem_Id").ToString(),
                              //Sequencia = bem.Field<Int32>("bem_Id").ToString(),
                              unidade_jurisd = decl.Field<string>("codigoURFDespacho"),
                              CNPJ = decl.Field<string>("identificacaoImportador"),
                              Data = (decl.Field<string>("dataRegistro").Substring(6, 2) + '/' + decl.Field<string>("dataRegistro").Substring(4, 2) + '/' + decl.Field<string>("dataRegistro").Substring(0, 4)),
                              valor = Convert.ToDouble(bem.Field<string>("valorUnitario").Substring(0, 13) + ',' + bem.Field<string>("valorUnitario").Substring(13, 2))
                          }).ToList();

                int contador = 1;
                foreach (var bem in di_dsi)
                {
                    bem.adicao = contador.ToString().PadLeft(3, '0');
                    bem.Sequencia = contador.ToString();
                    contador++;
                }
            }
            else
                if (rdbDI.Checked)
                {
                    //DI
                    di_dsi = (from adic in ds.Tables["adicao"].AsEnumerable()
                              join merc in ds.Tables["mercadoria"].AsEnumerable()
                              on adic.Field<Int32>("adicao_id")
                              equals merc.Field<Int32>("adicao_id")
                              join decl in ds.Tables["declaracaoImportacao"].AsEnumerable()
                               on adic.Field<Int32>("declaracaoImportacao_id")
                              equals decl.Field<Int32>("declaracaoImportacao_id")
                              where adic.Field<string>("ipiRegimeTributacaoCodigo") == "5"
                              select new Adicao
                              {
                                  DI = adic.Field<string>("numeroDI"),
                                  NCM = adic.Field<string>("dadosMercadoriaCodigoNcm"),
                                  Descricao = merc.Field<string>("descricaoMercadoria"),
                                  Quantidade = Convert.ToInt32(merc.Field<string>("quantidade").Substring(0, 9)),
                                  adicao = adic.Field<string>("numeroAdicao"),
                                  Sequencia = merc.Field<string>("numeroSequencialItem"),
                                  unidade_jurisd = decl.Field<string>("urfDespachoCodigo"),
                                  CNPJ = decl.Field<string>("importadorNumero"),
                                  //Unidade = dados["NM_UN_MEDID_COMERC"].ToString(),
                                  Data = (decl.Field<string>("dataRegistro").Substring(6, 2) + '/' + decl.Field<string>("dataRegistro").Substring(4, 2) + '/' + decl.Field<string>("dataRegistro").Substring(0, 4)),
                                  valor = Convert.ToDouble(merc.Field<string>("valorUnitario").Substring(0, 13) + ',' + merc.Field<string>("valorUnitario").Substring(13, 2))
                              }).ToList();
                }
                else
                    if (rdbDIReimportacao.Checked)
                    {
                        //DI Reimportação
                        di_dsi = (from adic in ds.Tables["adicao"].AsEnumerable()
                                  join merc in ds.Tables["mercadoria"].AsEnumerable()
                                  on adic.Field<Int32>("adicao_id")
                                  equals merc.Field<Int32>("adicao_id")
                                  join decl in ds.Tables["declaracaoImportacao"].AsEnumerable()
                                   on adic.Field<Int32>("declaracaoImportacao_id")
                                  equals decl.Field<Int32>("declaracaoImportacao_id")
                                  where adic.Field<string>("iiRegimeTributacaoCodigo") == "6"
                                  select new Adicao
                                  {
                                      DI = adic.Field<string>("numeroDI"),
                                      NCM = adic.Field<string>("dadosMercadoriaCodigoNcm"),
                                      Descricao = merc.Field<string>("descricaoMercadoria"),
                                      Quantidade = Convert.ToInt32(merc.Field<string>("quantidade").Substring(0, 9)),
                                      adicao = adic.Field<string>("numeroAdicao"),
                                      Sequencia = merc.Field<string>("numeroSequencialItem"),
                                      unidade_jurisd = decl.Field<string>("urfDespachoCodigo"),
                                      CNPJ = decl.Field<string>("importadorNumero"),
                                      Data = (decl.Field<string>("dataRegistro").Substring(6, 2) + '/' + decl.Field<string>("dataRegistro").Substring(4, 2) + '/' + decl.Field<string>("dataRegistro").Substring(0, 4)),
                                      valor = Convert.ToDouble(merc.Field<string>("valorUnitario").Substring(0, 13) + ',' + merc.Field<string>("valorUnitario").Substring(13, 2))
                                  }).ToList();
                    }


            //OleDbConnection con = DatabaseAccessConnection.Instance.Conexao;
            ////DI
            //OleDbCommand comando = new OleDbCommand("SELECT di.NR_DECLARACAO_IMP, det.NR_OP_IMP, det.NR_SEQ_DETALHE, CDate(Mid(di.DT_REGISTRO_DI,7,2)+'/'+Mid(di.DT_REGISTRO_DI,5,2)+'/'+Mid(di.DT_REGISTRO_DI,1,4)) AS qdata, " +
            //                                        "di.CD_TIPO_DECLARACAO, [TX_DESC_DET_MERC]  AS Descricao, ad.CD_MERCADORIA_NCM, det.QT_MERC_UN_COMERC, " +
            //                                        "det.VL_UNID_COND_VENDA,di.CD_URF_DESPACHO,di.NR_IMPORTADOR,det.NM_UN_MEDID_COMERC  " +
            //                                        "FROM ((DECLARAÇÃO_IMPORTAÇÃO AS di  " +
            //                                        "INNER JOIN OP_ADIÇÃO_DE_IMPORTAÇÃO AS ad ON di.NR_DECLARACAO_IMP=ad.NR_DECLARACAO_IMP)  " +
            //                                        "INNER JOIN OP_ADIÇÃO_DETALHE_MERCADORIA AS det ON (ad.NR_OP_IMP=det.NR_OP_IMP) AND  " +
            //                                        "(ad.NR_DECLARACAO_IMP=det.NR_DECLARACAO_IMP)) " +
            //                                        "Where di.NR_DECLARACAO_IMP = @DI and ad.CD_REGIME_TRIBUTAR_PISCOFINS = '5' " +
            //                                        "and TX_DESC_DET_MERC <> '' ", con);

            ////DSI
            ////OleDbCommand comando = new OleDbCommand(" SELECT di.NR_DSI, det.NR_SEQ_PRODUTO, det.NR_SEQ_PRODUTO, CDate(Mid(di.DT_REGISTRO_DSI,7,2)+'/'+Mid(di.DT_REGISTRO_DSI,5,2)+'/'+Mid(di.DT_REGISTRO_DSI,1,4)) AS qdata, "+
            ////                                        "'', UCase([TX_DESC_DET_MERC]) AS Descricao, '', det.NR_SEQ_PRODUTO, "+
            ////                                        "'',di.CD_UL_DESPACHO,di.NR_IMPORTADOR,'' "+
            ////                                        "FROM DSI_DADOS_GERAIS_TP01 AS di "+
            ////                                        "INNER JOIN DSI_DESCRICAO_MERCADORIA_TP22 AS det ON di.NR_DSI=det.NR_DSI "+
            ////                                        "Where di.NR_DSI = @DI " +
            ////                                        "and TX_DESC_DET_MERC <> ''  ", con);

            //comando.Parameters.AddWithValue("@DI", txtDI.Text);
            //OleDbDataReader dados = comando.ExecuteReader();
            //   List<DadosDI> lista = new List<DadosDI>();
            //while (dados.Read())
            //{
            //    lista.Add(new DadosDI
            //         {
            //             DI = dados["NR_DECLARACAO_IMP"].ToString(),
            //             Descricao = dados["Descricao"].ToString().Replace("\r\n", " "),
            //             NCM = dados["CD_MERCADORIA_NCM"].ToString(),
            //             Quantidade = dados["QT_MERC_UN_COMERC"].ToString(),
            //             Adicao = dados["NR_OP_IMP"].ToString(),
            //             Sequencia = dados["NR_SEQ_DETALHE"].ToString(),
            //             unidade_jurisd = dados["CD_URF_DESPACHO"].ToString(),
            //             CNPJ = dados["NR_IMPORTADOR"].ToString(),
            //             Unidade = dados["NM_UN_MEDID_COMERC"].ToString(),
            //             Data = dados["qdata"].ToString(),
            //             valor = Convert.ToDouble(dados["VL_UNID_COND_VENDA"].ToString()),

            //             //DSI
            //             //DI = dados["NR_DSI"].ToString(),
            //             //Descricao = dados["Descricao"].ToString(),
            //             //NCM = "",
            //             //Quantidade = dados["NR_SEQ_PRODUTO"].ToString(),
            //             //Adicao = dados["NR_SEQ_PRODUTO"].ToString(),
            //             //Sequencia = dados["NR_SEQ_PRODUTO"].ToString(),
            //             //unidade_jurisd = dados["CD_UL_DESPACHO"].ToString(),
            //             //CNPJ = dados["NR_IMPORTADOR"].ToString(),
            //             //Unidade = "",
            //             //Data = dados["qdata"].ToString(),
            //             //valor =0,
            //         });
            //}
            return di_dsi;
        }

        private void btnLocaliza_Click(object sender, EventArgs e)
        {

            if (!rdbDI.Checked && !rdbDSI.Checked && !rdbDIReimportacao.Checked)
            {
                MessageBox.Show("Favor Informar se o tipo de arquivo é DI ou DSI!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                groupBox3.Focus();
                return;
            }

            OpenFileDialog dlg = new OpenFileDialog();

            dlg.Filter = "Xml files (*.xml) |*.xml;";
            dlg.ShowDialog();
            txtArquivo.Text = dlg.FileName;

            if (txtArquivo.Text == "")
            {
                MessageBox.Show("Favor Informar o XML.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                btnLocaliza.Focus();
                return;
            }

            dataGridView.AutoGenerateColumns = false;
            dataGridView.DataSource = getDI();
            if (dataGridView.RowCount == 0)
            {
                MessageBox.Show("DI não localizada na base do Siscomex.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                btnIncluir.Enabled = false;
            }
            else
            {
                btnIncluir.Enabled = true;
            }

            MessageBox.Show("Favor verificar se a quantidade de admissões estão corretas!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void getContratos(String Importador)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "SELECT C.Descricao AS Contratos_Descricao, LI.Descricao AS Local_Descricao, Cast(C.Vigencia_inicial as Date) as Vigencia_inicial , Cast(C.Vigencia_final as Date) as Vigencia_final , C.Contrato " +
                           "FROM Locais_Inventario LI INNER JOIN Contratos C  " +
                           "ON LI.Importador = C.Importador AND LI.Contrato = C.Contrato  " +
                           "INNER JOIN Importadores I ON I.Codigo = C.Importador " +
                           "WHERE C.Ativo = 1 AND C.Vigencia_inicial IS NOT NULL AND I.CNPJ_CPF_COMPLETO = @CNPJ_CPF_COMPLETO " +
                           "ORDER BY C.Vigencia_inicial, Local_Descricao";

            DataTable table;

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@CNPJ_CPF_COMPLETO ", Importador);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }

                mcbbContrato.DataSource = null;
                mcbbContrato.DataSource = table;
                mcbbContrato.DisplayMember = "Contratos_Descricao";
                mcbbContrato.ValueMember = "Contrato";
                mcbbContrato.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void dataGridView_RowEnter(object sender, DataGridViewCellEventArgs e)
        {
            getContratos(dataGridView.Rows[0].Cells["CNPJ"].FormattedValue.ToString());
        }        

        private void btnIncluir_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(mcbbContrato.Text))
            {
                MessageBox.Show("O Contrato é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mcbbContrato.Focus();
                return;
            }
            if (!txtProcessoADM.MaskCompleted)
            {
                MessageBox.Show("O Processo Administrativo é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtProcessoADM.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtTaxaConversao.Text))
            {                
                MessageBox.Show("A Taxa é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtTaxaConversao.Focus();
                return;
            }
            else
            {
                try
                {
                    Convert.ToDouble(txtTaxaConversao.Text);
                }
                catch (Exception)
                {
                    MessageBox.Show("A Taxa é inválida!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    txtTaxaConversao.Focus();
                    return;
                }
            }

            if (!txtDataDesembaraco.MaskCompleted)
            {
                MessageBox.Show("A data do desembaraço é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDataDesembaraco.Focus();
                return;
            }

            DadosContrato Contrato = new DadosContrato();

            Contrato = BuscarLocalPorCNPJ(dataGridView.Rows[0].Cells["CNPJ"].FormattedValue.ToString(), mcbbContrato.SelectedValue.ToString());

            try
            {
                foreach (var item in getDI())
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Repetro " +
                                   "(Codigo,Contrato,Local,Processo_Adm,DI,datadi " +
                                   ",DT_DESEMBARACO,Tipo_Declaracao,COD_SIT,QSIT,QSIT_Ing,Moeda " +
                                   ",Taxa_conversao,qpro,Processos_Tipo,Produto,Numero_serie,DESCBEM " +
                                   ",NCM,Destaque_NCM,Unidade,DESC_UNIDCO,Unidade_Medida_Estat,DESC_UNIDEST " +
                                   ",Quantidade,Saldo,VALOR,Adicao,Seq_Adicaostr,Regime_Tributacao_II " +
                                   ",Valor_II_Devido,Valor_II_a_recolher,Regime_Tributacao_IPI,Valor_IPI_Devido " +
                                   ",Valor_IPI_a_recolher,DESCBEM_Ing,Saldo_MOV,Unidade_Jur) " +
                                   "Values " +
                                   "(@Codigo,@Contrato,@Local,@Processo_Adm,@DI,@datadi " +
                                   ",@DT_DESEMBARACO,'05','2','DESEMBARAÇADA','DESEMBARAÇADA','220' " +
                                   ",@Taxa_conversao,'','','','',@DESCBEM,@NCM,'','11','UNIDADE','11','UNIDADE' " +
                                   ",@Quantidade,@Saldo,@VALOR,@Adicao,@Seq_Adicaostr,'5',0,0,'5',0,0, " +
                                   "@DESCBEM_Ing,@Saldo_MOV,@Unidade_Jur)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Codigo", Contrato.Importador);
                        cmd.Parameters.AddWithValue("@Contrato", Contrato.Contrato);
                        cmd.Parameters.AddWithValue("@Local", Contrato.Local);
                        cmd.Parameters.AddWithValue("@Processo_Adm", txtProcessoADM.Text);
                        cmd.Parameters.AddWithValue("@DI", item.DI);
                        cmd.Parameters.AddWithValue("@datadi", item.Data);
                        cmd.Parameters.AddWithValue("@DT_DESEMBARACO", txtDataDesembaraco.Text);
                        cmd.Parameters.AddWithValue("@Taxa_conversao", Convert.ToDouble(txtTaxaConversao.Text));
                        cmd.Parameters.AddWithValue("@DESCBEM", item.Descricao);
                        cmd.Parameters.AddWithValue("@NCM", item.NCM);
                        cmd.Parameters.AddWithValue("@Quantidade", item.Quantidade);
                        cmd.Parameters.AddWithValue("@Saldo", item.Quantidade);
                        cmd.Parameters.AddWithValue("@VALOR", item.valor);
                        cmd.Parameters.AddWithValue("@Adicao", item.adicao);
                        cmd.Parameters.AddWithValue("@Seq_Adicaostr", item.Sequencia);
                        cmd.Parameters.AddWithValue("@DESCBEM_Ing", item.Descricao);
                        cmd.Parameters.AddWithValue("@Saldo_MOV", item.Quantidade);
                        cmd.Parameters.AddWithValue("@Unidade_Jur", item.unidade_jurisd);
                        cmd.ExecuteNonQuery();
                    }

                }
                UpdateContratoRepetro(Contrato.Importador, dataGridView.Rows[0].Cells["DI"].FormattedValue.ToString());
                LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("DI:{0}", dataGridView.Rows[0].Cells["DI"].FormattedValue.ToString()));
                MessageBox.Show("DI/DSI foi incluída com sucesso!", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                btnIncluir.Enabled = false;
                LimparCampos();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                btnIncluir.Enabled = false;
            }
        }

        public DadosContrato BuscarLocalPorCNPJ(string pk_importador, string contrato)
        {
            string query = "SELECT C.Contrato, C.Importador,Local " +
                           "FROM Contratos C  " +
                           "inner join Locais_Inventario LI ON LI.Importador = C.Importador AND LI.Contrato = C.Contrato " +
                           "inner join Importadores I on C.Importador = I.Codigo " +
                           "WHERE I.CNPJ_CPF_COMPLETO = @Importador and C.contrato =@contrato ";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Importador", pk_importador);
                    cmd.Parameters.AddWithValue("@contrato", contrato);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        DadosContrato dados = new DadosContrato();

                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                dados.Contrato = dr["Contrato"].ToString();
                                dados.Importador = dr["Importador"].ToString();
                                dados.Local = dr["Local"].ToString();
                            }
                        }
                        return dados;
                    }
                }
            }

            catch (Exception ex)
            {
                throw;
            }
        }

        private void UpdateContratoRepetro(string importador, string DI)
        {
            string query = "UPDATE REP SET " +
                           "REP.Razao_Social=IMP.Razao_Social, " +
                           "REP.CNPJ=IMP.CGC_CPF, " +
                           "REP.CNPJ_COMPLETO=IMP.CNPJ_CPF_COMPLETO, " +
                           "REP.Contratos_Descricao=CONT.Descricao, " +
                           "REP.Vigencia_inicial=CONT.Vigencia_inicial, " +
                           "REP.Vigencia_final=CONT.Vigencia_final, " +
                           "REP.Contratos_Tipo=CONT.Tipo, " +
                           "REP.Locais_Inventario_Descricao=LOC.Descricao, " +
                           "REP.Tipo_local=LOC.Tipo_local " +
                           "FROM Repetro AS REP INNER JOIN " +
                           "Importadores AS IMP ON REP.Codigo = IMP.Codigo INNER JOIN " +
                           "Contratos AS CONT ON REP.Codigo = CONT.Importador AND REP.Contrato = CONT.Contrato INNER JOIN " +
                           "Locais_Inventario AS LOC ON REP.Codigo = LOC.Importador AND REP.Contrato = LOC.Contrato AND REP.Local = LOC.Local " +
                           "WHERE (REP.Codigo = @importador and DI = @DI) ";

            using (var conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@importador", importador);
                    cmd.Parameters.AddWithValue("@DI", DI);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        private void txtDI_TextChanged(object sender, EventArgs e)
        {
            dataGridView.DataSource = null;
        }

        private void LimparCampos()
        {
            txtProcessoADM.Clear();
            txtTaxaConversao.Clear();
            txtDataDesembaraco.Clear();
            dataGridView.DataSource = null;
            mcbbContrato.DataSource = null;
            txtArquivo.Clear();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}
