using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.Device.Detection;

public partial class Parents : System.Web.UI.Page
{
    public string pageSport = "Parents";
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
        string retValue = "";
        retValue = objWB1.BuildImagesForPage(ref ImageHeader, ref ImageButton0, ref ImageButton1, ref ImageButton2, ref ImageButton3, ref ImageButton4, pageWebType, pageSport, false, ref lblImage00, ref lblImage10, ref lblImage20, ref lblImage30, ref lblImage40);

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
                ImageButton0.Width = Unit.Percentage(75);
                ImageButton1.Width = Unit.Percentage(75);
                ImageButton2.Width = Unit.Percentage(75);
                ImageButton3.Width = Unit.Percentage(75);
                ImageButton4.Width = Unit.Percentage(75);
                break;
        }

        }


    protected void ImageButton0_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect(ImageButton0.ToolTip);
    }
}
