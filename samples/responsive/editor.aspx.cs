using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Samples_Editor : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		var value = RadDropDownFontSizePostBack.SelectedValue;

		if (!string.IsNullOrEmpty(value))
		{
			RadEditor1.CssClass = value;
		}
	}
}