using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MSBiblioteca.Interfaces
{
    internal interface ICrudBasico<T>
    {
        bool Incluir(T obj);
        bool Alterar(T obj);
        bool Excluir(T obj);
        T Buscar();
    }
}
