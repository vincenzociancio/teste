using System;
using System.Windows.Forms;
using System.ComponentModel;
using System.Drawing;
using System.Globalization;

namespace MS2000.Desktop.Componentes
{
    public class MultiColumnComboBox : System.Windows.Forms.ComboBox
    {
        private bool _AutoComplete = true;
        private bool _AutoDropdown = true;
        public bool AutoComplete
        {
            get
            {
                return _AutoComplete;
            }
            set
            {
                _AutoComplete = value;
            }
        }

        public bool AutoDropdown
        {
            get
            {
                return _AutoDropdown;
            }
            set
            {
                _AutoDropdown = value;
            }
        }


        public MultiColumnComboBox()
        {
            DrawMode = DrawMode.OwnerDrawVariable;            
        }

        public new DrawMode DrawMode
        {
            get
            {
                return base.DrawMode;
            }
            set
            {
                if (value != DrawMode.OwnerDrawVariable)
                {
                    throw new NotSupportedException("Needs to be DrawMode.OwnerDrawVariable");
                }
                base.DrawMode = value;
            }
        }

        public new ComboBoxStyle DropDownStyle
        {
            get
            {
                return base.DropDownStyle;
            }
            set
            {
                if (value == ComboBoxStyle.Simple)
                {
                    throw new NotSupportedException("ComboBoxStyle.Simple not supported");
                }
                base.DropDownStyle = value;
            }
        }

        protected override void OnDataSourceChanged(EventArgs e)
        {
            base.OnDataSourceChanged(e);
            InitializeColumns();
        }

        protected override void OnValueMemberChanged(EventArgs e)
        {
            base.OnValueMemberChanged(e);
            InitializeValueMemberColumn();
        }

        protected override void OnDropDown(EventArgs e)
        {
            base.OnDropDown(e);
            this.DropDownWidth = (int)CalculateTotalWidth();
        }

        const int columnPadding = 5;
        private float[] columnWidths = new float[0];
        private String[] columnNames = new String[0];
        private int valueMemberColumnIndex = 0; 
        public int NumberColumnsDisplay { get; set; }
        private int count = 0;

        private void InitializeColumns()
        {
            //Eduardo Souza - 23/05/2014           
            if (DataManager ==null)
            {
                return;
            }

            PropertyDescriptorCollection propertyDescriptorCollection = DataManager.GetItemProperties();
            if (NumberColumnsDisplay == 0)
            {                
                count = propertyDescriptorCollection.Count;
            }
            else
            {
                count = NumberColumnsDisplay;
            }
            
            columnWidths = new float[count];
            columnNames = new String[count];

            for (int colIndex = 0; colIndex < count; colIndex++)
            {
                String name = propertyDescriptorCollection[colIndex].Name;
                columnNames[colIndex] = name;
            }
        }

        private void InitializeValueMemberColumn()
        {
            int colIndex = 0;
            foreach (String columnName in columnNames)
            {
                if (String.Compare(columnName, ValueMember, true, CultureInfo.CurrentUICulture) == 0)
                {
                    valueMemberColumnIndex = colIndex;
                    break;
                }
                colIndex++;
            }
        }

        private float CalculateTotalWidth()
        {
            float totWidth = 0;
            foreach (int width in columnWidths)
            {
                totWidth += (width + columnPadding);
            }
            return totWidth + SystemInformation.VerticalScrollBarWidth;
        }


        protected override void OnMeasureItem(MeasureItemEventArgs e)
        {
            base.OnMeasureItem(e);

            if (DesignMode)
                return;

            for (int colIndex = 0; colIndex < columnNames.Length; colIndex++)
            {
                string item = Convert.ToString(FilterItemOnProperty(Items[e.Index], columnNames[colIndex]));
                SizeF sizeF = e.Graphics.MeasureString(item, Font);
                columnWidths[colIndex] = Math.Max(columnWidths[colIndex], sizeF.Width);
            }

            float totWidth = CalculateTotalWidth();
            e.ItemWidth = (int)totWidth;
        }

