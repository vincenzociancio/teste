using System;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;
using System.Collections.Generic;
namespace MSBiblioteca.BLL
{
   public sealed class Conhecimento : ConhecimentoDTO
    {
       ConhecimentoDAL objDAL = new ConhecimentoDAL();
       public Conhecimento BuscarConhecimento(string processo)
        {
            return objDAL.BuscarConhecimento(processo);
        }
    }
}
