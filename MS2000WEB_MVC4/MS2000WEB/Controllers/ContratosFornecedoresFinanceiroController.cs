using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web.Mvc;
using MS2000WEB.Models;
using MS2000WEB.ViewModels;
using System.Data.SqlClient;
using MS2000WEB.Models.Security;
using Microsoft.Reporting.WebForms;

namespace MS2000WEB.Controllers
{
    public class ContratosFornecedoresFinanceiroController : Controller
    {

        private MS2000Context db = new MS2000Context();

        //
        // GET: /ContratosFornecedoresFinanceiro/
        [MSAutorizacaoAuthorize("Tela de Contratos de Fornecedor")]
        public ActionResult Index(string txtNumero = null, string txtCodigofornecedor = null, string txtNomeFornecedor = null)
        {
          //  PopulateFornecedorDropDownList();

            int itxtCodigoFornecedor = 0;
            if (!(Int32.TryParse(txtCodigofornecedor, out itxtCodigoFornecedor)))
            {
               itxtCodigoFornecedor = 0;
            }             

            var query = "select cfcf.id, cfcf.numero_contrato, cfcf.data, cfcf.fk_fornecedor, f.Razao_Social + ' - ' + cast(f.id as varchar(4)) as Razao_Social " +                        
                        " from Contratos_Fornecedores_Cadastrados_Financeiro cfcf left join fornecedores f on f.id = cfcf.fk_fornecedor ";

            int adiciona = 0;

            //Busca por Número
            if (!String.IsNullOrEmpty(txtNumero))
            {
                query += " where cfcf.numero_contrato like '%" + txtNumero.ToUpper().ToString() + "%' ";
                adiciona = 1;
            }

            ////Busca por código do Fornecedor
            //if (!String.IsNullOrEmpty(txtCodigofornecedor))
            //{
            //    if (adiciona > 0)
            //    {
            //        query += " and cfcf.fk_fornecedor = " + itxtCodigoFornecedor  ;// Convert.ToInt32(txtCodigofornecedor.ToString()) + "' ";
            //    }
            //    else
            //    {
            //        query += " where cfcf.fk_fornecedor = " + itxtCodigoFornecedor ;// Convert.ToInt32(txtCodigofornecedor.ToString()) + "' ";
            //        adiciona = 1;
            //    }
            //}

            //Busca por nome do Fornecedor
            if (!String.IsNullOrEmpty(txtNomeFornecedor))
            {
                if (adiciona > 0)
                {
                    query += " and f.invoice like '%" + txtNomeFornecedor.ToUpper().ToString() + "%' ";
                }
                else
                {
                    query += " where f.Razao_Social like '%" + txtNomeFornecedor.ToUpper().ToString() + "%' ";
                    adiciona = 1;
                }
            }


            query += " order by cfcf.numero_contrato asc";            

            var model = db.Database.SqlQuery<ContratosFornecedoresFinanceiroViewModel>(query).ToList();

            return View(model);
        }

        //
        // GET: /ContratosFornecedoresFinanceiro/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /ContratosFornecedoresFinanceiro/Create
        [HttpGet, MSAutorizacaoAuthorize("Cria Contratos de Fornecedor")]
        public ActionResult Create(int id = 0)
        {
            Contratos_Fornecedores_Cadastrados_Financeiro contatosFornedecores = new Contratos_Fornecedores_Cadastrados_Financeiro();

            PopulateFornecedorDropDownList();
            PopulateUsuarioDropDownList();
            PopulateSetorDropDownList();
            PopulateFornecedorDropDownList();

         //   ViewBag.fk_fornecedor = db.Fornecedores.Where(x => x.Ativo == true).ToList();
        
            //   ViewBag.fk_fornecedor = db.Fornecedores.ToList();

         //   ViewBag.fk_usuario_solicitante = db.Usuarios.Where(x => x.Ativo == true).OrderBy(c => c.Nome_Completo).ToList();
         //   ViewBag.fk_usuario_responsavel = ViewBag.fk_usuario_solicitante;

            return View(contatosFornedecores);
        }

        //
        // POST: /ContratosFornecedoresFinanceiro/Create

