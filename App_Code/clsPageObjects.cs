using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for clsPageObjects
/// </summary>
public class clsPageObjects
{
        public static string GetPictureScrollers()          /** NOT USED!!! CDW added 10/2/2019 **/
        {
        string strReturn = "";
        string strSQL = "";
        DataSet ds;
        int x;

        strSQL = "SELECT * FROM tblDashboardLinks WHERE strSite = 'OSSAA.COM' AND strType = 'Home' AND strLineType = 'Scroller' AND intSort > 0 AND intYear = " + clsFunctions.GetCurrentYear() + " ORDER BY intSort";
        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionOSSAA, CommandType.Text, strSQL);

        if (ds == null)
        {
            strReturn += "<telerik:RadRotator ID='RadRotator1' runat='server' Width='102%' Height='300px' ScrollDuration='1500' ScrollDirection='Left' FrameDuration='2000' ItemHeight='150' ItemWidth='310px' RenderMode='Auto'>";
            strReturn += "</telerik:RadRotator>";
        }
        else if (ds.Tables.Count == 0)
        {
            strReturn += "<telerik:RadRotator ID='RadRotator1' runat='server' Width='102%' Height='300px' ScrollDuration='1500' ScrollDirection='Left' FrameDuration='2000' ItemHeight='150' ItemWidth='310px' RenderMode='Auto'>";
            strReturn += "</telerik:RadRotator>";
        }
        else if (ds.Tables[0].Rows.Count == 0)
        {
            strReturn += "<telerik:RadRotator ID='RadRotator1' runat='server' Width='102%' Height='300px' ScrollDuration='1500' ScrollDirection='Left' FrameDuration='2000' ItemHeight='150' ItemWidth='310px' RenderMode='Auto'>";
            strReturn += "</telerik:RadRotator>";
        }
        else {
            strReturn += "<telerik:RadRotator ID='RadRotator1' runat='server' Width='102%' Height='300px' ScrollDuration='1500' ScrollDirection='Left' FrameDuration='2000' ItemHeight='150' ItemWidth='310px' RenderMode='Auto'>";
            strReturn += "<Items>";
            for (x = 0; x <= ds.Tables[0].Rows.Count - 1; x++)
            {
                strReturn += "<telerik:RadRotatorItem>";
                strReturn += "<ItemTemplate>";
                strReturn += "<asp:HyperLink runat='server' ImageUrl='" + ds.Tables[0].Rows[x]["strLink"] + "'></asp:HyperLink>";
                strReturn += "</ItemTemplate>";
                strReturn += "</telerik:RadRotatorItem>";
            }
            strReturn += "</Items>";
            strReturn += "</telerik:RadRotator>";
        }
        return strReturn;

    }
    public static string GetGamesList(string strSportGenderKey, string strScoreboardDate, bool ShowUpcomingGames)
        {
            string strReturn = "";
            string strSQL = "";
            DataSet ds;
            int x;
            string dateLong = "";

            // NOTE : strScoreboardDate format 'yyyy-mm-dd'
            dateLong = Convert.ToDateTime(strScoreboardDate).ToLongDateString();

            strScoreboardDate = strScoreboardDate + " 00:00:00";

            strSQL = clsSchedules.GetScheduleSportDaySQL(strSportGenderKey, "ALL", strScoreboardDate, "", 0, true);
            ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionOSSAARankings, CommandType.Text, strSQL);

            if (ds == null)
            {
                strReturn += "<Article Class='post-inline'>";
                strReturn += "<time Class='post-inline-time' datetime='2019'>" + clsSchedules.GetSportString(strSportGenderKey) + " - NO GAMES SCHEDULED</time>";
                strReturn += "</article>";
            }
            else if (ds.Tables.Count == 0)
            {
                strReturn += "<Article Class='post-inline'>";
                strReturn += "<time Class='post-inline-time' datetime='2019'>" + clsSchedules.GetSportString(strSportGenderKey) + " - NO GAMES SCHEDULED</time>";
                strReturn += "</article>";
            }
            else if (ds.Tables[0].Rows.Count == 0)
            {
                strReturn += "<Article Class='post-inline'>";
                strReturn += "<time Class='post-inline-time' datetime='2019'>" + clsSchedules.GetSportString(strSportGenderKey) + " - NO GAMES SCHEDULED</time>";
                strReturn += "</article>";
            }
            else
                for (x = 0; x <= ds.Tables[0].Rows.Count - 1; x++)
                {
                if (ds.Tables[0].Rows[x]["oschool"] != System.DBNull.Value)
                {
                    if (Convert.ToInt16(ds.Tables[0].Rows[x]["TotalScore"]) > Convert.ToInt16(ds.Tables[0].Rows[x]["oTotalScore"]))
                        {
                            // GAMES WITH SCORES...
                            strReturn += "<Article Class='post-inline'>";
                            strReturn += "<time Class='post-inline-time' datetime='2019'>" + clsSchedules.GetSportString(strSportGenderKey) + "-" + dateLong + "</time><br>";
                            if (ds.Tables[0].Rows[x]["oschool"] == System.DBNull.Value)
                            {
                            }
                            else
                            {
                                if (Convert.ToInt16( ds.Tables[0].Rows[x]["TotalScore"]) > Convert.ToInt16(ds.Tables[0].Rows[x]["oTotalScore"]))
                                    strReturn += "<p Class='post-inline-title'>" + ds.Tables[0].Rows[x]["school"] + " " + ds.Tables[0].Rows[x]["TotalScore"] + " " + ds.Tables[0].Rows[x]["oschool"] + " " + ds.Tables[0].Rows[x]["oTotalScore"] + "</p>";
                                else
                                    strReturn += "<p Class='post-inline-title'>" + ds.Tables[0].Rows[x]["oschool"] + " " + ds.Tables[0].Rows[x]["oTotalScore"] + " " + ds.Tables[0].Rows[x]["school"] + " " + ds.Tables[0].Rows[x]["TotalScore"] + "</p>";
                                strReturn += "</article>";
                            }
                        }
                        else if (ds.Tables[0].Rows[x]["school"] != System.DBNull.Value & ds.Tables[0].Rows[x]["oschool"] != System.DBNull.Value)
                        {
                            strReturn += "<Article Class='post-inline'>";
                            strReturn += "<time Class='post-inline-time' datetime='2019'>" + clsSchedules.GetSportString(strSportGenderKey) + "-" + dateLong + "</time><br>";
                            strReturn += "<p Class='post-inline-title'>" + ds.Tables[0].Rows[x]["school"] + " vs " + ds.Tables[0].Rows[x]["oschool"] + "</p>";
                            strReturn += "</article>";
                        }
                    }
                }

            return strReturn;
        }

}