        protected override void OnSelectedIndexChanged(EventArgs e)
        {
            base.OnSelectedIndexChanged(e);
            base.Invalidate();
        }

        protected override void OnDrawItem(DrawItemEventArgs e)
        {
            base.OnDrawItem(e);
            if (DesignMode)
                return;

            e.DrawBackground();

            Rectangle boundsRect = e.Bounds;
            int lastRight = 0;

            using (Pen linePen = new Pen(Color.Black))
            {
                using (SolidBrush brush = new SolidBrush(e.ForeColor))
                {
                    if (columnNames.Length == 0 && e.Index >= 0)
                    {
                        e.Graphics.DrawString(Convert.ToString(Items[e.Index]), Font, brush, boundsRect);
                    }
                    else
                    {
                        for (int colIndex = 0; colIndex < columnNames.Length; colIndex++)
                        {
                            string item = Convert.ToString(FilterItemOnProperty(Items[e.Index], columnNames[colIndex]));

                            boundsRect.X = lastRight;
                            boundsRect.Width = (int)columnWidths[colIndex] + columnPadding;
                            lastRight = boundsRect.Right;

                            if (colIndex == valueMemberColumnIndex)
                            {
                                using (Font boldFont = new Font(Font, FontStyle.Bold))
                                {
                                    e.Graphics.DrawString(item, boldFont, brush, boundsRect);
                                }
                            }
                            else
                            {
                                e.Graphics.DrawString(item, Font, brush, boundsRect);
                            }

                            if (colIndex < columnNames.Length - 1)
                            {
                                e.Graphics.DrawLine(linePen, boundsRect.Right, boundsRect.Top, boundsRect.Right, boundsRect.Bottom);
                            }
                        }
                    }
                }
            }
            e.DrawFocusRectangle();
        }

        //private bool controlKey = false;

        //protected override void OnKeyPress(KeyPressEventArgs e)
        //{
        //    base.OnKeyPress(e);

        //    if (e.KeyChar == (int)Keys.Escape)
        //    {
        //        this.SelectedIndex = -1;
        //        this.Text = "";
        //        controlKey = true;
        //    }
        //    else if (Char.IsControl(e.KeyChar))
        //    {
        //        controlKey = true;
        //    }
        //    else
        //    {
        //        controlKey = false;
        //    }
        //}

        //protected override void OnTextChanged(EventArgs e)
        //{
        //    base.OnTextChanged(e);

        //    if (this.Text != "" && !controlKey)
        //    {
        //        string matchText = this.Text;
        //        int match = this.FindString(matchText);

        //        if (match != -1)
        //        {
        //            this.SelectedIndex = match;
        //            this.SelectionStart = matchText.Length;
        //            this.SelectionLength = this.Text.Length - this.SelectionStart;
        //        }
        //    }
        //}


        private bool controlKey = false;

