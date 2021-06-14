using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace MeterFarm.View
{
    public partial class Update : Form
    {
        // creating variables
        int IntDateCell;
        public string TypeWall, MeterModel, IdCollect;
        // instantiating form access
        Access access = new Access();
        private System.Windows.Forms.TreeView TreeMeter;
        View.TreeView Tree = new View.TreeView();

        public bool AccessLogin { get; private set; }

        public Update()
        {
            InitializeComponent();
            UpdateComboBoxesWall();
            UpdateComboBoxesMeter();
        }
        // method to update meter
        private void Click_UpdateMeter(object sender, EventArgs e)
        {
            try
            {
                string sql = "update Meter set ModelMeter = '" + MeterModel + "' where BoxMeter = " + BoxMeter.Text + ";";
                string ConnectionString = "Server =  localhost; Database =  MuretaDatabase ; Uid = Mureta; Pwd = 1q2w3e4r5t6y";
                MySqlConnection MyConn = new MySqlConnection(ConnectionString);
                MySqlCommand mySqlCommand = new MySqlCommand(sql, MyConn);
                MySqlDataReader MyReader;
                MyConn.Open();
                if (access.Check() == true){
                    access.Show(this);
                    MyReader = mySqlCommand.ExecuteReader();
                }
                else 
                {
                    MessageBox.Show("It is not possible to update the meter");
                }
                
               
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        // method to get the combobox value
        private void MeterModel_SelectedValueChanged(object sender, EventArgs e)
        {
            MeterModel = (string)this.ModelMeter.SelectedItem.ToString();

        }

        // method to get the combobox value
        private void WallType_SelectedValueChanged(object sender, EventArgs e)
        {

            TypeWall = (string)this.WallType.SelectedItem.ToString(); 
        }

        // method to update combox Walltype
        private void UpdateComboBoxWallType()
        {
            foreach (var data in Enum.GetValues(typeof(Control.WallType)))
            {
                this.WallType.Items.Add(data);
            }
        }

        // method to update combox MeterModel
        private void UpdateComboBoxMeterModel()
        {
            foreach (var data in Enum.GetValues(typeof(Control.MeterModel)))
            {
                this.ModelMeter.Items.Add(data);
            }
        }

        // method to update combox Wall
        private void UpdateComboBoxesWall()
        {
            UpdateComboBoxWallType();
        }

        // method to update combox Meter
        private void UpdateComboBoxesMeter()
        {
            UpdateComboBoxMeterModel();
        }
      

        // method to create mureta
        private void Click_CreateMureta(object sender, EventArgs e)
        {
            try
            {
                string sql = " insert into Mureta(BoxMureta, TypeMureta) values('" + this.WallBox.Text + "','" + TypeWall + "');";
                string ConnectionString = "Server =  localhost; Database =  MuretaDatabase ; Uid = Mureta; Pwd = 1q2w3e4r5t6y";
                MySqlConnection MyConn = new MySqlConnection(ConnectionString);
                MySqlCommand mySqlCommand = new MySqlCommand(sql, MyConn);
                MySqlDataReader MyReader;
                MyConn.Open();
                MyReader = mySqlCommand.ExecuteReader();
                MessageBox.Show("Wall " + WallBox.Text + " successfully added ");
                BoxMeter.Text = ("");
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

        // method to update Wall
        private void Click_UpdateWall(object sender, EventArgs e)
        {
            try
            {
                string sql = "update Mureta set TypeMureta = '" + TypeWall + "' where BoxMureta = " + WallBox.Text + ";";
                string ConnectionString = "Server =  localhost; Database =  MuretaDatabase ; Uid = Mureta; Pwd = 1q2w3e4r5t6y";
                MySqlConnection MyConn = new MySqlConnection(ConnectionString);
                MySqlCommand mySqlCommand = new MySqlCommand(sql, MyConn);
                MySqlDataReader MyReader;
                MyConn.Open();
                if (access.Check() == true)
                {
                    access.Show(this);
                    MyReader = mySqlCommand.ExecuteReader();

                }
                else
                {
                    MessageBox.Show("It is not possible to update the meter");
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        //method to delete meter
        private void Click_DeleteMeters(object sender, EventArgs e)
        {
            try
            {
                string sql = "DELETE from Meter WHERE BoxMeter = " + BoxMeter.Text + ";";
                string ConnectionString = "Server =  localhost; Database =  MuretaDatabase ; Uid = Mureta; Pwd = 1q2w3e4r5t6y";
                MySqlConnection MyConn = new MySqlConnection(ConnectionString);
                MySqlCommand mySqlCommand = new MySqlCommand(sql, MyConn);
                MySqlDataReader MyReader;
                MyConn.Open();
                if (access.Check() == true)
                {
                    access.Show(this);
                    MyReader = mySqlCommand.ExecuteReader();

                }
                else
                {
                    MessageBox.Show("It is not possible to update the meter");
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        // method to delete Wall
        private void ClickDelete_Wall(object sender, EventArgs e)
        {
            try
            {
                string sql = "DELETE from Mureta WHERE BoxMureta = " + WallBox.Text + ";";
                string ConnectionString = "Server =  localhost; Database =  MuretaDatabase ; Uid = Mureta; Pwd = 1q2w3e4r5t6y";
                MySqlConnection MyConn = new MySqlConnection(ConnectionString);
                MySqlCommand mySqlCommand = new MySqlCommand(sql, MyConn);
                MySqlDataReader MyReader;
                MyConn.Open();
                if (access.Check() == true)
                {
                    access.Show(this);
                    MyReader = mySqlCommand.ExecuteReader();

                }
                else
                {
                    MessageBox.Show("It is not possible to update the meter");
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        // method to update Collect
        private void ClickUpdate_Collect(object sender, EventArgs e)
        {
            try
            {
                string sql = "update Collect set NumberMeter = '"+ this.txtMeter.Text +"'" +
                    " or value03 = '"+this.txt03.Text +"' or value24 = '" + this.txt24.Text + "' or value31 = '" + this.txt31.Text+ "' " +
                    "or value103 = '"+ this.txt103.Text +"' or value124 = '" + this.txt124.Text + "' or value131 = '" + this.txt131.Text + "' or" +
                    " Alarm = '" + this.txtAlamrs + "' or Obs = '" + this.txtComments.Text + "' where IdCollect = '" + this.txtIDCollect.Text + "' ;";
                string ConnectionString = "Server =  localhost; Database =  MuretaDatabase ; Uid = Mureta; Pwd = 1q2w3e4r5t6y";
                MySqlConnection MyConn = new MySqlConnection(ConnectionString);
                MySqlCommand mySqlCommand = new MySqlCommand(sql, MyConn);
                MySqlDataReader MyReader;
                MyConn.Open();
                if (access.Check() == true)
                {
                    access.Show(this);
                    MyReader = mySqlCommand.ExecuteReader();

                }
                else
                {
                    MessageBox.Show("It is not possible to update the meter");
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        // method to delete Collect
        private void ClickDelete_Collect(object sender, EventArgs e)
        {
            try
            {
                string sql = "DELETE from Collect WHERE IdCollect = " + this.txtIDCollect.Text + ";";
                string ConnectionString = "Server =  localhost; Database =  MuretaDatabase ; Uid = Mureta; Pwd = 1q2w3e4r5t6y";
                MySqlConnection MyConn = new MySqlConnection(ConnectionString);
                MySqlCommand mySqlCommand = new MySqlCommand(sql, MyConn);
                MySqlDataReader MyReader;
                MyConn.Open();
                if (access.Check() == true)
                {
                    access.Show(this);
                    MyReader = mySqlCommand.ExecuteReader();

                }
                else
                {
                    MessageBox.Show("It is not possible to update the meter");
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        //method to create meter
        private void Click_CreateMeter(object sender, EventArgs e)
        {
            try
            {
             
                string sql = "insert into Meter(BoxMeter, ModelMeter) values('" +this.BoxMeter.Text + "', '"+MeterModel+"');";
                string ConnectionString = "Server =  localhost; Database =  MuretaDatabase ; Uid = Mureta; Pwd = 1q2w3e4r5t6y";
                MySqlConnection MyConn = new MySqlConnection(ConnectionString);
                MySqlCommand mySqlCommand = new MySqlCommand(sql, MyConn);
                MySqlDataReader MyReader;
                MyConn.Open();
                MyReader = mySqlCommand.ExecuteReader();
                MessageBox.Show("Meter " + this.BoxMeter.Text + " successfully added ");
                if (ModelMeter.Equals("Monophase"))
                {
                    TreeMeter.Nodes.Insert(0, this.BoxMeter.Text, "BOX " + this.BoxMeter.Text);
                }
                if (ModelMeter.Equals("Biphase"))
                {
                    TreeMeter.Nodes.Insert(1, this.BoxMeter.Text, "BOX " + this.BoxMeter.Text);
                }
                if (ModelMeter.Equals("Triphase"))
                {
                    TreeMeter.Nodes.Insert(2, this.BoxMeter.Text, "BOX " + this.BoxMeter.Text);
                }


            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        
    }
}
