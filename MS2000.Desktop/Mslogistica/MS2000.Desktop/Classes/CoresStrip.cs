using System.Drawing;
using System.Windows.Forms;

namespace MS2000.Desktop.Classes
{
    public class CoresStrip : ProfessionalColorTable
    {
        public override Color ToolStripDropDownBackground
        {
            get
            {
                return Color.White;
            }
        }

        public override Color MenuItemPressedGradientMiddle
        {
            get
            {
                return Color.MidnightBlue;
            }
        }

        public override Color MenuItemPressedGradientBegin
        {
            get
            {
                return Color.MidnightBlue;
            }
        }
        
        public override Color MenuItemPressedGradientEnd
        {
            get
            {
                return Color.MidnightBlue;
            }
        }

        public override Color ImageMarginGradientBegin
        {
            get
            {
                return Color.White;
            }
        }

        public override Color ImageMarginGradientMiddle
        {
            get
            {
                return Color.White;
            }
        }

        public override Color ImageMarginGradientEnd
        {
            get
            {
                return Color.LightGray;
            }
        }

        //StatusBar

        public override Color StatusStripGradientBegin
        {
            get
            {
                return Color.White;
            }
        }

        public override Color StatusStripGradientEnd
        {
            get
            {
                return Color.White;
            }
        }
    }
}
