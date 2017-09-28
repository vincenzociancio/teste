using Microsoft.Reporting.WinForms;
using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Windows.Forms;
using System.Linq;

namespace MS2000.Desktop.Menu.Processos
{
    public partial class FrmContratoFiancaIN1361 : MS2000.Desktop.Componentes.MSForm01
    {

        class Representante
        {
            public string FK_Codigo { get; set; }
            public string Nome { get; set; }
            public string Cargo { get; set; }
            public string Identidade { get; set; }
            public string CPF { get; set; }
            public string Nacionalidade { get; set; }
            public string Estado_civil { get; set; }
            public string Tipo { get; set; }
            public string Exibir { get; set; }
            public string Identificacao { get; set; }
            public bool Sexo { get; set; }
            public bool RG { get; set; }

        }

        protected StatusCadastro statusCadastro;

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

        public FrmContratoFiancaIN1361()
        {
            InitializeComponent();
        }

        private void getFiador()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Razao_Social FROM Fiadores where lixo = 0 order by Razao_Social";
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
                mcbbFiador.DataSource = table;
                mcbbFiador.DisplayMember = "Razao_Social";
                mcbbFiador.ValueMember = "codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }


        private DataTable getCartaGarantidor()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select PCG.ID, PCG.FK_Fiador ,PCG.Processo,case when DT_REGISTRO_DI is null then '' else LTRIM(RTRIM(SUBSTRING([DT_REGISTRO_DI],1,2)))+'/'+LTRIM(RTRIM(SUBSTRING([DT_REGISTRO_DI],3,2)))+'/'+LTRIM(RTRIM(SUBSTRING([DT_REGISTRO_DI],5,4)))end as Periodo_fianca_inicial, " +
                           "(Case when c.Data_prorrogacao is null then c.Vigencia_final else c.Data_prorrogacao End) as Periodo_fianca_final,PCG.Cidade " +
                           "from " +
                           "Processo_Carta_Garantidor PCG " +
                           "inner join Processos P on PCG.Processo = P.Codigo " +
                           "left join Fiadores F on  PCG.FK_Fiador = F.Codigo " +
                           "left join Contratos C on C.Importador = P.Importador and C.Contrato = P.Contrato " +
                           "where PCG.Repetro = 0 " +
                           "order by Processo";
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

        private void FrmCartaGarantidor_Load(object sender, EventArgs e)
        {
            this.ActiveControl = txtProcesso;
            bindingNavigator.DeleteItem = null;

            getFiador();

            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getCartaGarantidor();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtProcesso.DataBindings.Add(new Binding("Text", bindingSource, "Processo", true));
            mcbbFiador.DataBindings.Add(new Binding("SelectedValue", bindingSource, "FK_Fiador"));
            txtCidade.DataBindings.Add(new Binding("Text", bindingSource, "Cidade", true));
        }


        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            txtCidade.Text = "RIO DE JANEIRO";
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            txtProcesso.Enabled = false;

        }

