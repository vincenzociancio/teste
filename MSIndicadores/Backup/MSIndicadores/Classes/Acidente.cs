using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MSIndicadores.Model;
using System.Configuration;
using System.Data.SqlClient;
using System.Data.EntityClient;

namespace MSIndicadores
{
    public class Acidente 
    {

        public static List<Frequencia_Acidente> GetRecord( )
        {

            string connectionString = ConfigurationManager.ConnectionStrings["Msconn"].ConnectionString; 
            SqlConnectionStringBuilder scsb = new SqlConnectionStringBuilder(connectionString); 
            EntityConnectionStringBuilder ecb = new EntityConnectionStringBuilder();
            ecb.Metadata = "res://*/Model.modelAcidente.csdl|res://*/Model.modelAcidente.ssdl|res://*/Model.modelAcidente.msl";
            ecb.Provider = "System.Data.SqlClient";
            ecb.ProviderConnectionString = scsb.ConnectionString;

            using (Entities dbx = new Entities(ecb.ConnectionString))
            {
                IQueryable<Frequencia_Acidente> query = dbx.Frequencia_Acidente.AsQueryable<Frequencia_Acidente>();

                query.Where(c => c.Ano == DateTime.Now.Year);
             
                return query.OrderBy(x => x.Mes).ToList();
            }
        }
    }
}