using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using MeterFarm.Comunication;
using MySql.Data.MySqlClient;
using MeterFarm.View;

namespace MeterFarm.View
{
    public partial class Collect : Form
    {
        //
        private System.Windows.Forms.TreeView TreeMeter;
        //
        public int NumberMeterInt;
        public Boolean verification = false;
        private string ModelMeter,NumberMeterS,DateCollect,value03,value24,value31,value103,value124,value131,Meter,Alarm,Obs;
        //
        DataGrid dataGridView = new DataGrid();
        View.TreeView Tree = new View.TreeView();
        private void FormClosing_Collect(object sender, FormClosingEventArgs e)
        {
            verification = false;
        }
        public Collect()
        {
            InitializeComponent();
            Tree.UpdateTreeView(this.TreeMeter);
            this.StartPosition = FormStartPosition.CenterScreen;
        }

        private void Collect_Load(object sender, EventArgs e)
        {
            
        }
        // method to set the number of the meter selected in the labels
        public void SetLabel() {
            this.METER.ResetText();
            this.MODEL.ResetText();
            this.METER.Text = "" + NumberMeterInt;
            this.MODEL.Text = ModelMeter;
        }
        // method to pull the number of the meter selected in the tree
        public void NumberMeter(int Number)
        {
            NumberMeterInt = Number;
        }
        // method for adding a collection to the collection table
        private void ClickRegister(object sender, EventArgs e)
        {
            try
            {
                string sql = "insert into Collect (NumberMeter, Value03, Value24, Value31, Value103, Value124, Value131, Meter, Alarm, Obs) values ('" + NumberMeterInt + "', '" + this.txt03.Text + "', '" + this.txt24.Text + "', '" + this.txt31.Text + "', '" + this.txt103.Text + "', '" + this.txt124.Text + "', '" + this.txt131.Text + "', '" + ModelMeter + "', '" + this.txtAlarm.Text + "', '" + this.txtComment.Text + "');";
                string ConnectionString = "Server =  localhost; Database =  MuretaDatabase ; Uid = Mureta; Pwd = 1q2w3e4r5t6y";
                MySqlConnection MyConn = new MySqlConnection(ConnectionString);
                MySqlCommand mySqlCommand = new MySqlCommand(sql, MyConn);
                MySqlDataReader MyReader;
                MyConn.Open();
                MyReader = mySqlCommand.ExecuteReader();
                MessageBox.Show(" " + NumberMeterInt + " "+ ModelMeter + " meter data successfully registered!");
                txt03.Text = ("000000");
                txt24.Text = ("000000");
                txt31.Text = ("000000");
                txt103.Text = ("000000");
                txt124.Text = ("000000");
                txt131.Text = ("000000");
                txtAlarm.Text = ("No");
                txtComment.Text = ("No");
                
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
        //method to get the meter model to add it to the table
        public void ReadMeterInsert()
        {
            try
            {
                string sql = " SELECT ModelMeter FROM Meter WHERE BoxMeter LIKE '%" + NumberMeterInt + "';";
                string ConnectionString = "Server =  localhost; Database =  MuretaDatabase ; Uid = Mureta; Pwd = 1q2w3e4r5t6y";
                MySqlConnection MyConn = new MySqlConnection(ConnectionString);
                MySqlCommand mySqlCommand = new MySqlCommand(sql, MyConn);
                MySqlDataAdapter MyAdapter = new MySqlDataAdapter();
                MyAdapter.SelectCommand = mySqlCommand;
                using (MySqlDataAdapter adapter = new MySqlDataAdapter(mySqlCommand))
                {
                    DataTable table = new DataTable();
                    adapter.Fill(table);
                    foreach (DataRow row in table.Rows)
                    {
                        {
                            ModelMeter = row["ModelMeter"].ToString();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void FilterTextBox(string text)
        {
 
             string sql = "select * from Collect where NumberMeter like '% " + text + "';";

            string ConnectionString = "Server =  localhost; Database =  MuretaDatabase ; Uid = Mureta; Pwd = 1q2w3e4r5t6y";
            MySqlConnection MyConn = new MySqlConnection(ConnectionString);
            MySqlCommand mySqlCommand = new MySqlCommand(sql, MyConn);
            MySqlDataReader MyReader;
            MyConn.Open();
            MyReader = mySqlCommand.ExecuteReader();
            try
                        {
                            using (MySqlConnection conexao = new MySqlConnection(ConnectionString))
                            {
                                conexao.Open();

                                if (conexao.State == ConnectionState.Open)
                                {
                                    string comando = "select NumberMeter ,DateCollect AS CollectData ,Meter as ModelMeter ,value03 as v03, value24 as v24,value31 as v31, Obs as Comments from Collect order by NumberMeter;";
                                    MySqlCommand cmd = new MySqlCommand(comando, conexao);

                                    DataTable dt = new DataTable();

                                    MySqlDataAdapter dados = new MySqlDataAdapter();
                                    dados.SelectCommand = cmd;

                                    dados.Fill(dt);

                                    this.dataGridView.DataSource = dt;

                                }
                            }
                        }
                        catch (Exception e)
                        {
                        }
                    }
        // method to block form movements
        //protected override void WndProc(ref Message message)
        //{
        //    const int WM_SYSCOMMAND = 0x0112;
        //    const int SC_MOVE = 0xF010;

        //    switch (message.Msg)
        //    {
        //        case WM_SYSCOMMAND:
        //            int command = message.WParam.ToInt32() & 0xfff0;
        //            if (command == SC_MOVE)
        //                return;
        //            break;
        //    }

        //    base.WndProc(ref message);
        //}

    }
            }
           