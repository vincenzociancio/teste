using System;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;

namespace MSBiblioteca.BLL
{
    /// <summary>
    /// Classe TiposDeCargas
    /// </summary>
    public sealed class TipoDeCarga : TipoDeCargaDTO
    {
        /// <summary>
        /// Retornar um DataTable com a lista dos 10 últimos TiposDeCargas
        /// </summary>
        /// <returns></returns>
        public DataTable Buscar()
        {
            TipoDeCargaDAL tiposDeCargasDAL = new TipoDeCargaDAL();
            return tiposDeCargasDAL.Buscar();
        }
        /// <summary>
        /// Retornar um DataTable com o código do TiposDeCargas passado por parametro
        /// </summary>
        /// <param name="Codigo">Filtrando pelo Código</param>
        /// <param name="SomenteRegistrosAtivos">Parametro que define se será mostrado apenas os registros Ativos (na tabela o campo Lixo)</param>
        /// <returns></returns>
        public DataTable BuscarCodigo(string Codigo, bool SomenteRegistrosAtivos = true)
        {
            TipoDeCargaDAL tiposDeCargasDAL = new TipoDeCargaDAL();
            return tiposDeCargasDAL.BuscarCodigo(Codigo, SomenteRegistrosAtivos);
        }
        /// <summary>
        /// Retornar um DataTable com a lista dos TiposDeCargas sendo filtrado pela Razão Social
        /// </summary>
        /// <param name="Descricao">Parametro que recebe a Descricao para a aplicar o filtro na consulta</param>
        /// <param name="SomenteRegistrosAtivos">Parametro que define se será mostrado apenas os registros Ativos (na tabela o campo Lixo)</param>
        /// <returns></returns>
        public DataTable BuscarDescricao(string Descricao, bool SomenteRegistrosAtivos = true,bool IdiomaPT = true)
        {
            TipoDeCargaDAL tiposDeCargasDAL = new TipoDeCargaDAL();
            return tiposDeCargasDAL.BuscarDescricao(Descricao, SomenteRegistrosAtivos, IdiomaPT);
        }
        /// <summary>
        /// Metodo para alterar um TiposDeCargas existente.
        /// </summary>
        /// <param name="armazemDTO">Classe TiposDeCargas preenchida.</param>
        /// <returns>Boolean</returns>
        public bool Alterar(TipoDeCargaDTO tiposDeCargasDTO)
        {
            //Fazendo as validações nos campos
            if (tiposDeCargasDTO.Codigo.Trim().Length == 0)
            {
                throw new Exception("O campo código não pode estar vazio!");
            }
            if (tiposDeCargasDTO.Descricao.Trim().Length == 0)
            {
                throw new Exception("O campo Descrição não pode estar vazio!");
            }
            TipoDeCargaDAL obj = new TipoDeCargaDAL();
            return obj.Alterar(tiposDeCargasDTO);
        }
        /// <summary>
        /// Método para excluir um TiposDeCargas.
        /// </summary>
        /// <param name="Codigo">Código do TiposDeCargas</param>
        /// <returns>Verdadeiro/Falso</returns>
        public bool Excluir(string Codigo)
        {
            TipoDeCargaDAL tiposDeCargasDAL = new TipoDeCargaDAL();
            try
            {
                return tiposDeCargasDAL.Excluir(Codigo);
            }
            catch
            {
                return false;
            }
        }
        /// <summary>
        /// Metodo para Incluir um novo TiposDeCargas.
        /// </summary>
        /// <param name="ParametroProcurador">Classe TiposDeCargas preenchida.</param>
        /// <returns>Boolean</returns>
        public bool Incluir(TipoDeCargaDTO tiposDeCargasDTO)
        {
            //Fazendo as validações nos campos
            if (tiposDeCargasDTO.Codigo.Trim().Length == 0)
            {
                throw new Exception("O campo código não pode estar vazio!");
            }
            if (tiposDeCargasDTO.Descricao.Trim().Length == 0)
            {
                throw new Exception("O campo descrição não pode estar vazio!");
            }
            TipoDeCargaDAL objDAL = new TipoDeCargaDAL();
            return objDAL.Incluir(tiposDeCargasDTO);
        }
    }
}
