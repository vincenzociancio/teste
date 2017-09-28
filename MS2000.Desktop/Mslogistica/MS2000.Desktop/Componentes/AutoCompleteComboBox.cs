using System;
using System.Windows.Forms;
using System.ComponentModel;
using System.Drawing;
using System.Globalization;

namespace MS2000.Desktop.Componentes
{
    public class AutoCompleteComboBox : ComboBox
    {
        private bool controlKey = false;

        protected override void OnKeyPress(System.Windows.Forms.KeyPressEventArgs e)
        {
            base.OnKeyPress(e);
            if (e.KeyChar == (int)Keys.Escape)
            {
                this.Text = "";
                this.SelectedIndex = -1;
                controlKey = true;
            }
            else if (Char.IsControl(e.KeyChar))
            {
                controlKey = true;
            }
            else
            {
                controlKey = false;
            }
        }

        protected override void OnTextChanged(System.EventArgs e)
        {
            base.OnTextChanged(e);
            if (this.Text != "" && !controlKey)
            {
                string matchText = this.Text;
                int match = this.FindString(matchText);
                if (match != -1)
                {
                    this.SelectedIndex = match;
                    this.SelectionStart = matchText.Length;
                    this.SelectionLength = this.Text.Length - this.SelectionStart;
                }
            }
        }

        protected override void OnLeave(System.EventArgs e)
        {
            if (this.Text != "")
            {
                int match = this.FindString(this.Text);
                AutoCompleteComboBox temp = (AutoCompleteComboBox)this;
                temp.SelectedIndex = match;
                if ((match == -1) || (match != -1 && this.Text != (string)temp.Text))
                {
                    MessageBox.Show("Chosen text not found!", "Error!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    this.Focus();
                }
                else
                {
                    this.SelectedIndex = match;
                }
            }
            else if (this.Text == "" && this.SelectedIndex != -1)
            {
                this.SelectedIndex = -1;
            }
            else
            {
                this.SelectedIndex = -1;
            }
        }

        public override bool Equals(Object obj)
        {
            if (obj == null)
                return false;
            else if (obj.GetType() == this.GetType())
            {
                AutoCompleteComboBox temp = (AutoCompleteComboBox)obj;
                return temp.Text == this.Text;
            }
            return false;
        }
    }
}