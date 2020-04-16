<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="responsive-behavior.aspx.cs" Inherits="ResponsiveWebDesign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>ASP.NET AJAX Mobile Samples with Responsive Behavior</title>
    <meta description="Transform your ASP.NET Web project into an elastic mobile application, optimize it for phone and tablets with Telerik UI Controls with responsive behavior." />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadPageLayout ID="RadPageLayout1" runat="server" GridType="Fluid" CssClass="t-rwd-tr" HtmlTag="None">
        <telerik:LayoutRow WrapperCssClass="t-rwd-white-row" CssClass="t-rwd-rem-pad" WrapperHtmlTag="Div" RowType="Container">
            <Rows>
                <telerik:LayoutRow CssClass="t-rwd-row-pad" RowType="Generic">
                    <Content>
                        <h1>ASP.NET AJAX Controls with Responsive Behavior</h1>
                    </Content>
                </telerik:LayoutRow>

                <telerik:LayoutRow CssClass="t-rwd-row-pad">
                    <Columns>
                        <telerik:LayoutColumn Span="7" SpanSm="9" SpanXs="12">
                            <p>
                                Responsive controls feature a single rendering for all resolutions and devices but styles and scripts adapt them to the different cases by rearranging, hiding or collapsing their inner elements.
                            </p>
                            <p>In a responsive behavior, the necessary scripts and styles for any screen size are all transmitted to the browser.  The browser will then choose which sizes and styles to apply to the content on page.  This behavior is typically controlled through the use of CSS media queries.</p>
                            <p>Regardless of the layout type of your project—fluid, elastic or responsive—the adaptive and responsive rendering types of the Telerik ASP.NET AJAX controls are the best options to deliver user experience tailored to the end user resolution. Depending on what makes sense from a UX point of view, a Telerik control can either be adaptive or responsive, but not both.</p>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="5" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right">
                            <img style="max-width: 100%" src="<%= ResolveUrl("~/Images/responsive-sample-big.png") %>" alt="Adaptive behavior sample" />
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:LayoutRow>
        <telerik:LayoutRow WrapperCssClass="t-rwd-grey-row" WrapperHtmlTag="Div" RowType="Container" CssClass="t-rwd-rem-pad">
            <Rows>
                <telerik:LayoutRow>
                    <Columns>
                        <telerik:LayoutColumn Span="7" SpanMd="12" SpanSm="9" SpanXs="12">
                            <h2>Browse responsive control demos:</h2>
                            <ul class="t-rwd-list">
								<li><a href="<%= ResolveUrl("~/samples/responsive/editor.aspx")%>">Editor</a></li>
                                <li><a href="<%= ResolveUrl("~/samples/responsive/image-gallery.aspx")%>">Image Gallery</a></li>
                                <li><a href="<%= ResolveUrl("~/samples/responsive/tilelist.aspx")%>">TileList</a></li>
                            </ul>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="5" SpanSm="9" SpanXs="12" HiddenMd="true" HiddenSm="true" HiddenXs="true">
                            <div class="t-rwd-qr">
                                <img src="<%= ResolveUrl("~/Images/qr-responsive.png") %>" alt="Scan here to browse the demos on your mobile device." />
                                <span>Scan here to browse the demos on your mobile device.
                                            <br />
                                    <a href="http://tlrk.it/1bOujD0">tlrk.it/1bOujD0</a>
                                </span>
                            </div>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:LayoutRow>

    </telerik:RadPageLayout>
</asp:Content>

