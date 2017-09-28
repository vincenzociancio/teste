using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Web;

namespace MS2000WEB.Models.Repository
{
    public class AcessoGrupoUsuarioRepository : IAcessoGrupoUsuarioRepository, IDisposable
    {
        private MS2000Context context;

        public AcessoGrupoUsuarioRepository(MS2000Context context)
        {
            this.context = context;
        }

        public IEnumerable<AcessoGrupoUsuario> GetGrupoUsuarioByUsuario(string usuario)
        {
            return context.AcessoGrupoUsuarios.Where(g => g.FK_Usuario.ToLower() == usuario.ToLower()).ToList();
        }

        public IQueryable<AcessoGrupoUsuario> All
        {
            get { return context.AcessoGrupoUsuarios; }
        }

        public IQueryable<AcessoGrupoUsuario> AllIncluding(params Expression<Func<AcessoGrupoUsuario, object>>[] includeProperties)
        {
            IQueryable<AcessoGrupoUsuario> query = context.AcessoGrupoUsuarios;
            foreach (var includeProperty in includeProperties)
            {
                query = query.Include(includeProperty);
            }
            return query;
        }

        public AcessoGrupoUsuario Find(int id)
        {
            return context.AcessoGrupoUsuarios.Find(id);
        }

        public void InsertOrUpdate(AcessoGrupoUsuario acessogrupousuario)
        {
            if (acessogrupousuario.PK_GrupoUsuario == default(int))
            {
                // New entity
                context.AcessoGrupoUsuarios.Add(acessogrupousuario);
            }
            else
            {
                // Existing entity
                context.Entry(acessogrupousuario).State = EntityState.Modified;
            }
        }

        public void Delete(int id)
        {
            var acessogrupousuario = context.AcessoGrupoUsuarios.Find(id);
            context.AcessoGrupoUsuarios.Remove(acessogrupousuario);
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

    public interface IAcessoGrupoUsuarioRepository : IDisposable
    {
        IEnumerable<AcessoGrupoUsuario> GetGrupoUsuarioByUsuario(string usuario);
        IQueryable<AcessoGrupoUsuario> All { get; }
        IQueryable<AcessoGrupoUsuario> AllIncluding(params Expression<Func<AcessoGrupoUsuario, object>>[] includeProperties);
        AcessoGrupoUsuario Find(int id);
        void InsertOrUpdate(AcessoGrupoUsuario acessogrupousuario);
        void Delete(int id);
        void Save();
    }
}