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
    public partial class BiMenu : Form
    {
        public BiMenu()
        {
            InitializeComponent();
        }

        private void BiMenu_Load(object sender, EventArgs e)
        {

        }

        private void buttonRegistrarBi_Click(object sender, EventArgs e)
        {

        }

        private void buttonZerarBi_Click(object sender, EventArgs e)
        {
            Control zerar = new Control();
            zerar.limparTextBoxes(this.Controls);
        }
    }
}
