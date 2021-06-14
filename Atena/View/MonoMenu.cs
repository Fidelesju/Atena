using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MeterFarm
{
    public partial class MonoMenu : Form
    {
        

        public MonoMenu()
        {
            InitializeComponent();
        }

        private void MonoMenu_Load(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void buttonRegistrarMono_Click(object sender, EventArgs e)
        {

        }

        private void buttonZerarMono_Click(object sender, EventArgs e)
        {
            Control zerar = new Control();
            zerar.limparTextBoxes(this.Controls);
 
        }
    }
}
