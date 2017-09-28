using System;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;
using System.Collections.Generic;

namespace MSBiblioteca.BLL
{
    /// <summary>
    /// Classe Contrato
    /// </summary>
    public class Contrato : ContratoDTO
    {
        ContratoDAL contratoDAL = new ContratoDAL();
        string local;

        public Contrato()
        {
        }

        public Contrato(string pk_importador, string pk_contrato, string pk_local)
        {
            this.Importador = pk_importador;
            this.Contrato = pk_contrato;
            this.local = pk_local;
            this.LocalInventario = new List<LocalInventario>();
        }

        /// <summary>
        /// Retornar um DataTable com a lista dos 10 últimos Contratos
        /// </summary>
        /// <returns></returns>
        public DataTable Buscar()
        {
            return contratoDAL.Buscar();
        }

        public DataTable BuscarTodos()
        {
            return contratoDAL.Buscar();
        }

        public DataTable BuscarCodigo(string Codigo, bool SomenteRegistrosAtivos = true)
        {
            return contratoDAL.BuscarCodigo(Codigo, SomenteRegistrosAtivos);
        }

        public DataTable BuscarDescricao(string Descricao)
        {
            return BuscarDescricao(Descricao);
        }

        public bool Alterar(ContratoDTO contratoDTO)
        {
            //Fazendo as validações nos campos
            if (contratoDTO.Contrato.Trim().Length == 0)
            {
                throw new Exception("O campo contrato não pode estar vazio!");
            }
            if (contratoDTO.Descricao.Trim().Length == 0)
            {
                throw new Exception("O campo descrição não pode estar vazio!");
            }

            return contratoDAL.Alterar(contratoDTO);
        }

        public bool Incluir(ContratoDTO contratoDTO)
        {
            //Fazendo as validações nos campos
            if (contratoDTO.Contrato.Trim().Length == 0)
            {
                throw new Exception("O campo contrato não pode estar vazio!");
            }
            if (contratoDTO.Descricao.Trim().Length == 0)
            {
                throw new Exception("O campo descrição não pode estar vazio!");
            }

            return contratoDAL.Alterar(contratoDTO);
        }

        public bool Excluir(string Contrato, string Importador)
        {
            try
            {
                return contratoDAL.Excluir(Contrato, Importador);
            }
            catch
            {
                return false;
            }
        }

        public List<LocalInventario> BuscarLocaisDeInventario(string pk_importador, string pk_contrato, string pk_local)
        {
            return contratoDAL.BuscarLocaisDeInventario(pk_importador, pk_contrato, pk_local);
        }

        public override IList<LocalInventario> LocalInventario
        {
            get
            {
                return this.BuscarLocaisDeInventario(this.Importador, this.Contrato, local);
            }
            set
            {
                base.LocalInventario = value;
            }
        }
    }
}