        [HttpPost]
        public ActionResult Create(Contratos_Fornecedores_Cadastrados_Financeiro ContratosFornecedores)
        {

            //if (String.IsNullOrEmpty(ContratosFornecedores.fk_fornecedor))
            if (!(Convert.ToInt32(ContratosFornecedores.fk_fornecedor) > 0))
            {
             //   PopulateFornecedorDropDownList();
                //ViewBag.fk_fornecedor = db.Fornecedores.Where(x => x.Ativo == true).ToList();
                ViewBag.fk_fornecedor = db.Fornecedores.ToList();
                TempData["Erro"] = "Por favor, selecione um Fornecedor!";
                PopulateFornecedorDropDownList();
                PopulateUsuarioDropDownList();
                PopulateSetorDropDownList();
                PopulateFornecedorDropDownList();
                return View(ContratosFornecedores);
            }

            // verificar se fornecedor está ativo
            Fornecedore fornecedor = db.Fornecedores.FirstOrDefault(c => c.id == ContratosFornecedores.fk_fornecedor);            
            if (fornecedor.Ativo == false)
            {
                ViewBag.fk_fornecedor = db.Fornecedores.ToList();                
                TempData["Erro"] = "Este Fornecedor está inativo!!!";
                PopulateFornecedorDropDownList();
                PopulateUsuarioDropDownList();
                PopulateSetorDropDownList();
                PopulateFornecedorDropDownList();
                return View(ContratosFornecedores);
            }

            if (!String.IsNullOrEmpty(ContratosFornecedores.email))
            {
                if (MSBiblioteca.MSUtil.MSFuncoes.ValidaEmail(ContratosFornecedores.email) == false)
                {
                    PopulateFornecedorDropDownList(Convert.ToInt32(ContratosFornecedores.fk_fornecedor));
                    
                    TempData["Erro"] = "E-mail inválido!";
                    PopulateFornecedorDropDownList();
                    PopulateUsuarioDropDownList();
                    PopulateSetorDropDownList();
                    PopulateFornecedorDropDownList();
                    return View(ContratosFornecedores);
                }
            }  

            if (String.IsNullOrEmpty(Convert.ToString(ContratosFornecedores.data_aprovacao)))
            {
                PopulateFornecedorDropDownList(Convert.ToInt32(ContratosFornecedores.fk_fornecedor));
                ViewBag.fk_fornecedor = db.Fornecedores.Where(x => x.Ativo == true).ToList();
                TempData["Erro"] = "Preencha corretamente a Data de Aprovação!";
                PopulateFornecedorDropDownList();
                PopulateUsuarioDropDownList();
                PopulateSetorDropDownList();
                PopulateFornecedorDropDownList();
                return View(ContratosFornecedores);
            }

            if (String.IsNullOrEmpty(Convert.ToString(ContratosFornecedores.data_vigencia_inicial)))
            {
                PopulateFornecedorDropDownList(Convert.ToInt32(ContratosFornecedores.fk_fornecedor));
                ViewBag.fk_fornecedor = db.Fornecedores.Where(x => x.Ativo == true).ToList();
                TempData["Erro"] = "Preencha corretamente a Vigência Inicial!";
                PopulateFornecedorDropDownList();
                PopulateUsuarioDropDownList();
                PopulateSetorDropDownList();
                PopulateFornecedorDropDownList();
                return View(ContratosFornecedores);
            }


            if (String.IsNullOrEmpty(Convert.ToString(ContratosFornecedores.data_vigencia_final)))
            {
                PopulateFornecedorDropDownList(Convert.ToInt32(ContratosFornecedores.fk_fornecedor));
                ViewBag.fk_fornecedor = db.Fornecedores.Where(x => x.Ativo == true).ToList();
                TempData["Erro"] = "Preencha corretamente a Vigência Final!";
                PopulateFornecedorDropDownList();
                PopulateUsuarioDropDownList();
                PopulateSetorDropDownList();
                PopulateFornecedorDropDownList();
                return View(ContratosFornecedores);
            }



            //if (!String.IsNullOrEmpty(Convert.ToString(ContratosFornecedores.data_vigencia_inicial)))
            //{
            //    PopulateFornecedorDropDownList(ContratosFornecedores.fk_fornecedor);
            //    TempData["Erro"] = "Preencha corretamente a Data de Aprovação!";
            //    return View(ContratosFornecedores);
            //}
                  
            
            if (ModelState.IsValid)
            {
                // Criando e formatando um novo codigo do contrato               
                string scodigo = "";
                int numero = 1;// 0;
                string anoCorrente = Convert.ToString(DateTime.Now.Year);
                anoCorrente = anoCorrente.Substring(2, 2);
                string sanoCodigo = "";


                var query = "select MAX(numero_contrato) as numero_contrato, year(data) as Ano, id from Contratos_Fornecedores_Cadastrados_Financeiro group by data, numero_contrato, id ";

                var ultimocodigo = db.Database.SqlQuery<ContratosFornecedoresFinanceiroViewModel>(query).ToList();

                // se não existir registro, será o primeiro, senão, ver o ano, se for diferente, o mesmo voltará a ser 1, senão, pega o ultimo codigo, e incrementa mais 1
                if (ultimocodigo.Any())
                {
                    foreach (var item in ultimocodigo)
                    {
                        scodigo = item.numero_contrato;
                        sanoCodigo = Convert.ToString(item.Ano);
                    }

                    sanoCodigo = sanoCodigo.Substring(2, 2);

                    // verificando se o ano do código é igual ao ano corrente
                    if (sanoCodigo.ToString() == anoCorrente)
                    {
                        numero = Convert.ToInt32(scodigo.Substring(0, 5));
                        numero += 1;
                    }
                }
                scodigo = Convert.ToString(numero);
                scodigo = scodigo.PadLeft(5, '0');
                scodigo = scodigo + "/" + Convert.ToString(anoCorrente);


                // -------------------------------------------------


                var contratoFinanceiroNovo = new Contratos_Fornecedores_Cadastrados_Financeiro();

                contratoFinanceiroNovo.numero_contrato = scodigo;
                contratoFinanceiroNovo.data = DateTime.Now;
                contratoFinanceiroNovo.fk_fornecedor = ContratosFornecedores.fk_fornecedor;
               
                contratoFinanceiroNovo.data_aprovacao = ContratosFornecedores.data_aprovacao;
                contratoFinanceiroNovo.data_vigencia_inicial = ContratosFornecedores.data_vigencia_inicial;
                contratoFinanceiroNovo.data_vigencia_final = ContratosFornecedores.data_vigencia_final;
                
                contratoFinanceiroNovo.observacao = ContratosFornecedores.observacao;
               
                contratoFinanceiroNovo.responsavel_preenchimento = ContratosFornecedores.responsavel_preenchimento;
                contratoFinanceiroNovo.fk_usuario_solicitante = ContratosFornecedores.fk_usuario_solicitante;
                contratoFinanceiroNovo.fk_usuario_responsavel = ContratosFornecedores.fk_usuario_responsavel;
                contratoFinanceiroNovo.fk_setor = ContratosFornecedores.fk_setor;
                contratoFinanceiroNovo.utilizacao = ContratosFornecedores.utilizacao;
                contratoFinanceiroNovo.uso = ContratosFornecedores.uso;
              //  contratoFinanceiroNovo.atende_requisito = ContratosFornecedores.atende_requisito;
                contratoFinanceiroNovo.prazo_cancelamento = ContratosFornecedores.prazo_cancelamento;
                contratoFinanceiroNovo.ind_contrato = ContratosFornecedores.ind_contrato;
                contratoFinanceiroNovo.ind_contrato_social = ContratosFornecedores.ind_contrato_social;
                contratoFinanceiroNovo.ind_cnpj = ContratosFornecedores.ind_cnpj;
                contratoFinanceiroNovo.ind_certidao_receita = ContratosFornecedores.ind_certidao_receita;
                contratoFinanceiroNovo.ind_certidao_fgts = ContratosFornecedores.ind_certidao_fgts;
                contratoFinanceiroNovo.ind_certidao_inss = ContratosFornecedores.ind_certidao_inss;
                contratoFinanceiroNovo.ind_titularidade_bancaria = ContratosFornecedores.ind_titularidade_bancaria;
                contratoFinanceiroNovo.ind_politica_anticorrupcao = ContratosFornecedores.ind_politica_anticorrupcao;
                contratoFinanceiroNovo.ind_outros_01 = ContratosFornecedores.ind_outros_01;
                contratoFinanceiroNovo.outros_01 = ContratosFornecedores.outros_01;
                contratoFinanceiroNovo.ind_outros_02 = ContratosFornecedores.ind_outros_02;
                contratoFinanceiroNovo.outros_02 = ContratosFornecedores.outros_02;
                contratoFinanceiroNovo.observacao = ContratosFornecedores.observacao;

                contratoFinanceiroNovo.lixo = false;
                contratoFinanceiroNovo.fk_usuario = User.Identity.Name.ToUpper();

                db.Contratos_Fornecedores_Cadastrados_Financeiro.Add(contratoFinanceiroNovo);
                db.SaveChanges();


                var movimentacaoUsuarioNovo = new Movimentacao_Usuarios();
                movimentacaoUsuarioNovo.Empresa = "1";
                movimentacaoUsuarioNovo.Filial = "RJO";
                movimentacaoUsuarioNovo.Usuario = User.Identity.Name.ToUpper();
                movimentacaoUsuarioNovo.Movimentacao = "I";
                movimentacaoUsuarioNovo.Descricao = "Incluiu Contrato do Fornecedor de Nº" + scodigo;
                movimentacaoUsuarioNovo.Data = DateTime.Now.Date;
                movimentacaoUsuarioNovo.Hora = DateTime.Now;

                db.Movimentacao_Usuarios.Add(movimentacaoUsuarioNovo);
                db.SaveChanges();


                TempData["Sucesso"] = "Contrato de número <b>" + contratoFinanceiroNovo.numero_contrato + "</b> gerado com sucesso!";
                return RedirectToAction("Index");
            }

            PopulateFornecedorDropDownList();

            return View(ContratosFornecedores);
        }

