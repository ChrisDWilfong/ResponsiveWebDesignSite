using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.Device.Detection;

public partial class CrossCountry : System.Web.UI.Page
{
    public string pageSport = "CrossCountry";
    public string pageWebType = "OSSAA.COM";

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Page_Init(object sender, EventArgs e)
    {
        int x = 0;
        int intFontSize1 = Convert.ToInt16(System.Configuration.ConfigurationManager.AppSettings["fontSizeImageTextM"]);
        int intFontSize2 = Convert.ToInt16(System.Configuration.ConfigurationManager.AppSettings["fontSizeMenuTextM"]);
        var screenSize = Detector.GetScreenSize(Request.UserAgent);

        // LOAD Top Menu...
        clsWebBuilder objWB1 = new clsWebBuilder();
        Telerik.Web.UI.RadMenu objNews = new Telerik.Web.UI.RadMenu();
        objNews = objWB1.BuildPageMenuItem(pageWebType, pageSport, objNews);
        do
        {
            RadMenu1.Items.Add(objNews.Items[x]);
        } while (x <= (objNews.Items.Count - 1));

        // LOAD Bottom Menu...
        clsWebBuilder objWB2 = new clsWebBuilder();
        Telerik.Web.UI.RadMenu objChampionships = new Telerik.Web.UI.RadMenu();
        objChampionships = objWB2.BuildPageMenuItem(pageWebType, pageSport, objNews, -(clsFunctions.GetCurrentYear() - 1));
        if (objChampionships.Items.Count > 0)
            do
            {
                RadMenu2.Items.Add(objChampionships.Items[x]);
            } while (x <= (objChampionships.Items.Count - 1));

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
                RadMenu1.Font.Size = FontUnit.Point(intFontSize2);
                RadMenu2.Font.Size = FontUnit.Point(intFontSize2);
                ImageButton0.Width = Unit.Percentage(75);
                ImageButton1.Width = Unit.Percentage(75);
                ImageButton2.Width = Unit.Percentage(75);
                ImageButton3.Width = Unit.Percentage(75);
                ImageButton4.Width = Unit.Percentage(75);
                lblImage00.Font.Size = FontUnit.Point(intFontSize1);
                lblImage10.Font.Size = FontUnit.Point(intFontSize1);
                lblImage20.Font.Size = FontUnit.Point(intFontSize1);
                lblImage30.Font.Size = FontUnit.Point(intFontSize1);
                lblImage40.Font.Size = FontUnit.Point(intFontSize1);
                if (lblImage00.Visible) lblImage00.Text = "<br>" + lblImage00.Text;
                if (lblImage10.Visible) lblImage10.Text = "<br>" + lblImage10.Text;
                if (lblImage20.Visible) lblImage20.Text = "<br>" + lblImage20.Text;
                if (lblImage30.Visible) lblImage30.Text = "<br>" + lblImage30.Text;
                if (lblImage40.Visible) lblImage40.Text = "<br>" + lblImage40.Text;
                break;
        }

    }
}
