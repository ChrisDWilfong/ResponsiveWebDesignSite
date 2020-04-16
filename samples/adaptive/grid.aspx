<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="grid.aspx.cs" Inherits="Samples_Grid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Responsive ASP.NET AJAX App Demo - ASP.NET AJAX Menu with Adaptive Behavior</title>
    <meta description="Sample ASP.NET mobile web application with Telerik mobile-friendly menu component. Browse it on your mobile device!" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadPageLayout ID="RadPageLayout1" runat="server" GridType="Fluid" CssClass="t-rwd-tr" HtmlTag="None">
        <telerik:LayoutRow WrapperCssClass="t-rwd-white-row" WrapperHtmlTag="Div" CssClass="t-rwd-rem-pad" RowType="Container">
            <Rows>
                <telerik:LayoutRow CssClass="t-rwd-row-pad" RowType="Generic">
                    <Content>
                        <h1>Grid: Adaptive Behavior</h1>
                        <div class="t-rwd-back">
                            <a href="<%= ResolveUrl("~/samples/adaptive-behavior.aspx")%>"><span>&laquo;</span>More adaptive demos</a>
                        </div>
                    </Content>
                </telerik:LayoutRow>

                <telerik:LayoutRow CssClass="t-rwd-row-pad">
                    <Columns>
                        <telerik:LayoutColumn Span="7" SpanMd="12" SpanSm="9" SpanXs="12">
                            <p>
                                When accessed via a mobile device, the <a href="http://www.telerik.com/products/aspnet-ajax/grid.aspx">Telerik ASP.NET Grid</a> delivers a user experience tailored to the device screen size.
                            </p>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="5" SpanSm="9" SpanXs="12" HiddenMd="true" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right">
                            <div class="t-rwd-qr">
                                <img src="<%= ResolveUrl("~/Images/qr-grid.png") %>" alt="Visit Telerik UI for ASP.NET AJAX Adaptive Behavior Page" />
                                <span>Scan here to browse the demos on your mobile device.
                                            <br />
                                    <a href="http://tlrk.it/1zJfewD">tlrk.it/1zJfewD</a>
                                </span>
                            </div>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:LayoutRow>
        <telerik:LayoutRow WrapperCssClass="t-rwd-grey-row" RowType="Container" WrapperHtmlTag="Div" Style="position: inherit;">
            <Content>
                <telerik:RadAjaxPanel ClientEvents-OnRequestStart="onRequestStart" runat="server">
                    <telerik:RadGrid ID="RadGrid1" runat="server" Skin="MetroTouch" PageSize="10" PagerStyle-PageButtonCount="5"
                        OnNeedDataSource="RadGrid1_NeedDataSource" OnItemCommand="RadGrid1_ItemCommand" OnItemCreated="RadGrid1_ItemCreated" OnItemDataBound="RadGrid1_ItemDataBound"
                        OnUpdateCommand="RadGrid1_UpdateCommand" OnInsertCommand="RadGrid1_InsertCommand" OnDeleteCommand="RadGrid1_DeleteCommand"
                        AllowPaging="True" AllowSorting="true" RenderMode="Auto" ShowGroupPanel="true">
                        <GroupingSettings ShowUnGroupButton="true" />
                        <ExportSettings ExportOnlyData="true" IgnorePaging="true">
                            <Word Format="Html" />
                            <Excel Format="Biff" />
                        </ExportSettings>
                        <MasterTableView AutoGenerateColumns="False"
                            AllowFilteringByColumn="true" TableLayout="Fixed"
                            DataKeyNames="ID" CommandItemDisplay="Top"
                            EditMode="PopUp"
                            InsertItemPageIndexAction="ShowItemOnFirstPage">
                            <CommandItemSettings ShowExportToCsvButton="true" ShowExportToExcelButton="true" ShowExportToPdfButton="true" ShowExportToWordButton="true" />
                            <Columns>
                                <telerik:GridBoundColumn DataField="Name" HeaderText="Name" SortExpression="Name" FilterControlWidth="100px" UniqueName="Name">
                                    <HeaderStyle Width="150px" />
                                </telerik:GridBoundColumn>
                                <telerik:GridNumericColumn DataField="Age" HeaderText="Age" SortExpression="Age"
                                    UniqueName="Age" FilterControlWidth="100px">
                                    <HeaderStyle Width="150px" />
                                </telerik:GridNumericColumn>
                                <telerik:GridDateTimeColumn DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate"
                                    UniqueName="BirthDate" PickerType="DatePicker" DataFormatString="{0:MM/dd/yyyy}" FilterControlWidth="100px">
                                    <HeaderStyle Width="150px" />
                                </telerik:GridDateTimeColumn>
                                <telerik:GridRatingColumn DataField="Rating" HeaderText="Rating" SortExpression="Rating"
                                    UniqueName="Rating" GroupByExpression="Rating Group By Rating">
                                    <HeaderStyle Width="200px" />
                                </telerik:GridRatingColumn>
                                <telerik:GridDropDownColumn DataField="City" HeaderText="City" SortExpression="City" ListDataMember="City" ListTextField="City" UniqueName="City" 
                                    DropDownControlType="DropDownList" FilterControlWidth="100px">
                                    <HeaderStyle Width="150px" />
                                </telerik:GridDropDownColumn>
                                <telerik:GridEditCommandColumn UniqueName="EditColumn" HeaderText="Edit Command Column">
                                    <HeaderStyle Width="70px" />
                                </telerik:GridEditCommandColumn>
                                <telerik:GridButtonColumn CommandName="Delete" Text="Delete" UniqueName="DeleteColumn" HeaderText="Delete Command Column">
                                    <HeaderStyle Width="70px" />
                                </telerik:GridButtonColumn>
                            </Columns>
                        </MasterTableView>
                        <ClientSettings AllowColumnsReorder="true" AllowColumnHide="true" AllowDragToGroup="true">
                            <Selecting AllowRowSelect="true" />
                            <Scrolling AllowScroll="true" UseStaticHeaders="true" />
                        </ClientSettings>
                    </telerik:RadGrid>
                    <telerik:RadFormDecorator ID="RadFormDecorator1" runat="server" DecoratedControls="None" Skin="MetroTouch" />
                </telerik:RadAjaxPanel>
            </Content>
        </telerik:LayoutRow>
        
    </telerik:RadPageLayout>
    <script type="text/javascript">        
        var gridPage = true;
        var formDecoratorId = "<%= RadFormDecorator1.ClientID %>";

        function onRequestStart(sender, args) {
            if (args.get_eventTarget().indexOf("Button") >= 0 || args.get_eventArgument().indexOf("Export") >= 0) {
                args.set_enableAjax(false);
            }
        }
    </script>
</asp:Content>

