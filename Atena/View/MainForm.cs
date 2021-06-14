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
using MeterFarm.View;
using MySql.Data.MySqlClient;

namespace MeterFarm
{
    public partial class MainForm : Form
    {
        DataTable dt = new DataTable();
        //instantiating connection form
        Connection conexao = new Connection();
        //instantiating tree view 
        View.TreeView Tree = new View.TreeView();
        //instantiating Collection form
        Collect collect = new Collect();
        // creating variables
        public int NumberNode;
        String node, index, AccessUser,Name;
        public MainForm()
        {
            InitializeComponent();
            conexao.Conexao();
            Tree.UpdateTreeView(this.TreeMeter);
            UpdateComboBoxAccess();
            txtPassword.UseSystemPasswordChar = true;
            txtPassword.MaxLength = 15;
        }
        private void UpdateComboBoxAccess()
        {
            foreach (var data in Enum.GetValues(typeof(Control.AccessComboBox)))
            {
                this.AccessComboBox.Items.Add(data);
            }
        }
        //form initiation method
        private void Form1_Load(object sender, EventArgs e)
        {
           
            try
            {
                string conect = "Server =  localhost; Database =  MuretaDatabase ; Uid = Mureta; Pwd = 1q2w3e4r5t6y";
                using (MySqlConnection conexao = new MySqlConnection(conect))
                {
                    conexao.Open();
                    if (conexao.State == ConnectionState.Open)
                    {
                        string comando = "select IdCollect, NumberMeter ,DateCollect AS CollectData ,Meter as ModelMeter ,value03 as v3, value24 as v24,value31 as v31, value103 as v103, value124 as v124,value131 as v131,Obs as Comments from Collect order by NumberMeter;";
                        MySqlCommand cmd = new MySqlCommand(comando, conexao);
                        DataTable dt = new DataTable();
                        MySqlDataAdapter dados = new MySqlDataAdapter();
                        dados.SelectCommand = cmd;
                        dados.Fill(dt);
                        dataGridView.Columns.Clear();//reset colunas
                        this.dataGridView.DataSource = dt;
                    }
                }
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.Message, ex.Number.ToString(), MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
           
        }
        private void MainForm_Load(object sender, EventArgs e)
        {



        }
        //method for setting single-phase meters in the datagrid
        private void buttonMono_Click_1(object sender, EventArgs e)
        {
            try
            {
                string conect = "Server =  localhost; Database =  MuretaDatabase ; Uid = Mureta; Pwd = 1q2w3e4r5t6y";
                using (MySqlConnection conexao = new MySqlConnection(conect))
                {
                    conexao.Open();
                    if (conexao.State == ConnectionState.Open)
                    {
                        string comando = "select BoxMureta,TypeMureta from Mureta where TypeMureta = 'Monofasica';";
                        MySqlCommand cmd = new MySqlCommand(comando, conexao);
                        DataTable dt = new DataTable();
                        MySqlDataAdapter dados = new MySqlDataAdapter();
                        dados.SelectCommand = cmd;
                        dados.Fill(dt);
                        dataGridView.Columns.Clear();//reset colunas
                        this.dataGridView.DataSource = dt;
                    }
                }
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.Message, ex.Number.ToString(), MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
        }
        //method for setting single-phase meters in the datagrid
        private void buttonBifasica_Click(object sender, EventArgs e)
        {
            try
            {
                string conect = "Server =  localhost; Database =  MuretaDatabase ; Uid = Mureta; Pwd = 1q2w3e4r5t6y";
                using (MySqlConnection conexao = new MySqlConnection(conect))
                {
                    conexao.Open();
                    if (conexao.State == ConnectionState.Open)
                    {
                        string comando = "select BoxMureta,TypeMureta from Mureta where TypeMureta = 'Bifasica';";
                        MySqlCommand cmd = new MySqlCommand(comando, conexao);
                        DataTable dt = new DataTable();
                        MySqlDataAdapter dados = new MySqlDataAdapter();
                        dados.SelectCommand = cmd;
                        dados.Fill(dt);
                        dataGridView.Columns.Clear();//reset colunas
                        this.dataGridView.DataSource = dt;
                    }
                }
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.Message, ex.Number.ToString(), MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
        }
        //method for setting single-phase meters in the datagrid
        private void buttonTrifasica_Click(object sender, EventArgs e)
        {
            try
            {
                string conect = "Server =  localhost; Database =  MuretaDatabase ; Uid = Mureta; Pwd = 1q2w3e4r5t6y";
                using (MySqlConnection conexao = new MySqlConnection(conect))
                {
                    conexao.Open();
                    if (conexao.State == ConnectionState.Open)
                    {
                        string comando = "select BoxMureta,TypeMureta from Mureta where TypeMureta = 'Trifasica';";
                        MySqlCommand cmd = new MySqlCommand(comando, conexao);
                        DataTable dt = new DataTable();
                        MySqlDataAdapter dados = new MySqlDataAdapter();
                        dados.SelectCommand = cmd;
                        dados.Fill(dt);
                        dataGridView.Columns.Clear();//reset colunas
                        this.dataGridView.DataSource = dt;
                    }
                }
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.Message, ex.Number.ToString(), MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
        }
        //filter method by text box
        private void FilterMeter(object sender, EventArgs e)
        {
            string text = this.SearchTextBox.Text;
            string sql = "select NumberMeter ,DateCollect AS CollectData ,Meter as ModelMeter ,value03 as v3, value24 as v24,value31 as v31, value103 as v103, value124 as v124,value131 as v131,Obs as Comments from Collect WHERE NumberMeter LIKE '%" + text + "';";
            string ConnectionString = "Server =  localhost; Database =  MuretaDatabase ; Uid = Mureta; Pwd = 1q2w3e4r5t6y";
            try
            {
                using (MySqlConnection conexao = new MySqlConnection(ConnectionString))
                {
                    conexao.Open();
                    if (conexao.State == ConnectionState.Open)
                    {
                        MySqlCommand cmd = new MySqlCommand(sql, conexao);

                        MySqlDataAdapter dados = new MySqlDataAdapter();
                        dados.SelectCommand = cmd;
                        dados.Fill(dt);
                        dataGridView.Columns.Clear();
                        this.dataGridView.DataSource = dt;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        //method to initiation of the filter form
        private void ClickFilter(object sender, EventArgs e)
        {
            Filter filter = new Filter();
            filter.ShowDialog(this);
        }
        // method to set the meters in the datagrid
        private void ClickMeter_SerDataGridView(object sender, EventArgs e)
        {
            try
            {
                string conect = "Server =  localhost; Database =  MuretaDatabase ; Uid = Mureta; Pwd = 1q2w3e4r5t6y";
                using (MySqlConnection conexao = new MySqlConnection(conect))
                {
                    conexao.Open();
                    if (conexao.State == ConnectionState.Open)
                    {
                        string comando = "select BoxMeter, ModelMeter from Meter order by BoxMeter;";
                        MySqlCommand cmd = new MySqlCommand(comando, conexao);

                        MySqlDataAdapter dados = new MySqlDataAdapter();
                        dados.SelectCommand = cmd;
                        dados.Fill(dt);
                        dataGridView.Columns.Clear();//reset colunas
                        this.dataGridView.DataSource = dt;
                    }
                }
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.Message, ex.Number.ToString(), MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
        }
        // method to set the wall in the datagrid
        private void ClickWall_SerDataGridView(object sender, EventArgs e)
        {
            try
            {
                string conect = "Server =  localhost; Database =  MuretaDatabase ; Uid = Mureta; Pwd = 1q2w3e4r5t6y";
                using (MySqlConnection conexao = new MySqlConnection(conect))
                {
                    conexao.Open();
                    if (conexao.State == ConnectionState.Open)
                    {
                        string comando = "select BoxMureta,TypeMureta from Mureta order by BoxMureta;";
                        MySqlCommand cmd = new MySqlCommand(comando, conexao);

                        MySqlDataAdapter dados = new MySqlDataAdapter();
                        dados.SelectCommand = cmd;
                        dados.Fill(dt);
                        dataGridView.Columns.Clear();//reset colunas
                        this.dataGridView.DataSource = dt;
                    }
                }
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.Message, ex.Number.ToString(), MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
        }
        //update form initiation method
        private void Click_MeterUpdate(object sender, EventArgs e)
        {
            Update updateMeter = new Update();
            updateMeter.Show(this);
        }

        private void ClickLogin_Configuration(object sender, EventArgs e)
        {
            try
            {
                string sql = " SELECT * FROM Access WHERE LoginUser='" + this.txtLogin.Text + "' AND PasswordUser='" + this.txtPassword.Text + "';";
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
                            AccessUser = row["AccessUser"].ToString();
                            Name = row["UserName"].ToString();
                        }
                    }
                }
                if (AccessUser == "Admin")
                {
                    btnCreate.Enabled = true;
                    btnDelete.Enabled = true;
                    btnUpdate.Enabled = true;
                    AccessComboBox.Enabled = true;
                    txtLogin.Text = "";
                    txtPassword.Text = "";
                    labelName.Visible = true;
                    txtName.Enabled = true;
                    this.labelName.Text = Name;
                    this.txtName.Visible = true;
                    this.labelAccess.Visible = true;
                    this.labelNameBox.Visible = true;
                    this.AccessComboBox.Visible = true;
                   

                }
                else if (AccessUser == "User")
                {
                    this.labelName.Text = Name;

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
        //collection method initiation method
        private void DoubleClickBox(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();

            if (TreeMeter.SelectedNode.Name == "MeterMono " ||
                TreeMeter.SelectedNode.Name == "MeterBi" ||
                TreeMeter.SelectedNode.Name == "MeterTri")
            {
              
                MessageBox.Show("Select a meter");
            }

            if (collect.verification == false)
            {
                index = TreeMeter.SelectedNode.Name;
                NumberNode = Convert.ToInt32(index);
                collect.NumberMeter(NumberNode);
                collect.ReadMeterInsert();
                this.dataGridView.DataSource = collect;
                node = TreeMeter.SelectedNode.Name;
                collect.Show(this);
                collect.SetLabel();
                collect.verification = true;

                try
                {
                    string conect = "Server =  localhost; Database =  MuretaDatabase ; Uid = Mureta; Pwd = 1q2w3e4r5t6y";
                    using (MySqlConnection conexao = new MySqlConnection(conect))
                    {
                        conexao.Open();
                        if (conexao.State == ConnectionState.Open)
                        {
                            string comando = "select IdCollect, NumberMeter ,DateCollect AS CollectData ,Meter as ModelMeter ,value03 as v3, value24 as v24,value31 as v31, value103 as v103, value124 as v124,value131 as v131,Obs as Comments from Collect order by NumberMeter;";
                            MySqlCommand cmd = new MySqlCommand(comando, conexao);

                            MySqlDataAdapter dados = new MySqlDataAdapter();
                            dados.SelectCommand = cmd;
                            dados.Fill(dt);
                            dataGridView.Columns.Clear();//reset colunas
                            this.dataGridView.DataSource = dt;
                        }
                    }
                }
                catch (MySqlException ex)
                {
                    MessageBox.Show(ex.Message, ex.Number.ToString(), MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
            }

            else if (collect.verification = true)
            {
                index = TreeMeter.SelectedNode.Name;
                NumberNode = Convert.ToInt32(index);
                collect.NumberMeter(NumberNode);
                collect.ReadMeterInsert();
                this.dataGridView.DataSource = collect;
                node = TreeMeter.SelectedNode.Name;
                collect.SetLabel();
                try
                {
                    string conect = "Server =  localhost; Database =  MuretaDatabase ; Uid = Mureta; Pwd = 1q2w3e4r5t6y";
                    using (MySqlConnection conexao = new MySqlConnection(conect))
                    {
                        conexao.Open();
                        if (conexao.State == ConnectionState.Open)
                        {
                            string comando = "select IdCollect as ID ,NumberMeter,DateCollect AS CollectData ,Meter as ModelMeter ,value03 as v3, value24 as v24,value31 as v31, value103 as v103, value124 as v124,value131 as v131,Obs as Comments from Collect order by NumberMeter;";
                            MySqlCommand cmd = new MySqlCommand(comando, conexao);

                            MySqlDataAdapter dados = new MySqlDataAdapter();
                            dados.SelectCommand = cmd;
                            dados.Fill(dt);
                            dataGridView.Columns.Clear();//reset colunas
                            this.dataGridView.DataSource = dt;
                        }
                    }

                }
                catch (MySqlException ex)
                {
                    MessageBox.Show(ex.Message, ex.Number.ToString(), MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
            }
        }
    }
    }
    

