
namespace MS2000.Desktop.Classes
{
    public class Autorizacao
    {
        static public bool AccessoOK(AutorizacaoEspecifica obj)
        {
            bool _ok = false;
            int _idAutorizacaoEspecifica;

            if (AutorizacaoEspecifica.Existe(obj, out _idAutorizacaoEspecifica))
            {
                _ok = AutorizacaoEspecificaUsuarios.GetAutorizacaoEspecificaUsuario(new AutorizacaoEspecificaUsuarios
                {
                    FK_AutorizacaoEspecifica = _idAutorizacaoEspecifica,
                    FK_Usuario = FrmPrincipal.PK_UsuarioLogado
                });
            }
            else
            {
                AutorizacaoEspecifica.Add(obj);
                _ok = false;
            }
            return _ok;
        }
    }
}
