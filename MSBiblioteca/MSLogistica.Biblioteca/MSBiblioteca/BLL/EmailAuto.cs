using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;

namespace MSBiblioteca.BLL
{
    /// <summary>
    /// Classe publica EmailAuto
    /// </summary>
    /// <remarks>    
    /// Autor: Eduardo Souza
    /// Data de criação: 12/09/2012
    /// Descrição: Essa é uma classe publica que não pode ser herdada, pois usando o modificador sealed.
    /// </remarks>
    public sealed class EmailAuto : EmailAutoDTO
    {
        /// <summary>
        /// Método incluir
        /// </summary>
        /// <param name="emailDTO">Classe EmailAuto</param>
        /// <returns>bool</returns>
        public bool Incluir(EmailAutoDTO emailDTO)
        {
            EmailAutoDAL objDAL = new EmailAutoDAL();
            return objDAL.Incluir(emailDTO);
        }
    }
}
