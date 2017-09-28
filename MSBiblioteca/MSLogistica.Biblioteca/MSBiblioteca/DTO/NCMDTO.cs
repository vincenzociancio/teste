namespace MSBiblioteca.DTO
{
    public abstract class NCMDTO
    {
        public string Codigo { get; set; }
        public string Descricao { get; set; }
        public string Unidade_Medida { get; set; }
        public string Aliquota_II { get; set; }
        public string Data_inicio_vig_II { get; set; }
        public string Data_fim_vig_II { get; set; }
        public string Aliquota_II_Mercosul { get; set; }
        public string Data_inicio_vig_II_Msul { get; set; }
        public string Data_fim_vig_II_Msul { get; set; }
        public string Aliquota_ipi { get; set; }
        public string Data_inicio_vig_ipi { get; set; }
        public string Data_fim_vig_ipi { get; set; }
        public string Aliquota_pis_adval { get; set; }
        public string Data_ini_vig_pis_adval { get; set; }
        public string Data_fim_vig_pis_adval { get; set; }
        public string Aliquota_cofins_adval { get; set; }
        public string Data_ini_vig_cofins_adval { get; set; }
        public string Data_fim_vig_cofins_adval { get; set; }
    }
}
