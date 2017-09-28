using MSBiblioteca.DAL.SeadrillExportacao;
using MSBiblioteca.DTO.SeadrillExportacao;
using System.Collections.Generic;

namespace MSBiblioteca.BLL.SeadrillExportacao
{
    public class Linha : LinhaDTO
    {
        readonly LinhaDAL _objDal;

        public Linha()
        {
            _objDal = new LinhaDAL();
        }

        public List<Linha> ObterLinhas(string processo)
        {
            return _objDal.ObterLinhas(processo);
        }
    }
}
