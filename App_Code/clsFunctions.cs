using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsFunctions
/// </summary>
public class clsFunctions
{
    public static int GetCurrentYear()
    {
        //return 19;
        // CDW added 6/12/2019...
        return Convert.ToInt16(System.Configuration.ConfigurationManager.AppSettings["currentYear"]);
    }

}