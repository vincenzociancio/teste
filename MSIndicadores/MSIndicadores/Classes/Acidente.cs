using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MSIndicadores.Model;
using System.Configuration;
using System.Data.SqlClient;
using System.Data.EntityClient;
using System.IO;

namespace MSIndicadores
{
    public class Acidente 
    {   

        public static List<Frequencia_Acidente> GetRecord( )
        {
            StreamReader sr = new StreamReader(MSIndicadores.Properties.Settings.Default.Setting);   
            string connectionString = sr.ReadLine(); 
            SqlConnectionStringBuilder scsb = new SqlConnectionStringBuilder(connectionString); 
            EntityConnectionStringBuilder ecb = new EntityConnectionStringBuilder();
            ecb.Metadata = "res://*/Model.modelAcidente.csdl|res://*/Model.modelAcidente.ssdl|res://*/Model.modelAcidente.msl";
            ecb.Provider = "System.Data.SqlClient";
            ecb.ProviderConnectionString = scsb.ConnectionString;

            using (Entities dbx = new Entities(ecb.ConnectionString))
            {
               var query = dbx.Frequencia_Acidente.Where(c => c.Ano >= (DateTime.Now.Year-2));

               //   query.Where(c => c.Ano == 2013);

               return query.OrderBy(x => x.Ano).OrderBy(x => x.Mes).ToList();
            }
        }
    }
}