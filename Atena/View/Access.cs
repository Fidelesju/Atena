using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MeterFarm.View
{
    public partial class Access : Form 
    {
        // create variable
        public Boolean AccessLogin;
        string AccessUser;
      
        public Access()
        {
            InitializeComponent();
            txtPassword.UseSystemPasswordChar = true;
            txtPassword.MaxLength = 15;
        }
        public bool Check () {
            return true;
        }
        public void ClickLogin_Access(object sender, EventArgs e)
        {
            try
            {
                string sql = " SELECT * FROM Access WHERE LoginUser='" + this.txtLogin.Text + "' AND PasswordUser='" + this.txtPassword.Text + "';";
                string ConnectionString = "Server =  localhost; Database =  MuretaDatabase ; Uid = Mureta; Pwd = 1q2w3e4r5t6y";
                MySqlConnection MyConn = new MySqlConnection(ConnectionString);
                MySqlCommand mySqlCommand = new MySqlCommand(sql, MyConn);
                MySqlDataAdapter MyAdapter = new MySqlDataAdapter();
                MyAdapter.SelectCommand = mySqlCommand;
                this.Close();
                using (MySqlDataAdapter adapter = new MySqlDataAdapter(mySqlCommand))
                {
                    DataTable table = new DataTable();
                    adapter.Fill(table);
                    foreach (DataRow row in table.Rows)
                    {
                        {
                            AccessUser = row["AccessUser"].ToString();
                        }
                    }
                }
                if (AccessUser == "Admin") {
                    AccessLogin = true;
                    Check();
                        if (DialogResult.Yes == MessageBox.Show("Are you sure you want to update data from collection ?", "Confirmation", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2))
                        {
                            MessageBox.Show("Action successfully performed");
                       
                        }
                    else if (AccessUser == "User")
                    {
                        AccessLogin = false;
                       
                        MessageBox.Show("  It was not possible to change collection ");
                      
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void ViewPasswordCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            if (this.ViewPasswordCheckBox.Checked)
            {
                this.txtPassword.UseSystemPasswordChar = false;
            }
            else
            {
                this.txtPassword.UseSystemPasswordChar = true;
            }
        }
    }
    }

