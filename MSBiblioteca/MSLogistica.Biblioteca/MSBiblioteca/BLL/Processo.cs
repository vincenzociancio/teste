using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using MSBiblioteca.Constante;
using System.Web.UI;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data.SqlClient;

namespace MSBiblioteca.BLL
{
    /// <summary>
    /// Classe Processos
    /// </summary>
    public class Processo : ProcessoDTO
    {
        readonly ProcessoDAL _processoDal = new ProcessoDAL();

        /// <summary>
        /// Construtor Padrão
        /// </summary>
        /// 
        public Processo()
        {
        }

        /// <summary>
        /// Construtor Personalizado
        /// </summary>
        /// <param name="codigo">Código do processo</param>
        public Processo(string codigo)
        {
            //Obtendo dados do processo
            var processo = BuscarCodigo(codigo);
            //Preenchendo campos do processo
            Codigo = processo.Codigo;
            Data = processo.Data;
            FK_Contrato = processo.FK_Contrato;
            FK_Importador = processo.FK_Importador;
            FK_Centro_Custo = processo.FK_Centro_Custo;
            Tipo = processo.Tipo;
            FK_Processos_Tipo_Urgencia = processo.FK_Processos_Tipo_Urgencia;
            Urgente = processo.Urgente;
            Tipo_Declaracao = processo.Tipo_Declaracao;
            FK_Local_Inventario = processo.FK_Local_Inventario;
            Codigo_Cliente = processo.Codigo_Cliente;
            Vinculado_Processo = processo.Vinculado_Processo;
            Processo_Vinculado = processo.Processo_Vinculado;
            Pagamento_Proporcional = processo.Pagamento_Proporcional;
            Fechado = processo.Fechado;
            Material_Usado = processo.Material_Usado;
        }

        /// <summary>
        /// Método que verifica se existe uma vinculação entre o código do Procurador passado por paramêtro com um processo.
        /// </summary>
        /// <param name="processo">Recebe o código do Procurador</param>
        /// <returns>Verdadeiro/Falso</returns>
        public Boolean ExisteVinculacaoProcurador(string processo)
        {
            return _processoDal.ExisteVinculacaoProcurador(processo);
        }

        /// <summary>
        /// Método que verifica a existência do Processo.
        /// </summary>
        /// <param name="processo">Recebe o código do MS (Processo)</param>
        /// <returns>Verdadeiro/Falso</returns>
        public Boolean ExisteProcesso(string processo)
        {
            return _processoDal.ExisteProcesso(processo);
        }

        public Processo BuscarCodigo(string processo)
        {
            return _processoDal.BuscarCodigo(processo);
        }

        /// <summary>
        /// Retornar um DataTable com a lista dos 10 Processos
        /// </summary>
        /// <returns></returns>
        public DataTable Buscar()
        {
            return _processoDal.Buscar();
        }

        public Contrato BuscarContrato(string contrato, string importador)
        {
            return _processoDal.BuscarContrato(contrato, importador);
        }

        public List<Fatura> BuscarFaturas(string processo)
        {
            return _processoDal.BuscarFaturas(processo);
        }

        public Importador BuscarImportador(string codigoImportador)
        {
            return _processoDal.BuscarImportador(codigoImportador);
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

        public Conhecimento BuscarConhecimento(string processo)
        {
            return _processoDal.BuscarConhecimento(processo);
        }

        /// Navegabilidade        
        public override Conhecimento Conhecimento
        {
            get
            {
                return this.BuscarConhecimento(this.Codigo);
            }
            set
            {
                base.Conhecimento = value;
            }
        }

        public override Contrato Contrato
        {
            get
            {
                return this.BuscarContrato(this.FK_Contrato, this.FK_Importador);
            }
            set
            {
                base.Contrato = value;
            }
        }

        public override IList<Fatura> Fatura
        {
            get
            {
                return this.BuscarFaturas(this.Codigo);
            }
            set
            {
                base.Fatura = value;
            }
        }

        protected void Validar(Processo obj)
        {
            // 22 - Reexportação
            // 23 - Exportação fícta
            // 6A - Transferência de regime - Bem Principal 
            // RM - RMBR - Autorização para Movimentação de Bem Admitido no REPETRO
            // PAD - Pedido de Autorização de Desembarque
            string[] arrayTipoProcessoContratoLocalObrigatorio = { "22", "6A", "23", "RM", "PD" };

            // 05 - Admissão temporaria
            string[] arrayTipoDeclaracaoContratoLocalObrigatorio = { "05" };

            if (string.IsNullOrEmpty(obj.Data.ToString()))
            {
                throw new Exception("Campo data é obrigatório!");
            }

            if (string.IsNullOrEmpty(obj.FK_Centro_Custo))
            {
                throw new Exception("Campo centro de custo é obrigatório!");
            }

            if (string.IsNullOrEmpty(obj.FK_Importador))
            {
                throw new Exception("Campo cliente é obrigatório!");
            }

            //_contrato/Local obrigatório
            if (arrayTipoProcessoContratoLocalObrigatorio.Contains(obj.Tipo))
            {
                if (string.IsNullOrEmpty(obj.FK_Contrato) || string.IsNullOrEmpty(obj.FK_Local_Inventario))
                {
                    throw new Exception("O tipo de processo requer o contrato e o local de inventário!");
                }
            }

            //Validando tipo de urgencia
            if (obj.Urgente >= 1 && obj.FK_Processos_Tipo_Urgencia <= 0)
            {
                throw new Exception("O processo está marcado com urgente, selecione o tipo de urgência!");
            }

            //Validando processo vinculado
            if (obj.Vinculado_Processo >= 1 && string.IsNullOrEmpty(obj.Processo_Vinculado))
            {
                throw new Exception("Informe o número do processo vinculado!");
            }

            //_contrato/Local obrigatório
            if (arrayTipoDeclaracaoContratoLocalObrigatorio.Contains(obj.Tipo_Declaracao))
            {
                if (string.IsNullOrEmpty(obj.FK_Contrato) || string.IsNullOrEmpty(obj.FK_Local_Inventario))
                {
                    throw new Exception("O tipo de declaração requer o contrato e o local de inventário!");
                }
            }
        }

        public bool Incluir(Processo obj)
        {
            Validar(obj);

            // Obtendo novo codigo
            obj.Codigo = this.ObterNovoCodigoProcesso();

            if (string.IsNullOrEmpty(obj.Codigo))
            {
                throw new Exception("Campo código é obrigatório!");
            }

            return _processoDal.Incluir(obj);
        }

        public bool Alterar(Processo obj)
        {
            Validar(obj);
            return _processoDal.Alterar(obj);
        }

        public string ObterNovoCodigoProcesso()
        {
            return _processoDal.ObterNovoCodigoProcesso();
        }

        public bool Vincular(string processoNew, string processoOld, bool copiar)
        {
            return _processoDal.Vincular(processoNew, processoOld, copiar);
        }

        public bool Desvincular(string processo)
        {
            return _processoDal.Desvincular(processo);
        }

    }
}

