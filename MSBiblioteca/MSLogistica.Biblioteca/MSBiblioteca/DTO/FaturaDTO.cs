using MSBiblioteca.BLL;
using System;
using System.Collections.Generic;

namespace MSBiblioteca.DTO
{
    public class FaturaDTO
    {
        public FaturaDTO()
        {
            if (this.itensFatura == null)
            {
                this.ItensFatura = new List<ItensFatura>();
            }

            if (this.exportador == null)
            {
                this.Exportador = new Exportador();
            }
        }

        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public string Codigo { get; set; }
        public string FK_Exportador { get; set; }
        public string Incoterm { get; set; }
        public string Vinculacao { get; set; }
        public string Condicao { get; set; }
        public double Valor_Total { get; set; }
        public double Peso_Total { get; set; }
        public double Peso_Total_Acertado { get; set; }
        public int Acrescimos_Reducoes { get; set; }
        public string Moeda { get; set; }
        public string Cobertura_Cambial { get; set; }
        public string Motivo_Sem_Cobertura { get; set; }
        public string Modalidade_de_Pagamento { get; set; }
        public string Instituicao_Financiadora { get; set; }
        public string Tipo_Parcela { get; set; }
        public string Numero_de_parcelas { get; set; }
        public string Periodicidade { get; set; }
        public float Valor_das_Parcelas { get; set; }
        public string Indicador_Periodicidade { get; set; }
        public int Taxa_de_Juros { get; set; }
        public string Codigo_Taxa_de_Juros { get; set; }
        public float Valor_Taxa_de_Juros { get; set; }
        public string ROF_BACEN { get; set; }
        public float Percentual_ROF { get; set; }
        public DateTime DT_PREV_PAG_CAMBIO { get; set; }
        public DateTime DT_PAG_CAMBIO { get; set; }
        public string STATUS_CAMBIO { get; set; }
        public string CONTRATO_CAMBIO { get; set; }
        public float SALDO_CAMBIO { get; set; }
        public DateTime? DtEmissao { get; set; }
        public int Peso_Libra { get; set; }
        public string Contrato { get; set; }
        public string Local_Inventario { get; set; }
        public int? FK_Plataforma { get; set; }

        //Navegabilidade
        private List<ItensFatura> itensFatura;
        public virtual List<ItensFatura> ItensFatura
        {
            get { return itensFatura; }
            set { itensFatura = value; }
        }

        private Exportador exportador;
        public virtual Exportador Exportador
        {
            get { return exportador; }
            set { exportador = value; }
        }

    }
}
