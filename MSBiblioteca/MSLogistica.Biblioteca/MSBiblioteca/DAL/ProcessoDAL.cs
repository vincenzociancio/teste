using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using MSBiblioteca.BLL;
using System.Collections.Generic;
using MSBiblioteca.Constante;
using System.Data.SqlTypes;

namespace MSBiblioteca.DAL
{
    internal class ProcessoDAL : BancoDados
    {
        internal DataTable Buscar()
        {
            var strSql = new StringBuilder();
            strSql.Append("SELECT top 10 Empresa,Filial,Codigo,Data,Importador,Codigo_Cliente,Tipo_Declaracao ");
            strSql.Append(",Tipo,Contrato,Local_Inventario,NR_DECL_IMP_MICRO,NR_DECL_IMP_PROT,NR_DECLARACAO_IMP ");
            strSql.Append(",DT_PROCESSAMENTO,DT_TRANSMISSAO,DT_REGISTRO_DI,DT_DESEMBARACO,DT_DISTRIBUICAO,Canal ");
            strSql.Append(",Fiscal,Status,COD_SIT,CD_MOTIVO_TRANS,IN_MOEDA_UNICA,TX_INFO_COMPL,CD_TIPO_PGTO_TRIB ");
            strSql.Append(",Numero_RCR,Data_Entrada_RCR,Data_Aprovacao_RCR,Fundamentacao_RCR,Procurador,Numero_TR ");
            strSql.Append(",Data_Entrada_TR,Data_vencimento_TR,Data_Aprovacao_TR,Data_Baixa_TR,Data_CI,Tipo_Garantia ");
            strSql.Append(",Nome_banco_GAR,Agencia_GAR,Data_deposito_GAR,Nome_titulo_GAR,numeros_titulos_GAR ");
            strSql.Append(",Nome_seguradora_GAR,apolice_GAR,nome_fiador_GAR,CNPJ_fiador_GAR,endereco_fiador_GAR ");
            strSql.Append(",Quantidade_LI,Valor_FOB,Valor_CIF,Responsavel_Empresa,Responsavel_Importador,Saldo_Faturamento ");
            strSql.Append(",NR_DECL_IMP_MICROC,NR_DECL_IMP_PROTC,NR_DECLARACAO_IMPC,DT_PROCESSAMENTOC,DT_TRANSMISSAOC ");
            strSql.Append(",DT_REGISTRO_DIC,DT_DESEMBARACOC,DT_DISTRIBUICAOC,CanalC,FiscalC,COD_SITC,Data_CIC,Valor_FOBC ");
            strSql.Append(",Valor_CIFC,ident_meio1,ident_meio2,Codevento,Codobs,Obs_especifica,Data_ufollowup,Hora_ufollowup ");
            strSql.Append(",Data_liberacao,Urgente,consolidado,Pag_proporcional,TR_VAL_FOB_US,TR_VAL_CIF_US,TR_VAL_II ");
            strSql.Append(",TR_VAL_IPI,DDE,Processo_Adm,Proc_Adm_Data_Entrada,Faturado,Fechado,Centro_Custo,Procurador2 ");
            strSql.Append(",TR_VAL_PIS,TR_VAL_COFINS,RCR_LOCAL,Responsavel_EmpresaC,vinc_processo,proc_vinc,sem_nfs ");
            strSql.Append(",TR_IMPRESSOES,TR_IMPRESSOES_FECP,AVISO_DESEMBARACO,FK_Processos_Tipo_Urgencia,Coordenador_Resp ");
            strSql.Append(",Supervisor_Resp,BASE_ICMS,Aguardando_Medicao,Emissao_Faturamento,Vencimento_Faturamento ");
            strSql.Append(",Forma_Pag_Faturamento,Valor_Faturamento,Emissao_Faturamento2,Vencimento_Faturamento2 ");
            strSql.Append(",Forma_Pag_Faturamento2,Valor_Faturamento2,Emissao_Faturamento3,Vencimento_Faturamento3 ");
            strSql.Append(",Forma_Pag_Faturamento3,Valor_Faturamento3,TR_Indeferido,Material_Usado,Sem_Email ");
            strSql.Append("FROM Processos ");

            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    using (var objDr = objCommand.ExecuteReader())
                    {
                        using (var objTable = new DataTable())
                        {
                            objTable.Load(objDr);
                            return objTable;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal Processo BuscarCodigo(string codigo)
        {
            var strSql = new StringBuilder();
            strSql.Append("SELECT Empresa,Filial,Codigo,Data,Importador,Codigo_Cliente,Tipo_Declaracao ");
            strSql.Append(",Tipo,Contrato,Local_Inventario,NR_DECL_IMP_MICRO,NR_DECL_IMP_PROT,NR_DECLARACAO_IMP ");
            strSql.Append(",DT_PROCESSAMENTO,DT_TRANSMISSAO,DT_REGISTRO_DI,DT_DESEMBARACO,DT_DISTRIBUICAO,Canal ");
            strSql.Append(",Fiscal,Status,COD_SIT,CD_MOTIVO_TRANS,IN_MOEDA_UNICA,TX_INFO_COMPL,CD_TIPO_PGTO_TRIB ");
            strSql.Append(",Numero_RCR,Data_Entrada_RCR,Data_Aprovacao_RCR,Fundamentacao_RCR,Procurador,Numero_TR ");
            strSql.Append(",Data_Entrada_TR,Data_vencimento_TR,Data_Aprovacao_TR,Data_Baixa_TR,Data_CI,Tipo_Garantia ");
            strSql.Append(",Nome_banco_GAR,Agencia_GAR,Data_deposito_GAR,Nome_titulo_GAR,numeros_titulos_GAR ");
            strSql.Append(",Nome_seguradora_GAR,apolice_GAR,nome_fiador_GAR,CNPJ_fiador_GAR,endereco_fiador_GAR ");
            strSql.Append(",Quantidade_LI,Valor_FOB,Valor_CIF,Responsavel_Empresa,Responsavel_Importador,Saldo_Faturamento ");
            strSql.Append(",NR_DECL_IMP_MICROC,NR_DECL_IMP_PROTC,NR_DECLARACAO_IMPC,DT_PROCESSAMENTOC,DT_TRANSMISSAOC ");
            strSql.Append(",DT_REGISTRO_DIC,DT_DESEMBARACOC,DT_DISTRIBUICAOC,CanalC,FiscalC,COD_SITC,Data_CIC,Valor_FOBC ");
            strSql.Append(",Valor_CIFC,ident_meio1,ident_meio2,Codevento,Codobs,Obs_especifica,Data_ufollowup,Hora_ufollowup ");
            strSql.Append(",Data_liberacao,Urgente,consolidado,Pag_proporcional,TR_VAL_FOB_US,TR_VAL_CIF_US,TR_VAL_II ");
            strSql.Append(",TR_VAL_IPI,DDE,Processo_Adm,Proc_Adm_Data_Entrada,Faturado,Fechado,Centro_Custo,Procurador2 ");
            strSql.Append(",TR_VAL_PIS,TR_VAL_COFINS,RCR_LOCAL,Responsavel_EmpresaC,vinc_processo,proc_vinc,sem_nfs ");
            strSql.Append(",TR_IMPRESSOES,TR_IMPRESSOES_FECP,AVISO_DESEMBARACO,FK_Processos_Tipo_Urgencia,Coordenador_Resp ");
            strSql.Append(",Supervisor_Resp,BASE_ICMS,Aguardando_Medicao,Emissao_Faturamento,Vencimento_Faturamento ");
            strSql.Append(",Forma_Pag_Faturamento,Valor_Faturamento,Emissao_Faturamento2,Vencimento_Faturamento2 ");
            strSql.Append(",Forma_Pag_Faturamento2,Valor_Faturamento2,Emissao_Faturamento3,Vencimento_Faturamento3 ");
            strSql.Append(",Forma_Pag_Faturamento3,Valor_Faturamento3,TR_Indeferido,Material_Usado,Sem_Email ");
            strSql.Append("FROM Processos where Codigo = @Codigo");

            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", codigo);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        var processo = new Processo();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                processo.Codigo = objDr["Codigo"].ToString();
                                processo.Data = (DateTime)objDr["Data"];
                                processo.FK_Importador = objDr["Importador"].ToString();
                                processo.FK_Contrato = objDr["Contrato"].ToString();
                                processo.FK_Centro_Custo = objDr["Centro_Custo"].ToString();
                                processo.Tipo = objDr["Tipo"].ToString();
                                processo.FK_Processos_Tipo_Urgencia = (objDr["FK_Processos_Tipo_Urgencia"] == DBNull.Value) ? (int?)null : ((int)objDr["FK_Processos_Tipo_Urgencia"]);//objDr["FK_Processos_Tipo_Urgencia"];
                                processo.Tipo_Declaracao = objDr["Tipo_Declaracao"].ToString();
                                processo.FK_Local_Inventario = objDr["Local_Inventario"].ToString();
                                processo.Urgente = (int)objDr["Urgente"];
                                processo.Codigo_Cliente = objDr["Codigo_Cliente"].ToString();
                                processo.Vinculado_Processo = (int)objDr["vinc_processo"];
                                processo.Processo_Vinculado = objDr["proc_vinc"].ToString();
                                processo.Pagamento_Proporcional = (int)objDr["Pag_proporcional"];
                                processo.Fechado = (int)objDr["Fechado"];
                                processo.Material_Usado = Convert.ToInt16(objDr["Material_Usado"]);
                            }

                        }
                        return processo;
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal Boolean ExisteVinculacaoProcurador(string codigo)
        {
            var strSql = new StringBuilder();
            bool retorno = true;

            strSql.Append("SELECT top 1 Codigo ");
            strSql.Append("FROM Processos ");
            strSql.Append("WHERE Procurador = @Procurador ");

            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Procurador", codigo);

                    using (var objDr = objCommand.ExecuteReader())
                    {
                        retorno = objDr.HasRows;
                    }
                }
                return retorno;
            }
            catch (Exception ex)
            {
                return retorno;
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal bool ExisteProcesso(string codigo)
        {
            StringBuilder strSql = new StringBuilder();
            bool retorno = false;

            strSql.Append("SELECT Codigo ");
            strSql.Append("FROM Processos ");
            strSql.Append("WHERE Codigo = @Codigo ");

            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", codigo);

                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        retorno = objDr.HasRows;
                    }
                }
                return retorno;
            }
            catch (Exception ex)
            {
                return retorno;
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal Contrato BuscarContrato(string contrato, string importador)
        {
            var strSql = new StringBuilder();
            strSql.Append("SELECT Empresa,Filial,Importador,Contrato,Descricao, ");
            strSql.Append("Vigencia_inicial,Vigencia_final,Tipo,Data_Baixa,Data_prorrogacao, ");
            strSql.Append("Repetro,Ativo,Cod_Regime_Fundamento,INs,Setor ");
            strSql.Append("FROM Contratos where Contrato = @Codigo and Importador = @Importador");
            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", contrato);
                    objCommand.Parameters.AddWithValue("@Importador", importador);
                    using (var objDr = objCommand.ExecuteReader())
                    {
                        Contrato objcontrato = null;
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                objcontrato = new Contrato
                                {
                                    Contrato = objDr["Contrato"].ToString(),
                                    Descricao = objDr["Descricao"].ToString(),
                                    Repetro = (int)objDr["Repetro"],
                                    INs = objDr["INs"].ToString()
                                };
                            }
                        }
                        return objcontrato;
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal List<Fatura> BuscarFaturas(string processo)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Empresa, Filial, Processo, Codigo, Incoterm, Exportador, Condicao, Moeda, ");
            strSql.Append("Valor_Total, Peso_Total, Peso_Total_Acertado, Vinculacao, Acrescimos_Reducoes, peso_LIbra, FK_Plataforma, DtEmissao ");
            strSql.Append("FROM Faturas WHERE Processo= @Processo");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Processo", processo);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<Fatura> lista = new List<Fatura>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                lista.Add(new Fatura
                                {
                                    Processo = objDr["Processo"].ToString(),
                                    Codigo = objDr["Codigo"].ToString(),
                                    Incoterm = objDr["Incoterm"].ToString(),
                                    FK_Exportador = objDr["Exportador"].ToString(),
                                    Condicao = objDr["Condicao"].ToString(),
                                    Moeda = objDr["Moeda"].ToString(),
                                    Valor_Total = (double)objDr["Valor_Total"],
                                    Peso_Total = (double)objDr["Peso_Total"],
                                    Peso_Total_Acertado = (double)objDr["Peso_Total_Acertado"],
                                    Vinculacao = objDr["Vinculacao"].ToString(),
                                    Acrescimos_Reducoes = (int)objDr["Acrescimos_Reducoes"],
                                    Peso_Libra = (int)objDr["Peso_Libra"],
                                    FK_Plataforma = (objDr["FK_Plataforma"] == DBNull.Value) ? (int?)null : ((int)objDr["FK_Plataforma"]),
                                    DtEmissao = (objDr["DtEmissao"] == DBNull.Value) ? (DateTime?)null : ((DateTime)objDr["DtEmissao"])

                                });
                            }
                        }
                        return lista;
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal Importador BuscarImportador(string codigoImportador)
        {
            var strSql = new StringBuilder();
            strSql.Append("SELECT Codigo,Razao_Social,Pais,CNPJ_CPF_COMPLETO,CGC_CPF,Tipo_Importador,Endereco,Numero,Complemento, ");
            strSql.Append("Bairro,Cidade,CEP,UF,Estado,Inscricao_Estadual,Banco,Agencia,Conta_Corrente,Conta_Corrente_Registro,Conta_Corrente_Deposito,link,CAE, ");
            strSql.Append("Telefone,Ativo,Acesso_WEB_MS,Acesso_WEB_CLI,Acesso_WEB_REC,BASE_ICMS,MOV_REPETRO,Inscricao_Municipal,EMAIL,FATURA_ISS,EMAIL_MONITORACAO,Exporta_Para_Siscomex,Apenc_Liberado,fk_contrato_financ ");
            strSql.Append("FROM Importadores ");
            strSql.Append("WHERE Codigo = @Codigo ");

            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", codigoImportador);
                    using (var objDr = objCommand.ExecuteReader())
                    {
                        var importador = new Importador();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                importador.Codigo = objDr["Codigo"].ToString();
                                importador.RazaoSocial = objDr["Razao_Social"].ToString();
                                importador.CnpjCpfCompleto = objDr["CNPJ_CPF_COMPLETO"].ToString();
                                importador.CgcCpf = objDr["CGC_CPF"].ToString();
                                importador.Endereco = objDr["Endereco"].ToString();
                                importador.Complemento = objDr["Complemento"].ToString();
                                importador.Bairro = objDr["Bairro"].ToString();
                                importador.Cidade = objDr["Cidade"].ToString();
                                importador.Cep = objDr["CEP"].ToString();
                                importador.Uf = objDr["UF"].ToString();
                                importador.Estado = objDr["Estado"].ToString();
                                importador.Ativo = (int)objDr["Ativo"];
                            }
                        }
                        return importador;
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal bool Incluir(Processo obj)
        {
            var strSql = new StringBuilder();
            strSql.Append("INSERT INTO Processos ");
            strSql.Append("(Empresa, Filial, Codigo, Data, Centro_Custo, Importador, Codigo_Cliente, Tipo_Declaracao,");
            strSql.Append("Tipo, Contrato, Local_Inventario, Status, COD_SIT, Material_Usado, FK_Processos_Tipo_Urgencia, Urgente,Pag_proporcional)");
            strSql.Append("VALUES(@Empresa, @Filial, @Codigo, @Data, @Centro_Custo, @Importador, @Codigo_Cliente, @Tipo_Declaracao, @Tipo, @Contrato, @Local_Inventario,");
            strSql.Append("@Status, @COD_SIT, @Material_Usado, @FK_Processos_Tipo_Urgencia, @Urgente,@Pag_proporcional)");
            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Empresa", Parametro.Empresa);
                    objCommand.Parameters.AddWithValue("@Filial", Parametro.Filial);
                    objCommand.Parameters.AddWithValue("@Codigo", obj.Codigo);
                    objCommand.Parameters.AddWithValue("@Data", obj.Data);
                    objCommand.Parameters.AddWithValue("@Centro_Custo", obj.FK_Centro_Custo);
                    objCommand.Parameters.AddWithValue("@Importador", obj.FK_Importador);
                    objCommand.Parameters.AddWithValue("@Codigo_Cliente", obj.Codigo_Cliente);
                    objCommand.Parameters.AddWithValue("@Tipo_Declaracao", obj.Tipo_Declaracao);
                    objCommand.Parameters.AddWithValue("@Tipo", obj.Tipo);
                    objCommand.Parameters.AddWithValue("@Contrato", obj.FK_Contrato);
                    objCommand.Parameters.AddWithValue("@Local_Inventario", obj.FK_Local_Inventario);
                    objCommand.Parameters.AddWithValue("@Status", obj.Status);
                    objCommand.Parameters.AddWithValue("@COD_SIT", obj.COD_SIT);
                    objCommand.Parameters.AddWithValue("@Material_Usado", obj.Material_Usado);
                    if (obj.FK_Processos_Tipo_Urgencia == null)

                        objCommand.Parameters.AddWithValue("@FK_Processos_Tipo_Urgencia", SqlInt32.Null);
                    else
                        objCommand.Parameters.AddWithValue("@FK_Processos_Tipo_Urgencia", obj.FK_Processos_Tipo_Urgencia);
                    objCommand.Parameters.AddWithValue("@Urgente", obj.Urgente);
                    objCommand.Parameters.AddWithValue("@Pag_proporcional", obj.Pagamento_Proporcional);
                    objCommand.ExecuteNonQuery();

                }
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        internal bool Alterar(Processo obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Processos SET ");
            strSql.Append("Empresa=@Empresa, Filial=@Filial, Centro_Custo=@Centro_Custo, Importador=@Importador,");
            strSql.Append("Codigo_Cliente=@Codigo_Cliente, Tipo_Declaracao=@Tipo_Declaracao,Tipo=@Tipo, Contrato=@Contrato, Local_Inventario=@Local_Inventario,");
            strSql.Append("Urgente=@Urgente, Material_Usado=@Material_Usado, FK_Processos_Tipo_Urgencia=@FK_Processos_Tipo_Urgencia, Pag_proporcional=@Pag_proporcional ");
            strSql.Append("WHERE Codigo = @Processo");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Empresa", Parametro.Empresa);
                    objCommand.Parameters.AddWithValue("@Filial", Parametro.Filial);
                    objCommand.Parameters.AddWithValue("@Processo", obj.Codigo);
                    objCommand.Parameters.AddWithValue("@Centro_Custo", obj.FK_Centro_Custo);
                    objCommand.Parameters.AddWithValue("@Importador", obj.FK_Importador);
                    objCommand.Parameters.AddWithValue("@Codigo_Cliente", obj.Codigo_Cliente);
                    objCommand.Parameters.AddWithValue("@Tipo_Declaracao", obj.Tipo_Declaracao);
                    objCommand.Parameters.AddWithValue("@Tipo", obj.Tipo);
                    objCommand.Parameters.AddWithValue("@Contrato", obj.FK_Contrato);
                    objCommand.Parameters.AddWithValue("@Local_Inventario", obj.FK_Local_Inventario);
                    objCommand.Parameters.AddWithValue("@Material_Usado", obj.Material_Usado);
                    if (obj.FK_Processos_Tipo_Urgencia == null)

                        objCommand.Parameters.AddWithValue("@FK_Processos_Tipo_Urgencia", SqlInt32.Null);
                    else
                        objCommand.Parameters.AddWithValue("@FK_Processos_Tipo_Urgencia", obj.FK_Processos_Tipo_Urgencia);
                    objCommand.Parameters.AddWithValue("@Urgente", obj.Urgente);
                    objCommand.Parameters.AddWithValue("@Pag_proporcional", obj.Pagamento_Proporcional);
                    objCommand.ExecuteNonQuery();
                }
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        internal string ObterNovoCodigoProcesso()
        {
            string CodigoNovo = string.Empty;
            int ok = 0;
            SqlCommand objCommand = null;
            try
            {
                AbrirConexao();
                // buscando codigo atual
                using (objCommand = new SqlCommand("SELECT Numerador_Processos FROM Processos_Numerador WHERE SUBSTRING(Numerador_Processos,7,2) = RIGHT(YEAR(GETDATE()),2)", Conexao))
                {
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        // Preparando ano atual
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                int codigoAtual = Convert.ToInt32(objDr["Numerador_Processos"].ToString().Substring(0, 5));
                                int anoAtual = Convert.ToInt32(objDr["Numerador_Processos"].ToString().Substring(6, 2));
                                CodigoNovo = string.Format("{0}/{1}",
                                            Convert.ToString(codigoAtual + 1).PadLeft(5, '0'),
                                            anoAtual);
                            }
                        }
                        else//Preparando ano novo
                        {
                            CodigoNovo = string.Format("{0}/{1}", "00001", DateTime.Now.ToString("yy"));
                        }
                    }
                }

                //Incluir um novo ano
                if (!string.IsNullOrEmpty(CodigoNovo))
                {
                    //Incluir um novo ano
                    using (objCommand = new SqlCommand("UPDATE Processos_Numerador SET Numerador_Processos = @novo", Conexao))
                    {
                        objCommand.Parameters.AddWithValue("@novo", CodigoNovo);
                        ok = objCommand.ExecuteNonQuery();
                    }
                }

                return ok >= 1 ? CodigoNovo : "";
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal Conhecimento BuscarConhecimento(string processo)
        {
            var strSql = new StringBuilder();
            strSql.Append("SELECT Empresa,Filial,Processo,Via,Multimodal,PLaca,Lacre,Embarcacao,Transportador,Tipodoccarga,Numerodoccarga,Numeromaster,Local, ");
            strSql.Append("Data,Utilizacao,Tipomanifesto,Numeromanifesto,Codigo_Presenca_Carga,Peso_Bruto,Peso_Liquido,Agente,Pais_Procedencia, ");
            strSql.Append("URF_chegada,Data_Chegada_URF_Cheg,URF_Despacho,Data_Chegada_URF_Desp,Recinto_Alfandegario, ");
            strSql.Append("Setor_Alfandegario,Armazem,Operacao_FUNDAP,Contratante_OPCAMBIAL,Moeda_Frete,Frete_Prepaid,Frete_Collect, ");
            strSql.Append("Frete_Ter_Nac,Moeda_Seguro,Valor_Seguro,Moeda_Despesas_ate_FOB,Valor_Despesas_ate_FOB,Unidade,Quantidade,DT_ETA, ");
            strSql.Append("Data_Follow,TX_CE,Moeda_TXCE,BAF,Moeda_BAF,Outros_Componentes_Frete,Moeda_Outros_Componentes ");
            strSql.Append("FROM Conhecimento_Processo ");
            strSql.Append("WHERE Processo = @Processo ");

            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Processo", processo);
                    using (var objDr = objCommand.ExecuteReader())
                    {
                        var conhecimento = new Conhecimento();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {

                                conhecimento.URF_Despacho = objDr["URF_Despacho"].ToString();

                            }
                        }
                        return conhecimento;
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal bool Vincular(string processoNew, string processoOld, bool copiar)
        {
            string sqlFatura = "INSERT INTO Faturas" +
            "(Empresa,Filial,Processo,Codigo,Exportador,Incoterm,Vinculacao,Condicao,Valor_Total" +
           ",Peso_Total,Peso_Total_Acertado,Acrescimos_Reducoes,Moeda,Cobertura_Cambial,Motivo_Sem_Cobertura," +
           "Modalidade_de_Pagamento,Instituicao_Financiadora,Tipo_Parcela,Numero_de_parcelas,Periodicidade," +
           "Valor_das_Parcelas,Indicador_Periodicidade,Taxa_de_Juros,Codigo_Taxa_de_Juros,Valor_Taxa_de_Juros,ROF_BACEN,Percentual_ROF" +
           ",DT_PREV_PAG_CAMBIO,DT_PAG_CAMBIO,STATUS_CAMBIO,CONTRATO_CAMBIO,SALDO_CAMBIO" +
           ",DtEmissao,Peso_Libra,Contrato,Local_Inventario,FK_Plataforma)" +
           "SELECT " +
           "Empresa,Filial,@ProcessoNew,Codigo,Exportador,Incoterm,Vinculacao,Condicao,Valor_Total" +
           ",Peso_Total,Peso_Total_Acertado,Acrescimos_Reducoes,Moeda,Cobertura_Cambial,Motivo_Sem_Cobertura," +
           "Modalidade_de_Pagamento,Instituicao_Financiadora,Tipo_Parcela,Numero_de_parcelas,Periodicidade," +
           "Valor_das_Parcelas,Indicador_Periodicidade,Taxa_de_Juros,Codigo_Taxa_de_Juros,Valor_Taxa_de_Juros,ROF_BACEN,Percentual_ROF" +
           ",DT_PREV_PAG_CAMBIO,DT_PAG_CAMBIO,STATUS_CAMBIO,CONTRATO_CAMBIO,SALDO_CAMBIO" +
           ",DtEmissao,Peso_Libra,Contrato,Local_Inventario,FK_Plataforma " +
           "FROM Faturas WHERE Faturas.Processo = @ProcessoOld";

            string sqlItens = "INSERT INTO ItensFaturas" +
            "(Empresa,Filial,Processo,Fatura,Sequencial,Pagina,Produto,Descricao_Produto,Fabricante,NCM,Unidade,Unidade_Medida_Estat" +
           ",Destaque_NCM,NALADI,Referencia,Numero_serie,Referencia_projeto,PO,Seqpo,Quantidade,Valor_Unitario,Valor_Total" +
           ",Peso_Unitario,Peso_Unitario_Acertado,Peso_Total,Peso_Total_Acertado,Saldo_Tributavel,Rateio_Acrescimos,Rateio_Deducoes" +
           ",Rateio_Embalagem,Rateio_Frete_Interno_imp,Rateio_Seguro_Interno,Rateio_outras_import,Rateio_startup,Rateio_jurosfin," +
            "Rateio_montagem,Rateio_Frete_Interno_exp,Rateio_carga_exp,Rateio_outras_export,Rateio_frete_fatura,Rateio_seguro_fatura" +
           ",Rateio_carga_imp,Rateio_Despesas_ate_FOB,Rateio_Frete_prepaid,Rateio_Frete_collect,Rateio_Frete_ternac,Rateio_Seguro" +
           ",Valor_Aduaneiro,Valor_mercadoria,VMLE,Base_Calc_II,Acresc_reduc_Valaduan,COD_SIT,CNPJ,Fiel_nome,Fiel_cpf" +
           ",Contrato,Local_Inventario,Rateio_Taxa_Siscomex,Descricao_Produto_ing ,Codigo_Produto,Sequencial_Produto)" +
           "SELECT " +
           "Empresa,Filial,@ProcessoNew,Fatura,Sequencial,Pagina,Produto,Descricao_Produto,Fabricante,NCM,Unidade,Unidade_Medida_Estat" +
           ",Destaque_NCM,NALADI,Referencia,Numero_serie,Referencia_projeto,PO,Seqpo,Quantidade,Valor_Unitario,Valor_Total" +
           ",Peso_Unitario,Peso_Unitario_Acertado,Peso_Total,Peso_Total_Acertado,Saldo_Tributavel,Rateio_Acrescimos,Rateio_Deducoes" +
           ",Rateio_Embalagem,Rateio_Frete_Interno_imp,Rateio_Seguro_Interno,Rateio_outras_import,Rateio_startup,Rateio_jurosfin," +
            "Rateio_montagem,Rateio_Frete_Interno_exp,Rateio_carga_exp,Rateio_outras_export,Rateio_frete_fatura,Rateio_seguro_fatura" +
           ",Rateio_carga_imp,Rateio_Despesas_ate_FOB,Rateio_Frete_prepaid,Rateio_Frete_collect,Rateio_Frete_ternac,Rateio_Seguro" +
           ",Valor_Aduaneiro,Valor_mercadoria,VMLE,Base_Calc_II,Acresc_reduc_Valaduan,COD_SIT,CNPJ,Fiel_nome,Fiel_cpf" +
           ",Contrato,Local_Inventario,Rateio_Taxa_Siscomex,Descricao_Produto_ing ,Codigo_Produto,Sequencial_Produto " +
           "FROM ItensFaturas WHERE ItensFaturas.Processo = @ProcessoOld";

            SqlTransaction transaction;
            AbrirConexao();

            transaction = Conexao.BeginTransaction();
            try
            {
                if (copiar)
                {
                    using (SqlCommand objCommand1 = new SqlCommand(sqlFatura, Conexao, transaction))
                    {
                        objCommand1.Parameters.AddWithValue("@ProcessoOld", processoOld);
                        objCommand1.Parameters.AddWithValue("@ProcessoNew", processoNew);
                        objCommand1.ExecuteNonQuery();
                    }

                    using (SqlCommand objCommand2 = new SqlCommand(sqlItens, Conexao, transaction))
                    {
                        objCommand2.Parameters.AddWithValue("@ProcessoOld", processoOld);
                        objCommand2.Parameters.AddWithValue("@ProcessoNew", processoNew);
                        objCommand2.ExecuteNonQuery();
                    }
                }

                using (SqlCommand objCommand3 = new SqlCommand("UPDATE Processos SET proc_vinc = @ProcessoOld, vinc_processo = 1 WHERE Codigo = @ProcessoNew", Conexao, transaction))
                {
                    objCommand3.Parameters.AddWithValue("@ProcessoOld", processoOld);
                    objCommand3.Parameters.AddWithValue("@ProcessoNew", processoNew);
                    objCommand3.ExecuteNonQuery();
                }

                transaction.Commit();
                return true;
            }
            catch (Exception ex)
            {
                transaction.Rollback();
                return false;
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal bool Desvincular(string processo)
        {
            SqlTransaction transaction;
            AbrirConexao();

            transaction = Conexao.BeginTransaction();
            try
            {
                using (SqlCommand objCommand1 = new SqlCommand("DELETE Faturas WHERE Processo = @Processo", Conexao, transaction))
                {
                    objCommand1.Parameters.AddWithValue("@Processo", processo);
                    objCommand1.ExecuteNonQuery();
                }

                using (SqlCommand objCommand2 = new SqlCommand("DELETE ItensFaturas WHERE Processo = @Processo", Conexao, transaction))
                {
                    objCommand2.Parameters.AddWithValue("@Processo", processo);
                    objCommand2.ExecuteNonQuery();
                }

                using (SqlCommand objCommand3 = new SqlCommand("DELETE Tributacao_Item_Fatura WHERE Processo = @Processo", Conexao, transaction))
                {
                    objCommand3.Parameters.AddWithValue("@Processo", processo);
                    objCommand3.ExecuteNonQuery();
                }

                using (SqlCommand objCommand4 = new SqlCommand("UPDATE Processos SET proc_vinc = '', vinc_processo = 0 WHERE Codigo = @Processo", Conexao, transaction))
                {
                    objCommand4.Parameters.AddWithValue("@Processo", processo);
                    objCommand4.ExecuteNonQuery();
                }

                transaction.Commit();
                return true;
            }
            catch (Exception ex)
            {
                transaction.Rollback();
                return false;
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }
        
    }
}
