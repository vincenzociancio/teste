using MS2000.Desktop.Classes.NFe.Emitente;
using MS2000.Desktop.Classes.NFe.Identificacao.Tipos;
using System;
using System.Text;
using System.Collections.Generic;
using MS2000.Desktop.Classes.NFe.Detalhe;
using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao;
using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Estadual.Tipos;
using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Estadual;
using System.Xml.Serialization;
using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Federal.Tipos;
using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Federal;
using NFe.Classes.Informacoes.Detalhe.Tributacao.Federal;

namespace MS2000.Desktop.Classes.NFe.Utils
{
    public static class Auxiliar
    {
        public static string TpAmbParaString(TipoAmbiente? tpAmb)
        {
            switch (tpAmb)
            {
                case TipoAmbiente.taHomologacao:
                    return "Homologação";
                case TipoAmbiente.taProducao:
                    return "Produção";
            }
            return "";
        }

        public static string VersaoServicoParaString(VersaoServico versao)
        {
            switch (versao)
            {
                case VersaoServico.ve100:
                    return "1.00";
                case VersaoServico.ve200:
                    return "2.00";
                case VersaoServico.ve310:
                    return "3.10";
            }
            return null;
        }

        public static string TipoEmissaoParaString(TipoEmissao tipoEmissao)
        {
            var s = Enum.GetName(typeof(TipoEmissao), tipoEmissao);
            return s != null ? s.Substring(2) : "";
        }

        public static string CrtParaString(CRT crt)
        {
            switch (crt)
            {
                case CRT.SimplesNacional:
                    return "Simples Nacional";
                case CRT.SimplesNacionalExcessoSublimite:
                    return "Simples Nacional - subimite excedido";
                case CRT.RegimeNormal:
                    return "Normal";
                default:
                    throw new ArgumentOutOfRangeException("crt");
            }
        }

        public static string ModeloDocumentoParaString(ModeloDocumento modelo)
        {
            switch (modelo)
            {
                case ModeloDocumento.NFe:
                    return "NFe";
                case ModeloDocumento.NFCe:
                    return "NFCe";
            }
            return null;
        }

