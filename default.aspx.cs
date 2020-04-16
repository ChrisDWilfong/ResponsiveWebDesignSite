using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.Device.Detection;
using System.Data;

public partial class ResponsiveWebDesignOverview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
 
        //string strClass;
        string strHL;
        var strSQL = "";

        //strClass = DropDownClass.SelectedValue;
        //if (strClass == "")
        //    strClass = "Football6A";
        //var strSQL = clsSchedules.GetScheduleSportDaySQL(DropDownClass.SelectedValue, "", "", "WEEK5", 100, true);
        // var strSQL = clsSchedules.GetScheduleSportDaySQL("Football3A", "", "10/12/2018", "", 100, true);
        //DataSet ds;
        //ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionOSSAARankings, CommandType.Text, strSQL);
        //RadRotator3.DataSource = ds;
        //RadRotator3.DataBind();e

        // Postponements...
        string strPostponements;
        object objPostponements;
        strSQL  = "SELECT strDescription FROM tblDashboardLinks WHERE strSite = 'OSSAA.COM' AND strType = 'Postponements' AND intSort > 0";
        objPostponements =  SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionOSSAA, CommandType.Text, strSQL);
        strPostponements = (string)objPostponements;

        if (strPostponements == "")
            lblPostponements.Visible = false;
        else
        {
            //lblPostponements.Visible = true;
            lblPostponements.Text = strPostponements;
        }

        /**
        strHL = "";
        if (strClass == "Football7A")
            strHL = "http://www.ossaa.net/docs/2018-19/Football/FB_2018-19_6A1PlayoffBracket.pdf";
        else if (strClass == "Football6A")
            strHL = "http://www.ossaa.net/docs/2018-19/Football/FB_2018-19_6A2PlayoffBracket.pdf";
        else if (strClass == "Football5A")
            strHL = "http://www.ossaa.net/docs/2018-19/Football/FB_2018-19_5APlayoffBracket.pdf";
        else if (strClass == "Football4A")
            strHL = "http://www.ossaa.net/docs/2018-19/Football/FB_2018-19_4APlayoffBracket.pdf";
        else if (strClass == "Football3A")
            strHL = "http://www.ossaa.net/docs/2018-19/Football/FB_2018-19_3APlayoffBracket.pdf";
        else if (strClass == "Football2A")
            strHL = "http://www.ossaa.net/docs/2018-19/Football/FB_2018-19_2APlayoffBracket.pdf";
        else if (strClass == "FootballA")
            strHL = "http://www.ossaa.net/docs/2018-19/Football/FB_2018-19_APlayoffBracket.pdf";
        else if (strClass == "FootballB")
            strHL = "http://www.ossaa.net/docs/2018-19/Football/FB_2018-19_BPlayoffBracket.pdf";
        else if (strClass == "FootballC")
            strHL = "http://www.ossaa.net/docs/2018-19/Football/FB_2018-19_CPlayoffBracket.pdf";

        hlBracket.NavigateUrl = strHL;
        **/

        // Session["BootstrapScores"] = clsPageObjects.GetGamesList("Football", "2019-11-22", false);

        //Session["BootstrapScores"] = Session["BootstrapScores"] + clsPageObjects.GetGamesList("FPSoftball", DateTime.Now.ToString("M/d/yyyy"));
        //Session["BootstrapScores"] = Session["BootstrapScores"] + clsPageObjects.GetGamesList("Volleyball", DateTime.Now.ToString("M/d/yyyy"));
        //Session["BootstrapScores"] = clsPageObjects.GetGamesList("Football", "2019-09-13");

    }

    protected void Page_Init(object sender, EventArgs e)
    {
        int x = 0;

        /// THIS WEEK...
        clsWebBuilder objWB0 = new clsWebBuilder();
        Telerik.Web.UI.RadMenu objThisWeek = new Telerik.Web.UI.RadMenu();
        objThisWeek = objWB0.BuildPageMenuItem("OSSAA.COM", "HomeColumn0", objThisWeek);
        do
        {
            RadMenu0.Items.Add(objThisWeek.Items[x]);
        } while (x <= (objThisWeek.Items.Count - 1));

        /// NEWS...
        clsWebBuilder objWB1 = new clsWebBuilder();
        Telerik.Web.UI.RadMenu objNews = new Telerik.Web.UI.RadMenu();
        objNews = objWB1.BuildPageMenuItem("OSSAA.COM", "HomeColumn1", objNews);
        do
        {
            RadMenu1.Items.Add(objNews.Items[x]);
        } while (x <= (objNews.Items.Count -1));

        /// QUICK LINKS...
        clsWebBuilder objWB2 = new clsWebBuilder();
        Telerik.Web.UI.RadMenu objQuickLinks = new Telerik.Web.UI.RadMenu();
        objQuickLinks = objWB2.BuildPageMenuItem("OSSAA.COM", "HomeColumn2", objQuickLinks);
        do
        {
            RadMenu2.Items.Add(objQuickLinks.Items[x]);
        } while (x <= (objQuickLinks.Items.Count - 1));

        /// QUICK LINKS...
        clsWebBuilder objWB3 = new clsWebBuilder();
        Telerik.Web.UI.RadMenu objUE = new Telerik.Web.UI.RadMenu();
        objUE = objWB3.BuildPageMenuItem("OSSAA.COM", "HomeColumn3", objUE);
        do
        {
            RadMenu3.Items.Add(objUE.Items[x]);
        } while (x <= (objUE.Items.Count - 1));

        /// NFHS...
        clsWebBuilder objWB4 = new clsWebBuilder();
        Telerik.Web.UI.RadMenu objNFHS = new Telerik.Web.UI.RadMenu();
        objNFHS = objWB4.BuildPageMenuItem("OSSAA.COM", "HomeColumn3a", objNFHS);
        do
        {
            RadMenu4.Items.Add(objNFHS.Items[x]);
        } while (x <= (objNFHS.Items.Count - 1));

        if (RadRotator1.Visible)
            objWB1.BuildPageRotator("OSSAA.COM", "HomeScroller", ref RadRotator1); 

        var screenSize = Detector.GetScreenSize(Request.UserAgent);

        switch (screenSize)
        {
            case DeviceScreenSize.ExtraLarge:
                break;
            case DeviceScreenSize.Large:
                break;
            case DeviceScreenSize.Medium:
                RadMediaPlayer1.Visible = false;
                cmdCalendarM.Visible = true;
                cmdOSSAARankingsM.Visible = true;
                cmdForTheParentsM.Visible = true;
                cmdMembershipM.Visible = true;
                break;
            case DeviceScreenSize.Small:
                RadMenu0.Font.Size = FontUnit.Point(24);        // CDW added 10/21/2019...
                RadMenu1.Font.Size = FontUnit.Point(24);
                RadMenu2.Font.Size = FontUnit.Point(24);
                RadMenu3.Font.Size = FontUnit.Point(24);
                RadMenu4.Font.Size = FontUnit.Point(24);
                RadTabStrip1.Font.Size = FontUnit.Point(24);

                RadMediaPlayer1.Visible = false;
                cmdCalendarM.Visible = true;
                cmdOSSAARankingsM.Visible = true;
                cmdForTheParentsM.Visible = true;
                cmdMembershipM.Visible = true;
                break;
        }

    }

}
