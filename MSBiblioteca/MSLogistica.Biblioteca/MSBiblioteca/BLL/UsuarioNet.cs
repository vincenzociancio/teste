using System;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;
using System.Text;
using System.Threading;

namespace MSBiblioteca.BLL
{
    /// <summary>
    /// Classe UsuarioNet
    /// </summary>
    public sealed class UsuarioNet : UsuarioNetDTO
    {
        private const string SenhaCaracteresValidos = "abcdefghijklmnopqrstuvwxyz";
        private const string SenhaNumerosValidos = "1234567890";
        /// <summary>
        /// Retornar um DataTable com o UsuarioNet filtrando pelo usuario e CGC / CPF do importador
        /// </summary>
        /// <param name="Usuario">Filtro pelo usuario</param>
        /// <param name="ImportadorCGCCPF">Filtro pelo CGC / CPF do importador</param>
        /// <returns></returns>
        public DataTable Buscar(string ImportadorCGCCPF, string Usuario)
        {
            UsuarioNetDAL usuarionetDAL = new UsuarioNetDAL();
            return usuarionetDAL.Buscar(ImportadorCGCCPF, Usuario);
        }
        /// <summary>
        /// Retornar um DataTable com o UsuarioNet filtrando pelo CGC / CPF do importador
        /// </summary>
        /// <param name="ImportadorCGCCPF">Filtro pelo CGC / CPF do importador</param>
        /// <returns></returns>
        public DataTable Buscar(string ImportadorCGCCPF)
        {
            UsuarioNetDAL usuarionetDAL = new UsuarioNetDAL();
            return usuarionetDAL.Buscar(ImportadorCGCCPF);
        }
        /// <summary>
        /// Retornar um DataTable com o UsuarioNet filtrando pelo CGC / CPF do importador
        /// </summary>
        /// <param name="ImportadorCGCCPF">Filtro pelo CGC / CPF do importador</param>
        /// <param name="ApenasDITEC">Filtro pelo usuário DITEC</param>
        /// <returns></returns>
        public DataTable Buscar(string ImportadorCGCCPF, bool ApenasDITEC)
        {
            UsuarioNetDAL usuarionetDAL = new UsuarioNetDAL();
            return usuarionetDAL.Buscar(ImportadorCGCCPF, ApenasDITEC);
        }
        /// <summary>
        /// Metodo para Incluir um novo UsuariosNet, o campo senha não precisa ser preenchido.
        /// </summary>
        /// <param name="usuarioNetDTO">Classe UsuariosNet</param>
        /// <returns>Boolean</returns>
        public bool Incluir(UsuarioNetDTO usuarioNetDTO)
        {
            //Fazendo as validações nos campos
            if (usuarioNetDTO.CgcCpf.Trim().Length == 0)
            {
                throw new Exception("O campo CGC / CPF não pode estar vazio!");
            }
            if (usuarioNetDTO.Usuario.Trim().Length == 0)
            {
                throw new Exception("O campo usuario não pode estar vazio!");
            }
            if (usuarioNetDTO.NomeCompleto.Trim().Length == 0)
            {
                throw new Exception("O campo nome completo não pode estar vazio!");
            }
            if (usuarioNetDTO.Nivel.Trim().Length == 0)
            {
                throw new Exception("O campo nivel não pode estar vazio!");
            }
            UsuarioNetDAL objDAL = new UsuarioNetDAL();
            usuarioNetDTO.Senha = GerarNovasenha();
            return objDAL.Incluir(usuarioNetDTO);
        }
        /// <summary>
        /// Gera uma nova senha automatico
        /// </summary>
        /// <returns>string</returns>
        private string GerarNovasenha()
        {
            int valormaximoCaracteres = SenhaCaracteresValidos.Length;
            int valormaximoNumeros = SenhaNumerosValidos.Length;
            int tamanho = 6;
            Random random = new Random(unchecked((int) DateTime.Now.Ticks));
            StringBuilder senha = new StringBuilder(tamanho);
            for (int indice = 0; indice < (tamanho / 2); indice++)
            {
                senha.Append(SenhaCaracteresValidos[random.Next(0, valormaximoCaracteres)]);
                senha.Append(SenhaNumerosValidos[random.Next(0, valormaximoNumeros)]);
            }
            Thread.Sleep(25);
            return senha.ToString();
        }
        /// <summary>
        /// Metodo utilizado na tela de importadores, onde é verificado se usuário da receita estão cadastrados para acessar as informações do importador
        /// em questão.
        /// </summary>
        /// <param name="ImportadorCGCCPF">CGCCPF do importador</param>
        /// <returns>verdadeiro ou falso</returns>
        public bool RepetroGerarSenhas(string ImportadorCGCCPF)
        {
            DataTable TBUsuariosBR = null;
            UsuarioBeneficioRepetro usuariosBeneficioRepetro = new UsuarioBeneficioRepetro();
            UsuarioNet usuarioNET = new UsuarioNet();
            UsuarioNetDAL objDAL = new UsuarioNetDAL();
            try
            {
                TBUsuariosBR = usuariosBeneficioRepetro.BuscarTodosUsuarios();
                foreach (DataRow drw in TBUsuariosBR.Rows)
                {
                    //Se o usuário não esta cadastro para este importador, retorna False.
                    if (objDAL.VerificaSeExiste(ImportadorCGCCPF, Convert.ToString(drw["Usuario"])) == false)
                    {
                        usuarioNET.CgcCpf = ImportadorCGCCPF;
                        usuarioNET.Usuario = Convert.ToString(drw["Usuario"]);
                        usuarioNET.NomeCompleto = Convert.ToString(drw["Nome_Completo"]);
                        usuarioNET.Nivel = "3";
                        usuarioNET.Incluir(usuarioNET);
                    }
                }
                return true;
            }
            catch (Exception)
            {
                return false;
                throw;
            }
        }
    }
}
