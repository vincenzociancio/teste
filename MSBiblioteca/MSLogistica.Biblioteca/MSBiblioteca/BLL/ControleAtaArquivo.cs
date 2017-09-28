using System;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;

namespace MSBiblioteca.BLL
{
    /// <summary>
    /// Classe ControleAtasArquivos
    /// </summary>
    public sealed class ControleAtaArquivo : ControleAtaArquivoDTO
    {
        /// <summary>
        /// Metodo para Incluir um novo ControleAtasArquivos.
        /// </summary>
        /// <param name="objDTO">Classe ControleAtasArquivos com os campos preenchidos, menos o PKAtasArquivos.</param>
        /// <returns>Boolean</returns>
        public int Incluir(ControleAtaArquivoDTO objDTO)
        {
            //Fazendo as validações nos campos
            if (objDTO.FKAtas < 1)
            {
                throw new Exception("O campo FKAtas deve ser preenchido!");
            }
            if (String.IsNullOrEmpty(objDTO.Caminho))
            {
                throw new Exception("O campo Caminho não pode estar vazio!");
            }
            if (String.IsNullOrEmpty(objDTO.TipoArquivo))
            {
                throw new Exception("O campo Tipo do Arquivo não pode estar vazio!");
            }
            if (objDTO.Data.GetHashCode() == 0)
            {
                throw new Exception("O campo data não pode estar vazio!");
            }
            if (String.IsNullOrEmpty(objDTO.DescricaoArquivo))
            {
                throw new Exception("O campo Descricao do Arquivo não pode estar vazio!");
            }
            ControleAtaArquivoDAL objDAL = new ControleAtaArquivoDAL();
            return objDAL.Incluir(objDTO);
        }
        /// <summary>
        /// Método para excluir um ControleAtasArquivos.
        /// </summary>
        /// <param name="PKAtaArquivos">PK do ControleAtasArquivos</param>
        /// <returns>Verdadeiro/Falso</returns>
        public bool Excluir(int PKAtaArquivos)
        {
            ControleAtaArquivoDAL objDAL = new ControleAtaArquivoDAL();
            try
            {
                return objDAL.Excluir(PKAtaArquivos);
            }
            catch
            {
                return false;
            }
        }
        /// <summary>
        /// Retornar um DataTable com a lista dos ControleAtasArquivos
        /// </summary>
        /// <returns></returns>
        public DataTable Buscar()
        {
            ControleAtaArquivoDAL objDAL = new ControleAtaArquivoDAL();
            return objDAL.Buscar();
        }
        /// <summary>
        /// Retornar um DataTable com a lista dos ControleAtasArquivos sendo filtrado pela PKAtas
        /// </summary>
        /// <param name="PKAtaArquivos">Filtro pelo PKAtaArquivos</param>
        /// <param name="SomenteRegistrosAtivos">Sendo true irá trazer somente os registros que o campo lixo for igual a zero</param>
        /// <returns></returns>
        public DataTable BuscarPKAta(int PKAta, bool SomenteRegistrosAtivos = true)
        {
            ControleAtaArquivoDAL objDAL = new ControleAtaArquivoDAL();
            //Fazendo as validações no campo
            if (PKAta > 0)
            {
                return objDAL.BuscarPKAta(PKAta, SomenteRegistrosAtivos);
            }
            else
            {
                return null;
            }
        }
    }
}