        private bool ProcessoEmUso()
        {
            var query = "SELECT ID FROM Processo_Carta_Garantidor WHERE Processo =@Processo  ";
            var GoOn = false;
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

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (!txtProcesso.MaskCompleted)
            {
                MessageBox.Show("O Processo é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtProcesso.Focus();
                return;
            }

            if (string.IsNullOrEmpty(mcbbFiador.Text))
            {
                MessageBox.Show("O Fiador é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtProcesso.Focus();
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    string query = "UPDATE Processo_Carta_Garantidor " +
                                   "SET FK_Fiador = @FK_Fiador,Cidade =@Cidade  " +
                                   "WHERE ID = @ID ";
                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@FK_Fiador", (string.IsNullOrEmpty(mcbbFiador.SelectedValue.ToString())) ? (object)DBNull.Value : mcbbFiador.SelectedValue);
                            cmd.Parameters.AddWithValue("@Cidade", txtCidade.Text);
                            cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("ID").Current.ToString());
                            cmd.ExecuteNonQuery();
                        }
                    }
                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Processo:{0} ", ((DataRowView)this.bindingSource.Current).Row["Processo"].ToString()));
                }
                else
                {
                    if (ProcessoEmUso())
                    {
                        MessageBox.Show("Já existe este processo!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return;
                    }

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Processo_Carta_Garantidor " +
                                   "(Processo,Data_Criacao,FK_Fiador,Cidade,Repetro) " +
                                   "VALUES " +
                                   "(@Processo,@Data_Criacao,@FK_Fiador,@Cidade,@Repetro)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                        cmd.Parameters.AddWithValue("@Data_Criacao", DateTime.Now.Date);
                        cmd.Parameters.AddWithValue("@FK_Fiador", (string.IsNullOrEmpty(mcbbFiador.SelectedValue.ToString())) ? (object)DBNull.Value : mcbbFiador.SelectedValue);
                        cmd.Parameters.AddWithValue("@Cidade", txtCidade.Text);
                        cmd.Parameters.AddWithValue("@Repetro", false);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Descricao:{0}", mcbbFiador.Text));
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
                var ID_busca = bindingSource.GetRelatedCurrencyManager("ID").Current.ToString();
                bindingSource.DataSource = getCartaGarantidor();
                bindingSource.Position = bindingSource.Find("ID", ID_busca);

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

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private List<Representante> getDados(string codFiador, int Tipo)
        {
            string sql = string.Empty;
            sql = "SELECT " +
                  "FK_Codigo,Nome,Cargo,Identidade,CPF " +
                  ",Nacionalidade,Estado_civil,Tipo,Exibir,Identificacao,Sexo,RG_Estrangeiro " +
                  "FROM Representantes_fiador_importador " +
                  "WHERE Tipo = @Tipo and FK_Codigo = @FK_Codigo and Exibir = '1'";
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                cmd.Parameters.AddWithValue("@Tipo", Tipo);
                cmd.Parameters.AddWithValue("@FK_Codigo", codFiador);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    List<Representante> dados = new List<Representante>();
                    while (reader.Read())
                    {
                        dados.Add(new Representante
                        {
                            FK_Codigo = reader["FK_Codigo"].ToString(),
                            Nome = reader["Nome"].ToString(),
                            Cargo = reader["Cargo"].ToString(),
                            Identidade = reader["Identidade"].ToString(),
                            CPF = reader["CPF"].ToString(),
                            Nacionalidade = reader["Nacionalidade"].ToString(),
                            Estado_civil = reader["Estado_civil"].ToString(),
                            Tipo = reader["Tipo"].ToString(),
                            Exibir = reader["Exibir"].ToString(),
                            Identificacao = reader["Identificacao"].ToString(),
                            Sexo = Convert.ToBoolean(reader["Sexo"].ToString()),
                            RG = Convert.ToBoolean(reader["RG_Estrangeiro"].ToString())
                        });
                    }
                    return dados;
                }
            }
        }

        private void dataGridView_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            string texto = "";
            string enderecoFiador = "";
            string enderecoImportador = "";
            string TextoDadosFiadorCargo = "";
            string TextoDadosFiador = "";
            string TextoDadosImportador = "";
            string AssinaturaFiador = "";
            string AssinaturaImportador = "";
            string AmbosFiador = "";
            string AmbosImportador = "";
            string Sexo;
            string Sr;
            string RG;
            double ValorTotalAFRMM;

