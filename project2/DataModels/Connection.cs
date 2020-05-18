using LinqToDB.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace project2.DataModels
{
    public class ConnectionStringSettings : IConnectionStringSettings
    {
        public string ConnectionString { get; set; }
        public string Name { get; set; }
        public string ProviderName { get; set; }
        public bool IsGlobal => false;
    }

    public class Connection : ILinqToDBSettings
    {
        public IEnumerable<IDataProviderSettings> DataProviders => Enumerable.Empty<IDataProviderSettings>();

        public string DefaultConfiguration => "PostgreSQL";

        public string DefaultDataProvider => "PostgreSQL";

        public IEnumerable<IConnectionStringSettings> ConnectionStrings
        {
            get
            {
                yield return
                    new ConnectionStringSettings
                    {
                        Name = "paypl",
                        ProviderName = "PostgreSQL",
                        ConnectionString = @"User ID=postgres;Password=pp;Host=localhost;Port=5432;Database=paypl"
                    };
            }
        }
    }
}
