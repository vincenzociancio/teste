using MSBiblioteca.DAL;
using System.Data;
using System;
using MSBiblioteca.DTO;

namespace MSBiblioteca.BLL
{
    public sealed class RcrObsEspecifica : RcrObsEspecificaDTO
    {
        /// <summary>
        /// Retornar um DataTable com a lista dos RcrObsEspecifica
        /// </summary>
        /// <returns></returns>
        public DataTable Buscar()
        {
            RcrObsEspecificaDAL objDAL = new RcrObsEspecificaDAL();
            return objDAL.Buscar();
        }
        /// <summary>
        /// Retornar um DataTable com a lista dos RcrObsEspecifica sendo filtrado pela codigo
        /// </summary>
        /// <param name="codigo">Filtro pelo codigo</param>
        /// <param name="SomenteRegistrosAtivos">Sendo true irá trazer somente os registros que o campo lixo for igual a zero</param>
        /// <returns></returns>
        public DataTable BuscarCodigo(string codigo, bool SomenteRegistrosAtivos = true)
        {
            RcrObsEspecificaDAL objDAL = new RcrObsEspecificaDAL();
            //Fazendo as validações no campo
            if (codigo.Trim().Length > 0)
            {
                return objDAL.BuscarCodigo(codigo, SomenteRegistrosAtivos);
            }
            else
            {
                return null;
            }
        }
        /// <summary>
        /// Retornar um DataTable com a lista dos RcrObsEspecifica sendo filtrado pela descriçao
        /// </summary>
        /// <param name="SomenteRegistrosAtivos">Sendo true irá trazer somente os registros que o campo lixo for igual a zero</param>
        /// <returns></returns>
        public DataTable BuscarDescricao(string descricao, bool SomenteRegistrosAtivos = true)
        {
            RcrObsEspecificaDAL objDAL = new RcrObsEspecificaDAL();
            //Fazendo as validações no campo
            if (descricao.Trim().Length > 0)
            {
                return objDAL.BuscarDescricao(descricao, SomenteRegistrosAtivos);
            }
            else
            {
                return null;
            }
        }
        /// <summary>
        /// Método para excluir um RcrObsEspecifica.
        /// </summary>
        /// <param name="Codigo">Código do RcrObsEspecifica</param>
        /// <returns>Verdadeiro/Falso</returns>
        public bool Excluir(int Codigo)
        {
            RcrObsEspecificaDAL objDAL = new RcrObsEspecificaDAL();
            try
            {
                return objDAL.Excluir(Codigo);
            }
            catch
            {
                return false;
            }
        }
        /// <summary>
        /// Metodo para Incluir um novo RcrObsEspecifica.
        /// </summary>
        /// <param name="objDTO">Classe RcrObsEspecifica com o campo código e descrições preenchidos.</param>
        /// <returns>Boolean</returns>
        public bool Incluir(RcrObsEspecificaDTO objDTO)
        {
            //Fazendo as validações nos campos
            if (objDTO.Descricao.Trim().Length == 0)
            {
                throw new Exception("O campo descrição não pode estar vazio!");
            }
            RcrObsEspecificaDAL objDAL = new RcrObsEspecificaDAL();
            return objDAL.Incluir(objDTO);
        }
        /// <summary>
        /// Metodo para alterar um RcrObsEspecifica existente.
        /// </summary>
        /// <param name="objDTO">Classe RcrObsEspecifica com o campo código e descrições preenchidos.</param>
        /// <returns>Boolean</returns>
        public bool Alterar(RcrObsEspecificaDTO objDTO)
        {
            //Fazendo as validações nos campos
            if (objDTO.Codigo < 0)
            {
                throw new Exception("O campo código não pode estar vazio!");
            }
            if (objDTO.Descricao.Trim().Length == 0)
            {
                throw new Exception("O campo descrição não pode estar vazio!");
            }
            RcrObsEspecificaDAL objDAL = new RcrObsEspecificaDAL();
            return objDAL.Alterar(objDTO);
        }
    }
}
