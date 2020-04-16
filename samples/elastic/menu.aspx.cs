using System;
using System.Linq;
using Telerik.Web.UI;

public partial class Samples_ElasticMenu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var value = RadDropDownFontSizePostBack.SelectedValue;

        if (!string.IsNullOrEmpty(value))
        {
            RadMenuElastic.CssClass = value;
        }
    }
}