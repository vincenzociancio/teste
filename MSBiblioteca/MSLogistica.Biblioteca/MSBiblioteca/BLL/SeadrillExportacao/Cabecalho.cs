using MSBiblioteca.DAL.SeadrillExportacao;
using MSBiblioteca.DTO.SeadrillExportacao;
using System.Collections.Generic;

namespace MSBiblioteca.BLL.SeadrillExportacao
{
    public class Cabecalho : CabecalhoDTO
    {
        readonly CabecalhoDAL _objDal;

        public Cabecalho()
        {
            _objDal = new CabecalhoDAL();
        }

        public List<Cabecalho> ObterCabecalho(string processo)
        {
            return _objDal.ObterCabecalho(processo);
        }
    }
}
