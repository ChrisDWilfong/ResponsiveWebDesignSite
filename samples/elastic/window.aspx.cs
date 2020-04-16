using System;
using System.Linq;
using Telerik.Web.Device.Detection;

public partial class Samples_Window : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        var value = RadDropDownFontSizePostBack.SelectedValue;

        if (!string.IsNullOrEmpty(value))
        {
            RadWindowDevices.CssClass = value;
        }

        var screenSize = Detector.GetScreenSize(Request.UserAgent);

        if (screenSize == DeviceScreenSize.Medium || screenSize == DeviceScreenSize.Small)
        {
            WindowImage.ImageUrl = "windows_small.png";
        }
    }
}