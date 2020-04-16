using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Samples_Scheduler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Resets the example data on each page load.
            Session.Remove(SchedulerWebService.ProviderSessionKey);
        }

        if (RadScheduler2.ResolvedRenderMode == Telerik.Web.UI.RenderMode.Mobile)
        {
            RadScheduler2.OverflowBehavior = Telerik.Web.UI.OverflowBehavior.Scroll;
        }
    }

    protected void RadScheduler1_Load(object sender, System.EventArgs e)
    {
        //this code clears the sessionkey for demo related purposes
        Session.Remove(SchedulerWebService.ProviderSessionKey);
    }
}