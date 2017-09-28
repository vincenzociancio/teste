using System;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;

namespace MSBiblioteca.BLL
{
    /// <summary>
    /// Classe ControleAtas
    /// </summary>
    public sealed class ControleAta : ControleAtaDTO
    {
        /// <summary>
        /// Retornar um DataTable com a lista dos 10 últimos ControleAtas
        /// </summary>
        /// <returns></returns>
        public DataTable Buscar()
        {
            ControleAtaDAL objDAL = new ControleAtaDAL();
            return objDAL.Buscar();
        }
        /// <summary>
        /// Retornar um DataTable com a lista dos ControleAtas sendo filtrado pela PKAta
        /// </summary>
        /// <param name="PKAta">Filtro pelo PKAta</param>
        /// <param name="SomenteRegistrosAtivos">Sendo true irá trazer somente os registros que o campo lixo for igual a zero</param>
        /// <returns></returns>
        public DataTable BuscarPK(int PKAta, bool SomenteRegistrosAtivos = true)
        {
            ControleAtaDAL objDAL = new ControleAtaDAL();
            //Fazendo as validações no campo
            if (PKAta > 0)
            {
                return objDAL.BuscarPK(PKAta, SomenteRegistrosAtivos);
            }
            else
            {
                return null;
            }
        }
        /// <summary>
        /// Retornar um DataTable com a lista dos ControleAtas sendo filtrado pelo Tema
        /// </summary>
        /// <param name="Tema">Filtro pelo Tema</param>
        /// <param name="SomenteRegistrosAtivos">Sendo true irá trazer somente os registros que o campo lixo for igual a zero</param>
        /// <param name="Tipo">Filtro pelo Tipo</param>
        /// <returns></returns>
        public DataTable BuscarTema(string Tema, int Tipo = 0, bool SomenteRegistrosAtivos = true)
        {
            ControleAtaDAL objDAL = new ControleAtaDAL();
            //Fazendo as validações no campo
            if ((Tipo < 2) && (String.IsNullOrEmpty(Tema) == false))
            {
                return objDAL.BuscarTema(Tema, Tipo, SomenteRegistrosAtivos);
            }
            else
            {
                return null;
            }
        }
        /// <summary>
        /// Metodo para Incluir um novo ControleAtas.
        /// </summary>
        /// <param name="objDTO">Classe ControleAtas com os campos preenchidos, menos o PKAtas.</param>
        /// <returns>Boolean</returns>
        public int Incluir(ControleAtaDTO objDTO)
        {
            //Fazendo as validações nos campos
            if (String.IsNullOrEmpty(objDTO.Tema))
            {
                throw new Exception("O campo tema não pode estar vazio!");
            }
            if (String.IsNullOrEmpty(objDTO.FKUsuario))
            {
                throw new Exception("O campo FKUsuario não pode estar vazio!");
            }
            if (objDTO.Data.GetHashCode() == 0)
            {
                throw new Exception("O campo data não pode estar vazio!");
            }
            if ((objDTO.Tipo < 0) || (objDTO.Tipo > 1))
            {
                throw new Exception("O campo tipo só pode ser preenchido com zero ou um!");
            }
            ControleAtaDAL objDAL = new ControleAtaDAL();
            return objDAL.Incluir(objDTO);
        }
        /// <summary>
        /// Metodo para Alterar um novo ControleAtas.
        /// </summary>
        /// <param name="objDTO">Classe ControleAtas com os campos preenchidos.</param>
        /// <returns>Boolean</returns>
        public bool Alterar(ControleAtaDTO objDTO)
        {
            //Fazendo as validações nos campos
            if (objDTO.PKAtas < 1)
            {
                throw new Exception("O campo PKAtas deve ser preenchido!");
            }
            if (String.IsNullOrEmpty(objDTO.Tema))
            {
                throw new Exception("O campo tema não pode estar vazio!");
            }
            if (String.IsNullOrEmpty(objDTO.FKUsuario))
            {
                throw new Exception("O campo tema não pode estar vazio!");
            }
            if (objDTO.Data.GetHashCode() == 0)
            {
                throw new Exception("O campo data não pode estar vazio!");
            }
            if ((objDTO.Tipo < 0) || (objDTO.Tipo > 1))
            {
                throw new Exception("O campo tipo só pode ser preenchido com zero ou um!");
            }
            ControleAtaDAL objDAL = new ControleAtaDAL();
            return objDAL.Alterar(objDTO);
        }
        /// <summary>
        /// Método para excluir um ControleAtas.
        /// </summary>
        /// <param name="PKAta">PK do ControleAtas</param>
        /// <returns>Verdadeiro/Falso</returns>
        public bool Excluir(int PKAta)
        {
            ControleAtaDAL objDAL = new ControleAtaDAL();
            try
            {
                return objDAL.Excluir(PKAta);
            }
            catch
            {
                return false;
            }
        }
    }
}