            if (dataGridView.Columns[e.ColumnIndex].Name == "PDF")
            {
                var Id = dataGridView.Rows[e.RowIndex].Cells["ID"].Value;

                // bindingSource.DataSource = getCartaGarantidor();

                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "select PCG.ID, P.Codigo,P.Tipo,P.Tipo_Declaracao,P.NR_DECLARACAO_IMP as DI,I.Codigo as CodigoImportador, upper(i.Razao_Social) AS Importador,i.CNPJ_CPF_COMPLETO ,i.CGC_CPF,i.Endereco,i.Numero,i.Complemento,i.Bairro,i.Cidade,i.CEP,i.UF,i.Estado , " +
                               "Cast(P.TR_VAL_COFINS AS DECIMAL(18,4)) as TR_VAL_COFINS ,Cast(P.TR_VAL_II AS DECIMAL(18,4)) as TR_VAL_II ,Cast(P.TR_VAL_PIS AS DECIMAL(18,4)) as TR_VAL_PIS ,Cast(p.TR_VAL_IPI AS DECIMAL(18,4)) as TR_VAL_IPI, " +
                               "Cast(P.TR_VAL_COFINS+P.TR_VAL_II+P.TR_VAL_PIS + p.TR_VAL_IPI AS DECIMAL(18,2)) as TOTAL, (select sum(VL_ACRESCIMO) from Acrescimos_ICMS A inner join Faturas F on A.Fatura_Id = F.Fatura_Id where F.Processo = p.codigo) as ValorAFRMM,  " +
                               "C.Vigencia_inicial,C.Vigencia_final,C.Data_prorrogacao,LTRIM(RTRIM(SUBSTRING([DT_REGISTRO_DI],1,2)))+'/'+LTRIM(RTRIM(SUBSTRING([DT_REGISTRO_DI],3,2)))+'/'+LTRIM(RTRIM(SUBSTRING([DT_REGISTRO_DI],5,4))) as [DT_REGISTRO_DI],P.DT_DESEMBARACO,RR.Numero_Rat as NumeroRAT, " +
                               "F.Codigo as CodigoFiador,  upper(F.Razao_Social) as RazaoSocialFiador, F.CGC_CPF as CNPJFiador,F.Endereco as EnderecoFiador, " +
                               "F.Numero as NumeroFiador,F.Complemento as ComplementoFiador,F.Bairro as BairroFiador,F.Cidade as CidadeFiador,F.CEP as CEPFiador, " +
                               "F.UF as UFFiador,F.Estado as EstadoFiador ,F.Vinculacao,F.Remunerada,F.Patrimonio, C.Descricao as DescricaoContrato, L.Descricao as DescricaoLocalInventario " +
                               "from Processo_carta_garantidor PCG " +
                               "inner join Processos P  on PCG.Processo = P.Codigo " +
                               "left join RAT RR on P.Codigo = RR.Fk_Processo " +
                               "left join Contratos C on C.Importador = P.Importador and C.Contrato = P.Contrato " +
                               "inner join Importadores I on I.Codigo = P.Importador " +
                               "left join Fiadores F on F.Codigo = PCG.FK_Fiador  " +
                               "left join Locais_Inventario L on L.Importador = P.Importador and L.Contrato = P.Contrato and L.Local = P.Local_Inventario " +
                               "where PCG.id = @id";
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
                                SaveFileDialog saveFileDialog1 = new SaveFileDialog();

                                saveFileDialog1.Filter = "*Word files (*.doc)|*.doc";
                                saveFileDialog1.FilterIndex = 2;
                                saveFileDialog1.RestoreDirectory = true;
                                saveFileDialog1.FileName = "ContratoFianca" + txtProcesso.Text.Replace("/", "");

                                if (saveFileDialog1.ShowDialog() == DialogResult.OK)
                                {

                                    ReportViewer RV = new ReportViewer();
                                    RV.ProcessingMode = ProcessingMode.Local;
                                    RV.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Processos.rptContratoFiancaIN1361.rdlc";

                                    IList<ReportParameter> parametros = new List<ReportParameter>();

                                    parametros.Add(new ReportParameter("RazaoSocialFiador", reader["RazaoSocialFiador"].ToString()));


                                    if (!string.IsNullOrEmpty(reader["EnderecoFiador"].ToString()))
                                    {
                                        enderecoFiador = reader["EnderecoFiador"].ToString();
                                        if (!string.IsNullOrEmpty(reader["NumeroFiador"].ToString()))
                                        {
                                            enderecoFiador = enderecoFiador + ", " + reader["NumeroFiador"].ToString();

                                            if (!string.IsNullOrEmpty(reader["ComplementoFiador"].ToString()))
                                            {
                                                enderecoFiador = enderecoFiador + "/ " + reader["ComplementoFiador"].ToString();
                                            }
                                        }
                                        if (!string.IsNullOrEmpty(reader["BairroFiador"].ToString()))
                                        {
                                            enderecoFiador = enderecoFiador + ", " + reader["BairroFiador"].ToString();
                                        }

                                        if (!string.IsNullOrEmpty(reader["CidadeFiador"].ToString()))
                                        {
                                            enderecoFiador = enderecoFiador + " - " + reader["CidadeFiador"].ToString();
                                        }

                                        if (!string.IsNullOrEmpty(reader["CEPFiador"].ToString()))
                                        {
                                            enderecoFiador = enderecoFiador + " - " + reader["CEPFiador"].ToString();
                                        }
                                    }
                                    parametros.Add(new ReportParameter("Endereco", enderecoFiador));

                                    var DadosFiador = getDados(reader["CodigoFiador"].ToString(), 1);
                                    int y = 0;
                                    foreach (var linha in DadosFiador)
                                    {
                                        Sexo = "";
                                        Sr = "";
                                        RG = "";
                                        if (linha.Sexo == false)
                                        {
                                            Sexo = "Seu ";
                                            Sr = "Sr.";
                                        }
                                        else
                                        {
                                            Sexo = "Sua ";
                                            Sr = "Sra.";
                                        }

                                        if (linha.RG == false)
                                        {
                                            RG = "RG";
                                        }
                                        else
                                        {
                                            RG = "RNE";
                                        }

                                        if (y > 0)
                                        {
                                            TextoDadosFiadorCargo = TextoDadosFiadorCargo + "e ";
                                            TextoDadosFiador = TextoDadosFiador + "e ";
                                            AmbosFiador = "ambos";
                                        }
                                        y++;

                                        TextoDadosFiadorCargo = TextoDadosFiadorCargo + Sexo + linha.Cargo + ", " + Sr + linha.Nome + ", " + linha.Nacionalidade + ", " + linha.Estado_civil + ", portador do " + RG + " n° " + linha.Identidade;
                                        TextoDadosFiador = TextoDadosFiador + Sr + linha.Nome + ", " + linha.Nacionalidade + ", " + linha.Estado_civil + ", portador do " + RG + " n° " + linha.Identidade;

                                        if (string.IsNullOrEmpty(linha.Identificacao))
                                        {
                                            TextoDadosFiadorCargo = TextoDadosFiadorCargo + ", devidamente inscrito no CPF sob o n° " + linha.CPF + ", ";
                                            TextoDadosFiador = TextoDadosFiador + ", devidamente inscrito no CPF sob o n° " + linha.CPF + ", ";
                                        }
                                        else
                                        {
                                            TextoDadosFiadorCargo = TextoDadosFiadorCargo + linha.Identificacao + ", ";
                                            TextoDadosFiador = TextoDadosFiador + linha.Identificacao + ", ";
                                        }


                                        AssinaturaFiador = AssinaturaFiador + "_____________________________________________" + System.Environment.NewLine +
                                                           reader["RazaoSocialFiador"].ToString() + System.Environment.NewLine +
                                                           "Por: " + linha.Nome + System.Environment.NewLine +
                                                           linha.Cargo + System.Environment.NewLine +
                                                           "Local e data: " + System.Environment.NewLine + System.Environment.NewLine + System.Environment.NewLine;
                                    }
                                    parametros.Add(new ReportParameter("TextoDadosFiadorCargo", TextoDadosFiadorCargo));
                                    parametros.Add(new ReportParameter("TextoDadosFiador", TextoDadosFiador));
                                    parametros.Add(new ReportParameter("AmbosFiador", AmbosFiador));
                                    parametros.Add(new ReportParameter("AssinaturaFiador", AssinaturaFiador));
                                    parametros.Add(new ReportParameter("Rat", reader["NumeroRAT"].ToString()));


                                    if (string.IsNullOrEmpty(reader["DI"].ToString()))
                                    {
                                        parametros.Add(new ReportParameter("DI", ""));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("DI", Convert.ToUInt64(reader["DI"].ToString()).ToString(@"00/0000000-0")));
                                    }

                                    parametros.Add(new ReportParameter("Importador", reader["Importador"].ToString()));


                                    if (!string.IsNullOrEmpty(reader["Endereco"].ToString()))
                                    {
                                        enderecoImportador = reader["Endereco"].ToString();
                                        if (!string.IsNullOrEmpty(reader["Numero"].ToString()))
                                        {
                                            enderecoImportador = enderecoImportador + ", " + reader["Numero"].ToString();

                                            if (!string.IsNullOrEmpty(reader["Complemento"].ToString()))
                                            {
                                                enderecoImportador = enderecoImportador + "/ " + reader["Complemento"].ToString();
                                            }
                                        }
                                        if (!string.IsNullOrEmpty(reader["Bairro"].ToString()))
                                        {
                                            enderecoImportador = enderecoImportador + ", " + reader["Bairro"].ToString();
                                        }

                                        if (!string.IsNullOrEmpty(reader["Cidade"].ToString()))
                                        {
                                            enderecoImportador = enderecoImportador + " - " + reader["Cidade"].ToString();
                                        }

                                        if (!string.IsNullOrEmpty(reader["CEP"].ToString()))
                                        {
                                            enderecoImportador = enderecoImportador + " - " + reader["CEP"].ToString();
                                        }
                                    }

                                    parametros.Add(new ReportParameter("EnderecoImportador", enderecoImportador));

                                    var DadosImportador = getDados(reader["CGC_CPF"].ToString(), 2);
                                    int x = 0;
                                    foreach (var item in DadosImportador)
                                    {
                                        Sexo = "";
                                        Sr = "";
                                        RG = "";
                                        if (item.Sexo == false)
                                        {
                                            Sexo = "Seu ";
                                            Sr = "Sr.";
                                        }
                                        else
                                        {
                                            Sexo = "Sua ";
                                            Sr = "Sra.";
                                        }

                                        if (item.RG == false)
                                        {
                                            RG = "RG";
                                        }
                                        else
                                        {
                                            RG = "RNE";
                                        }

                                        if (x > 0)
                                        {
                                            TextoDadosImportador = TextoDadosImportador + "e ";
                                            AmbosImportador = "ambos";
                                        }
                                        x++;

                                        TextoDadosImportador = TextoDadosImportador + Sexo + item.Cargo + ", " + Sr + item.Nome + ", " + item.Nacionalidade + ", " + item.Estado_civil + ", portador do " + RG + " n° " + item.Identidade;

                                        if (string.IsNullOrEmpty(item.Identificacao))
                                        {
                                            TextoDadosImportador = TextoDadosImportador + ", devidamente inscrito no CPF sob o n° " + item.CPF + ", ";
                                        }
                                        else
                                        {
                                            TextoDadosImportador = TextoDadosImportador + item.Identificacao + ", ";
                                        }



                                        AssinaturaImportador = AssinaturaImportador + "_____________________________________________" + System.Environment.NewLine +
                                                               reader["Importador"].ToString() + System.Environment.NewLine +
                                                               "Por: " + item.Nome + System.Environment.NewLine +
                                                               item.Cargo + System.Environment.NewLine +
                                                               "Local e data: " + System.Environment.NewLine + System.Environment.NewLine + System.Environment.NewLine;

                                    }

                                    parametros.Add(new ReportParameter("TextoDadosImportador", TextoDadosImportador));
                                    parametros.Add(new ReportParameter("AmbosImportador", AmbosImportador));
                                    parametros.Add(new ReportParameter("AssinaturaImportador", AssinaturaImportador));

                                    if (string.IsNullOrEmpty(reader["Data_prorrogacao"].ToString()))
                                    {
                                        parametros.Add(new ReportParameter("VigenciaFinal", string.IsNullOrEmpty(reader["Vigencia_final"].ToString()) ? null : reader["Vigencia_final"].ToString()));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("VigenciaFinal", string.IsNullOrEmpty(reader["Data_prorrogacao"].ToString()) ? null : reader["Data_prorrogacao"].ToString()));
                                    }
                                    parametros.Add(new ReportParameter("DataDI", string.IsNullOrEmpty(reader["DT_REGISTRO_DI"].ToString()) ? null : reader["DT_REGISTRO_DI"].ToString()));
                                    parametros.Add(new ReportParameter("Processo", reader["Codigo"].ToString()));
                                    parametros.Add(new ReportParameter("II", reader["TR_VAL_II"].ToString()));
                                    parametros.Add(new ReportParameter("IPI", reader["TR_VAL_IPI"].ToString()));
                                    parametros.Add(new ReportParameter("PIS", reader["TR_VAL_PIS"].ToString()));
                                    parametros.Add(new ReportParameter("COFINS", reader["TR_VAL_COFINS"].ToString()));
                                    if ((reader["Tipo"].ToString() == "12") && ((reader["Tipo_Declaracao"].ToString() == "05") || (reader["Tipo_Declaracao"].ToString() == "12")) && !string.IsNullOrEmpty(reader["ValorAFRMM"].ToString()))
                                    {
                                        if (MessageBox.Show("Deseja incluir o AFRMM no contrato?", "Informação", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                                        {
                                            ValorTotalAFRMM = (Convert.ToDouble(reader["TOTAL"].ToString()) + Convert.ToDouble(reader["ValorAFRMM"].ToString()));

                                            parametros.Add(new ReportParameter("DescricaoAFRMM", "- AFRMM - "));
                                            parametros.Add(new ReportParameter("AFRMM", reader["ValorAFRMM"].ToString()));
                                            parametros.Add(new ReportParameter("TOTAL", Convert.ToString(ValorTotalAFRMM)));
                                        }
                                        else
                                        {
                                            ValorTotalAFRMM = Convert.ToDouble(reader["TOTAL"].ToString());
                                            parametros.Add(new ReportParameter("DescricaoAFRMM", ""));
                                          //  parametros.Add(new ReportParameter("AFRMM", ""));
                                            parametros.Add(new ReportParameter("TOTAL", reader["TOTAL"].ToString()));
                                        }
                                    }
                                    else
                                    {
                                        ValorTotalAFRMM = Convert.ToDouble(reader["TOTAL"].ToString());
                                        parametros.Add(new ReportParameter("DescricaoAFRMM", ""));
                                       // parametros.Add(new ReportParameter("AFRMM", ));
                                        parametros.Add(new ReportParameter("TOTAL", reader["TOTAL"].ToString()));
                                    }

                                    parametros.Add(new ReportParameter("CNPJFiador", reader["CNPJFiador"].ToString()));
                                    parametros.Add(new ReportParameter("CNPJImportador", Convert.ToUInt64(reader["CNPJ_CPF_COMPLETO"].ToString()).ToString(@"00\.000\.000/0000-00")));

                                    if (Convert.ToBoolean(reader["Vinculacao"].ToString()) == false)
                                    {
                                        parametros.Add(new ReportParameter("Vinculacao", "Não Possui"));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("Vinculacao", "Possui"));
                                    }

                                    if (Convert.ToBoolean(reader["Remunerada"].ToString()) == false)
                                    {
                                        parametros.Add(new ReportParameter("Remunerada", "Não esta sendo remunerada"));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("Remunerada", "Esta sendo remunerada"));
                                    }

