<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="elastic-behavior.aspx.cs" Inherits="ElasticWebDesign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Elastic Mobile Design Samples for ASP.NET AJAX Web Apps</title>
    <meta description="Explore mobile web app samples using Telerik ASP.NET AJAX controls with elastic behavior. Make any site or app elastic!" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadPageLayout ID="RadPageLayout1" runat="server" GridType="Fluid" CssClass="t-rwd-tr" HtmlTag="None">

        <telerik:LayoutRow WrapperCssClass="t-rwd-white-row" CssClass="t-rwd-rem-pad" WrapperHtmlTag="Div" RowType="Container">
            <Rows>
                <telerik:LayoutRow CssClass="t-rwd-row-pad" RowType="Generic">
                    <Content>
                        <h1>ASP.NET AJAX Controls with Elastic Behavior</h1>
                    </Content>
                </telerik:LayoutRow>

                <telerik:LayoutRow CssClass="t-rwd-row-pad">
                    <Columns>
                        <telerik:LayoutColumn Span="7" SpanSm="9" SpanXs="12">
                            <p>
                                If your choice to meet the mobile challenge is to make your site or app elastic, this means you are laying out the content using the relative “em” unit of measurement. The “em” is a useful unit in CSS, since it enables HTML elements to adapt automatically to the font that the reader uses, thus optimizing it for use on phones and tablets.
                            </p>
                            <p>The following Telerik ASP.NET AJAX controls feature EM-based rendering, which means that they adapt to changes in the font size.</p>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="5" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right">
                            <img style="max-width: 100%" src="<%= ResolveUrl("~/Images/elastic-sample-big.png") %>" alt="Adaptive behavior sample" />
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:LayoutRow>
        <telerik:LayoutRow WrapperCssClass="t-rwd-grey-row" CssClass="t-rwd-rem-pad" WrapperHtmlTag="Div" RowType="Container">
            <Rows>
                <telerik:LayoutRow>
                    <Columns>
                        <telerik:LayoutColumn Span="7" SpanMd="12" SpanSm="9" SpanXs="12">
                            <h2>Browse elastic control demos:</h2>
                            <ul class="t-rwd-list">
                                <li><a href="<%= ResolveUrl("~/samples/elastic/dock.aspx")%>">Dock</a></li>
                                <li><a href="<%= ResolveUrl("~/samples/elastic/menu.aspx")%>">Menu</a></li>
                                <li><a href="<%= ResolveUrl("~/samples/elastic/registration-form.aspx")%>">Button, FormDecorator, Notification and Tooltip</a></li>
                                <li><a href="<%= ResolveUrl("~/samples/elastic/window.aspx")%>">Window</a></li>
                            </ul>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="5" SpanSm="9" SpanXs="12" HiddenMd="true" HiddenSm="true" HiddenXs="true">
                            <div class="t-rwd-qr">
                                <img src="<%= ResolveUrl("~/Images/qr-elastic.png") %>" alt="Scan here to browse the demos on your mobile device." />
                                <span>Scan here to browse the demos on your mobile device.
                                            <br />
                                    <a href="http://tlrk.it/1jfLbT5">tlrk.it/1jfLbT5</a>
                                </span>
                            </div>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:LayoutRow>
    </telerik:RadPageLayout>
</asp:Content>

