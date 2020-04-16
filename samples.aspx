<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="samples.aspx.cs" Inherits="responsive_web_design_aspnet_samples" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>ASP.NET Mobile Sample App, Responsive ASP.NET AJAX Web Application by Telerik</title>
    <meta description="Develop ASP.NET web applications for any screen, discover mobile responsiveness with this sample application, built with Telerik UI for ASP.NET AJAX." />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <telerik:RadPageLayout ID="RadPageLayout1" runat="server" GridType="Fluid" CssClass="t-rwd-tr" HtmlTag="None">
        <telerik:LayoutRow WrapperCssClass="t-rwd-white-row" WrapperHtmlTag="Div" RowType="Container">
            <Content>
                <h1>Demos: Telerik UI for ASP.NET AJAX and Responsive Web Design</h1>
                <p>With <a href="http://www.telerik.com/products/aspnet-ajax.aspx">Telerik UI for ASP.NET AJAX</a> you can build applications that deliver tailored user experiences for any screen.</p>
                <p>This sample ASP.NET web application, optimized for mobile, is your go-to resource for learning and testing the mobile capabilities within the UI controls and frameworks offered in the suite. It will be updated as new functionality is added. <a href="<%= ResolveUrl("source-code-download.zip")%>" onclick="_gaq.push(['_trackPageview', '/virtual/ajax-responsive-sample-app/source-code-download']);">Get the source code here.</a></p>
            </Content>
        </telerik:LayoutRow>

        <telerik:LayoutRow WrapperCssClass="t-rwd-grey-row" WrapperHtmlTag="Div" RowType="Container">
            <Rows>
                <telerik:LayoutRow CssClass="t-rwd-row-pad" RowType="Generic">
                    <Content>
                        <h2>ASP.NET AJAX Controls and Responsiveness</h2>
                        <p>The controls conform to the principles of responsive web design with their adaptive, elastic, responsive or fluid behaviors. </p>
                    </Content>
                </telerik:LayoutRow>

                <telerik:LayoutRow CssClass="t-rwd-row-pad">
                    <Columns>
                        <telerik:LayoutColumn Span="8" SpanSm="9" SpanXs="12">
                            <p>
                                <strong class="t-rwd-strong">Adaptive behavior</strong> means that the control would transform its rendering and layout to offer optimized experience for 
                                        the device screen size it’s served on.
                            </p>
                            <a href="<%= ResolveUrl("~/samples/adaptive-behavior.aspx")%>">Learn more and browse demos</a>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="4" SpanSm="9" SpanXs="12" HiddenSm="true" HiddenXs="true">
                            <img src="<%= ResolveUrl("~/Images/adaptive-sample.png") %>" alt="Adaptive behavior sample" />
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>

                <telerik:LayoutRow CssClass="t-rwd-row-pad">
                    <Columns>
                        <telerik:LayoutColumn Span="8" SpanSm="9" SpanXs="12">
                            <p>
                                <strong class="t-rwd-strong">Elastic behavior</strong> means that the control will resize proportionately to the font size you have selected for it. 
                            </p>
                            <a href="<%= ResolveUrl("~/samples/elastic-behavior.aspx")%>">Learn more and browse demos</a>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="4" SpanSm="9" SpanXs="12" HiddenSm="true" HiddenXs="true">
                            <img src="<%= ResolveUrl("~/Images/elastic-sample.png") %>" alt="Adaptive behavior sample" />
                        </telerik:LayoutColumn>

                    </Columns>
                </telerik:LayoutRow>

                <telerik:LayoutRow CssClass="t-rwd-row-pad">
                    <Columns>
                        <telerik:LayoutColumn Span="8" SpanSm="9" SpanXs="12">
                            <p>
                                <strong class="t-rwd-strong">Responsive behavior</strong> means that the ASP.NET Web Forms control will have the same rendering for all resolutions and devices, but styles and scripts will adapt it to the different cases by rearranging, hiding or collapsing its inner elements. 
                            </p>
                            <a href="<%= ResolveUrl("~/samples/responsive-behavior.aspx")%>">Learn more and browse demos</a>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="4" SpanSm="9" SpanXs="12" HiddenSm="true" HiddenXs="true">
                            <img src="<%= ResolveUrl("~/Images/responsive-sample.png") %>" alt="Adaptive behavior sample" />
                        </telerik:LayoutColumn>

                    </Columns>
                </telerik:LayoutRow>

                <telerik:LayoutRow CssClass="t-rwd-row-pad">
                    <Columns>
                        <telerik:LayoutColumn Span="8" SpanSm="9" SpanXs="12">
                            <p>
                                <strong class="t-rwd-strong">Fluid behavior</strong> means that the component takes up 100% of the size of the container it is placed in and if this container resizes on different devices, the control will resize with it. All Telerik ASP.NET AJAX controls feature built-in fluid behavior.
                            </p>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="4" SpanSm="9" SpanXs="12" HiddenSm="true" HiddenXs="true">
                            <img src="<%= ResolveUrl("~/Images/fluid-sample.png") %>" alt="Adaptive behavior sample" />
                        </telerik:LayoutColumn>

                    </Columns>
                </telerik:LayoutRow>
                <telerik:LayoutRow RowType="Generic">
                    <Content>
                        <p>Telerik UI controls for ASP.NET AJAX can feature more than one behavior depending on what makes sense from a UX point of view. All you have to do is enable the automatic render mode and rest assured the behavior that provides the best user experience for the device and browser request will be served.</p>
                    </Content>
                </telerik:LayoutRow>
            </Rows>
        </telerik:LayoutRow>

        <telerik:LayoutRow WrapperCssClass="t-rwd-white-row" WrapperHtmlTag="Div" RowType="Container">
            <Rows>
                <telerik:LayoutRow RowType="Generic">
                    <Content>
                        <h2>ASP.NET AJAX Frameworks and Responsiveness</h2>
                        <p>For optimal experiences on different screen sizes, we suggest you leverage the two Telerik ASP.NET frameworks used in this sample application: <a href="http://www.telerik.com/products/aspnet-ajax/responsive-page-layout.aspx">Page Layout</a> and <a href="http://www.telerik.com/products/aspnet-ajax/device-detection-framework.aspx">Device Detection Framework</a>. </p>
                    </Content>
                </telerik:LayoutRow>

                <telerik:LayoutRow CssClass="t-rwd-row-pad">
                    <Columns>
                        <telerik:LayoutColumn Span="7" SpanSm="9" SpanXs="12">
                            <p>
                                <strong class="t-rwd-strong">Page Layout</strong> helps you quickly build your page layout on the server side, add responsive capabilities to your sites and apps and reduce network usage on mobile devices.
                            </p>
                            <p>
                                <strong class="t-rwd-strong">Device Detection Framework</strong> helps you get information about the device screen dimensions accessing your site or app in CSS pixels. It tells you whether the screen is small, medium, large or extra large, enabling you to serve different content for each.
                            </p>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="5" SpanSm="9" SpanXs="12" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right">
                            <img style="max-width: 100%" src="<%= ResolveUrl("~/Images/device-detect.png") %>" alt="Device Detection Framework" />
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:LayoutRow>
    </telerik:RadPageLayout>


</asp:Content>

