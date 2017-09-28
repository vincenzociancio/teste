using MSBiblioteca.DAL;
using MSBiblioteca.DTO;
using System;

namespace MSBiblioteca.BLL
{
    public class FollowUp : FollowUpDTO
    {
        readonly FollowUpDAL _objDal;

        public FollowUp()
        {
            _objDal = new FollowUpDAL();
        }

        public bool Incluir(FollowUp obj)
        {
            if (string.IsNullOrEmpty(obj.FK_Processo))
            {
                throw new Exception("O processo não pode estar vazio!");
            }

            if (string.IsNullOrEmpty(obj.FK_Usuario))
            {
                throw new Exception("O usuário não pode estar vazio!");
            }

            if (string.IsNullOrEmpty(obj.CodigoEvento))
            {
                 throw new Exception("O código do evento não pode estar vazio!"); 
            }

            if (string.IsNullOrEmpty(obj.ObsEspecifica))
            {
                obj.ObsEspecifica = "";
            }

            if (string.IsNullOrEmpty(obj.HoraFinal))
            {
                obj.HoraFinal = "";
            }

            if (string.IsNullOrEmpty(obj.Link))
            {
                obj.Link = "";
            }

            if (string.IsNullOrEmpty(obj.Hora))
            {
                obj.Hora = "";
            }

            return _objDal.Incluir(obj);
        }
    }
}
