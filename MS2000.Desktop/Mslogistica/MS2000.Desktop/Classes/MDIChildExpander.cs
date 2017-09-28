using System;
using System.Windows.Forms;
using System.Drawing;

namespace MS2000.Desktop.Classes
{
    class MDIChildExpander
    {
        private Form child;
 
        public MDIChildExpander(Form child)
        {
            this.child = child;
		}
 
        static private bool Overlap(int x1, int x2, int y1, int y2)
        {
            // Returns true if two lines overlap each other. x1 and x2 is start and end position for first line.
            // y1 and y2 is start and end position for second line. 
            return (x1 >= y1 && x1 < y2) || 
                    (x2 > y1 && x2 <= y2) ||
                    (y1 >= x1 && y1 < x2) || 
                    (y2 > x1 && y2 <= x2);
        }
 
        static private bool HorizontalOverlap(Rectangle rect1, Rectangle rect2)
        {
            // Returns true if rect1 is right above or right below rect2. The below two
            // rectangles horizontally overlap each other.
            //
            //   XXX
            //   XXX
            //
            //      XXX 
            //      XXX 
 
            return Overlap(rect1.Left, rect1.Right, rect2.Left, rect2.Right);
        }
 
        static private bool VerticalOverlap(Rectangle rect1, Rectangle rect2)
        {
            // Returns true if rect1 is directly to the left or right of rect2. The below two
            // rectangles vertically overlap each other.
            //
            //   XXX   XXX
            //   XXX   XXX
                    
            return Overlap(rect1.Top, rect1.Bottom, rect2.Top, rect2.Bottom);
        }
 
        public void Expand()
        {
            // We will modify a Rectangle object which is a copy of the child’s bounds to fill the biggest
            // possible space without overlapping any other child window. If the child window already overlaps
            // another child window, we will continue to overlap it.
 
            // childCausesHorizontalScrollBar and childCausesVerticalScrollBar will be true if the child window is 
            // the only window outside the visible area of the MDI container main window and is responsible for 
            // causing the main window to display a scrollbar. In that case when resizing the child window we will
            // move it and resize it to fit within the visible area. This will of course remove the need of a scrollbar.
            // However, if some other child window is also outside the visible are, the scrollbar will still be there
            // after axpansion and the corresponding variable will be false. So they will only be true if the child window
            // is the only cause for a scrollbar.
 
            Rectangle childRect = child.Bounds;
 
            // Adjust top if possible.
 
            int topNew = 0;
            foreach (Control control in child.Parent.Controls)
            {
                Form otherForm = control as Form;
             
                if (otherForm != null && otherForm != child)
                {
                    // Check if child overlaps horizontally and that the child is below the other form and if that other form
                    // is below any previous found windows.
 
                    if (HorizontalOverlap(childRect, otherForm.Bounds) &&
             childRect.Top >= otherForm.Bottom &&
             otherForm.Bottom > topNew)
                    {
                        topNew = otherForm.Bottom;
                    }
                }
            }
 
            // Increase height and move window.
 
            childRect.Height += childRect.Top - topNew; 
            childRect.Y = topNew;
     
            bool childCausesHorizontalScrollBar = 
               child.Left < 0 ||
               child.Right > child.Parent.Bounds.Right; 
 
            // Adjust bottom if possible.
 
            int bottomNew = child.Parent.ClientSize.Height;
            foreach (Control control in child.Parent.Controls)
            {
                Form otherForm = control as Form;
                if (otherForm != null && otherForm != child)
                {
                    // Check if forms overlap horizontally and that the form is above the other form and if that other form
                    // is above any previous found windows.
 
                    if (HorizontalOverlap(childRect, otherForm.Bounds) && 
              childRect.Bottom <= otherForm.Top && 
              otherForm.Top < bottomNew)
                    {
                        bottomNew = otherForm.Top;
                    }
 
                    childCausesHorizontalScrollBar &= 
               otherForm.Left >= 0 && 
               otherForm.Right <= child.Parent.Bounds.Right; ;
                }
            }
 
            // Increase height.
 
            childRect.Height += bottomNew - child.Bottom; 
 
            if (childCausesHorizontalScrollBar && 
          bottomNew == child.Parent.ClientSize.Height)
            {
                // We need to expand it some more.
 
                    childRect.Height += 
               System.Windows.Forms.SystemInformation.HorizontalScrollBarHeight;
            }
 
            // Adjust left side if possible.
 
            int leftNew = 0;
            foreach (Control control in child.Parent.Controls)
            {
                Form otherForm = control as Form;
                if (otherForm != null && otherForm != child)
                {
                    // Check if forms overlap vertically and that the form is right of the other form and if that other form
                    // is more right than any previous found windows.
 
                    if (VerticalOverlap(childRect, otherForm.Bounds) &&
              childRect.Left >= otherForm.Right &&
              otherForm.Right > leftNew)
                    {
                        leftNew = otherForm.Right;
                    }
                }
            }
 
            // Increase width and move window.
 
            childRect.Width += childRect.Left - leftNew; 
            childRect.X = leftNew;
     
            bool childCausesVerticalScrollBar = 
               child.Top < 0 || 
               child.Bottom > child.Parent.Bounds.Bottom; 
 
            // Adjust right side if possible.
 
            int rightNew = child.Parent.ClientSize.Width;
            foreach (Control control in child.Parent.Controls)
            {
                Form otherForm = control as Form;
                if (otherForm != null && otherForm != child)
                {
                    // Check if forms overlap vertically and that the form is left of the other form and if that other form
                    // is more left than any previous found windows.
 
                    if (VerticalOverlap(childRect, otherForm.Bounds) &&
              childRect.Right <= otherForm.Left &&
              otherForm.Left < rightNew)
                    {
                        rightNew = otherForm.Left;
                    }
 
                    childCausesVerticalScrollBar &=  
                            otherForm.Top >= 0 ||
                            otherForm.Bottom <= child.Parent.Bounds.Bottom; 
                }
            }
 
            // Increase width.
 
            childRect.Width += rightNew - child.Right; 
 
            if (childCausesVerticalScrollBar &&
          rightNew == child.Parent.ClientSize.Width)
            {
                // We need to expand it some more.
 
                childRect.Width += 
             System.Windows.Forms.SystemInformation.VerticalScrollBarArrowHeight;
            }
 
            // Update child window with new bounds.
 
            child.Bounds = childRect;
 
            if (childCausesHorizontalScrollBar && 
          child.Right != childRect.Right &&
          child.Width > childRect.Width)
            {
                // When moving the child window from the non visible part of the window and resizing it, we may end
                // up trying to resize the window to smaller than Windows allows. This can only happen when the window
                // was previously partly hidden and solely caused a scrollbar to be displayed. We need to move it some
                // more then to fit within the main MDI container window.
 
                child.Left -= child.Width - childRect.Width;
            }
 
            if (childCausesVerticalScrollBar && 
          child.Bottom != childRect.Bottom && 
          child.Height > childRect.Height)
            {
                // When moving the child window from the non visible part of the window and resizing it, we may end
                // up trying to resize the window to smaller than Windows allows. This can only happen when the window
                // was previously partly hidden and solely caused a scrollbar to be displayed. We need to move it some
 
                // more then to fit within the main MDI container window.
 
                child.Top -= child.Height - childRect.Height;
            }
        }
    }
}
