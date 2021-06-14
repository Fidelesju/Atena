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
    public partial class TreeView : Form
    {

        static System.Windows.Forms.TreeView TreeMeter = new System.Windows.Forms.TreeView();
        
        public TreeView()
        {
            InitializeComponent();
        }

        public void UpdateTreeView(System.Windows.Forms.TreeView _TreeVisualization)
        {
            TreeMeter = _TreeVisualization;
        }

        internal void UpdateTreeView(object treeMeter)
        {
            throw new NotImplementedException();
        }

        public void ValueNode() {
           // TreeMeter.Nodes[0].Nodes.IndexOf;
        }
    }
}
