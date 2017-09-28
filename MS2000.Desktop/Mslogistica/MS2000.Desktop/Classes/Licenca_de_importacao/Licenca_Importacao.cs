
namespace MS2000.Desktop.Classes.Licenca_de_importacao
{
    public class Licenca_Importacao
    {
        public Basicas Basicas { get; set; }
        public Fornecedor Fornecedor { get; set; }
        public Mercadoria Mercadorias { get; set; }
        public Negociacao Negociacao { get; set; }

        public Licenca_Importacao()
        {
            Basicas = new Basicas();
            Fornecedor = new Fornecedor();
            Mercadorias = new Mercadoria();
            Negociacao = new Negociacao();
        }

        public Licenca_Importacao(
            Basicas basicas,
            Fornecedor fornecedor,
            Mercadoria mercadorias,
            Negociacao negociacao)
        {
            Basicas = basicas;
            Fornecedor = fornecedor;
            Mercadorias = mercadorias;
            Negociacao = negociacao;
        }
    }
}
