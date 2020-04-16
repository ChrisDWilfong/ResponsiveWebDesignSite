using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Settings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            txtWomenWrestlers.Text = Convert.ToString(SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionOSSAA, System.Data.CommandType.Text, "SELECT intWomenWrestlers FROM adminSettings"));
    }


    protected void cmdSave_Click(object sender, EventArgs e)
    {
        SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionOSSAA, System.Data.CommandType.Text, "UPDATE adminSettings SET intWomenWrestlers = " + txtWomenWrestlers.Text + " WHERE Id = 1");
        lblMessage.Text = "Changes saved.";
    }
}