        //
        // GET: /ContratosFornecedoresFinanceiro/Edit/5
        [HttpGet, MSAutorizacaoAuthorize("Edita Contratos de Fornecedor")]
        public ActionResult Edit(int id = 0)
        {
            Contratos_Fornecedores_Cadastrados_Financeiro contratoFinanceiro = db.Contratos_Fornecedores_Cadastrados_Financeiro.Find(id);

            if (contratoFinanceiro == null)
            {
                return HttpNotFound();
            }

            PopulateFornecedorDropDownList(Convert.ToInt32(contratoFinanceiro.fk_fornecedor));
            PopulateUsuarioDropDownList(contratoFinanceiro.fk_usuario_solicitante);
            PopulateUsuarioResponsavelDropDownList(contratoFinanceiro.fk_usuario_responsavel);
            PopulateSetorDropDownList(contratoFinanceiro.fk_setor);
            
            return View(contratoFinanceiro);
        }

        //
        // POST: /ContratosFornecedoresFinanceiro/Edit/5

        [HttpPost]
        public ActionResult Edit(Contratos_Fornecedores_Cadastrados_Financeiro contratoFinanceiro, int id, FormCollection collection)
        {
            if (!(Convert.ToInt32(contratoFinanceiro.fk_fornecedor) > 0))
            {
                PopulateFornecedorDropDownList();
                TempData["Erro"] = "Por favor, selecione um Fornecedor!";
                return View(contratoFinanceiro);
            }

            // verificar se fornecedor está ativo
            Fornecedore fornecedor = db.Fornecedores.FirstOrDefault(c => c.id == contratoFinanceiro.fk_fornecedor);
            if (fornecedor.Ativo == false)
            {
              //  ViewBag.fk_fornecedor = db.Fornecedores.ToList();
                PopulateFornecedorDropDownList(Convert.ToInt32(contratoFinanceiro.fk_fornecedor));
                PopulateUsuarioDropDownList(contratoFinanceiro.fk_usuario_solicitante);
                PopulateUsuarioResponsavelDropDownList(contratoFinanceiro.fk_usuario_responsavel);
                PopulateSetorDropDownList(contratoFinanceiro.fk_setor);
                TempData["Erro"] = "Este Fornecedor está inativo!!!";
                return View(contratoFinanceiro);
            }
            
            if (!String.IsNullOrEmpty(contratoFinanceiro.email))
            {
                if (MSBiblioteca.MSUtil.MSFuncoes.ValidaEmail(contratoFinanceiro.email) == false)
                {
                    PopulateFornecedorDropDownList(Convert.ToInt32(contratoFinanceiro.fk_fornecedor));
                    PopulateUsuarioDropDownList(contratoFinanceiro.fk_usuario_solicitante);
                    PopulateUsuarioResponsavelDropDownList(contratoFinanceiro.fk_usuario_responsavel);
                    PopulateSetorDropDownList(contratoFinanceiro.fk_setor);
                    TempData["Erro"] = "E-mail inválido!";
                    return View(contratoFinanceiro);
                }
            }

           
            if (String.IsNullOrEmpty(Convert.ToString(contratoFinanceiro.data_aprovacao)))
            {
                PopulateFornecedorDropDownList(Convert.ToInt32(contratoFinanceiro.fk_fornecedor));
                PopulateUsuarioDropDownList(contratoFinanceiro.fk_usuario_solicitante);
                PopulateUsuarioResponsavelDropDownList(contratoFinanceiro.fk_usuario_responsavel);
                PopulateSetorDropDownList(contratoFinanceiro.fk_setor);
                TempData["Erro"] = "Preencha corretamente a Data de Aprovação!";
                return View(contratoFinanceiro);
            }

            //if (!String.IsNullOrEmpty(Convert.ToString(contratoFinanceiro.data_vigencia_inicial)))
            //{
            //    PopulateFornecedorDropDownList(contratoFinanceiro.fk_fornecedor);
            //    TempData["Erro"] = "Preencha corretamente a Data de Aprovação!";
            //    return View(contratoFinanceiro);
            //}
            
            
            if (ModelState.IsValid)
            {
                contratoFinanceiro.fk_usuario = User.Identity.Name.ToUpper();

                db.Entry(contratoFinanceiro).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();


                var movimentacaoUsuarioNovo = new Movimentacao_Usuarios();
                movimentacaoUsuarioNovo.Empresa = "1";
                movimentacaoUsuarioNovo.Filial = "RJO";
                movimentacaoUsuarioNovo.Usuario = User.Identity.Name.ToUpper();
                movimentacaoUsuarioNovo.Movimentacao = "A";
                movimentacaoUsuarioNovo.Descricao = "Alterou Contrato do Fornecedor de Nº" + contratoFinanceiro.numero_contrato;
                movimentacaoUsuarioNovo.Data = DateTime.Now.Date;
                movimentacaoUsuarioNovo.Hora = DateTime.Now;

                db.Movimentacao_Usuarios.Add(movimentacaoUsuarioNovo);
                db.SaveChanges();

                TempData["Sucesso"] = "Contrato de número <b>" + contratoFinanceiro.numero_contrato + "</b> alterado com sucesso!";
                return RedirectToAction("Index");
            }


            PopulateFornecedorDropDownList(Convert.ToInt32(contratoFinanceiro.fk_fornecedor));

            return View(contratoFinanceiro);
        }

