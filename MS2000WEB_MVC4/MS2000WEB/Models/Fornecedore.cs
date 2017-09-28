using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Fornecedore
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public int id { get; set; }
        public string Razao_Social { get; set; }
        public string Pais { get; set; }
        public string CNPJ_CPF_COMPLETO { get; set; }
        public string CGC_CPF { get; set; }
        public string Tipo_Importador { get; set; }
        public string Endereco { get; set; }
        public string Numero { get; set; }
        public string Complemento { get; set; }
        public string Bairro { get; set; }
        public string Cidade { get; set; }
        public string CEP { get; set; }
        public string UF { get; set; }
        public string Estado { get; set; }
        public string Inscricao_Estadual { get; set; }
        public string Banco { get; set; }
        public string Agencia { get; set; }
        public string Conta_Corrente { get; set; }
        public Nullable<int> Conta_Corrente_Registro { get; set; }
        public Nullable<int> Conta_Corrente_Deposito { get; set; }
        public string Contato { get; set; }
        public string Telefone { get; set; }
        public string Email { get; set; }
        public Nullable<bool> Ativo { get; set; }
        public string Fantasia { get; set; }
        public Nullable<bool> Ind_Qualidade { get; set; }
        public Nullable<bool> Ind_EmpresaResponsabilidade { get; set; }
        public Nullable<bool> Ind_Garantia { get; set; }
        public Nullable<int> Dias_Garantia { get; set; }
    }
}
