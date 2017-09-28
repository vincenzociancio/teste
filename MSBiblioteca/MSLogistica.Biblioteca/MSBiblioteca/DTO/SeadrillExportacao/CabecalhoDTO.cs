using System.ComponentModel.DataAnnotations;
using MSBiblioteca.BLL;

namespace MSBiblioteca.DTO.SeadrillExportacao
{

    public class CabecalhoDTO
    {
        public CabecalhoDTO()
        {
            Identificador = "H";            
        }

        public string Processo { get; set; }

        [Required]
        [StringLength(1)]
        public string Identificador { get; set; }

        [Required]
        [StringLength(1)]
        public string CoberturaCambial { get; set; }

        [Required]
        [StringLength(2)]
        public string NaturezaOperacao { get; set; }

        [Required]
        [StringLength(3)]
        public string Moeda { get; set; }

        [Required]
        [StringLength(14)]
        public string CodigoExportador { get; set; }

        [Required]
        [StringLength(14)]
        public string CnpjDoImportador { get; set; }

        [Required]
        [StringLength(14)]
        public string CnpjAdqMercadoria { get; set; }

        [Required]
        [StringLength(20)]
        public string DctoImportacao { get; set; }

        [Required]
        [StringLength(10)]
        public string DataDctoImportacao { get; set; }

        [Required]
        [StringLength(20)]
        private string _numeroDaFatura;

        public string NumeroDaFatura
        {
            get
            {
                return _numeroDaFatura;
            }
            set
            {
                _numeroDaFatura = value;
                if (value != null)
                {
                    ValorFrete = new Fatura().ObterTotalDoFrete(Processo, value);
                }
            }
        }

        [Required]
        [StringLength(2)]
        public string UfDesembaraco { get; set; }

        [Required]
        [StringLength(3)]
        public string CodigoMoeda { get; set; }

        [Required]
        public decimal Taxa { get; set; }

        [Required]
        [StringLength(10)]
        public string DataDesembaraco { get; set; }

        [Required]
        public decimal PesoBruto { get; set; }

        public decimal PesoLiquido { get; set; }

        public decimal ValorFOB { get; set; }

        public decimal ValorFrete { get; set; }

        public decimal Seguro { get; set; }

        public decimal ValorCIF { get; set; }

        [Required]
        public int QtdVolume { get; set; }

        [Required]
        [StringLength(50)]
        public string TipoDeVolume { get; set; }

        public int RegimeTributacao { get; set; }

    }  
}