        //
        // GET: /ContratosFornecedoresFinanceiro/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /ContratosFornecedoresFinanceiro/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }



        public ActionResult PrintReport(int Id)
        {   //f.codigo as fk_fornecedor,
            var query = "Select f.id as id_fornecedor, cast(f.id as varchar(5)) as cod_fornecedor,  f.Fantasia, f.Razao_Social, f.Endereco, f.Complemento, f.Bairro, f.CEP, f.CNPJ_CPF_COMPLETO as CNPJ, f.Cidade, f.Estado, f.Contato, f.Telefone, f.Email, " +
                          " f.Ind_Qualidade, f.Ind_EmpresaResponsabilidade, f.Ind_Garantia, cast(f.Dias_Garantia as varchar(8)) as Dias_Garantia , " +
                          //fe.Razao_Social as Cliente, fe.Telefone as ClienteTelefone, fe.Contato as ClienteTelefone,
                          " cfcf.responsavel_preenchimento, " +
                          " u1.Nome_Completo as UsuarioSoliciante, u2.Nome_Completo as UsuarioResponsavel, s.descricao as Setor, cfcf.utilizacao, cfcf.uso, " + // cfcf.atende_requisito, " +
                          //" cfcf.numero_contrato, (CONVERT(VARCHAR(10), cfcf.data_vigencia_inicial, 103)) as data_vigencia_inicial, (CONVERT(VARCHAR(10), cfcf.data_vigencia_final, 103)) as data_vigencia_final, cfcf.prazo_cancelamento, cfcf.observacao, cfcf.ind_contrato, cfcf.ind_contrato_social, cfcf.ind_cnpj, cfcf.ind_certidao_receita, cfcf.ind_certidao_fgts, ind_certidao_inss, cfcf.ind_titularidade_bancaria, cfcf.ind_politica_anticorrupcao, cfcf.ind_outros_01, cfcf.outros_01, cfcf.ind_outros_02, cfcf.outros_02 " +
                          " cfcf.numero_contrato, cfcf.data_vigencia_inicial, cfcf.data_vigencia_final, cfcf.prazo_cancelamento, cfcf.observacao, cfcf.ind_contrato, cfcf.ind_contrato_social, cfcf.ind_cnpj, cfcf.ind_certidao_receita, cfcf.ind_certidao_fgts, ind_certidao_inss, cfcf.ind_titularidade_bancaria, cfcf.ind_politica_anticorrupcao, cfcf.ind_outros_01, cfcf.outros_01, cfcf.ind_outros_02, cfcf.outros_02 " +
                          " from Contratos_Fornecedores_Cadastrados_Financeiro cfcf " +
                          " left join Fornecedores f on f.id = cfcf.fk_fornecedor " +
                          " left join Usuarios u1 on u1.Usuario = cfcf.fk_usuario_solicitante " +
                          " left join Usuarios u2 on u2.Usuario = cfcf.fk_usuario_responsavel " +
                          " left join Setores s on s.codigo = cfcf.fk_setor " +
                          //left join Fornecedores_Empresa fe on fe.fk_fornecedor = f.Codigo
                          " where cfcf.id = @id";

            var dadosContrato = db.Database.SqlQuery<ContratosFornecedoresFinanceiroViewModel>(query, new SqlParameter("@id", Id)).First();            
                        
            LocalReport localReport = new LocalReport();
            localReport.ReportPath = Server.MapPath("~/Views/ContratosFornecedoresFinanceiro/rptContratosFornecedores.rdlc");

            localReport.DataSources.Clear();
      
            string teste = dadosContrato.cod_fornecedor;
            List<Fornecedores_Empresa> Empresas = db.Fornecedores_Empresa.Where(x => x.fk_fornecedor == dadosContrato.id_fornecedor).ToList();
        
            ReportDataSource rps = new ReportDataSource("DataSet1", Empresas);

            localReport.DataSources.Add(rps);
            //localReport.Refresh();

            IList<ReportParameter> parametros = new List<ReportParameter>();

            parametros.Add(new ReportParameter("ID", dadosContrato.cod_fornecedor));
            parametros.Add(new ReportParameter("Fantasia", dadosContrato.Fantasia));
            parametros.Add(new ReportParameter("RazaoSocial", dadosContrato.Razao_Social));
            parametros.Add(new ReportParameter("Endereco", dadosContrato.Endereco));
            parametros.Add(new ReportParameter("Complemento", dadosContrato.Complemento));
            parametros.Add(new ReportParameter("Bairro", dadosContrato.Bairro));
            parametros.Add(new ReportParameter("CEP", dadosContrato.CEP));
            parametros.Add(new ReportParameter("CNPJ", dadosContrato.CNPJ));
            parametros.Add(new ReportParameter("Cidade", dadosContrato.Cidade));
            parametros.Add(new ReportParameter("Estado", dadosContrato.Estado));
            parametros.Add(new ReportParameter("Contato", dadosContrato.Contato));
            parametros.Add(new ReportParameter("Telefone", dadosContrato.Telefone));
            parametros.Add(new ReportParameter("Email", dadosContrato.Email));
            

            if (dadosContrato.Ind_Qualidade == true)
            {
                parametros.Add(new ReportParameter("IndQualidade", "SIM"));
            }
            else
            {
                parametros.Add(new ReportParameter("IndQualidade", "NÃO"));
            }

            if (dadosContrato.Ind_EmpresaResponsabilidade == true)
            {
                parametros.Add(new ReportParameter("IndEmpresaResponsabilidade", "SIM"));
            }
            else
            {
                parametros.Add(new ReportParameter("IndEmpresaResponsabilidade", "NÃO"));
            }

            if (dadosContrato.Ind_Garantia == true)
            {
                parametros.Add(new ReportParameter("IndGarantia", "SIM"));
                parametros.Add(new ReportParameter("DiasGarantia", dadosContrato.Dias_Garantia.ToString()));
            }
            else
            {
                parametros.Add(new ReportParameter("IndGarantia", "NÃO"));
                parametros.Add(new ReportParameter("DiasGarantia", ""));
            }


            parametros.Add(new ReportParameter("ResponsavelPreenchimento", dadosContrato.responsavel_preenchimento));
            parametros.Add(new ReportParameter("Solicitante", dadosContrato.UsuarioSoliciante));
            parametros.Add(new ReportParameter("Setor", dadosContrato.Setor));
            parametros.Add(new ReportParameter("Responsavel", dadosContrato.UsuarioResponsavel));
            parametros.Add(new ReportParameter("Utilizacao", dadosContrato.utilizacao));
            parametros.Add(new ReportParameter("Uso", dadosContrato.uso));
            parametros.Add(new ReportParameter("NumeroContrato", dadosContrato.numero_contrato));
            parametros.Add(new ReportParameter("DataVigInicial", string.IsNullOrEmpty(dadosContrato.data_vigencia_inicial.ToString()) ? null : dadosContrato.data_vigencia_inicial.ToString()));
            parametros.Add(new ReportParameter("DataVigFinal", string.IsNullOrEmpty(dadosContrato.data_vigencia_final.ToString()) ? null : dadosContrato.data_vigencia_final.ToString()));            
            parametros.Add(new ReportParameter("PrazoCancelamento", dadosContrato.prazo_cancelamento));
            parametros.Add(new ReportParameter("Observacao", dadosContrato.observacao));


            if (dadosContrato.ind_contrato == true)
            {
                parametros.Add(new ReportParameter("IndContrato", "[ X ]"));
            }
            else
            {
                parametros.Add(new ReportParameter("IndContrato", "[   ]"));
            }

            if (dadosContrato.ind_contrato_social == true)
            {
                parametros.Add(new ReportParameter("IndContratoSocial", "[ X ]"));
            }
            else
            {
                parametros.Add(new ReportParameter("IndContratoSocial", "[   ]"));
            }

            if (dadosContrato.ind_cnpj == true)
            {
                parametros.Add(new ReportParameter("IndCNPJ", "[ X ]"));
            }
            else
            {
                parametros.Add(new ReportParameter("IndCNPJ", "[   ]"));
            }

            if (dadosContrato.ind_certidao_receita == true)
            {
                parametros.Add(new ReportParameter("IndCertidaoReceita", "[ X ]"));
            }
            else
            {
                parametros.Add(new ReportParameter("IndCertidaoReceita", "[   ]"));
            }

            if (dadosContrato.ind_certidao_fgts == true)
            {
                parametros.Add(new ReportParameter("IndCertidaoFGTS", "[ X ]"));
            }
            else
            {
                parametros.Add(new ReportParameter("IndCertidaoFGTS", "[   ]"));
            }

            if (dadosContrato.ind_certidao_inss == true)
            {
                parametros.Add(new ReportParameter("IndCertidaoINSS", "[ X ]"));
            }
            else
            {
                parametros.Add(new ReportParameter("IndCertidaoINSS", "[   ]"));
            }

            if (dadosContrato.ind_titularidade_bancaria == true)
            {
                parametros.Add(new ReportParameter("IndTitularidadeBancaria", "[ X ]"));
            }
            else
            {
                parametros.Add(new ReportParameter("IndTitularidadeBancaria", "[   ]"));
            }

            if (dadosContrato.ind_politica_anticorrupcao == true)
            {
                parametros.Add(new ReportParameter("IndPoliticaAntiCorrupcao", "[ X ]"));
            }
            else
            {
                parametros.Add(new ReportParameter("IndPoliticaAntiCorrupcao", "[   ]"));
            }

            if (dadosContrato.ind_outros_01 == true)
            {
                parametros.Add(new ReportParameter("IndOutros01", "[ X ]"));
                parametros.Add(new ReportParameter("Outros01", dadosContrato.outros_01));
            }
            else
            {
                parametros.Add(new ReportParameter("IndOutros01", "[   ]"));
                parametros.Add(new ReportParameter("Outros01", ""));
            }

            if (dadosContrato.ind_outros_02 == true)
            {
                parametros.Add(new ReportParameter("IndOutros02", "[ X ]"));
                parametros.Add(new ReportParameter("Outros02", dadosContrato.outros_02));
            }
            else
            {
                parametros.Add(new ReportParameter("IndOutros02", "[   ]"));
                parametros.Add(new ReportParameter("Outros02", ""));
            }           

            localReport.SetParameters(parametros);


            string reportType = "PDF";
            string mimeType;
            string encoding;
            string fileNameExtension;
            //The DeviceInfo settings should be changed based on the reportType             
            //http://msdn2.microsoft.com/en-us/library/ms155397.aspx             
            //string deviceInfo =
            //    "<DeviceInfo>" +
            //    "  <OutputFormat>PDF</OutputFormat>" +
            //    "  <PageWidth>8.5in</PageWidth>" +
            //    "  <PageHeight>11in</PageHeight>" +
            //    "  <MarginTop>0.5in</MarginTop>" +
            //    "  <MarginLeft>1in</MarginLeft>" +
            //    "  <MarginRight>1in</MarginRight>" +
            //    "  <MarginBottom>0.5in</MarginBottom>" +
            //    "</DeviceInfo>";
            Warning[] warnings;
            string[] streams;
            byte[] renderedBytes;
            //Render the report             
            renderedBytes = localReport.Render(
                reportType,
                null,
                out mimeType,
                out encoding,
                out fileNameExtension,
                out streams,
                out warnings);
            //Response.AddHeader("content-disposition", "attachment; filename=NorthWindCustomers." + fileNameExtension);             

            //download pdf
            var response = System.Web.HttpContext.Current.Response;
            response.Clear();
            Response.AddHeader("Content-Type", "binary/octet-stream");
            Response.AddHeader("content-disposition",
                               "attachment; filename=Contrato_Fornecedor_" + dadosContrato.numero_contrato + "." +
                               fileNameExtension);
            response.Flush();
            response.BinaryWrite(renderedBytes);
            response.Flush();
            response.End();

            return View(); //File(renderedBytes, mimeType);
        }





