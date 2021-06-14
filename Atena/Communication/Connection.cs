using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace MeterFarm.Comunication
{
    class Connection
    {
        public ConnectionState State { get; internal set; }

        public void Conexao()
            {
            var ConnectionString = "Server =  localhost; Database =  MuretaDatabase ; Uid = Mureta; Pwd = 1q2w3e4r5t6y";
            var connection = new MySqlConnection(ConnectionString);
            var command = connection.CreateCommand();
            try {
                connection.Open();
            }
            catch {
                
            }
            }
       
       
    }
}
