<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="scheduler.aspx.cs" Inherits="Samples_Scheduler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="scheduler-styles.css" rel="stylesheet" />
    <title>Responsive Design Scheduler with Adaptive Behavior | Mobile ASP.NET App Demo</title>
    <meta name="viewport" content="width=device-width, intial-scale=1, user-scalable=no" />
    <meta description="Create great user experience on any device screen size, play with this demo and see Telerik ASP.NET mobile-friendly Scheduler in action!" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadPageLayout ID="RadPageLayout1" runat="server" GridType="Fluid" CssClass="t-rwd-tr" HtmlTag="None">
        <telerik:LayoutRow WrapperCssClass="t-rwd-white-row" CssClass="t-rwd-rem-pad" RowType="Container" WrapperHtmlTag="Div">
            <Rows>
                <telerik:LayoutRow CssClass="t-rwd-row-pad" RowType="Generic">
                    <Content>
                        <h1>Scheduler: Adaptive Behavior</h1>
                        <div class="t-rwd-back">
                            <a href="<%= ResolveUrl("~/samples/adaptive-behavior.aspx")%>"><span>&laquo;</span>More adaptive demos</a>
                        </div>
                    </Content>
                </telerik:LayoutRow>

                <telerik:LayoutRow CssClass="t-rwd-row-pad">
                    <Columns>
                        <telerik:LayoutColumn Span="7" SpanMd="12" SpanSm="9" SpanXs="12">
                            <p>
                                When accessed via a mobile device, the <a href="http://www.telerik.com/products/aspnet-ajax/scheduler.aspx">Telerik ASP.NET Scheduler</a> delivers a user experience tailored to the device screen size..
                            </p>
                            <p>
                                In this mode, RadScheduler:
                            </p>
                            <ul class="t-rwd-list">
                                <li>Renders the inputs and buttons it contains as native controls. This makes it lighter and better performing and also offers the native for the device experience.</li>
                                <li>Is mobile-friendly and its touch zones are bigger and easier to select.</li>
                            </ul>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="5" SpanSm="9" SpanXs="12" HiddenMd="true" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right">
                            <div class="t-rwd-qr">
                                <img src="<%= ResolveUrl("~/Images/qr-scheduler.png") %>" alt="Visit Telerik UI for ASP.NET AJAX Adaptive Behavior Page" />
                                <span>Scan here to browse the demos on your mobile device.
                                            <br />
                                    <a href="http://tlrk.it/OdPROZ">tlrk.it/OdPROZ</a>
                                </span>
                            </div>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:LayoutRow>
        <telerik:LayoutRow WrapperCssClass="t-rwd-grey-row" WrapperHtmlTag="Div" RowType="Container">
            <Content>
                <telerik:RadScheduler runat="server" ID="RadScheduler2" Skin="MetroTouch" OnLoad="RadScheduler1_Load" RenderMode="Auto"
                    SelectedView="MonthView" ShowFooter="false" SelectedDate="2012-01-31" TimeZoneOffset="03:00:00"
                    DayStartTime="08:00:00" DayEndTime="21:00:00" FirstDayOfWeek="Monday" LastDayOfWeek="Friday"
                    EnableDescriptionField="true" AppointmentStyleMode="Default" OverflowBehavior="Expand">
                    <WebServiceSettings Path="SchedulerWebService.asmx" ResourcePopulationMode="ServerSide" />
                    <AdvancedForm Modal="false"></AdvancedForm>
                    <TimelineView UserSelectable="false"></TimelineView>
                    <AgendaView UserSelectable="true" />
                    <ResourceStyles>
                        <telerik:ResourceStyleMapping Type="Calendar" Text="Personal" />
                        <telerik:ResourceStyleMapping Type="Calendar" Text="Work" />
                    </ResourceStyles>
                    <ResourceHeaderTemplate>
                        <div>
                            <%# Eval("Text") %>
                        </div>
                    </ResourceHeaderTemplate>
                    <Localization HeaderWeek="Work week" />
                </telerik:RadScheduler>
            </Content>
        </telerik:LayoutRow>
    </telerik:RadPageLayout>
</asp:Content>

