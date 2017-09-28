using System;
using System.Collections.Generic;

namespace MS2000.Desktop.Classes
{
    public class ProdutosNew
    {
        public int Reg { get; set; }
        public string Importador { get; set; }        
        public string Codigo { get; set; }
        public string Part_Number { get; set; }
        public string Descricao { get; set; }
        public string Descricao_ing { get; set; }
        public string NCM { get; set; }
        public string Destaque_NCM { get; set; }
        public string NALADI { get; set; }
        public string Unidade { get; set; }
        public string Unidade_Medida_Estat { get; set; }
        public string PaisOrigem { get; set; }        
        public string NomeFabricante { get; set; }
        public int? CodigoFabricante { get; set; }
        public string CodigoImportador { get; set; }
        public string CodigoProdutoCliente { get; set; }

    }
}
