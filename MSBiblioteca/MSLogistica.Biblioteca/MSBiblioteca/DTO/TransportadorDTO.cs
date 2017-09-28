﻿
namespace MSBiblioteca.DTO
{
    public abstract class TransportadorDTO
    {
        public string Codigo { get; set; }
        public string RazaoSocial { get; set; }
        public string Pais { get; set; }
        public string CgcCpf { get; set; }
        public string Endereco { get; set; }
        public string Numero { get; set; }
        public string Complemento { get; set; }
        public string Bairro { get; set; }
        public string Cidade { get; set; }
        public string CEP { get; set; }
        public string UF { get; set; }
        public string Estado { get; set; }
        public string InscricaoEstadual { get; set; }
        public int Lixo { get; set; }
    }
}