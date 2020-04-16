using System.Collections.Generic;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.SessionState;
using Telerik.Web.UI;

/// <summary>
/// RadScheduler data service.
/// </summary>
/// 
[WebService]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[ScriptService]
public class SchedulerWebService : WebService, IRequiresSessionState
{
	private WebServiceAppointmentController _controller;
	public const string ProviderSessionKey = "SchedulerWebServiceData";

	private WebServiceAppointmentController Controller
	{
		get
		{
			CustomXmlSchedulerProvider provider;
			if ((Session[ProviderSessionKey] == null))
			{
				provider = new CustomXmlSchedulerProvider(Server.MapPath("~/App_Data/Appointments_Outlook.xml"), false);
				Session[ProviderSessionKey] = provider;
			}
			else
			{
				provider = (CustomXmlSchedulerProvider)Session[ProviderSessionKey];
			}

			if (_controller == null)
			{
				_controller = new WebServiceAppointmentController(provider);
			}

			return _controller;
		}
	}

	[WebMethod(EnableSession = true)]
	public IEnumerable<AppointmentData> GetAppointments(MySchedulerInfo schedulerInfo)
	{
		return Controller.GetAppointments(schedulerInfo);
	}

	[WebMethod(EnableSession = true)]
	public IEnumerable<AppointmentData> InsertAppointment(MySchedulerInfo schedulerInfo, AppointmentData appointmentData)
	{
		return Controller.InsertAppointment(schedulerInfo, appointmentData);
	}

	[WebMethod(EnableSession = true)]
	public IEnumerable<AppointmentData> UpdateAppointment(MySchedulerInfo schedulerInfo, AppointmentData appointmentData)
	{
		return Controller.UpdateAppointment(schedulerInfo, appointmentData);
	}

	[WebMethod(EnableSession = true)]
	public IEnumerable<AppointmentData> CreateRecurrenceException(MySchedulerInfo schedulerInfo, AppointmentData recurrenceExceptionData)
	{
		return Controller.CreateRecurrenceException(schedulerInfo, recurrenceExceptionData);
	}

	[WebMethod(EnableSession = true)]
	public IEnumerable<AppointmentData> RemoveRecurrenceExceptions(MySchedulerInfo schedulerInfo, AppointmentData masterAppointmentData)
	{
		return Controller.RemoveRecurrenceExceptions(schedulerInfo, masterAppointmentData);
	}

	[WebMethod(EnableSession = true)]
	public IEnumerable<AppointmentData> DeleteAppointment(MySchedulerInfo schedulerInfo, AppointmentData appointmentData, bool deleteSeries)
	{
		return Controller.DeleteAppointment(schedulerInfo, appointmentData, deleteSeries);
	}

	[WebMethod(EnableSession = true)]
	public IEnumerable<ResourceData> GetResources(MySchedulerInfo schedulerInfo)
	{
		return Controller.GetResources(schedulerInfo);
	}
}

