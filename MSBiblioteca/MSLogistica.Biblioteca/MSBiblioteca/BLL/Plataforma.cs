using System;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;

namespace MSBiblioteca.BLL
{
    /// <summary>
    /// Classe Plataforma
    /// </summary>
    public sealed class Plataforma : PlataformaDTO
    {
        /// <summary>
        /// Retornar um DataTable com a lista das 10 últimas PLataformas
        /// </summary>
        /// <returns></returns>
        public DataTable Buscar()
        {
            PlataformaDAL plataformaDAL = new PlataformaDAL();
            return plataformaDAL.Buscar();
        }
        /// <summary>
        /// Retornar um DataTable com o código da Plataforma passado por parametro
        /// </summary>
        /// <param name="Codigo">Filtro pelo código da plataforma</param>
        /// <returns></returns>
        public DataTable BuscarCodigo(string Codigo)
        {
            PlataformaDAL plataformaDAL = new PlataformaDAL();
            return plataformaDAL.BuscarCodigo(Codigo);
        }
        /// <summary>
        /// Retornar um DataTable com a lista de todas as plataformas
        /// </summary>
        /// <returns></returns>
        public DataTable BuscarTodos()
        {
            PlataformaDAL plataformaDAL = new PlataformaDAL();
            return plataformaDAL.BuscarTodos();
        }
        /// <summary>
        /// Retornar um DataTable com a lista de todas as plataformas passando por parametro o código do Importador
        /// </summary>
        /// <param name="Codigo">Filtro pelo código do Importador</param>
        /// <returns></returns>
        public DataTable BuscarPorCodigoDoImportador(string Codigo)
        {
            PlataformaDAL plataformaDAL = new PlataformaDAL();
            return plataformaDAL.BuscarPorCodigoDoImportador(Codigo);
        }
        /// <summary>
        /// Retornar um DataTable com a lista de todas as plataformas passando por parametro o código da plataforma
        /// </summary>
        /// <param name="Codigo">Filtro pela descrição da plataforma</param>
        /// <returns></returns>
        public DataTable BuscarPorPlataforma(string Descricao)
        {
            PlataformaDAL plataformaDAL = new PlataformaDAL();
            return plataformaDAL.BuscarPorCodigoDoImportador(Descricao);
        }
        /// <summary>
        /// Retornar um DataTable com a lista de todas as plataformas passando por parametro a Sigla
        /// </summary>
        /// <param name="Codigo">Filtro pela Sigla</param>
        /// <returns></returns>
        public DataTable BuscarPorSigla(string Sigla)
        {
            PlataformaDAL plataformaDAL = new PlataformaDAL();
            return plataformaDAL.BuscarPorSigla(Sigla);
        }
        /// <summary>
        /// Retornar um DataTable com a lista de todas as plataformas ativas
        /// </summary>
        /// <param name="Codigo">Filtro pelo campo Excluido</param>
        /// <returns></returns>
        public DataTable PlataformasAtivas(Boolean SomenteRegistrosAtivos)
        {
            PlataformaDAL plataformaDAL = new PlataformaDAL();
            return plataformaDAL.PlataformasAtivas(SomenteRegistrosAtivos);
        }
        public bool Alterar(PlataformaDTO plataformaDTO)
        {
            //Fazendo as validações nos campos
            if (plataformaDTO.FK_Importador.Trim().Length == 0)
            {
                throw new Exception("O campo importador não pode estar vazio!");
            }
            if (plataformaDTO.Plataforma.Trim().Length == 0)
            {
                throw new Exception("O campo descrição da plataforma não pode estar vazio!");
            }
            PlataformaDAL objCae = new PlataformaDAL();
            return objCae.Alterar(plataformaDTO);
        }
        public bool Excluir(string Codigo)
        {
            PlataformaDAL plataformaDAL = new PlataformaDAL();
            try
            {
                return plataformaDAL.Excluir(Codigo);
            }
            catch
            {
                return false;
            }
        }
        public bool Incluir(PlataformaDTO plataformaDTO)
        {
            //Fazendo as validações nos campos
            if (plataformaDTO.FK_Importador.Trim().Length == 0)
            {
                throw new Exception("O campo importador não pode estar vazio!");
            }
            if (plataformaDTO.Plataforma.Trim().Length == 0)
            {
                throw new Exception("O campo descrição da plataforma não pode estar vazio!");
            }
            PlataformaDAL objDAL = new PlataformaDAL();
            return objDAL.Incluir(plataformaDTO);
        }

    }
}
