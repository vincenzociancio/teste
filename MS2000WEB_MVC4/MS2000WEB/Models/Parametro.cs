using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Parametro
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Numerador_Processos { get; set; }
        public string Numerador_Documentos { get; set; }
        public string Endereco_ftp { get; set; }
        public string Usuario_ftp { get; set; }
        public string Senha_ftp { get; set; }
        public string Host { get; set; }
        public string Versao { get; set; }
        public int Alerta_Atualizacao { get; set; }
        public string keycrypt { get; set; }
        public string Host_smtp { get; set; }
        public Nullable<short> Porta_smtp { get; set; }
        public string Usuario_smtp { get; set; }
        public string Senha_smtp { get; set; }
        public string Numerador_Transmittal { get; set; }
        public string PATH_SERVER { get; set; }
        public Nullable<double> Aliq_PIS_PASEP { get; set; }
        public Nullable<double> Aliq_COFINS { get; set; }
        public Nullable<double> Aliq_ICMS { get; set; }
        public Nullable<double> Aliq_ICMS_EXTRA { get; set; }
        public string Numerador_Sol_Cheques { get; set; }
        public string Numerador_Sol_Reg { get; set; }
        public string Numerador_Sol_Tracla { get; set; }
        public Nullable<double> ValorMinimoRegistroDI { get; set; }
        public Nullable<double> ValorMaximoRegistroDI { get; set; }
    }
}
