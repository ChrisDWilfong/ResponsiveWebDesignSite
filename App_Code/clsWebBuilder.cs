using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for clsWebBuilder
/// </summary>
public class clsWebBuilder
{
    /// public bool ysnIsMobile;

    public static string PopulateMenuItem(ref Telerik.Web.UI.RadMenu objMenu, string strSite, string strType, string strMenuTitle)
    {
        Telerik.Web.UI.RadMenuItem objHeaderItem = objMenu.Items.FindItemByText(strMenuTitle);
        int x = 0;

        // Load Classifications menu...
        string strSQL = "";
        DataSet ds;
        strSQL = "SELECT * FROM [tblDashboardLinks] WHERE (([strSite] = '" + strSite + "') AND ([strType] = '" + strType + "') AND ([intYear] = " + clsFunctions.GetCurrentYear() + ") AND (intSort > 0)) ORDER BY intSort DESC";
        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionOSSAA, CommandType.Text, strSQL);

        for (x = 0; x <= ds.Tables[0].Rows.Count - 1; x++)
        {
            Telerik.Web.UI.RadMenuItem objDetailItem = new Telerik.Web.UI.RadMenuItem();
            objDetailItem.Text = Convert.ToString(ds.Tables[0].Rows[x]["strDescription"]);
            objDetailItem.NavigateUrl = Convert.ToString(ds.Tables[0].Rows[x]["strLink"]);
            objDetailItem.Target = "_blank";
            if (ds.Tables[0].Rows[x]["strLink"] is System.DBNull)
            {
                objDetailItem.BackColor = System.Drawing.Color.DarkGray;
                objDetailItem.ForeColor = System.Drawing.Color.White;
                objDetailItem.Target = "_blank";
            }
            objHeaderItem.Items.Add(objDetailItem);
        }


