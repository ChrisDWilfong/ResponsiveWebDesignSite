using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.Device.Detection;

public partial class SportsMedicine : System.Web.UI.Page
{
    public string pageSport = "SportsMedicine";
    public string pageWebType = "OSSAA.COM";

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Page_Init(object sender, EventArgs e)
    {
        int x = 0;
        var screenSize = Detector.GetScreenSize(Request.UserAgent);

        // LOAD Top Menu...
        clsWebBuilder objWB1 = new clsWebBuilder();
        Telerik.Web.UI.RadMenu objNews = new Telerik.Web.UI.RadMenu();
        objNews = objWB1.BuildPageMenuItem(pageWebType, pageSport, objNews);
        do
        {
            RadMenu1.Items.Add(objNews.Items[x]);
        } while (x <= (objNews.Items.Count - 1));

        // LOAD Images...
        // Set some things based on Screensize...
        switch (screenSize)
        {
            case DeviceScreenSize.ExtraLarge:
                break;
            case DeviceScreenSize.Large:
                break;
            case DeviceScreenSize.Medium:
                break;
            case DeviceScreenSize.Small:
                RadMenu1.Font.Size = FontUnit.Point(24);
                break;
        }

        }

}
