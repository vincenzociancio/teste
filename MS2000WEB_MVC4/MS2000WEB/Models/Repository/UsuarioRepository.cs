using System;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;

namespace MS2000WEB.Models.Repository
{
    public class UsuarioRepository : IUsuarioRepository
    {
        private string _mensagem;

        public string Mensagem
        {
            get { return _mensagem; }
        }

        private MS2000AcessoContext context;

        public UsuarioRepository(MS2000AcessoContext context)
        {
            this.context = context;
        }

        public bool ValidarUsuario(string usuario, string senha)
        {
            var user = GetUsuarioByID(usuario);

            if (user == null)
            {
                _mensagem = "Usuário não Cadastrado!";
                return false;
            }
            else
                if (user.Usuario1.ToLower() != usuario.ToLower())
                {
                    _mensagem = "O usuário e/ou a senha está incorreto .";
                    return false;
                }
                else
                    if (user.Senha != senha)
                    {
                        _mensagem = "O usuário e/ou a senha está incorreto .";
                        return false;
                    }
                    else
                        if (!user.Ativo)
                        {
                            _mensagem = "Usuário desativado!";
                            return false;
                        }
                        else
                            if (user.Usuario1.ToLower() == usuario.ToLower() && user.Senha == senha)
                            {
                                return true;
                            }
            return false;
        }

        public IQueryable<Usuario> All
        {
            get { return context.Usuarios; }
        }

        public IQueryable<Usuario> AllIncluding(params Expression<Func<Usuario, object>>[] includeProperties)
        {
            IQueryable<Usuario> query = context.Usuarios;
            foreach (var includeProperty in includeProperties)
            {
                query = query.Include(includeProperty);
            }
            return query;
        }

        public Usuario GetUsuarioByID(string id)
        {
            return context.Usuarios.FirstOrDefault(u => u.Usuario1.ToLower() == id.ToLower());
        }

        public void Insert(Usuario usuario)
        {
            context.Usuarios.Add(usuario);
        }

        public void Update(Usuario usuario)
        {
            context.Entry(usuario).State = EntityState.Modified;
        }

        public void Delete(string id)
        {
            var usuario = context.Usuarios.Find(id);
            context.Usuarios.Remove(usuario);
        }

        public void Save()
        {
            context.SaveChanges();
        }

        private bool disposed = false;

        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    context.Dispose();
                }
            }
            this.disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }

    public interface IUsuarioRepository : IDisposable
    {
        bool ValidarUsuario(string usuario, string senha);
        string Mensagem { get; }
        IQueryable<Usuario> All { get; }
        IQueryable<Usuario> AllIncluding(params Expression<Func<Usuario, object>>[] includeProperties);
        Usuario GetUsuarioByID(string id);
        void Insert(Usuario usuario);
        void Update(Usuario usuario);
        void Delete(string id);
        void Save();
    }
}