        return "OK";
    }

    public static string GetTheLink(string strLink)
    {
        string strNewLink = "";

        if (strLink.Contains("?"))
            strNewLink = strLink;
        else
            strNewLink = strLink + "?id=" + DateTime.Now.Millisecond;

        return strNewLink;
    }

    public string BuildImagesForPage(ref System.Web.UI.WebControls.ImageButton imageHeader, ref System.Web.UI.WebControls.ImageButton imageButton0, ref System.Web.UI.WebControls.ImageButton imageButton1, ref System.Web.UI.WebControls.ImageButton imageButton2, ref System.Web.UI.WebControls.ImageButton imageButton3, ref System.Web.UI.WebControls.ImageButton imageButton4, string strSite, string strType, Boolean ysnIsMobile, ref System.Web.UI.WebControls.Label lblImage0, ref System.Web.UI.WebControls.Label lblImage1, ref System.Web.UI.WebControls.Label lblImage2, ref System.Web.UI.WebControls.Label lblImage3, ref System.Web.UI.WebControls.Label lblImage4)
    {
        string strImageFolder = "~/images/" + strType + "/";
        string strSQL = "";
        string url = "";
        DataSet ds;
        string strResult = "OK";
        int x;
        int rowNo = 0;

        strSQL = "SELECT * FROM [tblDashboardLinks] WHERE (([strSite] = '" + strSite + "') AND ([strType] = '" + strType + "') AND (strLineType Like 'Image%') AND ([intYear] = " + clsFunctions.GetCurrentYear() + ") AND (intSort > 0)) ORDER BY intSort DESC";
        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionOSSAA, CommandType.Text, strSQL);

        imageButton0.Visible = false;
        imageButton1.Visible = false;
        imageButton2.Visible = false;
        imageButton3.Visible = false;
        imageButton4.Visible = false;
        lblImage0.Visible = false;
        lblImage1.Visible = false;
        lblImage2.Visible = false;
        lblImage3.Visible = false;
        lblImage4.Visible = false;

        imageHeader.Visible = false;
        // imageHeader1.Visible = false;

        if (ds == null)
        {
        }
        else if (ds.Tables.Count == 0)
        {
        }
        else if (ds.Tables[0].Rows.Count == 0)
        {
        }
        else
        {
            for (x = 0; x <= ds.Tables[0].Rows.Count - 1; x++)
            {
                switch (Convert.ToString(ds.Tables[0].Rows[x]["strLineType"]))
                {
                    case "Image":
                        {
                            rowNo = Convert.ToInt16(ds.Tables[0].Rows[x]["intSort"]);
                            switch (rowNo)
                            {
                                case 1:
                                    {
                                        imageButton0.ImageUrl = strImageFolder + Convert.ToString(ds.Tables[0].Rows[x]["strImageURL"]);
                                        imageButton0.Visible = true;
                                        if (!ds.Tables[0].Rows[x]["strDescription"].Equals(null))
                                        {
                                            lblImage0.Text = Convert.ToString(ds.Tables[0].Rows[x]["strDescription"]);
                                            lblImage0.Visible = true;
                                        }
                                        if (!ds.Tables[0].Rows[x]["strLink"].Equals(null))
                                        {
                                            imageButton0.PostBackUrl = Convert.ToString(ds.Tables[0].Rows[x]["strLink"]);
                                            imageButton0.ToolTip = Convert.ToString(ds.Tables[0].Rows[x]["strLink"]);
                                        }
                                        break;
                                    }
                                case 2:
                                    {
                                        imageButton1.ImageUrl = strImageFolder + Convert.ToString(ds.Tables[0].Rows[x]["strImageURL"]);
                                        imageButton1.Visible = true;
                                        if (!ds.Tables[0].Rows[x]["strDescription"].Equals(null))
                                        {
                                            lblImage1.Text = Convert.ToString(ds.Tables[0].Rows[x]["strDescription"]);
                                            lblImage1.Visible = true;
                                        }
                                        if (!ds.Tables[0].Rows[x]["strLink"].Equals(null))
                                        {
                                            imageButton1.PostBackUrl = Convert.ToString(ds.Tables[0].Rows[x]["strLink"]);
                                        }
                                        break;
                                    }
                                case 3:
                                    {
                                        imageButton2.ImageUrl = strImageFolder + Convert.ToString(ds.Tables[0].Rows[x]["strImageURL"]);
                                        imageButton2.Visible = true;
                                        if (!ds.Tables[0].Rows[x]["strDescription"].Equals(null))
                                        {
                                            lblImage2.Text = Convert.ToString(ds.Tables[0].Rows[x]["strDescription"]);
                                            lblImage2.Visible = true;
                                        }
                                        if (!ds.Tables[0].Rows[x]["strLink"].Equals(null))
                                        {
                                            imageButton2.PostBackUrl = Convert.ToString(ds.Tables[0].Rows[x]["strLink"]);
                                        }
                                        break;
                                    }
                                case 4:
                                    {
                                        imageButton3.ImageUrl = strImageFolder + Convert.ToString(ds.Tables[0].Rows[x]["strImageURL"]);
                                        imageButton3.Visible = true;
                                        if (!ds.Tables[0].Rows[x]["strDescription"].Equals(null))
                                        {
                                            lblImage3.Text = Convert.ToString(ds.Tables[0].Rows[x]["strDescription"]);
                                            lblImage3.Visible = true;
                                        }
                                        if (!ds.Tables[0].Rows[x]["strLink"].Equals(null))
                                        {
                                            imageButton3.PostBackUrl = Convert.ToString(ds.Tables[0].Rows[x]["strLink"]);
                                        }
                                        break;
                                    }
                                case 5:
                                    {
                                        imageButton4.ImageUrl = strImageFolder + Convert.ToString(ds.Tables[0].Rows[x]["strImageURL"]);
                                        imageButton4.Visible = true;
                                        if (!ds.Tables[0].Rows[x]["strDescription"].Equals(null))
                                        {
                                            lblImage4.Text = Convert.ToString(ds.Tables[0].Rows[x]["strDescription"]);
                                            lblImage4.Visible = true;
                                        }
                                        if (!ds.Tables[0].Rows[x]["strLink"].Equals(null))
                                        {
                                            imageButton4.PostBackUrl = Convert.ToString(ds.Tables[0].Rows[x]["strLink"]);
                                        }
                                        break;
                                    }
                            }
                            break;
                        }

                    case "ImageHeader":
                        {
                            imageHeader.ImageUrl = strImageFolder + Convert.ToString(ds.Tables[0].Rows[x]["strImageURL"]);
                            imageHeader.Visible = true;
                            url = strImageFolder + Convert.ToString(ds.Tables[0].Rows[x]["strImageURL"]);
                            //imageHeader1.ImageUrl = url.Replace("_", "300_");
                            //imageHeader1.Visible = true;
                            break;
                        }
                }
            }

        }
        return strResult;
    }


    public string BuildPage(string strSite, string strType, string strTableWidth, Boolean ysnIsMobile)
    {
        string strSQL = "";
        DataSet ds;
        string strResult = "";
        int x;
        string strDescription = "";

        strSQL = "SELECT [Id], [strDescription], [strLink], [strLineType] FROM [tblDashboardLinks] WHERE (([strSite] = '" + strSite + "') AND ([strType] = '" + strType + "') AND ([intYear] = " + clsFunctions.GetCurrentYear() + ") AND (intSort > 0)) ORDER BY intSort DESC";
        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionOSSAA, CommandType.Text, strSQL);

        if (ds == null)
        {
        }
        else if (ds.Tables.Count == 0)
        {
        }
        else if (ds.Tables[0].Rows.Count == 0)
        {
        }
        else
        {
            strResult = "<table runat='server' style='width: " + strTableWidth + ";' CssClass='tableStyle'>";

            for (x = 0; x <= ds.Tables[0].Rows.Count - 1; x++)
            {
                if (Convert.ToString(ds.Tables[0].Rows[x]["strLineType"]) == "RedHeading")
                {
                }
                if (Convert.ToString(ds.Tables[0].Rows[x]["strLineType"]) == "BlackHeading")
                {
                }

                strResult = strResult + "<tr>";
                strDescription = Convert.ToString(ds.Tables[0].Rows[x]["strDescription"]).Replace(System.Environment.NewLine, "<br>");

                switch (Convert.ToString(ds.Tables[0].Rows[x]["strLineType"]))
                {
                    case "RedHeading":
                        {
                            strResult = strResult + "<td style='background-color:navy;'><span style='color: White; font-family: Segoe UI;background-color: navy; height:28px;'><strong>&nbsp;" + strDescription + "</span></strong></td>";
                            break;
                        }

                    case "BlackHeading":
                        {
                            strResult = strResult + "<td style='background-color:black;'><span style='color: White; font-family: Segoe UI;background-color: black; height:28px;'><strong>&nbsp;" + strDescription + "</span></strong></td>";
                            break;
                        }

                    case "Text":
                        {
                            // strResult = strResult & "<td><span style='font-size: 14px; font-family: Arial; color:Black;'>" & ds.Tables[0].Rows[x].Item("strDescription") & "</span></td>"
                            if (ysnIsMobile == true)
                                strResult = strResult + "<td><span style='color:Black;'><span style='font-size: 0.95em; font-family: Arial; color:black;'>" + strDescription + "</span></span></td>";
                            else
                                strResult = strResult + "<td><span style='color:Black;'><span style='font-size: 1.1em; font-family: Arial; color:black;'>" + strDescription + "</span></span></td>";
                            break;
                        }

                    case "TextRed":
                        {
                            strResult = strResult + "<td><span style='font-family:Arial; color:Red;'>" + strDescription + "</span></td>";
                            break;
                        }

                    case "TextBold":
                        {
                            if (ysnIsMobile == true)
                                strResult = strResult + "<td style='background-color:White;'><span style='font-size: 0.95em; font-family:Segoe UI,Arial; color:black;'><strong>" + strDescription + "</span></strong></td>";
                            else
                                strResult = strResult + "<td style='background-color:White;'><span style='font-size: 1.1em; font-family:Segoe UI,Arial; color:black;'><strong>" + strDescription + "</span></strong></td>";
                            break;
                        }

                    case "TextBoldRed":
                        {
                            strResult = strResult + "<td style='background-color:White;'><span style='color:Red;font-size: 1.2em;font-family:Segoe UI,Arial;'><strong>" + strDescription + "</strong></span></td>";
                            break;
                        }

                    case "Link":
                        {
                            strResult = strResult + "<td><a href='" + GetTheLink(Convert.ToString(ds.Tables[0].Rows[x]["strLink"])) + "' target='_blank' style='outline:none; border:none;' >" + strDescription + "</a></td>";
                            break;
                        }

                    case "LinkBold":
                        {
                            strResult = strResult + "<td>&nbsp;<img width='10' height='10' src='Button.gif' />&nbsp;<a href='" + GetTheLink(Convert.ToString(ds.Tables[0].Rows[x]["strLink"])) + "' target='_blank'><span style='font-size: 14px; font-family: Arial;'><strong>" + Convert.ToString(ds.Tables[0].Rows[x]["strDescription"]) + "</strong></span></a></td>";
                            break;
                        }

                    case "LinkRed":
                        {
                            strResult = strResult + "<td>&nbsp;<img width='10' height='10' src='Button.gif' />&nbsp;<a href='" + GetTheLink(Convert.ToString(ds.Tables[0].Rows[x]["strLink"])) + "' target='_blank'><span style='font-size: 14px; font-family: Arial;color:Red;'>" + Convert.ToString(ds.Tables[0].Rows[x]["strDescription"]) + "</span></a></td>";
                            break;
                        }

                    case "LinkBoldRed":
                        {
                            strResult = strResult + "<td>&nbsp;<img width='10' height='10' src='Button.gif' />&nbsp;<a href='" + GetTheLink(Convert.ToString(ds.Tables[0].Rows[x]["strLink"])) + "' target='_blank'><span style='font-size: 14px; font-family: Arial;color:Red;'><strong>" + Convert.ToString(ds.Tables[0].Rows[x]["strDescription"]) + "</strong></span></a></td>";
                            break;
                        }
                    case "Image":
                        break;
                    case "ImageHeader":
                        break;
                    default:
                        {
                            break;
                        }
                }
                strResult = strResult + "</tr>";
            }

            strResult = strResult + "</table>";
        }

        // Strip out "fantom" blank lines (10/12/2017)...
        strResult = strResult.Replace("<tr><td><span style='color:Black;'>&nbsp</span></td></tr>", "");
        strResult = strResult.Replace("<tr><td style='background-color:White;'><span style='color:Black;'>&nbsp</span></td></tr>", "");

        return strResult;
    }

    public Telerik.Web.UI.RadRotator BuildPageRotator(string strSite, string strType, ref Telerik.Web.UI.RadRotator objRotator, int intYear = 0)
    {
        int x = 0;

        if (intYear == 0)
            intYear = clsFunctions.GetCurrentYear();

        string strSQL = "SELECT [Id], [strDescription], [strImageURL], [strLink], [strLineType] FROM [tblDashboardLinks] WHERE (([strSite] = '" + strSite + "') AND ([strType] = '" + strType + "') AND ([intYear] = " + intYear + ") AND (intSort > 0)) ORDER BY intSort DESC";
        DataSet ds = new DataSet();

        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionOSSAA, CommandType.Text, strSQL);

        if (ds == null) { }
        else if (ds.Tables.Count == 0) { }
        else if (ds.Tables[0].Rows.Count == 0) { }
        else
        {
            for (x = 0; x <= ds.Tables[0].Rows.Count - 1; x++)
            {
                Telerik.Web.UI.RadRotatorItem objRI = new Telerik.Web.UI.RadRotatorItem();
                System.Web.UI.WebControls.HyperLink objHL = new System.Web.UI.WebControls.HyperLink();
                objHL.ImageUrl = Convert.ToString(ds.Tables[0].Rows[x]["strLink"]);
                objRI.Controls.Add(objHL);
                objRotator.Items.Add(objRI);
            }
        }
        return objRotator;
    }

    public Telerik.Web.UI.RadMenu BuildPageMenuItem(string strSite, string strType, Telerik.Web.UI.RadMenu objMenu, int intYear = 0)
    {
        if (intYear == 0)
            intYear = clsFunctions.GetCurrentYear();
        string strDescription = "";
        string strValue = "";

        string strSQL = "";
        strSQL = "SELECT [Id], [strDescription], [strLink], [strLineType], [intSort] FROM [tblDashboardLinks] WHERE (([strSite] = '" + strSite + "') AND ([strType] = 'Manual') AND ([intYear] = " + intYear + "))";
        strSQL = strSQL + " UNION ";
        strSQL = strSQL + "SELECT [Id], [strDescription], [strLink], [strLineType], [intSort] FROM [tblDashboardLinks] WHERE (([strSite] = '" + strSite + "') AND ([strType] = '" + strType + "') AND ([intYear] = " + intYear + ") AND (intSort > 0)) ORDER BY intSort DESC";
        DataSet ds = new DataSet();

        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionOSSAA, CommandType.Text, strSQL);

        foreach (DataTable table in ds.Tables)
        {
            foreach (DataRow dr in table.Rows)
            {
                Telerik.Web.UI.RadMenuItem objMI = new Telerik.Web.UI.RadMenuItem();
                //objMI.Text = Convert.ToString( dr["strDescription"]);
                strValue = Convert.ToString(dr["strDescription"]);
                strValue = strValue.Replace(System.Environment.NewLine, "<br>");
                objMI.Text = strValue;
                if (Convert.ToString(dr["strLineType"]).Contains("Bold")) {
                    objMI.Text = "<strong>" + objMI.Text + "</strong>";
                }

                if (Convert.ToString(dr["strLineType"]).Contains("Link") || Convert.ToString(dr["strLineType"]).Contains("Manual"))
                {
                    strDescription = Convert.ToString(dr["strDescription"]);
                    if (strDescription.Contains("Bracket")) {
                        objMI.NavigateUrl = Convert.ToString(dr["strLink"]) + "?id=" + Convert.ToString(DateTime.Now.Second);
                    }
                    else {
                        objMI.NavigateUrl = Convert.ToString(dr["strLink"]);
                    }
                    if (Convert.ToString(dr["strLineType"]).Contains("Link")) 
                        objMI.Target = "_blank";
                    objMI.ForeColor = System.Drawing.Color.Blue;
                    objMI.BorderColor = System.Drawing.Color.LightGray;
                    objMI.BorderWidth = 1;
                }

                if (Convert.ToString(dr["strLineType"]).Contains("Red"))
                {
                    objMI.ForeColor = System.Drawing.Color.White;
                    objMI.BackColor = System.Drawing.Color.Navy;        // Says Red but let's do NAVY...
                    objMI.Font.Bold = true;
                    objMI.BorderWidth = 1;
                    objMI.BorderColor = System.Drawing.Color.Black;
                    objMI.Font.Underline = false;
                }

                if (Convert.ToString(dr["strLineType"]).Contains("Pink"))
                {
                    objMI.ForeColor = System.Drawing.Color.White;
                    objMI.BackColor = System.Drawing.Color.Red;        // Says Red but let's do NAVY...
                    objMI.Font.Bold = true;
                    objMI.BorderWidth = 1;
                    objMI.BorderColor = System.Drawing.Color.Black;
                    objMI.Font.Underline = false;
                }

                if (Convert.ToString(dr["strLineType"]).Contains("Black"))
                {
                    objMI.ForeColor = System.Drawing.Color.White;
                    objMI.BackColor = System.Drawing.Color.Black;
                    objMI.Font.Bold = true;
                    objMI.BorderWidth = 1;
                    objMI.BorderColor = System.Drawing.Color.Black;
                    objMI.Font.Underline = false;
                }

                if (Convert.ToString(dr["strLineType"]).Contains("Image"))
                {
                    objMI.Visible = false;
                }

                if (Convert.ToString(dr["strLineType"]).Contains("ImageHeader"))
                {
                    objMI.Visible = false;
                }

                if (objMI.Visible)
                    objMenu.Items.Add(objMI);
               
            }
        }

        return objMenu;
       
    }

    }
