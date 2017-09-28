using System;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;

namespace MS2000WEB.Models.Repository
{
    public class AcessoGruposRepository : IAcessoGruposRepository
    {
        MS2000Context context = new MS2000Context();

        public IQueryable<AcessoGrupos> All
        {
            get { return context.AcessoGrupos; }
        }

        public IQueryable<AcessoGrupos> AllIncluding(params Expression<Func<AcessoGrupos, object>>[] includeProperties)
        {
            IQueryable<AcessoGrupos> query = context.AcessoGrupos;
            foreach (var includeProperty in includeProperties)
            {
                query = query.Include(includeProperty);
            }
            return query;
        }

        public AcessoGrupos Find(int id)
        {
            return context.AcessoGrupos.Find(id);
        }

        public void InsertOrUpdate(AcessoGrupos acessogrupos)
        {
            if (acessogrupos.PK_AcessoGrupo == default(int))
            {
                // New entity
                context.AcessoGrupos.Add(acessogrupos);
            }
            else
            {
                // Existing entity
                context.Entry(acessogrupos).State = EntityState.Modified;                
            }
        }

        public IQueryable<AcessoGrupos> GetGruposByNome(string nome)
        {
            return context.AcessoGrupos.Where(g => g.Descricao.StartsWith(nome));
        }

        public void Delete(int id)
        {
            var acessogrupos = context.AcessoGrupos.Find(id);
            context.AcessoGrupos.Remove(acessogrupos);
        }

        public void Save()
        {
            context.SaveChanges();
        }

        //public void Dispose()
        //{
        //    context.Dispose();
        //}
        private bool _disposed = false;

        protected virtual void Dispose(bool disposing)
        {
            if (!_disposed)
            {
                if (disposing)
                {
                    context.Dispose();
                }
                // Now disposed of any unmanaged objects
                // ...
                _disposed = true;
            }
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }

    public interface IAcessoGruposRepository : IDisposable
    {
        IQueryable<AcessoGrupos> All { get; }
        IQueryable<AcessoGrupos> AllIncluding(params Expression<Func<AcessoGrupos, object>>[] includeProperties);
        AcessoGrupos Find(int id);
        IQueryable<AcessoGrupos> GetGruposByNome(string nome);
        void InsertOrUpdate(AcessoGrupos acessogrupos);
        void Delete(int id);
        void Save();
    }
}