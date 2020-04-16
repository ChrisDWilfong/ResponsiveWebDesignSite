<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="dock.aspx.cs" Inherits="Samples_Dock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Responsive Design Sample App Using Telerik Dock with Elastic Layout</title>
    <meta description="Want to check out ASP.NET app  demo illustrating the use of Telerik Dock with elastic behavior? Embrace responsiveness, optimize for phones and tablets." />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadPageLayout ID="RadPageLayout1" runat="server" GridType="Fluid" CssClass="t-rwd-tr" HtmlTag="None">
        <telerik:LayoutRow WrapperCssClass="t-rwd-white-row" CssClass="t-rwd-rem-pad" WrapperHtmlTag="Div" RowType="Container">
            <Rows>
                <telerik:LayoutRow CssClass="t-rwd-row-pad" RowType="Generic">
                    <Content>
                        <h1>Dock: Elastic Behavior </h1>
                        <div class="t-rwd-back">
                            <a href="<%= ResolveUrl("~/samples/elastic-behavior.aspx")%>"><span>&laquo;</span>More elastic demos</a>
                        </div>
                    </Content>
                </telerik:LayoutRow>

                <telerik:LayoutRow CssClass="t-rwd-row-pad">
                    <Columns>
                        <telerik:LayoutColumn Span="7" SpanMd="12" SpanSm="9" SpanXs="12">
                            <p>
                                This demo showcases the "em"-based elastic rendering of <a href="http://www.telerik.com/products/aspnet-ajax/dock.aspx">Telerik Dock for ASP.NET AJAX</a>. It enables the dock to adapt automatically to the font that the reader uses, thus optimizing it for use on phones and tablets.
                            </p>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="5" SpanSm="9" SpanXs="12" HiddenMd="true" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right">
                            <div class="t-rwd-qr">
                                <img src="<%= ResolveUrl("~/Images/qr-dock.png") %>" alt="Scan here to browse the demos on your mobile device." />
                                <span>Scan here to browse the demos on your mobile device.
                                            <br />
                                    <a href="http://tlrk.it/MDCHK9">tlrk.it/MDCHK9</a>
                                </span>
                            </div>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
                <telerik:LayoutRow RowType="Generic">
                    <Content>
                        <telerik:RadDropDownList runat="server" ID="RadDropDownListFontSize" CssClass="t-rwd-ddl" OnClientItemSelected="onClientItemSelected" Skin="MetroTouch" DefaultMessage="Select Font Size">
                            <Items>
                                <telerik:DropDownListItem Text="Font size 10px" Value="10px" />
                                <telerik:DropDownListItem Text="Font size 12px" Value="12px" />
                                <telerik:DropDownListItem Text="Font size 14px" Value="14px" />
                                <telerik:DropDownListItem Text="Font size 16px" Value="16px" />
                                <telerik:DropDownListItem Text="Font size 18px" Value="18px" />
                                <telerik:DropDownListItem Text="Font size 20px" Value="20px" />
                            </Items>
                        </telerik:RadDropDownList>
                    </Content>
                </telerik:LayoutRow>
            </Rows>
        </telerik:LayoutRow>
        <telerik:LayoutRow WrapperCssClass="t-rwd-grey-row" WrapperHtmlTag="Div" RowType="Container">
            <Rows>
                <telerik:LayoutRow>
                    <Columns>
                        <telerik:LayoutColumn Span="4" SpanMd="12" SpanSm="9" SpanXs="12">
                            <telerik:RadDockZone runat="server" ID="RadDockZone1" MinHeight="80px"
                                >
                                <telerik:RadDock runat="server" DockMode="Docked" ID="RadDock1" Skin="MetroTouch" DefaultCommands="Close" RenderMode="Lightweight" CssClass="elastic-control"
                                    Title="My Portal">
                                    <ContentTemplate>
                                        <fieldset>
                                            Welcome back,<br />
                                            Mr. John Smith<br />
                                            <%= DateTime.Now.ToShortDateString() %>
                                        </fieldset>
                                    </ContentTemplate>
                                </telerik:RadDock>
                                <telerik:RadDock runat="server" ID="RadDock2" DockMode="Docked" Skin="MetroTouch" DefaultCommands="Close" RenderMode="Lightweight" CssClass="elastic-control"
                                    Title="My Contact">
                                    <ContentTemplate>
                                        <fieldset>
                                            Phone: 1.887.3671.23<br />
                                            E-mail: john@bravo.com<br />
                                            Address: 64 Bay Str, Melville
                                    
                                        </fieldset>
                                    </ContentTemplate>
                                </telerik:RadDock>
                            </telerik:RadDockZone>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="8" SpanMd="12" SpanSm="9" SpanXs="12" CssClass="t-rwd-rem-left-pad">
                            <telerik:RadDockZone runat="server" ID="RadDockZone2" Skin="MetroTouch"
                                 MinHeight="80px">
                                <telerik:RadDock runat="server" DockMode="Docked" Skin="MetroTouch" DefaultCommands="Close" RenderMode="Lightweight" ID="RadDock3" CssClass="elastic-control"
                                    Title="Telerik News">
                                    <ContentTemplate>
                                        <fieldset>
                                            <legend style="margin-left: 10px">28/Jan/2014</legend>
                                            <div style="width: 100%;">
                                                New Telerik Platform Empowers 1M-Strong Developer Community with First End-to-End Platform for Hybrid, Native and Web Development Across All Devices.
                                            </div>
                                        </fieldset>
                                        <fieldset>
                                            <legend style="margin-left: 10px">22/Jan/2014</legend>
                                            <div style="width: 100%;">
                                                Stanford Speaker Series Looks at the Rising Tide of  Eastern European High Tech Firms with Telerik CEO Vassil Terziev.
                                            </div>
                                        </fieldset>
                                    </ContentTemplate>
                                </telerik:RadDock>
                            </telerik:RadDockZone>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:LayoutRow>
    </telerik:RadPageLayout>

    <script type="text/javascript">
        function onClientItemSelected(sender, args) {
            var item = args.get_item(),
                value = item.get_value(),
                elasticControls = $telerik.$(".elastic-control"),
                elasticControlsCount = elasticControls.length;

            for (var i = 0; i < elasticControlsCount; i++) {
                elasticControls[i].style.fontSize = value;
            }
        }
    </script>

</asp:Content>

