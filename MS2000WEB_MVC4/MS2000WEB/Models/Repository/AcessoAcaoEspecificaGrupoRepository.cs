using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Web;

namespace MS2000WEB.Models.Repository
{ 
    public class AcessoAcaoEspecificaGrupoRepository : IAcessoAcaoEspecificaGrupoRepository
    {
        MS2000Context context = new MS2000Context();

        public AcessoAcaoEspecificaGrupoRepository(MS2000Context context)
        {
            this.context = context;
        }

        public IQueryable<AcessoAcaoEspecificaGrupo> All
        {
            get { return context.AcessoAcaoEspecificaGrupoes; }
        }

        public IQueryable<AcessoAcaoEspecificaGrupo> AllIncluding(params Expression<Func<AcessoAcaoEspecificaGrupo, object>>[] includeProperties)
        {
            IQueryable<AcessoAcaoEspecificaGrupo> query = context.AcessoAcaoEspecificaGrupoes;
            foreach (var includeProperty in includeProperties) {
                query = query.Include(includeProperty);
            }
            return query;
        }

        public AcessoAcaoEspecificaGrupo Find(int id)
        {
            return context.AcessoAcaoEspecificaGrupoes.Find(id);
        }

        public void InsertOrUpdate(AcessoAcaoEspecificaGrupo acessoacaoespecificagrupo)
        {
            if (acessoacaoespecificagrupo.PK_AcaoEspecificaGrupo == default(int)) {
                // New entity
                context.AcessoAcaoEspecificaGrupoes.Add(acessoacaoespecificagrupo);
            } else {
                // Existing entity
                context.Entry(acessoacaoespecificagrupo).State = EntityState.Modified;
            }
        }

        public void Delete(int id)
        {
            var acessoacaoespecificagrupo = context.AcessoAcaoEspecificaGrupoes.Find(id);
            context.AcessoAcaoEspecificaGrupoes.Remove(acessoacaoespecificagrupo);
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

    public interface IAcessoAcaoEspecificaGrupoRepository : IDisposable
    {
        IQueryable<AcessoAcaoEspecificaGrupo> All { get; }
        IQueryable<AcessoAcaoEspecificaGrupo> AllIncluding(params Expression<Func<AcessoAcaoEspecificaGrupo, object>>[] includeProperties);
        AcessoAcaoEspecificaGrupo Find(int id);
        void InsertOrUpdate(AcessoAcaoEspecificaGrupo acessoacaoespecificagrupo);
        void Delete(int id);
        void Save();
    }
}