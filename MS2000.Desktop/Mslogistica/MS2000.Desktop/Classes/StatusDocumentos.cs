using System.ComponentModel;

namespace MS2000.Desktop.Classes
{
    public enum StatusDocumentos
    {
        [Description("Sem data de validade")]
        SemDataDeValidade = 0,
        [Description("A Vencer")]
        aVencer = 1,
        [Description("Vencido")]
        Vencido = 2,
        [Description("Baixado")]
        Baixado = 3,
        [Description("Prorrogado")]
        Prorrogado = 4,
        [Description("Baixa em Análise")]
        BaixaEmAnalise = 5,
        [Description("Prorrogação em Análise")]
        ProrrogacaoEmAnalise = 6,
        [Description("Reexportação em Análise")]
        ReexportacaoEmAnalise = 7
    }
}
