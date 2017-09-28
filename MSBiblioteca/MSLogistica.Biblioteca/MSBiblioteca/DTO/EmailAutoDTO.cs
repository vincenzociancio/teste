using System;
using System.ComponentModel.DataAnnotations;

namespace MSBiblioteca.DTO
{
    /// <summary>
    /// Classe EmailAutoDTO
    /// </summary>
    /// <remarks>    
    /// Autor: Eduardo Souza
    /// Data de criação: 12/09/2012
    /// Descrição: Classe DTO contém apenas os campos e propriedades.
    /// </remarks>
    public abstract class EmailAutoDTO
    {
        /// <summary>
        /// Propriedades da classe EmailAutoDTO
        /// </summary>        
        ///                        
        public int Codigo { get; set; }
        [Required(ErrorMessage = "Programa é necessária.")]
        public string Programa { get; set; }
        [Required(ErrorMessage = "Assunto é necessária.")]
        public string Assunto { get; set; }
        [Required(ErrorMessage = "Titulo é necessária.")]
        public string Titulo { get; set; }
        [Required(ErrorMessage = "De é necessária.")]
        public string De { get; set; }        
        public string Para { get; set; }        
        public string CC { get; set; }        
        public string CCO { get; set; }        
        public string Body { get; set; }        
        public string Anexo { get; set; }        
        public int HTML { get; set; }
        [Required(ErrorMessage = "Data é necessária.")]
        public DateTime Data { get; set; }
        [Required(ErrorMessage = "Hora é necessária.")]
        public DateTime Hora { get; set; }
        public int Lixo { get; set; }
        public string Erro_Message { get; set; }
    }
}
