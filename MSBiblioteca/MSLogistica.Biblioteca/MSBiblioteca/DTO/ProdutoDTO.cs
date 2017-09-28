namespace MSBiblioteca.DTO
{
    public abstract class ProdutoDTO
    {
        public string REG { get; set; }
        public string Importador { get; set; }
        public string Fabricante { get; set; }
        public string Codigo { get; set; }
        public string PartNumber { get; set; }
        public string Descricao { get; set; }
        public string Descricao_Ing { get; set; }
        public string NCM { get; set; }
        public string Destaque_NCM { get; set; }
        public string Naladi { get; set; }
        public string Unidade { get; set; }
        public string Unidade_Medida_Estatica { get; set; }
        public string Data_Inclusao { get; set; }
        public string Usuario_Inclusao { get; set; }
        public string Data_Ultima_Alteracao { get; set; }
        public string Usuario_Alteracao { get; set; }
        public string Revisado { get; set; }
        public string Revisao_Data { get; set; }
        public string Revisao_Usuario { get; set; }
        public string Revisao_Obs { get; set; }
    }
}