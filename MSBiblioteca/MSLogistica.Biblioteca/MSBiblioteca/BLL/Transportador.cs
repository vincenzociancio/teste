using System;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;

namespace MSBiblioteca.BLL
{
    /// <summary>
    /// Classe Transportadores
    /// </summary>
    public sealed class Transportador : TransportadorDTO 
    {
        /// <summary>
        /// Retornar um DataTable com a lista dos 10 últimos transportadores
        /// </summary>
        /// <returns></returns>
        public DataTable Buscar()
        {
            TransportadorDAL transportadoresDAL = new TransportadorDAL();
            return transportadoresDAL.Buscar();
        }
        /// <summary>
        /// Retornar um DataTable com o código do transportadores passado por parametro
        /// </summary>
        /// <param name="Codigo">Filtro pelo código</param>
        /// <param name="SomenteRegistrosAtivos">Parametro que define se será mostrado apenas os registros Ativos (na tabela o campo Lixo)</param>
        /// <returns></returns>
        public DataTable BuscarCodigo(string Codigo, bool SomenteRegistrosAtivos = true)
        {
            TransportadorDAL transportadoresDAL = new TransportadorDAL();
            return transportadoresDAL.BuscarCodigo(Codigo, SomenteRegistrosAtivos);
        }
        /// <summary>
        /// Retornar um DataTable com a lista dos transportadores sendo filtrado pela Razão Social
        /// </summary>
        /// <param name="RazaoSocial">Parametro que recebe a Razão Social para a aplicar o filtro na consulta</param>
        /// <param name="SomenteRegistrosAtivos">Parametro que define se será mostrado apenas os registros Ativos (na tabela o campo Lixo)</param>
        /// <returns></returns>
        public DataTable BuscarRazaoSocial(string RazaoSocial, bool SomenteRegistrosAtivos = true)
        {
            TransportadorDAL transportadoresDAL = new TransportadorDAL();
            return transportadoresDAL.BuscarRazaoSocial(RazaoSocial, SomenteRegistrosAtivos);
        }
        /// <summary>
        /// Metodo para alterar um transportador existente.
        /// </summary>
        /// <param name="ParametroProcurador">Classe transportador preenchida.</param>
        /// <returns>Boolean</returns>
        public bool Alterar(TransportadorDTO transportadoresDTO)
        {
            //Fazendo as validações nos campos
            if (transportadoresDTO.Codigo.Trim().Length == 0)
            {
                throw new Exception("O campo código não pode estar vazio!");
            }
            if (transportadoresDTO.RazaoSocial.Trim().Length == 0)
            {
                throw new Exception("O campo razão social não pode estar vazio!");
            }
            if (transportadoresDTO.CgcCpf.Trim().Length == 0)
            {
                throw new Exception("O campo CNPJ / CPF não pode estar vazio!");
            }
            TransportadorDAL objCae = new TransportadorDAL();
            return objCae.Alterar(transportadoresDTO);
        }
        /// <summary>
        /// Método para excluir um transportador.
        /// </summary>
        /// <param name="Codigo">Código do transportador</param>
        /// <returns>Verdadeiro/Falso</returns>
        public bool Excluir(string Codigo)
        {
            TransportadorDAL transportadoresDAL = new TransportadorDAL();
            try
            {
                return transportadoresDAL.Excluir(Codigo);
            }
            catch
            {
                return false;
            }
        }
        /// <summary>
        /// Metodo para Incluir um novo transportador.
        /// </summary>
        /// <param name="ParametroProcurador">Classe transportador com o campo código vazio.</param>
        /// <returns>O código do novo transportador</returns>
        public string Incluir(TransportadorDTO transportadoresDTO)
        {
            //Fazendo as validações nos campos
            if (transportadoresDTO.RazaoSocial.Trim().Length == 0)
            {
                throw new Exception("O campo razão social não pode estar vazio!");
            }
            if (transportadoresDTO.CgcCpf.Trim().Length == 0)
            {
                throw new Exception("O campo CGC / CNPJ não pode estar vazio!");
            }
            TransportadorDAL objDAL = new TransportadorDAL();
            return objDAL.Incluir(transportadoresDTO);
        }
    }
}
