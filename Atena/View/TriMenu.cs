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
    public partial class TriMenu : Form
    {
        public TriMenu()
        {
            InitializeComponent();
        }

        private void TriMenu_Load(object sender, EventArgs e)
        {

        }

        private void buttonRegistrarTri_Click(object sender, EventArgs e)
        {

        }

        private void buttonZerarTri_Click(object sender, EventArgs e)
        {
            Control zerar = new Control();
            zerar.limparTextBoxes(this.Controls);
        }
    }
}
