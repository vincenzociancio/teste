using System;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;
using System.Data.SqlClient;

namespace MSBiblioteca.BLL
{
     
    /// <summary>
    /// Classe Exportadores
    /// </summary>
    public sealed class Exportador : ExportadorDTO
    {
       ExportadorDAL ExportadorDAL = new ExportadorDAL();
        /// <summary>
        /// Retornar um DataTable com a lista dos 10 últimos exportadores
        /// </summary>
        /// <returns></returns>
        public DataTable Buscar()
        {
            ExportadorDAL exportadoresDAL = new ExportadorDAL();
            return exportadoresDAL.Buscar();
        }
        /// <summary>
        /// Retornar um DataTable com o código do exportador passado por parametro
        /// </summary>
        /// <param name="Codigo">Filtrar o registro pelo Codigo</param>
        /// <param name="SomenteRegistrosAtivos">Parametro que define se será mostrado apenas os registros Ativos (na tabela o campo Lixo)</param>
        /// <returns></returns>
        public DataTable BuscarCodigo(string Codigo, bool SomenteRegistrosAtivos = true)
        {
            ExportadorDAL exportadoresDAL = new ExportadorDAL();
            return exportadoresDAL.BuscarCodigo(Codigo, SomenteRegistrosAtivos);
        }
        /// <summary>
        /// Retornar um DataTable com a lista dos exportadores sendo filtrado pela Razão Social
        /// </summary>
        /// <param name="RazaoSocial">Parametro que recebe a Razão Social para a aplicar o filtro na consulta</param>
        /// <param name="SomenteRegistrosAtivos">Parametro que define se será mostrado apenas os registros Ativos (na tabela o campo Lixo)</param>
        /// <returns></returns>
        public DataTable BuscarRazaoSocial(string RazaoSocial, bool SomenteRegistrosAtivos = true)
        {
            ExportadorDAL exportadoresDAL = new ExportadorDAL();
            return exportadoresDAL.BuscarRazaoSocial(RazaoSocial, SomenteRegistrosAtivos);
        }
        /// <summary>
        /// Metodo para alterar um Exportador existente.
        /// </summary>
        /// <param name="ParametroProcurador">Classe Exportador preenchida.</param>
        /// <returns>Boolean</returns>
        public bool Alterar(ExportadorDTO exportadoresDTO)
        {
            //Fazendo as validações nos campos
            if (exportadoresDTO.Codigo.Trim().Length == 0)
            {
                throw new Exception("O campo código não pode estar vazio!");
            }
            if (exportadoresDTO.RazaoSocial.Trim().Length == 0)
            {
                throw new Exception("O campo razão social não pode estar vazio!");
            }
            if (exportadoresDTO.CgcCpf.Trim().Length == 0)
            {
                throw new Exception("O campo CNPJ / CPF não pode estar vazio!");
            }
            ExportadorDAL objCae = new ExportadorDAL();
            return objCae.Alterar(exportadoresDTO);
        }
        /// <summary>
        /// Método para excluir um Exportador.
        /// </summary>
        /// <param name="Codigo">Código do Exportador</param>
        /// <returns>Verdadeiro/Falso</returns>
        public bool Excluir(string Codigo)
        {
            ExportadorDAL exportadoresDAL = new ExportadorDAL();
            try
            {
                return exportadoresDAL.Excluir(Codigo);
            }
            catch
            {
                return false;
            }
        }
        /// <summary>
        /// Metodo para Incluir um novo Exportador.
        /// </summary>
        /// <param name="ParametroProcurador">Classe Exportador com o campo código vazio.</param>
        /// <returns>O código do novo Exportador</returns>
        public string Incluir(ExportadorDTO exportadoresDTO)
        {
            //Fazendo as validações nos campos
            if (exportadoresDTO.RazaoSocial.Trim().Length == 0)
            {
                throw new Exception("O campo razão social não pode estar vazio!");
            }
            if (exportadoresDTO.CgcCpf.Trim().Length == 0)
            {
                throw new Exception("O campo CGC / CNPJ não pode estar vazio!");
            }
            ExportadorDAL objDAL = new ExportadorDAL();
            return objDAL.Incluir(exportadoresDTO);
        }
        /// <summary>
        /// Retornar um DataTable com a lista dos Exportadores
        /// </summary>
        /// <returns>DataTable</returns>
        public DataTable Listar()
        {
            /// Instânciando
            ExportadorDAL objDAL = new ExportadorDAL();
            DataTable objTable = null;

            objTable = objDAL.Listar();

            return objTable;
        }
        public Importador BuscarImportador(string codigo_importador)
        {
            return ExportadorDAL.BuscarImportador(codigo_importador);
        }
        /// Navegabilidade        
        public override Importador Importador
        {
            get
            {
                return this.BuscarImportador(this.FK_Importador);
            }
            set
            {
                base.Importador = value;
            }
        }
    }
}
