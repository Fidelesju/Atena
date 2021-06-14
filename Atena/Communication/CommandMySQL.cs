
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using MeterFarm.Comunication;
using MeterFarm.View;
using System.Windows.Forms;

namespace MeterFarm.Comunication
{
    public class ComandosMySQL 
    {
        private string query;
        private string ModelMeter;

        public string NumberMeterInt { get; private set; }

        public void Dispose()
        {
            throw new NotImplementedException();
        }
        public DataTable SetMeterDataGridView()
        {

            string sql = "select NumberMeter,DateCollect,Meter,value03, value24,value31,Obs from Collect";
            MySqlConnection conn = Conexao();
            conn.Open();
            MySqlConnection connection = null;
            MySqlCommand cmd = new MySqlCommand(query, connection);
            DataTable data = new DataTable();
            data.Load(cmd.ExecuteReader());
            conn.Close();
            conn.Dispose();
            return data;
        }
      
        private MySqlConnection Conexao()
        {
            throw new NotImplementedException();
        }
        public void DeleteCollect(string IDMeter) {
            try
            {
                string sql = " DELETE FROM Collect WHERE IdCollect = '" + IDMeter + "';";


                string ConnectionString = "Server =  localhost; Database =  MuretaDatabase ; Uid = Mureta; Pwd = 1q2w3e4r5t6y";
                MySqlConnection MyConn = new MySqlConnection(ConnectionString);
                MySqlCommand mySqlCommand = new MySqlCommand(sql, MyConn);
                MySqlDataReader MyReader;
                MyConn.Open();
                MyReader = mySqlCommand.ExecuteReader();
                MessageBox.Show("Dados do medidor BOX " + NumberMeterInt + " " + ModelMeter + " cadastrados com sucesso! ");
                

                while (MyReader.Read())
                {
                }
                MyConn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }



        }
    }
}
