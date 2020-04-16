using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsSchedules
/// </summary>
public class clsSchedules
{
    public static string GetScheduleSportDaySQL(string strSportID, string strClass, string strDate, string strType, int nogames, bool ysnScroller = false)
    {
        string sql = "";
        string sqlAll = "";
        string strTop20 = "";

        sql = "Select tblSchedules.scheduleID, tblSchedules.intGame, tblSchedules.teamID, tblSchedules.District, tblSchedules.strType, tblTeams.SchoolName As School, ";
        sql = sql + "tblSchedules.NeutralSiteCoor, tblSchedules.oTeamID, tblSchool_1.SchoolName As oSchool, tblSchedules.gamedate, tblSchedules.gStatus, ";
        sql = sql + "tblSchedules.gametime, tblSchedules.OtherTeam, tblSchedules.Location,  tblSchedules.strLink, tblSchedules.rank, tblSchedules.orank, ";
        sql = sql + "tblSchedules.Tournament, tblSchedules.TotalScore, tblSchedules.oTotalScore, tblSchedules.rank, tblSchedules.OtherTeam, ";
        sql = sql + "tblSchedules.strResults As results, ";
        sql = sql + "tblSchedules.orank, tblSchedules.dtmStamp, tblSports_1.Class, tblSports_1.sportID, tblSports_1.SportGenderKey, ";
        sql = sql + "0 As DuplicateGame, tblSchool.SchoolName As strSort, ";
        sql = sql + "tblSports.Class As oClass, tblSports.sportID As oSportID, tblSports.SportGenderKey As oSportGenderKey, 'Game' as Game, 'Score' as Score, 'Summary' as Summary ";
        sql = sql + ", '<a href=mailto:' + dbo.GetTeamsEmailAddress(tblSchedules.TeamID) + '>Email</a> : <a href=mailto:' + dbo.GetTeamsEmailAddress(tblSchedules.oTeamID) + '>Email</a>' AS strEmail ";
        sql = sql + "FROM tblSchool AS tblSchool_1 INNER JOIN ";
        sql = sql + "tblTeams AS tblTeams_1 ON tblSchool_1.schoolID = tblTeams_1.schoolID INNER JOIN ";
        sql = sql + "tblSports ON tblTeams_1.sportID = tblSports.sportID RIGHT OUTER JOIN ";
        sql = sql + "tblSports AS tblSports_1 INNER JOIN ";
        sql = sql + "tblTeams ON tblSports_1.sportID = tblTeams.sportID INNER JOIN ";
        sql = sql + "tblSchool ON tblTeams.schoolID = tblSchool.schoolID RIGHT OUTER JOIN ";
        sql = sql + "tblSchedules ON tblTeams.teamID = tblSchedules.teamID ON ";
        sql = sql + "tblTeams_1.teamID = tblSchedules.oTeamID ";
        sqlAll = sql;

        if (strClass.Contains("Top"))
        {
            strClass = strClass.Replace(" Top 20", "");
            strSportID = strSportID.Replace(" Top 20", "");
            strClass = strClass.Replace(" Top 15", "");
            strSportID = strSportID.Replace(" Top 15", "");
            strClass = strClass.Replace(" Top 12", "");
            strSportID = strSportID.Replace(" Top 12", "");
            // strTop20 = " AND ((rank <> 0 AND tblSports_1.Class = '" & strClass & "' AND tblSports_1.sportID = '" & strSportID & "') OR (oRank <> 0 AND tblSports.Class = '" & strClass & "' AND tblSports.sportID = '" & strSportID & "')) "
            strTop20 = " AND (rank <> 0 AND tblSports_1.Class = '" + strClass + "' AND tblSports_1.sportID = '" + strSportID + "') ";
        }
        else
            strTop20 = "";

        if (strType == "WEEK4")
        {
            if (strClass == "ALL" | strClass == "Select Class..." | strClass == "")
                sqlAll = sqlAll + "WHERE (tblSchedules.sportID Like '" + strSportID + "%') AND (tblSchedules.ysnActive <> 0) AND (tblSchedules.strType = 'TOSSAA4' OR tblSchedules.strType = 'TOSSAA2') AND (gameDate > '12/8/2013' AND gameDate <= '12/15/2013') " + strTop20;
            else
                sqlAll = sqlAll + "WHERE (tblSchedules.sportID = '" + strSportID + "') AND (tblSchedules.ysnActive <> 0) AND ((tblSports.Class = '" + strClass + "') OR (tblSports_1.Class = '" + strClass + "')) AND (tblSchedules.strType = 'TOSSAA4' OR tblSchedules.strType = 'TOSSAA2') AND (gameDate > '12/8/2013' AND gameDate <= '12/15/2013') " + strTop20;
        }
        else if (strType == "WEEK3")
        {
            if (strClass == "ALL" | strClass == "Select Class..." | strClass == "")
                sqlAll = sqlAll + "WHERE (tblSchedules.sportID Like '" + strSportID + "%') AND (tblSchedules.ysnActive <> 0) AND (tblSchedules.strType = 'TOSSAA4' OR tblSchedules.strType = 'TOSSAA8') AND (gameDate > '11/25/2013' AND gameDate <= '12/1/2013') " + strTop20;
            else
                sqlAll = sqlAll + "WHERE (tblSchedules.sportID = '" + strSportID + "') AND (tblSchedules.ysnActive <> 0) AND ((tblSports.Class = '" + strClass + "') OR (tblSports_1.Class = '" + strClass + "')) AND (tblSchedules.strType = 'TOSSAA4' OR tblSchedules.strType = 'TOSSAA8') AND (gameDate > '11/25/2013' AND gameDate <= '12/1/2013') " + strTop20;
        }
        else if (strType == "WEEK2")
        {
            if (strClass == "ALL" | strClass == "Select Class..." | strClass == "")
                sqlAll = sqlAll + "WHERE (tblSchedules.sportID Like '" + strSportID + "%') AND (tblSchedules.ysnActive <> 0) AND (tblSchedules.strType = 'TOSSAA16' OR tblSchedules.strType = 'TOSSAA8') AND (gameDate > '11/18/2013' AND gameDate <= '11/24/2013') " + strTop20;
            else
                sqlAll = sqlAll + "WHERE (tblSchedules.sportID = '" + strSportID + "') AND (tblSchedules.ysnActive <> 0) AND ((tblSports.Class = '" + strClass + "') OR (tblSports_1.Class = '" + strClass + "')) AND (tblSchedules.strType = 'TOSSAA16' OR tblSchedules.strType = 'TOSSAA8') AND (gameDate > '11/18/2013' AND gameDate <= '11/24/2013') " + strTop20;
        }
        else if (strDate == "ALL" | strDate == "")
        {
            if (strClass == "ALL" | strClass == "Select Class..." | strClass == "")
                sqlAll = sqlAll + "WHERE (tblSchedules.sportID Like '" + strSportID + "%') AND (tblSchedules.ysnActive <> 0) AND (tblSchedules.strType = '" + strType + "') " + strTop20;
            else
                sqlAll = sqlAll + "WHERE (tblSchedules.sportID = '" + strSportID + "') AND (tblSchedules.ysnActive <> 0) AND ((tblSports.Class = '" + strClass + "') OR (tblSports_1.Class = '" + strClass + "')) AND (tblSchedules.strType = '" + strType + "') " + strTop20;
        }
        else if (strClass == "ALL" | strClass == "Select Class..." | strClass == "")
            sqlAll = sqlAll + "WHERE (tblSchedules.sportID Like '" + strSportID + "%') AND (tblSchedules.ysnActive <> 0) AND (tblSchedules.gamedate = CONVERT(DATETIME, '" + strDate + "', 102)) " + strTop20;
        else
            sqlAll = sqlAll + "WHERE (tblSchedules.sportID = '" + strSportID + "') AND (tblSchedules.ysnActive <> 0) AND ((tblSports.Class = '" + strClass + "') OR (tblSports_1.Class = '" + strClass + "')) AND (tblSchedules.gamedate = CONVERT(DATETIME, '" + strDate + "', 102)) " + strTop20;

        // 9/28/2015 added...
        if (nogames == 1)
            sqlAll = sqlAll + "AND (tblSchedules.TotalScore = 0 AND tblSchedules.oTotalScore = 0) ";

        sqlAll = sqlAll + "AND tblSchool.SchoolName IS NOT NULL ";

        if (ysnScroller)
            sqlAll = sqlAll + "ORDER BY tblSchedules.TotalScore DESC";
        else if (strTop20 == "")
            sqlAll = sqlAll + "ORDER BY tblTeams.SchoolName";
        else
            sqlAll = sqlAll + "ORDER BY tblSchedules.rank";

        // clsLog.LogSQL(sqlAll)

        return sqlAll;
    }


    public static string GetSportString(string strSportGenderKey)
    {
        switch (strSportGenderKey)
        {
            case "FPSoftball":
                {
                    return "Fast Pitch";
                }

            case "BaseballFall":
            case "FallBaseball":
                {
                    return "Fall Baseball";
                }

            default:
                {
                    return strSportGenderKey;
                }
        }
    }


}