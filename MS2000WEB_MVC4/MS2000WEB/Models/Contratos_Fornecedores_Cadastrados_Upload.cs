using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Contratos_Fornecedores_Cadastrados_Upload
    {
        public int id { get; set; }
        public int fk_contrato { get; set; }
        public string Descricao_Arquivo { get; set; }
        public string Caminho { get; set; }
        public string Tipo_Arquivo { get; set; }
        public System.DateTime Data { get; set; }
        public int Lixo { get; set; }
        public string Titulo { get; set; }
        public string fk_usuario { get; set; }
        public virtual Contratos_Fornecedores_Cadastrados_Financeiro Contratos_Fornecedores_Cadastrados_Financeiro { get; set; }
    }
}
