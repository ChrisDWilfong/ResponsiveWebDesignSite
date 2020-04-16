using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Manual : System.Web.UI.Page
{
    public string pageSport = "";
    public string pageWebType = "OSSAA.COM";

    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds;
        string strSQL;
        string strActivityAbb = "";
        int x = 0;
        string strHeader = "";

        try
        {
            strActivityAbb = Request.QueryString["aa"];
        }
        catch { }

        strSQL = "SELECT TOP 1 * FROM prodActivityList WHERE strActivityAbb = '" + strActivityAbb + "'";
        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionOSSAAServer, CommandType.Text, strSQL);

        for (x = 0; x <= ds.Tables[0].Rows.Count - 1; x++)
        {
            strHeader = Convert.ToString(ds.Tables[0].Rows[x]["strCurrentYear"]);
            strHeader += " OSSAA ";
            strHeader += Convert.ToString(ds.Tables[0].Rows[x]["strActivity"]);
            strHeader += " MANUAL";
            lblManual.Text = strHeader;
            manualLink.Text = GetManualLink(Convert.ToString(ds.Tables[0].Rows[x]["strManualCode"]));
        }

    }
       protected void Page_Init(object sender, EventArgs e)
        {

        }

    public string GetManualLink(string strCode)
    {
        string retValue = "";
        retValue = "<div data-configid='" + strCode + "' style='width:100%; height:640px;' class='issuuembed'></div><script type='text/javascript' src='//e.issuu.com/embed.js' async='true'></script>";
        return retValue;
    }
  }
