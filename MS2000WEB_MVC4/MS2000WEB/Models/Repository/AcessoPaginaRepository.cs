using System;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Linq;
using System.Linq.Expressions;

namespace MS2000WEB.Models.Repository
{
    public class AcessoPaginaRepository : IAcessoPaginaRepository
    {
        private MS2000Context context;

        public AcessoPaginaRepository(MS2000Context context)
        {
            this.context = context;
        }

        public IQueryable<AcessoPagina> AllIncluding(params Expression<Func<AcessoPagina, object>>[] includeProperties)
        {
            IQueryable<AcessoPagina> query = context.AcessoPaginas;
            foreach (var includeProperty in includeProperties)
            {
                query = query.Include(includeProperty);
            }
            return query;
        }

        public AcessoPagina GetAcessoPaginaByController(string controller)
        {
            return context.AcessoPaginas.FirstOrDefault(a => a.Controller.ToLower() == controller.ToLower());
        }

        public void Insert(AcessoPagina acessoPagina)
        {
            context.AcessoPaginas.Add(acessoPagina);
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

    public interface IAcessoPaginaRepository : IDisposable
    {
        AcessoPagina GetAcessoPaginaByController(string controller);
        IQueryable<AcessoPagina> AllIncluding(params Expression<Func<AcessoPagina, object>>[] includeProperties);
        void Insert(AcessoPagina acessoPagina);
        void Save();
    }
}