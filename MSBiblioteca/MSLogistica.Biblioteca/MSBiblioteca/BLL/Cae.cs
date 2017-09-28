using MSBiblioteca.DAL;
using System.Data;
using System;
using MSBiblioteca.DTO;
using System.Collections.Generic;


namespace MSBiblioteca.BLL
{
    public sealed class Cae : CaeDTO
    {
        /// <summary>
        /// Retornar um DataTable com a lista dos CAE
        /// </summary>
        /// <returns></returns>
        public List<Cae> Buscar()
        {
            CaeDAL caeDAL = new CaeDAL();
            return caeDAL.Buscar();
        }
        /// <summary>
        /// Retornar um lista dos CAE sendo filtrado pela codigo
        /// </summary>
        /// <param name="SomenteRegistrosAtivos">Sendo true irá trazer somente os registros que o campo lixo for igual a zero</param>
        /// <returns></returns>
        public Cae BuscarCodigo(string codigo, bool SomenteRegistrosAtivos = true)
        {
            CaeDAL caeDAL = new CaeDAL();
            //Fazendo as validações no campo
            if (codigo.Trim().Length > 0)
            {
                return caeDAL.BuscarCodigo(codigo, SomenteRegistrosAtivos);
            }
            else
            {
                return null;
            }
        }
        /// <summary>
        /// Retornar um lista dos CAE sendo filtrado pela descriçao
        /// </summary>
        /// <param name="IdiomaPT">Sendo true irá filtrar pelo campo Descricao, sendo false irá filtrar pelo campo DescricaoING</param>
        /// <param name="SomenteRegistrosAtivos">Sendo true irá trazer somente os registros que o campo lixo for igual a zero</param>
        /// <returns></returns>
        public List<Cae> BuscarDescricao(string descricao, bool SomenteRegistrosAtivos = true, bool IdiomaPT = true)
        {
            CaeDAL caeDAL = new CaeDAL();
            //Fazendo as validações no campo
            if (descricao.Trim().Length > 0)
            {
                return caeDAL.BuscarDescricao(descricao, SomenteRegistrosAtivos, IdiomaPT);
            }
            else
            {
                return null;
            }
        }
        /// <summary>
        /// Método para excluir um CAE.
        /// </summary>
        /// <param name="Codigo">Código do CAE</param>
        /// <returns>Verdadeiro/Falso</returns>
        public bool Excluir(string Codigo)
        {
            CaeDAL caeDAL = new CaeDAL();
            try
            {
                return caeDAL.Excluir(Codigo);
            }
            catch
            {
                return false;
            }
        }
        /// <summary>
        /// Metodo para Incluir um novo CAE.
        /// </summary>
        /// <param name="caeDTO">Classe CAE com o campo código e descrição preenchidos.</param>
        /// <returns>Boolean</returns>
        public bool Incluir(CaeDTO caeDTO)
        {
            //Fazendo as validações nos campos
            if (caeDTO.PKCodigo.Trim().Length == 0)
            {
                throw new Exception("O campo código não pode estar vazio!");
            }
            if (caeDTO.Descricao.Trim().Length == 0)
            {
                throw new Exception("O campo descrição não pode estar vazio!");
            }
            if (caeDTO.DescricaoING.Trim().Length == 0)
            {
                throw new Exception("O campo descrição inglês não pode estar vazio!");
            }
            CaeDAL objDAL = new CaeDAL();
            return objDAL.Incluir(caeDTO);
        }
        /// <summary>
        /// Metodo para alterar um CAE existente.
        /// </summary>
        /// <param name="caeDTO">Classe CAE com o campo código e descrição preenchidos.</param>
        /// <returns>Boolean</returns>
        public bool Alterar(CaeDTO caeDTO)
        {
            //Fazendo as validações nos campos
            if (caeDTO.PKCodigo.Trim().Length == 0)
            {
                throw new Exception("O campo código não pode estar vazio!");
            }
            if (caeDTO.Descricao.Trim().Length == 0)
            {
                throw new Exception("O campo descrição não pode estar vazio!");
            }
            if (caeDTO.Descricao.Trim().Length == 0)
            {
                throw new Exception("O campo descrição inglês não pode estar vazio!");
            }
            CaeDAL objCae = new CaeDAL();
            return objCae.Alterar(caeDTO);
        }
    }
}
