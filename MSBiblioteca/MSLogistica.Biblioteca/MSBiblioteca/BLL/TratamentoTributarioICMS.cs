using MSBiblioteca.DAL;
using System.Data;
using System;
using MSBiblioteca.DTO;

namespace MSBiblioteca.BLL
{
    public sealed class TratamentoTributarioICMS : TratamentoTributarioIcmsDTO
    {
        /// <summary>
        /// Retornar um DataTable com a lista dos TratamentoTributarioICMS
        /// </summary>
        /// <returns></returns>
        public DataTable Buscar()
        {
            TratamentoTributarioIcmsDAL objDAL = new TratamentoTributarioIcmsDAL();
            return objDAL.Buscar();
        }
        /// <summary>
        /// Retornar um DataTable com a lista dos TratamentoTributarioICMS sendo filtrado pela codigo
        /// </summary>
        /// <param name="codigo">Filtro pelo codigo</param>
        /// <param name="SomenteRegistrosAtivos">Sendo true irá trazer somente os registros que o campo lixo for igual a zero</param>
        /// <returns></returns>
        public DataTable BuscarCodigo(string codigo, bool SomenteRegistrosAtivos = true)
        {
            TratamentoTributarioIcmsDAL objDAL = new TratamentoTributarioIcmsDAL();
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
        /// Retornar um DataTable com a lista dos TratamentoTributarioICMS sendo filtrado pela descriçao
        /// </summary>
        /// <param name="IdiomaPT">Sendo true irá filtrar pelo campo Descricao, sendo false irá filtrar pelo campo DescricaoING</param>
        /// <param name="SomenteRegistrosAtivos">Sendo true irá trazer somente os registros que o campo lixo for igual a zero</param>
        /// <returns></returns>
        public DataTable BuscarDescricao(string descricao, bool SomenteRegistrosAtivos = true, bool IdiomaPT = true)
        {
            TratamentoTributarioIcmsDAL objDAL = new TratamentoTributarioIcmsDAL();
            //Fazendo as validações no campo
            if (descricao.Trim().Length > 0)
            {
                return objDAL.BuscarDescricao(descricao, SomenteRegistrosAtivos, IdiomaPT);
            }
            else
            {
                return null;
            }
        }
        /// <summary>
        /// Método para excluir um TratamentoTributarioIcmsDAL.
        /// </summary>
        /// <param name="Codigo">Código do TratamentoTributarioIcmsDAL</param>
        /// <returns>Verdadeiro/Falso</returns>
        public bool Excluir(string Codigo)
        {
            TratamentoTributarioIcmsDAL objDAL = new TratamentoTributarioIcmsDAL();
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
        /// Metodo para Incluir um novo TratamentoTributarioICMS.
        /// </summary>
        /// <param name="objDTO">Classe TratamentoTributarioICMS com o campo código e descrições preenchidos.</param>
        /// <returns>Boolean</returns>
        public bool Incluir(TratamentoTributarioIcmsDTO objDTO)
        {
            //Fazendo as validações nos campos
            if (objDTO.Codigo.Trim().Length == 0)
            {
                throw new Exception("O campo código não pode estar vazio!");
            }
            if (objDTO.Descricao.Trim().Length == 0)
            {
                throw new Exception("O campo descrição não pode estar vazio!");
            }
            if (objDTO.DescricaoING.Trim().Length == 0)
            {
                throw new Exception("O campo descrição inglês não pode estar vazio!");
            }
            TratamentoTributarioIcmsDAL objDAL = new TratamentoTributarioIcmsDAL();
            return objDAL.Incluir(objDTO);
        }
        /// <summary>
        /// Metodo para alterar um TratamentoTributarioICMS existente.
        /// </summary>
        /// <param name="objDTO">Classe TratamentoTributarioICMS com o campo código e descrições preenchidos.</param>
        /// <returns>Boolean</returns>
        public bool Alterar(TratamentoTributarioIcmsDTO objDTO)
        {
            //Fazendo as validações nos campos
            if (objDTO.Codigo.Trim().Length == 0)
            {
                throw new Exception("O campo código não pode estar vazio!");
            }
            if (objDTO.Descricao.Trim().Length == 0)
            {
                throw new Exception("O campo descrição não pode estar vazio!");
            }
            if (objDTO.DescricaoING.Trim().Length == 0)
            {
                throw new Exception("O campo descrição inglês não pode estar vazio!");
            }
            TratamentoTributarioIcmsDAL objDAL = new TratamentoTributarioIcmsDAL();
            return objDAL.Alterar(objDTO);
        }
    }
}
