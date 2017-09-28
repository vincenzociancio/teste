using System;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Linq;
using System.Linq.Expressions;

namespace MS2000WEB.Models.Repository
{
    public class AcessoPaginaGrupoRepository : IAcessoPaginaGrupoRepository
    {
        private MS2000Context context;

        public AcessoPaginaGrupoRepository(MS2000Context context)
        {
            this.context = context;
        }

        public IQueryable<AcessoPaginaGrupo> AllIncluding(params Expression<Func<AcessoPaginaGrupo, object>>[] includeProperties)
        {
            IQueryable<AcessoPaginaGrupo> query = context.AcessoPaginaGrupoes;
            foreach (var includeProperty in includeProperties)
            {
                query = query.Include(includeProperty);
            }
            return query;
        }

        public void Insert(AcessoPaginaGrupo acessoPaginaGrupo)
        {
            context.AcessoPaginaGrupoes.Add(acessoPaginaGrupo);
        }

        public void Save()
        {
            try
            {
                context.SaveChanges();
            }
            catch (DbEntityValidationException e)
            {
                foreach (var error in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                    error.Entry.Entity.GetType().Name, error.Entry.State);
                    foreach (var ve in error.ValidationErrors)
                    {
                        Console.WriteLine("-Property: \"{0}\", Error: \"{1}\"",
                                                 ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }
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

    public interface IAcessoPaginaGrupoRepository : IDisposable
    {        
        IQueryable<AcessoPaginaGrupo> AllIncluding(params Expression<Func<AcessoPaginaGrupo, object>>[] includeProperties);
        void Insert(AcessoPaginaGrupo acessoPaginaGrupo);
        void Save();
    }
}