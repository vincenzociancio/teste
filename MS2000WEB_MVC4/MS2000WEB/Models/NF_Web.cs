using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class NF_Web
    {
        public string CNPJ_CPF_COMPLETO { get; set; }
        public string Tiponf { get; set; }
        public string NFiscal { get; set; }
        public string Layout { get; set; }
        public string NatOpe { get; set; }
        public string CFOP { get; set; }
        public string InscEstadualsubs { get; set; }
        public string InscEstadual { get; set; }
        public string Nomedestrem { get; set; }
        public string CNPJCPF { get; set; }
        public string Endereco { get; set; }
        public string Bairrodistrito { get; set; }
        public string Cep { get; set; }
        public string Municipio { get; set; }
        public string FoneFax { get; set; }
        public string UF { get; set; }
        public string InscEstDestRem { get; set; }
        public Nullable<System.DateTime> DtEmissao { get; set; }
        public Nullable<System.DateTime> Dtsaidaentrada { get; set; }
        public Nullable<System.DateTime> Horasaida { get; set; }
        public string DuplicataNr { get; set; }
        public Nullable<System.DateTime> Vencimento { get; set; }
        public Nullable<double> Valor { get; set; }
        public string CondEspeciais { get; set; }
        public string DA1 { get; set; }
        public string DA2 { get; set; }
        public string DA3 { get; set; }
        public string DA4 { get; set; }
        public string DA5 { get; set; }
        public string DA6 { get; set; }
        public string DA7 { get; set; }
        public Nullable<double> BaseCalcICMS { get; set; }
        public Nullable<double> ValICMS { get; set; }
        public Nullable<double> BaseCalcICMSsubst { get; set; }
        public Nullable<double> ValICMSsubs { get; set; }
        public Nullable<double> Valtotprodutos { get; set; }
        public Nullable<double> Valfrete { get; set; }
        public Nullable<double> Valseguro { get; set; }
        public Nullable<double> Outrasdesp { get; set; }
        public Nullable<double> ValtotIPI { get; set; }
        public Nullable<double> Vatotnota { get; set; }
        public string Cnpj_Transportador { get; set; }
        public string InscEstadual_Transportador { get; set; }
        public string Nome_Transportador { get; set; }
        public string Endereco_Transportador { get; set; }
        public string Municipio_Transportador { get; set; }
        public string UF_Transportador { get; set; }
        public string Frete { get; set; }
        public string Placa { get; set; }
        public string UFVeiculo { get; set; }
        public Nullable<double> Quantidade { get; set; }
        public string Especie { get; set; }
        public string Marca { get; set; }
        public string Numero { get; set; }
        public Nullable<double> PesoBruto { get; set; }
        public Nullable<double> PesoLiquido { get; set; }
        public string Incoterm { get; set; }
        public Nullable<double> ValTotII { get; set; }
        public Nullable<double> ValTotFOB { get; set; }
        public Nullable<double> ValTotPIS { get; set; }
        public Nullable<double> ValTotCOFINS { get; set; }
        public Nullable<double> ValTxSiscomex { get; set; }
    }
}
