using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Ferramenta.Repetro
{
    public partial class FrmRepetroTransferenciaBem : MS2000.Desktop.Componentes.MSForm01
    {                      
        public FrmRepetroTransferenciaBem()
        {
            InitializeComponent();
        }       

        private void getItensPesquisar()
        {
            Dictionary<int, string> itensPesquisar = new Dictionary<int, string>();

            itensPesquisar.Add(0, "Descrição do Item - Português");
            itensPesquisar.Add(1, "Descrição do Item - Inglês");
            itensPesquisar.Add(2, "Número de Série");
            itensPesquisar.Add(3, "DI");

            cbbPesquisar.DisplayMember = "Value";
            cbbPesquisar.ValueMember   = "Key";
            cbbPesquisar.DataSource    = new BindingSource(itensPesquisar, null);           
        }

        private DataTable getRepetroContratoItem()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            
            string query = "SELECT  Razao_Social                " +
                           "       ,Contratos_Descricao         " +
                           "       ,Locais_Inventario_Descricao " +
                           "       ,DI                          " +
                           "       ,Adicao                      " +
                           "       ,Seq_Adicaostr               " +
                           "       ,DESCBEM                     " +
                           "       ,DESCBEM_Ing                 " +
                           "       ,Numero_serie                " +
                           "       ,Codigo                      " +
                           "       ,Local                       " +
                           "       ,Tipo_local                  " +
                           "       ,Quantidade                  " +                    
                           "  FROM Repetro                      ";                           

            if (cbbPesquisar.SelectedIndex == 0)
            {
                query = query + " WHERE DESCBEM LIKE '" + txtPesquisar.Text + "%'";                
            }

            if (cbbPesquisar.SelectedIndex == 1)
            {
                query = query + " WHERE DESCBEM_Ing LIKE '" + txtPesquisar.Text + "%'";               
            }

            if (cbbPesquisar.SelectedIndex == 2)
            {
                query = query + " WHERE (Numero_serie LIKE '" + txtPesquisar.Text + "%') OR (Produto LIKE '" + txtPesquisar.Text + "%')";               
            }

            if (cbbPesquisar.SelectedIndex == 3)
            {
                query = query + " WHERE DI LIKE '" + txtPesquisar.Text + "%' ";
            }

            query = query + " ORDER BY Razao_Social, Locais_Inventario_Descricao, Contratos_Descricao, DESCBEM ";

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

        private void getContratos(string Importador)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " SELECT LI.Descricao AS Local_Descricao, C.Descricao AS Contratos_Descricao, CONVERT(VARCHAR(10), C.Vigencia_inicial, 103) AS Vigencia_inicial, CONVERT(VARCHAR(10), C.Vigencia_final, 103) AS Vigencia_final, C.Contrato " +                           
                           "   FROM Locais_Inventario LI INNER JOIN Contratos C                                                                           " +
                           "     ON LI.Importador = C.Importador AND LI.Contrato = C.Contrato                                                             " +
                           "  WHERE C.Ativo = 1 AND C.Vigencia_inicial IS NOT NULL AND C.Importador = @Importador                                         " +
                           "ORDER BY C.Vigencia_inicial, Local_Descricao                                                                                  ";

            DataTable table;

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Importador", Importador);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }

                mcbbContrato.DataSource    = null;
                mcbbContrato.DataSource    = table;
                mcbbContrato.DisplayMember = "Contratos_Descricao";
                mcbbContrato.ValueMember   = "Contrato";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }        
        }

        private void getImportadores(string Importador)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query;

            if (rdbMesmoCNPJ.Checked)
            {
                query = " SELECT I.Codigo, I.Razao_Social, I.CNPJ_CPF_COMPLETO " +
                        "   FROM Importadores I                                " +                        
                        "  WHERE I.Codigo = @Importador                        ";
            }
            else
            {
                query = " SELECT IM.Codigo, IM.Razao_Social, IM.CNPJ_CPF_COMPLETO     " +
                        "   FROM Importadores I                                       " +
                        "        INNER JOIN Importadores IM ON I.CGC_CPF = IM.CGC_CPF " +
                        "  WHERE I.Codigo = @Importador AND IM.Codigo <> @Importador  ";    
            }

            DataTable table;

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Importador", Importador);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);                        
                    }
                }

                mcbbImportador.DataSource = null;
                mcbbImportador.DataSource = table;
                mcbbImportador.DisplayMember = "Razao_Social";
                mcbbImportador.ValueMember   = "Codigo";

                mcbbImportador.Enabled = rdbOutroCNPJ.Checked;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }        

        private void FrmRepetroTransferenciaBem_Load(object sender, EventArgs e)
        {
            dataGridView.AutoGenerateColumns  = false;            

            getItensPesquisar();

            cbbPesquisar.Focus();            
        }

        private void AtualizaGrid()
        {
            bindingSource.DataSource = getRepetroContratoItem();

            dataGridView.DataSource = bindingSource;                       
        }        

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtPesquisar.Text.Trim()))            
            {
                MessageBox.Show("Favor informar o filtro a ser usado.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtPesquisar.Focus();                                
            } else
        	{
                AtualizaGrid();                   
	        }                      
        }        

        private void btnTransferirBem_Click(object sender, EventArgs e)
        {
            if (ValidaCampos() == false) return;            
            
            if (MessageBox.Show("Confirma a transferência para o contrato atual ?", "Transferir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {                   
                   ContratoDeAdmissaoTemporaria Contrato = new ContratoDeAdmissaoTemporaria();
                    
                   //Contrato = Contrato.BuscarContrato(((DataRowView)this.bindingSource.Current).Row["Codigo"].ToString(), mcbbContrato.SelectedValue.ToString());

                   Contrato = Contrato.BuscarContrato(mcbbImportador.SelectedValue.ToString(), mcbbContrato.SelectedValue.ToString());

                   LocalDeInventario Local = new LocalDeInventario();

                   //Local = Local.BuscarLocalPorImportadorEContrato(((DataRowView)this.bindingSource.Current).Row["Codigo"].ToString(), mcbbContrato.SelectedValue.ToString());                                                                                

                   Local = Local.BuscarLocalPorImportadorEContrato(mcbbImportador.SelectedValue.ToString(), mcbbContrato.SelectedValue.ToString());                                                                                
                    
                   SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                   string query = "INSERT INTO [Repetro]                                                                                        " +
                                  "([Codigo],[Razao_Social],[CNPJ],[CNPJ_COMPLETO],[Contrato]                                                   " +        
                                  ",[Contratos_Descricao],[Vigencia_inicial],[Vigencia_final],[Contratos_Tipo]                                  " +    
                                  ",[Local],[Locais_Inventario_Descricao],[Tipo_local],[Unidade_Jur],[Processo_Adm]                             " +
                                  ",[DI],[datadi],[DT_DESEMBARACO],[Tipo_Declaracao],[COD_SIT],[QSIT],[QSIT_Ing]                                " +    
                                  ",[Moeda],[Taxa_conversao],[qpro],[Processos_Tipo],[Produto],[Numero_serie]                                   " +
                                  ",[DESCBEM],[NCM],[Destaque_NCM],[Unidade],[DESC_UNIDCO],[Unidade_Medida_Estat]                               " +
                                  ",[DESC_UNIDEST],[Quantidade],[Saldo],[VALOR],[Adicao],[Seq_Adicaostr],[Regime_Tributacao_II]                 " +
                                  ",[Valor_II_Devido],[Valor_II_a_recolher],[Regime_Tributacao_IPI],[Valor_IPI_Devido],[Valor_IPI_a_recolher]   " +
                                  ",[Codigo_Fiel],[CNPJ_Empresa_Fiel],[Razao_Social_Fiel],[Endereco],[Descricao],[Nome_Fiel],[CPF_Fiel]         " +    
                                  ",[DESCBEM_Ing],[Saldo_MOV],[LancamentoManual])                                                               " +
                                  "SELECT @Codigo,@Razao_Social,[CNPJ],@CNPJ_COMPLETO                                                           " +
                                  ",@Contrato,@Contratos_Descricao,@Vigencia_inicial,@Vigencia_final                                            " +
                                  ",@Contratos_Tipo,@Local,@Locais_Inventario_Descricao,@Tipo_local                                             " +
                                  ",[Unidade_Jur],@Processo_Adm,DI,[datadi],[DT_DESEMBARACO],[Tipo_Declaracao]                                   " +
                                  ",[COD_SIT],[QSIT],[QSIT_Ing],[Moeda],[Taxa_conversao],[qpro],[Processos_Tipo]                                " +
                                  ",[Produto],[Numero_serie],[DESCBEM],[NCM],[Destaque_NCM],[Unidade],[DESC_UNIDCO]                             " +
                                  ",[Unidade_Medida_Estat],[DESC_UNIDEST],@Quantidade,@Saldo,[VALOR],@NovaAdicao                                " +
                                  ",'001',[Regime_Tributacao_II],[Valor_II_Devido],[Valor_II_a_recolher]                                        " +
                                  ",[Regime_Tributacao_IPI],[Valor_IPI_Devido],[Valor_IPI_a_recolher],[Codigo_Fiel]                             " +
                                  ",[CNPJ_Empresa_Fiel],[Razao_Social_Fiel],[Endereco],[Descricao],[Nome_Fiel],[CPF_Fiel]                       " +
                                  ",[DESCBEM_Ing],[Saldo_MOV],1                                                                                 " +
                                  "FROM [Repetro]                                                                                               " +
                                  "WHERE DI = @DI AND ADICAO = @ADICAO AND SEQ_ADICAOSTR = @SEQ_ADICAOSTR                                       ";

                   string DI = ((DataRowView)this.bindingSource.Current).Row["DI"].ToString();
                   string Adicao = ((DataRowView)this.bindingSource.Current).Row["Adicao"].ToString();
                   string SeqAdicao = ((DataRowView)this.bindingSource.Current).Row["Seq_Adicaostr"].ToString();

                   int NovaAdicao = RetornaProximaAdicao(DI); 

                   using (SqlCommand cmd = new SqlCommand(query, conn))
                   {
                       cmd.Parameters.AddWithValue("@Codigo", Contrato.Importador);
                       cmd.Parameters.AddWithValue("@Razao_Social", mcbbImportador.Text);
                       cmd.Parameters.AddWithValue("@CNPJ_COMPLETO", RetornaCNPJ(mcbbImportador.SelectedValue.ToString()));                       
                       cmd.Parameters.AddWithValue("@Contrato", Contrato.Contrato);
                       cmd.Parameters.AddWithValue("@Contratos_Descricao", Contrato.Descricao);
                       cmd.Parameters.AddWithValue("@Vigencia_inicial", Contrato.Vigencia_inicial.ToString());
                       cmd.Parameters.AddWithValue("@Vigencia_final", Contrato.Vigencia_final.ToString());
                       cmd.Parameters.AddWithValue("@Contratos_Tipo", Contrato.Tipo);
                       cmd.Parameters.AddWithValue("@Processo_Adm", Local.Processo_Adm);                       
                       cmd.Parameters.AddWithValue("@Local", Local.Local);
                       cmd.Parameters.AddWithValue("@Locais_Inventario_Descricao", Local.Descricao);
                       cmd.Parameters.AddWithValue("@Tipo_local", Local.Tipo_local);                
                       cmd.Parameters.AddWithValue("@Quantidade", Convert.ToDouble(txtSaldo.Text));
                       cmd.Parameters.AddWithValue("@Saldo", Convert.ToDouble(txtSaldo.Text));
                       cmd.Parameters.AddWithValue("@NovaAdicao", NovaAdicao);                
                       cmd.Parameters.AddWithValue("@DI", DI);
                       cmd.Parameters.AddWithValue("@ADICAO", Adicao);
                       cmd.Parameters.AddWithValue("@SEQ_ADICAOSTR", SeqAdicao);                        
                       cmd.ExecuteNonQuery();
                   }

                   LogSistemas.AddLogSistema("Transferência de Bem", FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Transferência de Bem do Contrato {0} para o contrato {1}, Local: {2}, DI: {3}, Adição {4}, Sequência da Adição: 001", ((DataRowView)this.bindingSource.Current).Row["Contratos_Descricao"].ToString(), Local.Descricao, Contrato.Descricao, DI, Adicao));

                   LimpaCampos();                    

                   MessageBox.Show("Transferência concluída com sucesso.", "Inclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);                    
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private Boolean ValidaCampos()
        {            
            if ((bindingSource.Count == 0))
            {
                MessageBox.Show("Favor selecionar um item.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                dataGridView.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(mcbbContrato.Text.Trim()))
            {
                MessageBox.Show("Favor selecionar um contrato.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mcbbContrato.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtSaldo.Text.Trim()))
            {
                MessageBox.Show("Favor informar a quantidade.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtSaldo.Focus();
                return false;
            }
            
            double qtd = Convert.ToDouble(((DataRowView)this.bindingSource.Current).Row["Quantidade"].ToString());

            if (Convert.ToDouble(txtSaldo.Text) > qtd)
            {
                MessageBox.Show("Quantidade informada é maior!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtSaldo.Focus();
                return false;
            }

            return true;
        }

        private void dataGridView_SelectionChanged(object sender, EventArgs e)
        {
            if (bindingSource.Count > 0)
            {
                getImportadores(((DataRowView)this.bindingSource.Current).Row["Codigo"].ToString());

                getContratos(mcbbImportador.SelectedValue.ToString());                              
            }                                    
        }        

        private void LimpaCampos()
        {
            bindingSource.DataSource = null;

            mcbbImportador.DataSource = null;
            
            mcbbContrato.DataSource = null;

            rdbMesmoCNPJ.Checked = true;

            txtPesquisar.Clear();                                       

            txtPesquisar.Focus();

            txtSaldo.Clear();
        }

        private int RetornaProximaAdicao(String DI)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " SELECT (MAX(CAST(Adicao AS int)) + 1) AS ProximaAdicao       " +
                           "   FROM Repetro                                               " +
                           "  WHERE DI = @DI AND ISNUMERIC((Adicao)) = 1 AND Adicao < 888 ";                                                                        
            
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@DI", DI);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {                                                                            
                    while (reader.Read())
                    {
                        return ((int)reader["ProximaAdicao"]);                                                              
                    }

                    return ((int)reader["ProximaAdicao"]);      
                }
            }                        
        }

        private string RetornaCNPJ(string importador)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " SELECT CNPJ_CPF_COMPLETO FROM Importadores WHERE Codigo = @Codigo ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Codigo", importador);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        return reader["CNPJ_CPF_COMPLETO"].ToString();
                    }

                    return reader["CNPJ_CPF_COMPLETO"].ToString();
                }
            }
        }

        private void txtSaldo_KeyPress(object sender, KeyPressEventArgs e)
        {
           Util.SomenteNumero(e);
        }

        private void rdbMesmoCNPJ_CheckedChanged(object sender, EventArgs e)
        {
            if (bindingSource.Count > 0)
            {
                getImportadores(((DataRowView)this.bindingSource.Current).Row["Codigo"].ToString());

                getContratos(mcbbImportador.SelectedValue.ToString());                
            }               
        }

        private void mcbbImportador_SelectedValueChanged(object sender, EventArgs e)
        {
            try
            {
                getContratos(mcbbImportador.SelectedValue.ToString());                
            }
            catch (Exception)
            {
                                
            }            
        }
    }
}