        protected override void OnKeyPress(System.Windows.Forms.KeyPressEventArgs e)
        {
            //Eduardo Souza - 16/06/2014
            //base.OnKeyPress(e);
            //if (e.KeyChar == (int)Keys.Escape)
            //{
            //    this.Text = "";
            //    this.SelectedIndex = -1;
            //    controlKey = true;
            //}
            //else if (Char.IsControl(e.KeyChar))
            //{
            //    controlKey = true;
            //}
            //else
            //{
            //    controlKey = false;
            //}

            ///**esouza**/
            //if (!droppeddown)
            //{
            //    this.DroppedDown = true;
            //    droppeddown = true;
            //    Cursor.Current = Cursors.IBeam;
            //    Cursor.Current = Cursors.Default;
            //}


            //Eduardo Souza - 16/06/2014
            int idx = -1;
            string toFind;

            DroppedDown = _AutoDropdown;
            if (!Char.IsControl(e.KeyChar))
            {
                if (_AutoComplete)
                {
                    toFind = Text.Substring(0, SelectionStart) + e.KeyChar;
                    idx = FindStringExact(toFind);

                    if (idx == -1)
                    {
                        // An exact match for the whole string was not found
                        // Find a substring instead.
                        idx = FindString(toFind);
                    }
                    else
                    {
                        // An exact match was found. Close the dropdown.
                        DroppedDown = false;
                    }

                    if (idx != -1) // The substring was found.
                    {
                        SelectedIndex = idx;
                        SelectionStart = toFind.Length;
                        SelectionLength = Text.Length - SelectionStart;
                    }
                    else // The last keystroke did not create a valid substring.
                    {
                        // If the substring is not found, cancel the keypress
                        e.KeyChar = (char)0;
                    }
                }
                else // AutoComplete = false. Treat it like a DropDownList by finding the
                // KeyChar that was struck starting from the current index
                {
                    idx = FindString(e.KeyChar.ToString(), SelectedIndex);

                    if (idx != -1)
                    {
                        SelectedIndex = idx;
                    }
                }
          
            }

            // Do no allow the user to backspace over characters. Treat it like
            // a left arrow instead. The user must not be allowed to change the 
            // value in the ComboBox. 
            if ((e.KeyChar == (char)(Keys.Back)) &&  // A Backspace Key is hit
                (_AutoComplete) &&                   // AutoComplete = true
                (Convert.ToBoolean(SelectionStart))) // And the SelectionStart is positive
            {
                // Find a substring that is one character less the the current selection.
                // This mimicks moving back one space with an arrow key. This substring should
                // always exist since we don't allow invalid selections to be typed. If you're
                // on the 3rd character of a valid code, then the first two characters have to 
                // be valid. Moving back to them and finding the 1st occurrence should never fail.
                toFind = Text.Substring(0, SelectionStart - 1);
                idx = FindString(toFind);

                if (idx != -1)
                {
                    SelectedIndex = idx;
                    SelectionStart = toFind.Length;
                    SelectionLength = Text.Length - SelectionStart;
                }
            }

            // e.Handled is always true. We handle every keystroke programatically.
            e.Handled = true;

            if ((e.KeyChar == (char)(Keys.Enter)) &&  // A Backspace Key is hit
                     (_AutoComplete))                 // AutoComplete = true                   
            {
                e.Handled = false;
                //this.DroppedDown = true;
            }
        }

        protected override void OnTextChanged(System.EventArgs e)
        {
            //Eduardo Souza - 16/06/2014
            //base.OnTextChanged(e);
            //if (this.Text != "" && !controlKey)
            //{
            //    string matchText = this.Text;
            //    int match = this.FindString(matchText);
            //    if (match != -1)
            //    {
            //        this.SelectedIndex = match;
            //        this.SelectionStart = matchText.Length;
            //        this.SelectionLength = this.Text.Length - this.SelectionStart;
            //    }
            //}
        }

        //protected override void OnLeave(System.EventArgs e)
        //{
        //if (this.Text != "")
        //{
        //    int match = this.FindString(this.Text, this.SelectedIndex);                

        //    MultiColumnComboBox temp = (MultiColumnComboBox)this;
        //    temp.SelectedIndex = match;
        //    if ((match == -1) || (match != -1 && this.Text != (string)temp.Text))
        //    {
        //        MessageBox.Show("Chosen text not found!", "Error!", MessageBoxButtons.OK, MessageBoxIcon.Error);
        //        this.Focus();
        //    }
        //    else
        //    {
        //        this.SelectedIndex = match;
        //    }
        //}
        //else if (this.Text == "" && this.SelectedIndex != -1)
        //{
        //    this.SelectedIndex = -1;
        //}
        //else
        //{
        //    this.SelectedIndex = -1;
        //}
        //}

        private bool droppeddown = false;

        protected override void OnDropDownClosed(EventArgs e)
        {
            base.OnDropDownClosed(e);
            droppeddown = false;
        }

        //Eduardo Souza 22/05/2014
        //public override bool Equals(Object obj)
        //{
        //    if (obj == null)
        //        return false;
        //    else if (obj.GetType() == this.GetType())
        //    {
        //        MultiColumnComboBox temp = (MultiColumnComboBox)obj;
        //        return temp.Text == this.Text;
        //    }
        //    return false;
        //}


    }

}
