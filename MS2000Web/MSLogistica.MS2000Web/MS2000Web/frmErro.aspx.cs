﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MS2000Web
{
    public partial class frmErro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbErro.Text = Request.QueryString["Error"];
        }
    }
}