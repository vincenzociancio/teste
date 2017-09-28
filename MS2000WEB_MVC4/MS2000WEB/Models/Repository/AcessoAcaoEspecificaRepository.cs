using System;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Linq;
using System.Linq.Expressions;

namespace MS2000WEB.Models.Repository
{
    public class AcessoAcaoEspecificaRepository : IAcessoAcaoEspecificaRepository
    {
        private MS2000Context context;

        public AcessoAcaoEspecificaRepository(MS2000Context context)
        {
            this.context = context;
        }

        public IQueryable<AcessoAcaoEspecifica> AllIncluding(params Expression<Func<AcessoAcaoEspecifica, object>>[] includeProperties)
        {
            IQueryable<AcessoAcaoEspecifica> query = context.AcessoAcaoEspecificas;
            foreach (var includeProperty in includeProperties)
            {
                query = query.Include(includeProperty);
            }
            return query;
        }

        public AcessoAcaoEspecifica GetAcessoAcaoEspecificaByChaveBusca(string controller, string action)
        {
            return context.AcessoAcaoEspecificas.FirstOrDefault(a => a.Controller.ToLower() == controller.ToLower() &&
                a.Action.ToLower() == action.ToLower());
        }

        public void Insert(AcessoAcaoEspecifica acessoAcaoEspecifica)
        {
            context.AcessoAcaoEspecificas.Add(acessoAcaoEspecifica);
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

    public interface IAcessoAcaoEspecificaRepository : IDisposable
    {
        AcessoAcaoEspecifica GetAcessoAcaoEspecificaByChaveBusca(string controller, string action);
        IQueryable<AcessoAcaoEspecifica> AllIncluding(params Expression<Func<AcessoAcaoEspecifica, object>>[] includeProperties);
        void Insert(AcessoAcaoEspecifica acessoAcaoEspecifica);
        void Save();
    }
}