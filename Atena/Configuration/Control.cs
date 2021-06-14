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
     class Control
    {
        internal enum WallType
        {
            Monophase,
            Biphase,
            Triphase
        }
        internal enum MeterModel
        {
            AresTHS,
            CronosSPS,
            CronosNG,
            ZEUS
        }
        internal enum AccessComboBox
        {
           Admin,
           User
        }

    }
}