        /// <summary>
        ///     Grava os dados do objeto NFe em um arquivo TXT
        /// </summary>
        /// <param name="nfe">Objeto NFe</param>
        /// <param name="arquivoTXT">Diretório com nome do arquivo a ser gravado</param>
        public static void SalvarArquivoTXT(this MS2000.Desktop.Classes.NFe.NFe nfe, string arquivoTXT)
        {
            //FuncoesXml.ClasseParaArquivoXml(nfe, arquivoXml);
            StringBuilder sb = new StringBuilder();
            sb.AppendLine("NOTAFISCAL|1");

            //A|versao|Id|pk_nItem|
            sb.AppendLine(string.Format("A|{0}|{1}|", "3.10", ModeloDocumentoParaString(nfe.infNFe.ide.mod)));

            //B|cUF|cNF|natOp|indPag|mod|serie|nNF|dhEmi|dhSaiEnt|tpNF|idDest|cMunFG|tpImp|tpEmis|cDV|tpAmb|finNFe|indFinal|
            //indPres|procEmi|verProc|dhCont|xJust|
            sb.AppendLine(string.Format("B|{0}|{1}|{2}|{3}|{4}|{5}|{6}|{7}|{8}|{9}|{10}|{11}|{12}|{13}|{14}|{15}|{16}|{17}|{18}|{19}|{20}|{21}|||",
                (int)nfe.infNFe.ide.cUF,
                nfe.infNFe.ide.cNF,
                nfe.infNFe.ide.natOp,
                (int)nfe.infNFe.ide.indPag,
                (int)nfe.infNFe.ide.mod,
                nfe.infNFe.ide.serie,
                nfe.infNFe.ide.nNF,
                nfe.infNFe.ide.dhEmi,
                nfe.infNFe.ide.dhSaiEnt,
                (int)nfe.infNFe.ide.tpNF,
                (int)nfe.infNFe.ide.idDest,
                nfe.infNFe.ide.cMunFG,
                (int)nfe.infNFe.ide.tpImp,
                (int)nfe.infNFe.ide.tpEmis,
                nfe.infNFe.ide.cDV,
                (int)nfe.infNFe.ide.tpAmb,
                (int)nfe.infNFe.ide.finNFe,
                (int)nfe.infNFe.ide.indFinal,
                (int)nfe.infNFe.ide.indPres,
                (int)nfe.infNFe.ide.procEmi,
                nfe.infNFe.ide.verProc,
                nfe.infNFe.ide.dhCont));
            //----------------------------------Emitente-------------------------------------//
            //C|xNome|xFant|IE|IEST|IM|CNAE|CRT|
            sb.AppendLine(string.Format("C|{0}|{1}|{2}|{3}|{4}|{5}|{6}|",
                nfe.infNFe.emit.xNome.RemoveAcentos(),
                nfe.infNFe.emit.xFant.RemoveAcentos(),
                nfe.infNFe.emit.IE,
                nfe.infNFe.emit.IEST,
                nfe.infNFe.emit.IM,
                nfe.infNFe.emit.CNAE,
                 (int)nfe.infNFe.emit.CRT));
            //C02|CNPJ|
            sb.AppendLine(string.Format("C02|{0}|", nfe.infNFe.emit.CNPJ));

            //C05|xLgr|nro|xCPL|xBairro|cMun|xMun|UF|CEP|cPais|xPais|fone|
            sb.AppendLine(string.Format("C05|{0}|{1}|{2}|{3}|{4}|{5}|{6}|{7}|{8}|{9}|{10}|",
                nfe.infNFe.emit.enderEmit.xLgr.RemoveAcentos(),
                nfe.infNFe.emit.enderEmit.nro,
                nfe.infNFe.emit.enderEmit.xCpl.RemoveAcentos(),
                nfe.infNFe.emit.enderEmit.xBairro.RemoveAcentos(),
                nfe.infNFe.emit.enderEmit.cMun,
                nfe.infNFe.emit.enderEmit.xMun.RemoveAcentos(),
                nfe.infNFe.emit.enderEmit.UF,
                nfe.infNFe.emit.enderEmit.CEP,
                nfe.infNFe.emit.enderEmit.cPais,
                nfe.infNFe.emit.enderEmit.xPais.RemoveAcentos(),
                nfe.infNFe.emit.enderEmit.fone));
            //--------------------------------------------------------------------------------//

            //--------------------------------Destinatario------------------------------------//
            //E|xNome|indIEDest|IE|ISUF|IM|email|
            //[seleção entre E02 ou E03 ou E03a]{
            //E02|CNPJ|
            //[ou]
            //E03|CPF|
            //[ou]
            //E03a|idEstrangeiro|
            //}
            //E05|xLgr|nro|xCpl|xBairro|cMun|xMun|UF|CEP|cPais|xPais|fone|

            sb.AppendLine(string.Format("E|{0}|{1}|{2}|{3}|{4}|",
                nfe.infNFe.dest.xNome.RemoveAcentos(),
                nfe.infNFe.dest.indIEDest.ReadXmlEnumAttribute(),
                nfe.infNFe.dest.IE,
                nfe.infNFe.dest.ISUF,
                nfe.infNFe.dest.email));

            if (nfe.infNFe.dest.enderDest.UF != "EX")
            {
                sb.AppendLine(string.Format("E02|{0}|",
                    nfe.infNFe.dest.CNPJ));
            }
            else
            {
                sb.AppendLine(string.Format("E03|{0}|{1}|",
                    nfe.infNFe.dest.CPF,
                    nfe.infNFe.dest.idEstrangeiro));
            }

            sb.AppendLine(string.Format("E05|{0}|{1}|{2}|{3}|{4}|{5}|{6}|{7}|{8}|{9}|{10}|",
                nfe.infNFe.dest.enderDest.xLgr.RemoveAcentos(),
                nfe.infNFe.dest.enderDest.nro,
                nfe.infNFe.dest.enderDest.xCpl.RemoveAcentos(),
                nfe.infNFe.dest.enderDest.xBairro.RemoveAcentos(),
                nfe.infNFe.dest.enderDest.cMun,
                nfe.infNFe.dest.enderDest.xMun.RemoveAcentos(),
                nfe.infNFe.dest.enderDest.UF,
                nfe.infNFe.dest.enderDest.CEP,
                nfe.infNFe.dest.enderDest.cPais,
                nfe.infNFe.dest.enderDest.xPais.RemoveAcentos(),
                nfe.infNFe.dest.enderDest.fone));
            //--------------------------------------------------------------------------------//
            //-----------------------------------Produtos-------------------------------------//
            //H|nItem|infAdProd|
            //I|cProd|cEAN|xProd|NCM|EXTIPI|CFOP|uCom|qCom|vUnCom|vProd|cEANTrib|uTrib|qTrib|vUnTrib|vFrete|vSeg|vDesc|
            //vOutro|indTot|xPed|nItemPed|nFCI|
            foreach (det detalhe in nfe.infNFe.det)
            {
                sb.AppendLine(string.Format("H|{0}|", Convert.ToInt16(detalhe.prod.cProd)));

                sb.AppendLine(string.Format("I|{0}|{1}|{2}|{3}|{4}|{5}|{6}|{7}|{8}|{9}|{10}|{11}|{12}|{13}|{14}|{15}|{16}|{17}|{18}|{19}|{20}|",
                   detalhe.prod.cProd,
                   detalhe.prod.cEAN,
                   detalhe.prod.xProd.RemoveAcentos().Replace("“", "").Replace("”",""),
                   detalhe.prod.NCM,
                   detalhe.prod.EXTIPI,
                   detalhe.prod.CFOP,
                   detalhe.prod.uCom.RemoveAcentos(),
                   detalhe.prod.qCom.CasasDecimais(4),
                   detalhe.prod.vUnCom.CasasDecimais(10),
                   detalhe.prod.vProd.CasasDecimais(2),
                   detalhe.prod.cEANTrib,
                   detalhe.prod.uTrib,
                   detalhe.prod.qTrib.CasasDecimais(4),
                   detalhe.prod.vUnTrib.CasasDecimais(10),
                   detalhe.prod.vFrete.CasasDecimais(2),
                   detalhe.prod.vSeg.CasasDecimais(2),
                   detalhe.prod.vDesc.CasasDecimais(2),
                   detalhe.prod.vOutro.CasasDecimais(2),
                   (int)detalhe.prod.indTot,
                   detalhe.prod.xPed,
                   detalhe.prod.nItemPed));
                //I18|nDI|dDI|xLocDesemb|UFDesemb|dDesemb|tpViaTransp|vAFRMM|tpIntermedio|CNPJ|UFTerceiro|cExportador|
                foreach (var di in detalhe.prod.DI)
                {
                    sb.AppendLine(string.Format("I18|{0}|{1}|{2}|{3}|{4}|{5}|{6}|{7}|{8}|{9}|{10}|",
                      di.nDI,
                      di.dDI,
                      di.xLocDesemb,
                      di.UFDesemb,
                      di.dDesemb,
                      (int)di.tpViaTransp,
                      di.vAFRMM.CasasDecimais(2),
                      (int)di.tpIntermedio,
                      di.CNPJ,
                      di.UFTerceiro,
                      di.cExportador));

                    //I25|nAdicao|nSeqAdicC|cFabricante|vDescDI|nDraw|                    
                    //I50|nDraw|
                    //I52|nRE|chNFe|qExport|
                    foreach (var adicao in di.adi)
                    {
                        sb.AppendLine(string.Format("I25|{0}|{1}|{2}|{3}|{4}|",
                            adicao.nAdicao,
                            adicao.nSeqAdic,
                            adicao.cFabricante.RemoveAcentos(),
                            adicao.vDescDI,
                            adicao.nDraw));
                    }
                }
                //ICMS
                // M e N vazios
                sb.AppendLine("M||");
                sb.AppendLine("N|");

                if (detalhe.imposto.ICMS.TipoICMS.GetType() == typeof(ICMS00))
                {
                    sb.AppendLine(string.Format("N02|{0}|{1}|{2}|{3}|{4}|{5}|",
                        (int)((ICMS00)detalhe.imposto.ICMS.TipoICMS).orig,
                        ((ICMS00)detalhe.imposto.ICMS.TipoICMS).CST.ReadXmlEnumAttribute(),
                        (int)((ICMS00)detalhe.imposto.ICMS.TipoICMS).modBC,
                        ((ICMS00)detalhe.imposto.ICMS.TipoICMS).vBC.CasasDecimais(2),
                        ((ICMS00)detalhe.imposto.ICMS.TipoICMS).pICMS.CasasDecimais(2),
                        ((ICMS00)detalhe.imposto.ICMS.TipoICMS).vICMS.CasasDecimais(2)));
                }
                else
                    if (detalhe.imposto.ICMS.TipoICMS.GetType() == typeof(ICMS40))
                    {
                        sb.AppendLine(string.Format("N06|{0}|{1}|",
                            (int)((ICMS40)detalhe.imposto.ICMS.TipoICMS).orig,
                            (int)((ICMS40)detalhe.imposto.ICMS.TipoICMS).CST));
                    }

                //IPI
                //O|clEnq|CNPJProd|cSelo|qSelo|cEnq|
                sb.AppendLine(string.Format("O|{0}|{1}|{2}|{3}|{4}|",
                detalhe.imposto.IPI.clEnq,
                detalhe.imposto.IPI.CNPJProd,
                detalhe.imposto.IPI.cSelo,
                detalhe.imposto.IPI.qSelo,
                detalhe.imposto.IPI.cEnq));

                if (detalhe.imposto.IPI.TipoIPI.GetType() == typeof(IPINT))
                {
                    //O08|CST|
                    sb.AppendLine(string.Format("O08|{0}|",
                    ((IPINT)detalhe.imposto.IPI.TipoIPI).CST.ReadXmlEnumAttribute()));
                }
                else
                    if (detalhe.imposto.IPI.TipoIPI.GetType() == typeof(IPITrib))
                    {
                        //O07|CST|vIPI|
                        sb.AppendLine(string.Format("O07|{0}|{1}|",
                            ((IPITrib)detalhe.imposto.IPI.TipoIPI).CST.ReadXmlEnumAttribute(),
                            ((IPITrib)detalhe.imposto.IPI.TipoIPI).vIPI.CasasDecimaisZero(2)));
                        //O10|vBC|pIPI|
                        sb.AppendLine(string.Format("O10|{0}|{1}|",
                            ((IPITrib)detalhe.imposto.IPI.TipoIPI).vBC.CasasDecimais(2),
                            ((IPITrib)detalhe.imposto.IPI.TipoIPI).pIPI.CasasDecimaisZero(4)));
                    }

                if (detalhe.imposto.II != null)
                {
                    //P|vBC|vDespAdu|vII|vIOF|
                    sb.AppendLine(string.Format("P|{0}|{1}|{2}|{3}|",
                       detalhe.imposto.II.vBC.CasasDecimais(2),
                       detalhe.imposto.II.vDespAdu.CasasDecimais(2),
                       detalhe.imposto.II.vII.CasasDecimais(2),
                       detalhe.imposto.II.vIOF.CasasDecimais(2)));
                }
                //Q|
                sb.AppendLine("Q|");

                if (detalhe.imposto.PIS.TipoPIS.GetType() == typeof(PISNT))
                {
                    //Q04|CST|
                    sb.AppendLine(string.Format("Q04|{0}|",
                    ((PISNT)detalhe.imposto.PIS.TipoPIS).CST.ReadXmlEnumAttribute()));
                }
                else
                    if (detalhe.imposto.PIS.TipoPIS.GetType() == typeof(PISAliq))
                    {
                        //Q02|CST|vBC|pPIS|vPIS|
                        sb.AppendLine(string.Format("Q02|{0}|{1}|{2}|{3}|",
                            ((PISAliq)detalhe.imposto.PIS.TipoPIS).CST.ReadXmlEnumAttribute(),
                            ((PISAliq)detalhe.imposto.PIS.TipoPIS).vBC.CasasDecimais(2),
                            ((PISAliq)detalhe.imposto.PIS.TipoPIS).pPIS.CasasDecimais(4),
                            ((PISAliq)detalhe.imposto.PIS.TipoPIS).vPIS.CasasDecimais(2)));
                    }
                //S|
                sb.AppendLine("S|");

                if (detalhe.imposto.COFINS.TipoCOFINS.GetType() == typeof(COFINSNT))
                {
                    //S04|CST|
                    sb.AppendLine(string.Format("S04|{0}|",
                    ((COFINSNT)detalhe.imposto.COFINS.TipoCOFINS).CST.ReadXmlEnumAttribute()));
                }
                else
                    if (detalhe.imposto.COFINS.TipoCOFINS.GetType() == typeof(COFINSAliq))
                    {
                        //S02|CST|vBC|pPIS|vPIS|
                        sb.AppendLine(string.Format("S02|{0}|{1}|{2}|{3}|",
                            ((COFINSAliq)detalhe.imposto.COFINS.TipoCOFINS).CST.ReadXmlEnumAttribute(),
                            ((COFINSAliq)detalhe.imposto.COFINS.TipoCOFINS).vBC.CasasDecimais(2),
                            ((COFINSAliq)detalhe.imposto.COFINS.TipoCOFINS).pCOFINS.CasasDecimais(4),
                            ((COFINSAliq)detalhe.imposto.COFINS.TipoCOFINS).vCOFINS.CasasDecimais(2)));
                    }





            }
            //W|
            sb.AppendLine("W|");
            //W02|vBC|vICMS|vICMSDeson|vBCST|vST|vProd|vFrete|vSeg|vDesc|vII|vIPI|vPIS|vCOFINS|vOutro|vNF|vTotTrib|
            sb.AppendLine(string.Format("W02|{0}|{1}|{2}|{3}|{4}|{5}|{6}|{7}|{8}|{9}|{10}|{11}|{12}|{13}|{14}|{15}|",
                   nfe.infNFe.total.ICMSTot.vBC.CasasDecimais(2),
                   nfe.infNFe.total.ICMSTot.vICMS.CasasDecimais(2),
                   nfe.infNFe.total.ICMSTot.vICMSDeson.CasasDecimais(2),
                   nfe.infNFe.total.ICMSTot.vBCST.CasasDecimais(2),
                   nfe.infNFe.total.ICMSTot.vST.CasasDecimais(2),
                   nfe.infNFe.total.ICMSTot.vProd.CasasDecimais(2),
                   nfe.infNFe.total.ICMSTot.vFrete.CasasDecimais(2),
                   nfe.infNFe.total.ICMSTot.vSeg.CasasDecimais(2),
                   nfe.infNFe.total.ICMSTot.vDesc.CasasDecimais(2),
                   nfe.infNFe.total.ICMSTot.vII.CasasDecimais(2),
                   nfe.infNFe.total.ICMSTot.vIPI.CasasDecimais(2),
                   nfe.infNFe.total.ICMSTot.vPIS.CasasDecimais(2),
                   nfe.infNFe.total.ICMSTot.vCOFINS.CasasDecimais(2),
                   //nfe.infNFe.total.ICMSTot.vOutro.CasasDecimais(2),
                   "0.00",
                   nfe.infNFe.total.ICMSTot.vNF.CasasDecimais(2),
                   nfe.infNFe.total.ICMSTot.vTotTrib.CasasDecimais(2)));
            //X|modFrete|
            sb.AppendLine(string.Format("X|{0}|", nfe.infNFe.transp.modFrete.ReadXmlEnumAttribute()));

            foreach (var vol in nfe.infNFe.transp.vol)
            {
                //X26|qVol|esp|marca|nVol|pesoL|pesoB|
                sb.AppendLine(string.Format("X26|{0}|{1}|{2}|{3}|{4}|{5}|",
                    vol.qVol,
                    vol.esp,
                    vol.marca,
                    vol.nVol,
                    vol.pesoL.CasasDecimais(3),
                    vol.pesoB.CasasDecimais(3)));
            }
            //Z|infAdFisco|infCpl|
            sb.AppendLine(string.Format("Z|{0}|{1}|",
                nfe.infNFe.infAdic.infAdFisco,
                nfe.infNFe.infAdic.infCpl.RemoveAcentos()));

            SaveToFile(arquivoTXT, sb);
        }
        

        public static void SaveToFile(string fileName, StringBuilder sb)
        {
            System.IO.TextWriter w = new System.IO.StreamWriter(fileName);
            w.Write(sb.ToString());
            w.Flush();
            w.Close();
        }
    }
}