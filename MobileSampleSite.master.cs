using System;
using System.Linq;
using System.Web.UI.WebControls;
using Telerik.Web.Device.Detection;
using Telerik.Web.UI;
using System.Data;

public partial class MobileSampleSite : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        currentYear.Text = DateTime.Now.Year.ToString();

        rowHeader.Visible = false;
        rowHeaderM.Visible = true;

        int x = 0;
        var screenSize = Detector.GetScreenSize(Request.UserAgent);

        // Set some things based on Screensize...
        switch (screenSize)
        {
            case DeviceScreenSize.ExtraLarge:
            case DeviceScreenSize.Large:
                rowHeader.Visible = true;
                rowHeaderM.Visible = false;
                PageLayoutMaster.HtmlTag = Telerik.Web.UI.PageLayout.TagName.None;
                break;
            case DeviceScreenSize.Medium:
                rowHeader.Visible = true;
                rowHeaderM.Visible = false;
                PageLayoutMaster.HtmlTag = Telerik.Web.UI.PageLayout.TagName.Div;
                break;
            case DeviceScreenSize.Small:
                rowHeader.Visible = false;
                rowHeaderM.Visible = true;
                PageLayoutMaster.HtmlTag = Telerik.Web.UI.PageLayout.TagName.Div;
                break;
        }
    }

    protected void RadMenuMain_DataBound(object sender, EventArgs e)
    {
        string strReturn = "";
        strReturn = clsWebBuilder.PopulateMenuItem(ref RadMenuMain, "OSSAA.COM", "Classifications", "CLASSIFICATION");
        strReturn = clsWebBuilder.PopulateMenuItem(ref RadMenuMain, "OSSAA.COM", "OSSAAInfo", "OSSAA INFO");
    }

    protected void RadMenuMainM_DataBound(object sender, EventArgs e)
    {
        string strReturn = "";
        strReturn = clsWebBuilder.PopulateMenuItem(ref RadMenuMainM, "OSSAA.COM", "Classifications", "CLASSIFICATION");
        strReturn = clsWebBuilder.PopulateMenuItem(ref RadMenuMainM, "OSSAA.COM", "OSSAAInfo", "OSSAA INFO");
    }
}
