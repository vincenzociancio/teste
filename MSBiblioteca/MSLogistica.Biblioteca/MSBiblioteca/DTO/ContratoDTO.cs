using MSBiblioteca.BLL;
using System;
using System.Collections.Generic;

namespace MSBiblioteca.DTO
{
    public class ContratoDTO
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Importador { get; set; }
        public string Contrato { get; set; }
        public string Descricao { get; set; }
        public DateTime Vigencia_Inicial { get; set; }
        public DateTime Vigencia_Final { get; set; }
        public string Tipo { get; set; }
        public DateTime Data_Baixa { get; set; }
        public DateTime Data_Prorrogacao { get; set; }
        public int Repetro { get; set; }
        public int Ativo { get; set; }
        public string Cod_Regime_Fundamento { get; set; }
        public string INs { get; set; }
        public string Setor { get; set; }

        public virtual IList<LocalInventario> LocalInventario { get; set; }
    }
}
