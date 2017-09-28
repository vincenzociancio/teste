namespace MSBiblioteca.DTO
{
    public abstract class ItensFaturaRateioDTO
    {
        public float Rateio_Acrescimos { get; set; }
        public float Rateio_Embalagem { get; set; }
        public float Rateio_Frete_Interno_imp { get; set; }
        public float Rateio_Seguro_Interno { get; set; }
        public float Rateio_outras_import { get; set; }
        public float Rateio_startup { get; set; }
        public float Rateio_jurosfin { get; set; }
        public float Rateio_montagem { get; set; }
        public float Rateio_Frete_Interno_exp { get; set; }
        public float Rateio_carga_exp { get; set; }
        public float Rateio_outras_export { get; set; }
        public float Rateio_frete_fatura { get; set; }
        public float Rateio_seguro_fatura { get; set; }
        public float Rateio_carga_imp { get; set; }
        public string Processo { get; set; }
        public string Fatura { get; set; }
    }
}
