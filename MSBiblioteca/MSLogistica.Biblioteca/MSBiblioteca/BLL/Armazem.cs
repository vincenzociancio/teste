using System;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;
using System.Collections.Generic;

namespace MSBiblioteca.BLL
{
    /// <summary>
    /// Classe Armazem
    /// </summary>
    public sealed class Armazem : ArmazemDTO
    {
        /// <summary>
        /// Retornar um DataTable com a lista dos 10 últimos Armazem
        /// </summary>
        /// <returns></returns>
        public List<Armazem> Buscar()
        {
            ArmazemDAL armazemDAL = new ArmazemDAL();
            return armazemDAL.Buscar();
        }
        /// <summary>
        /// Retornar um DataTable com o código do Armazem passado por parametro
        /// </summary>
        /// <param name="Codigo">Filtro pelo código do Armazem</param>
        /// <param name="SomenteRegistrosAtivos">Parametro que define se será mostrado apenas os registros Ativos (na tabela o campo Lixo)</param>
        /// <returns></returns>
        public Armazem BuscarCodigo(string Codigo, bool SomenteRegistrosAtivos = true)
        {
            ArmazemDAL armazemDAL = new ArmazemDAL();
            return armazemDAL.BuscarCodigo(Codigo, SomenteRegistrosAtivos);
        }
        /// <summary>
        /// Retornar um DataTable com a lista dos Armazem sendo filtrado pela Razão Social
        /// </summary>
        /// <param name="Descricao">Parametro que recebe a Descricao para a aplicar o filtro na consulta</param>
        /// <param name="SomenteRegistrosAtivos">Parametro que define se será mostrado apenas os registros Ativos (na tabela o campo Lixo)</param>
        /// <returns></returns>
        public List<Armazem> BuscarDescricao(string Descricao, bool SomenteRegistrosAtivos = true)
        {
            ArmazemDAL armazemDAL = new ArmazemDAL();
            return armazemDAL.BuscarDescricao(Descricao, SomenteRegistrosAtivos);
        }
        /// <summary>
        /// Metodo para alterar um Armazem existente.
        /// </summary>
        /// <param name="armazemDTO">Classe Armazem preenchida.</param>
        /// <returns>Boolean</returns>
        public bool Alterar(ArmazemDTO armazemDTO)
        {
            //Fazendo as validações nos campos
            if (armazemDTO.Codigo.Trim().Length == 0)
            {
                throw new Exception("O campo código não pode estar vazio!");
            }
            if (armazemDTO.Descricao.Trim().Length == 0)
            {
                throw new Exception("O campo descrição não pode estar vazio!");
            }
            ArmazemDAL objCae = new ArmazemDAL();
            return objCae.Alterar(armazemDTO);
        }
        /// <summary>
        /// Método para excluir um Armazem.
        /// </summary>
        /// <param name="Codigo">Código do Armazem</param>
        /// <returns>Verdadeiro/Falso</returns>
        public bool Excluir(string Codigo)
        {
            ArmazemDAL armazemDAL = new ArmazemDAL();
            try
            {
                return armazemDAL.Excluir(Codigo);
            }
            catch
            {
                return false;
            }
        }
        /// <summary>
        /// Metodo para Incluir um novo Armazem.
        /// </summary>
        /// <param name="ParametroProcurador">Classe Armazem com o campo código vazio.</param>
        /// <returns>O código do novo Armazem</returns>
        public bool Incluir(ArmazemDTO armazemDTO)
        {
            //Fazendo as validações nos campos
            if (armazemDTO.Codigo.Trim().Length == 0)
            {
                throw new Exception("O campo código não pode estar vazio!");
            }
            if (armazemDTO.Descricao.Trim().Length == 0)
            {
                throw new Exception("O campo descrição não pode estar vazio!");
            }
            ArmazemDAL objDAL = new ArmazemDAL();
            return objDAL.Incluir(armazemDTO);
        }
    }
}