                                    if (Convert.ToBoolean(reader["Patrimonio"].ToString()) == false)
                                    {
                                        parametros.Add(new ReportParameter("Patrimonio", "Não está"));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("Patrimonio", "Está"));
                                    }
                                    parametros.Add(new ReportParameter("Data", DateTime.Now.ToString("dd/MM/yyyy")));
                                    if (Convert.ToDouble(reader["TOTAL"].ToString()) == 0)
                                    {
                                        parametros.Add(new ReportParameter("Extenso", "ZERO"));
                                    }
                                    else
                                    {
                                        parametros.Add(new ReportParameter("Extenso", Extenso.toExtenso(ValorTotalAFRMM, 0)));
                                    }
                                    parametros.Add(new ReportParameter("Cidade", txtCidade.Text));
                                    parametros.Add(new ReportParameter("DescricaoContrato", reader["DescricaoContrato"].ToString()));
                                    parametros.Add(new ReportParameter("DescricaoLocal", reader["DescricaoLocalInventario"].ToString()));

                                    RV.LocalReport.SetParameters(parametros);

                                    Warning[] warnings;
                                    string[] streamids;
                                    string mimeType;
                                    string encoding;
                                    string extension;

                                    byte[] bytePDF = RV.LocalReport.Render("Word", null, out mimeType, out encoding, out extension, out streamids, out warnings);
                                    FileStream newFile = new FileStream(saveFileDialog1.FileName, FileMode.Create);
                                    newFile.Write(bytePDF, 0, bytePDF.Length);
                                    newFile.Close();
                                }
                                // Process.Start(nomeArquivoPDF);
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

            bindingSource.Filter = "Processo LIKE '" + processo + "%'";
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


    }
}