        //------------Preenche Combobox do Fornecedor------------------------------
        private void PopulateFornecedorDropDownList(int? selectedFornecedor = 0)
        {
            //var Fornecedores = (from f in db.Fornecedores
            //               //     where f.Ativo == true
            //              //      orderby f.Razao_Social ascending
            //                    select new { Id = f.id, Razao_Social = f.Razao_Social + " - " + f.id }).ToList();

            var Fornecedores = db.Fornecedores.Where(c => c.Ativo == true || c.id == selectedFornecedor).OrderBy(o=> o.Razao_Social).Select(x => new { x.id, x.Razao_Social }).ToList();            

            ViewBag.fk_fornecedor = new SelectList(Fornecedores.ToList(), "id", "Razao_Social", selectedFornecedor);
         //   ViewBag.fk_fornecedores = new SelectList(Fornecedores, "Id", "Razao_Social", selectedFornecedor);


        }



        //------------Preenche Combobox dos Usuários Solicitante e Responsável------------------------------
        private void PopulateUsuarioDropDownList(object selectedUsuario = null)
        {
            {
                var usuario = (from u in db.Usuarios
                                    where u.Ativo == true
                                    orderby u.Nome_Completo
                                    select new { Usuario = u.Usuario1, Nome = u.Nome_Completo });

                ViewBag.fk_usuario_solicitante = new SelectList(usuario, "Usuario", "Nome", selectedUsuario);
                ViewBag.fk_usuario_responsavel = new SelectList(usuario, "Usuario", "Nome", selectedUsuario);

            }
        }

        private void PopulateUsuarioResponsavelDropDownList(object selectedUsuario = null)
        {
            {
                var usuario = (from u in db.Usuarios
                               where u.Ativo == true
                               orderby u.Nome_Completo
                               select new { Usuario = u.Usuario1, Nome = u.Nome_Completo });

               // ViewBag.fk_usuario_solicitante = new SelectList(usuario, "Usuario", "Nome", selectedUsuario);
                ViewBag.fk_usuario_responsavel = new SelectList(usuario, "Usuario", "Nome", selectedUsuario);

            }
        }


        //------------Preenche Combobox dos Setores------------------------------
        private void PopulateSetorDropDownList(object selectedSetor = null)
        {
            {
                var setor = (from s in db.Setores
                               where s.Excluido == false
                               orderby s.descricao
                               select new { Codigo = s.codigo, Descricao = s.descricao });

                ViewBag.fk_setor = new SelectList(setor, "Codigo", "Descricao", selectedSetor);                

            }
        }


        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }


    }
}
