using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.Device.Detection;

public partial class responsive_web_design_aspnet_samples_image_gallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var size = Detector.GetScreenSize(Request.UserAgent);

        if (size == DeviceScreenSize.Small)
            RadImageGalleryFruits.ImageAreaSettings.Height = new Unit("260px");
    }
}