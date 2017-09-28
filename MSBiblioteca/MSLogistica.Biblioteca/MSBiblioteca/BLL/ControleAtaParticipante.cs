using System;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;

namespace MSBiblioteca.BLL
{
    /// <summary>
    /// Classe ControleAtasParticipante
    /// </summary>
    public sealed class ControleAtaParticipante : ControleAtaParticipanteDTO
    {
        /// <summary>
        /// Metodo para Incluir um novo ControleAtasParticipante.
        /// </summary>
        /// <param name="objDTO">Classe ControleAtasParticipante com os campos preenchidos, menos o PKAtasParticipante.</param>
        /// <returns>Int</returns>
        public int Incluir(ControleAtaParticipanteDTO objDTO)
        {
            //Fazendo as validações nos campos
            if (String.IsNullOrEmpty(objDTO.FKUsuario))
            {
                throw new Exception("O campo Usuário não pode estar vazio!");
            }
            if (objDTO.FKAtas < 1)
            {
                throw new Exception("O campo FKAtas deve ser preenchido!");
            }
            ControleAtaParticipanteDAL objDAL = new ControleAtaParticipanteDAL();
            return objDAL.Incluir(objDTO);
        }
        /// <summary>
        /// Método para excluir um ControleAtasParticipante.
        /// </summary>
        /// <param name="PKAtaParticipante">PK do ControleAtasParticipante</param>
        /// <returns>Verdadeiro/Falso</returns>
        public bool Excluir(int PKAtaParticipante)
        {
            ControleAtaParticipanteDAL objDAL = new ControleAtaParticipanteDAL();
            try
            {
                return objDAL.Excluir(PKAtaParticipante);
            }
            catch
            {
                return false;
            }
        }
      
        /// <summary>
        /// Método onde o participante aceita a Ata.
        /// </summary>
        /// <param name="FKAta">Chave da ata</param>
        /// <param name="FKUsuario">Chave do usuário</param>
        /// <returns>Verdadeiro/Falso</returns>
        public bool Aceitar(int FKAta, string FKUsuario)
        {
            ControleAtaParticipanteDAL objDAL = new ControleAtaParticipanteDAL();
            try
            {
                return objDAL.Aceitar(FKAta, FKUsuario);
            }
            catch
            {
                return false;
            }
        }
        /// <summary>
        /// Retornar um DataTable com a lista dos ControleAtasParticipante
        /// </summary>
        /// <returns></returns>
        public DataTable Buscar()
        {
            ControleAtaParticipanteDAL objDAL = new ControleAtaParticipanteDAL();
            return objDAL.Buscar();
        }
        /// <summary>
        /// Retornar um DataTable com a lista dos ControleAtasParticipante sendo filtrado pela PKAta
        /// </summary>
        /// <param name="PKAtaParticipante">Filtro pelo PKAtaParticipante</param>
        /// <param name="SomenteRegistrosAtivos">Sendo true irá trazer somente os registros que o campo lixo for igual a zero</param>
        /// <returns></returns>
        public DataTable BuscarPKAta(int PKAtaParticipante, bool SomenteRegistrosAtivos = true)
        {
            ControleAtaParticipanteDAL objDAL = new ControleAtaParticipanteDAL();
            //Fazendo as validações no campo
            if (PKAtaParticipante > 0)
            {
                return objDAL.BuscarPKAta(PKAtaParticipante, SomenteRegistrosAtivos);
            }
            else
            {
                return null;
            }
        }
    }
}
