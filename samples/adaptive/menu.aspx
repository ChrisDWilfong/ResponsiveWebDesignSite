<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="Samples_Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Responsive ASP.NET AJAX App Demo - ASP.NET AJAX Menu with Adaptive Behavior</title>
    <meta description="Sample ASP.NET mobile web application with Telerik mobile-friendly menu component. Browse it on your mobile device!" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadPageLayout ID="RadPageLayout1" runat="server" GridType="Fluid" CssClass="t-rwd-tr" HtmlTag="None">
        <telerik:LayoutRow WrapperCssClass="t-rwd-white-row" CssClass="t-rwd-rem-pad" RowType="Container" WrapperHtmlTag="Div">
            <Rows>
                <telerik:LayoutRow CssClass="t-rwd-row-pad" RowType="Generic">
                    <Content>
                        <h1>Menu: Adaptive Behavior</h1>
                        <div class="t-rwd-back">
                            <a href="<%= ResolveUrl("~/samples/adaptive-behavior.aspx")%>"><span>&laquo;</span>More adaptive demos</a>
                        </div>
                    </Content>
                </telerik:LayoutRow>

                <telerik:LayoutRow CssClass="t-rwd-row-pad">
                    <Columns>
                        <telerik:LayoutColumn Span="7" SpanMd="12" SpanSm="9" SpanXs="12">
                            <p>
                                The menu used in this sample app is RadMenu. Open it in a desktop and mobile device to experience the difference in behavior.
                            </p>
                            <p>
                                When accessed via a mobile device, the <a href="http://www.telerik.com/products/aspnet-ajax/menu.aspx">Telerik ASP.NET Menu</a> delivers a user experience tailored to the device screen size. In this mode, the control is mobile-friendly and its touch zones are bigger and easier to select.
                            </p>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="5" SpanSm="9" SpanXs="12" HiddenMd="true" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right">
                            <div class="t-rwd-qr">
                                <img src="<%= ResolveUrl("~/Images/qr-menu.png") %>" alt="Visit Telerik UI for ASP.NET AJAX Adaptive Behavior Page" />
                                <span>Scan here to browse the demos on your mobile device.
                                            <br />
                                    <a href="http://tlrk.it/1ffjNFp">tlrk.it/1ffjNFp</a>
                                </span>
                            </div>
                        </telerik:LayoutColumn>

                    </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:LayoutRow>
        <telerik:LayoutRow WrapperCssClass="t-rwd-grey-row" WrapperHtmlTag="Div" RowType="Container">
            <Content>
                <h2>The menu look and feel on different browsers:</h2>
            </Content>
            <Columns>
                <telerik:LayoutColumn Span="5" SpanSm="9" SpanXs="12" CssClass="t-rwd-rem-pad">
                    <img src="<%= ResolveUrl("~/Images/menu-mobile.png") %>" class="t-img" alt="Telerik ASP.NET Menu Adaptive Behavior Page" />
                </telerik:LayoutColumn>
                <telerik:LayoutColumn Span="7" SpanSm="9" SpanXs="12" CssClass="t-rwd-rem-pad">
                    <img src="<%= ResolveUrl("~/Images/menu-desktop.png") %>" class="t-img" alt="Telerik ASP.NET Menu Adaptive Behavior Page" />
                </telerik:LayoutColumn>
            </Columns>
        </telerik:LayoutRow>
    </telerik:RadPageLayout>
</asp:Content>

