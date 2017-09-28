using System;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;

namespace MSBiblioteca.BLL
{
    /// <summary>
    /// Classe Procurador
    /// </summary>
    public sealed class Procurador : ProcuradorDTO
    {
        public Procurador(){}
        /// <summary>
        /// Retornar um DataTable com a lista dos 10 últimos procuradores
        /// </summary>
        /// <returns></returns>
        public DataTable Buscar()
        {
            ProcuradorDAL procuradorDAL = new ProcuradorDAL();
            DataTable objTable = null;            
            objTable = procuradorDAL.Buscar();
            return objTable;
        }
        /// <summary>
        /// Retorna um DataTable com todos os procuradores
        /// </summary>
        /// <param name="SomenteRegistrosAtivos">bool</param>
        /// <returns>DataTable</returns>
        public DataTable BuscarTodos()
        {
            ProcuradorDAL procuradorDAL = new ProcuradorDAL();
            DataTable objTable = null;
            objTable = procuradorDAL.BuscarTodos();
            return objTable;
        }

        /// <summary>
        /// Retornar um DataTable com o código do procurador passado por parametro
        /// </summary>
        /// <param name="Codigo">Parametro que recebe a Codigo para a aplicar o filtro na consulta</param>
        /// <param name="SomenteRegistrosAtivos">Parametro que define se será mostrado apenas os registros Ativos (na tabela o campo Lixo)</param>
        /// <returns></returns>
        public DataTable BuscarCodigo(string Codigo, bool SomenteRegistrosAtivos = true)
        {
            ProcuradorDAL procuradorDAL = new ProcuradorDAL();
            return procuradorDAL.BuscarCodigo(Codigo, SomenteRegistrosAtivos);
        }
        /// <summary>
        /// Metodo para Incluir um novo Procurador, a propriedade Codigo deverá estar em branco
        /// </summary>
        /// <param name="ParametroProcurador">Classe procurador</param>
        /// <returns>O código do novo Procurador</returns>
        public string Incluir(Procurador ParametroProcurador)
        {
            //Fazendo as validações nos campos
            if (ParametroProcurador.RazaoSocial.Length == 0)
            {
                throw new Exception("O campo Razão Social está vazio!");
            }
            if (ParametroProcurador.CgcCpf.Length == 0)
            {
                throw new Exception("O campo CGC / CPF não pode estar vazio!");
            }
            ProcuradorDAL procuradorDAL = new ProcuradorDAL();
            return procuradorDAL.Incluir(ParametroProcurador);
        }
        /// <summary>
        /// Metodo para Alterar um Procurador, a propriedade Codigo deverá estar com a PK
        /// </summary>
        /// <param name="ParametroProcurador">Classe procurador</param>
        /// <returns>Boolean</returns>
        public Boolean Alterar (Procurador ParametroProcurador)
        {
            //Fazendo as validações nos campos
            if (ParametroProcurador.RazaoSocial.Length == 0)
            {
                throw new Exception("O campo Razão Social está vazio!");
            }
            if (ParametroProcurador.CgcCpf.Length == 0)
            {
                throw new Exception("O campo CGC / CPF não pode estar vazio!");
            }
            ProcuradorDAL objDAL = new ProcuradorDAL();
            return objDAL.Alterar(ParametroProcurador);
        }
        /// <summary>
        /// Retornar um DataTable com a lista dos procuradores sendo filtrado pela Razão Social
        /// </summary>
        /// <returns></returns>
        public DataTable BuscarRazaoSocial(string RazaoSocial, bool SomenteRegistrosAtivos = true)
        {
            ProcuradorDAL procuradorDAL = new ProcuradorDAL();
            return procuradorDAL.BuscarRazaoSocial(RazaoSocial, SomenteRegistrosAtivos);
        }
        /// <summary>
        /// Método para excluir um procurador, onde primeiro é verificado se existe um processo vinculado ao mesmo.
        /// </summary>
        /// <param name="Codigo">Código do Procurados</param>
        /// <returns>Verdadeiro/Falso</returns>
        public Boolean Excluir(string Codigo)
        {
            Processo processo = new Processo();
            ProcuradorDAL procuradorDAL = new ProcuradorDAL();
            try
            {
                return procuradorDAL.Excluir(Codigo);
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
