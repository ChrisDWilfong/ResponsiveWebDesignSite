﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manual_Rules : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblTitle.Text = Convert.ToString(System.Configuration.ConfigurationManager.AppSettings["currentSchoolYear"]) + " OSSAA Rules Manual";
    }

    protected void Page_Init(object sender, EventArgs e)
    {

    }

}
