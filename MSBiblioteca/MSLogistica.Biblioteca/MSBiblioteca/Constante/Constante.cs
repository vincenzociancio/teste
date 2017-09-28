using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MSBiblioteca.Constante
{
    public enum Operacao
    {
        Alterar,
        Incluir,
        Apagar,
        Leitura,
    }

    public enum Sistema
    { 
        MS2000Web = 0,
        MSSite = 1,
        Repetro = 2,
        MS2000Form = 3
    }

    public enum Movimentacao
    {
        Acesso = 0,
        Exclusao = 1,
        Inclusao = 2,
        Aviso = 3,
        Alteracao = 4
    }

    public class Parametro
    {
        public const string Empresa = "1";
        public const string Filial = "RJO";
    }

}
