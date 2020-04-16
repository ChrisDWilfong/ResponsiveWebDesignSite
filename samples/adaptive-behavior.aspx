<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="adaptive-behavior.aspx.cs" Inherits="AdaptiveWebDesign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Adaptive ASP.NET Controls Demo | Sample Responsive Design ASP.NET AJAX Apps</title>
    <meta description="ASP.NET AJAX Adaptive controls demo: see Telerik Web Forms components with adaptive behavior in action!" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadPageLayout ID="RadPageLayout1" runat="server" GridType="Fluid" CssClass="t-rwd-tr" HtmlTag="None">

        <telerik:LayoutRow WrapperCssClass="t-rwd-white-row" WrapperHtmlTag="Div" CssClass="t-rwd-rem-pad" RowType="Container">
            <Rows>
                <telerik:LayoutRow CssClass="t-rwd-row-pad" RowType="Generic">
                    <Content>
                        <h1>ASP.NET AJAX Controls with Adaptive Behavior</h1>
                    </Content>
                </telerik:LayoutRow>

                <telerik:LayoutRow>
                    <Columns>
                        <telerik:LayoutColumn Span="7" SpanSm="9" SpanXs="12">
                            <p>
                                Adaptive controls feature two or more HTML renderings, including styles, scripts and media, with at least one being optimized for mobile devices. The goal is to present the same functionality but load fewer resources and deliver bigger touch zones and interactions matching the mobile experience people are used to.
                            </p>
                            <p>When a page with an adaptive control is requested, the server proceeds based on the type of browser requesting the page. Depending on the browser type and device size, the web server will automatically decide which HTML rendering to transmit to the requestor.</p>
                            <p>Regardless of the layout type of your project—fluid, elastic or responsive—the adaptive and responsive rendering types of the Telerik ASP.NET AJAX controls are the best options to deliver user experience tailored to the end-user resolution. Depending on what makes sense from a UX point of view, a control can either be adaptive or responsive, but not both.</p>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="5" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right">
                            <img style="max-width: 100%" src="<%= ResolveUrl("~/Images/adaptive-sample-big.png")%>" alt="Adaptive behavior sample" />
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:LayoutRow>
        <telerik:LayoutRow WrapperCssClass="t-rwd-grey-row" CssClass="t-rwd-rem-pad" WrapperHtmlTag="Div" RowType="Container">
            <Rows>
                <telerik:LayoutRow >
                    <Columns>
                        <telerik:LayoutColumn Span="7" SpanMd="12" SpanSm="9" SpanXs="12">
                            <h2>Browse adaptive control demos:</h2>
                            <ul class="t-rwd-list">
                                <li><a href="<%= ResolveUrl("~/samples/adaptive/grid.aspx")%>">Grid</a></li>
                                <li><a href="<%= ResolveUrl("~/samples/adaptive/lightbox.aspx")%>">LightBox</a></li>
                                <li><a href="<%= ResolveUrl("~/samples/adaptive/media-player.aspx")%>">Media Player</a></li>
                                <li><a href="<%= ResolveUrl("~/samples/adaptive/menu.aspx")%>">Menu</a></li>
                                <li><a href="<%= ResolveUrl("~/samples/adaptive/scheduler.aspx")%>">Scheduler</a></li>
                                <li><a href="<%= ResolveUrl("~/samples/adaptive/wizard.aspx")%>">Wizard</a></li>
                            </ul>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="5" SpanSm="9" SpanXs="12" HiddenMd="true" HiddenSm="true" HiddenXs="true">
                            <div class="t-rwd-qr">
                                <img src="<%= ResolveUrl("~/Images/qr-adaptive.png")%>" alt="Scan here to browse the demos on your mobile device." />
                                <span>Scan here to browse the demos on your mobile device.
                                            <br />
                                    <a href="http://tlrk.it/1bOu8rr">tlrk.it/1bOu8rr</a>
                                </span>
                            </div>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:LayoutRow>
    </telerik:RadPageLayout>
</asp:Content>

