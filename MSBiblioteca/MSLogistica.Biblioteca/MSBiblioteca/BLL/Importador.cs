using System;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;
using System.Collections.Generic;
//TODO: Pendências da classe importador
/*
 * Pendências
 * Na funcionalidade Gravar existe uma update para a tabela importadores_radar verificar.
 * Na funcionalidade Ativar faz uma interface com proposta
 */
namespace MSBiblioteca.BLL
{
    /// <summary>
    /// Classe Importador
    /// </summary>
    public sealed class Importador : ImportadorDTO
    {
        ImportadorDAL objDAL = new ImportadorDAL();

        public Importador()
        {

        }

        public Importador(string codigo)
        {
            this.Codigo = codigo;
            this.Plataforma = new List<Plataforma>();
            this.Contrato = new List<Contrato>();

            Importador importador = new Importador();
            importador = this.BuscarCodigo(codigo);
            this.RazaoSocial = importador.RazaoSocial;
            this.Pais = importador.Pais;
            this.CnpjCpfCompleto = importador.CnpjCpfCompleto;
            this.CgcCpf = importador.CgcCpf;
            this.Endereco = importador.Endereco;
            this.Complemento = importador.Complemento;
            this.Bairro = importador.Bairro;
            this.Cidade = importador.Cidade;
            this.Cep = importador.Cep;
            this.Uf = importador.Uf;
            this.Estado = importador.Estado;
            this.InscricaoEstadual = importador.InscricaoEstadual;
        }

        /// <summary>
        /// Retornar um DataTable com a lista dos 10 últimos importadores
        /// </summary>
        /// <returns></returns>
        public DataTable Buscar()
        {
            return objDAL.Buscar();
        }
        /// <summary>
        /// Retorna uma lista de importador 
        /// </summary>
        /// <param name="SomenteRegistrosAtivos">Parametro que define se será mostrado apenas os registros Ativos (na tabela o campo Lixo)</param>
        /// <returns>DataTable</returns>
        public DataTable PreencherCombo(bool SomenteRegistrosAtivos = true)
        {
            return objDAL.PreencherCombo(SomenteRegistrosAtivos);
        }
        /// <summary>
        /// Retornar um DataTable com o código do importador passado por parametro
        /// </summary>
        /// <param name="Codigo">Filtrar pelo Codigo</param>
        /// <param name="SomenteRegistrosAtivos">Parametro que define se será mostrado apenas os registros Ativos (na tabela o campo Lixo)</param>
        /// <returns></returns>
        public Importador BuscarCodigo(string Codigo, bool SomenteRegistrosAtivos = true)
        {
            return objDAL.BuscarCodigo(Codigo, SomenteRegistrosAtivos);
        }
        /// <summary>
        /// Retornar um DataTable com a lista dos importadores sendo filtrado pela Razão Social
        /// </summary>
        /// <param name="RazaoSocial">Parametro que recebe a Razão Social para a aplicar o filtro na consulta</param>
        /// <param name="SomenteRegistrosAtivos">Parametro que define se será mostrado apenas os registros Ativos (na tabela o campo Lixo)</param>
        /// <returns></returns>
        public DataTable BuscarRazaoSocial(string RazaoSocial, bool SomenteRegistrosAtivos = true)
        {
            return objDAL.BuscarRazaoSocial(RazaoSocial, SomenteRegistrosAtivos);
        }
        /// <summary>
        /// Metodo para alterar um Importador existente.
        /// </summary>
        /// <param name="importadorDTO">Classe Importador preenchida.</param>
        /// <returns>Boolean</returns>
        public bool Alterar(ImportadorDTO importadorDTO)
        {
            //Fazendo as validações nos campos
            if (importadorDTO.Codigo.Trim().Length == 0)
            {
                throw new Exception("O campo código não pode estar vazio!");
            }
            if (importadorDTO.RazaoSocial.Trim().Length == 0)
            {
                throw new Exception("O campo razão social não pode estar vazio!");
            }
            if (importadorDTO.CnpjCpfCompleto.Trim().Length == 0)
            {
                throw new Exception("O campo CNPJ / CPF não pode estar vazio!");
            }

            return objDAL.Alterar(importadorDTO);
        }
        /// <summary>
        /// Método para excluir um Importador.
        /// </summary>
        /// <param name="Codigo">Código do Importador</param>
        /// <returns>Verdadeiro/Falso</returns>
        public bool Excluir(string Codigo)
        {
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
        /// Metodo para Incluir um novo Importador, todo novo importador é cadastrado desativo (Ativo = 0) por causa do cadastro de proposta.
        /// </summary>
        /// <param name="importadorDTO">Classe Importador com o campo código vazio.</param>
        /// <returns>O código do novo Importador</returns>
        public string Incluir(ImportadorDTO importadorDTO)
        {
            //Fazendo as validações nos campos
            if (importadorDTO.RazaoSocial.Trim().Length == 0)
            {
                throw new Exception("O campo razão social não pode estar vazio!");
            }
            if (importadorDTO.CnpjCpfCompleto.Trim().Length == 0)
            {
                throw new Exception("O campo CGC / CNPJ não pode estar vazio!");
            }
            if (importadorDTO.CgcCpf.Trim().Length == 0)
            {
                throw new Exception("O campo CGC / CNPJ não pode estar vazio!");
            }

            return objDAL.Incluir(importadorDTO);
        }
        /// <summary>
        /// Metodo para a funcionalidade de imprimir
        /// </summary>
        /// <param name="SomenteRegistrosAtivos">Parametro que define se será mostrado apenas os registros Ativos</param>
        /// <returns>DataTable</returns>
        public DataTable Imprimir(bool SomenteRegistrosAtivos = true)
        {
            return objDAL.Imprimir(SomenteRegistrosAtivos);
        }
        /// <summary>
        /// Método para desativar um importador, na tabela o campo ativo recebe 0.
        /// </summary>
        /// <param name="Codigo">Código do Importador</param>
        /// <returns>Verdadeiro/Falso</returns>
        public bool Desativar(string Codigo)
        {
            try
            {
                return objDAL.Desativar(Codigo);
            }
            catch
            {
                return false;
            }
        }
        /// <summary>
        /// Método para ativar um importador, na tabela o campo ativo recebe 1.
        /// </summary>
        /// <param name="Codigo">Código do Importador</param>
        /// <returns>Verdadeiro/Falso</returns>
        public bool Ativar(string Codigo)
        {
            // TODO: Faz interface com a tela de proposta, um importador tem que ter uma prosposta            
            try
            {
                return objDAL.Ativar(Codigo);
            }
            catch
            {
                return false;
            }
        }

        public List<Plataforma> BuscarPlataformas(string pk_importador)
        {
            return objDAL.BuscarPlataformas(pk_importador);
        }

        public List<Contrato> BuscarContratos(string pk_importador, string pk_contrato = "")
        {
            return objDAL.BuscarContratos(pk_importador, pk_contrato);
        }

        public override IList<Plataforma> Plataforma
        {
            get
            {
                return this.BuscarPlataformas(this.Codigo);
            }
            set
            {
                base.Plataforma = value;
            }
        }

        public override IList<Contrato> Contrato
        {
            get
            {
                return this.BuscarContratos(this.Codigo);
            }
            set
            {
                base.Contrato = value;
            }
        }

    }
}
