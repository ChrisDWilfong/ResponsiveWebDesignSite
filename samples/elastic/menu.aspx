<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="Samples_ElasticMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Responsive Sample App with Telerik Menu Component for ASP.NET AJAX</title>
    <meta description="With the elastic behavior of Telerik ASP.NET Menu, you can adapt the control to the font that the reader uses on any device. Play with this responsive demo!" />
    <link href="../SampleStyle/elastic-control.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadPageLayout ID="RadPageLayout1" runat="server" GridType="Fluid" CssClass="t-rwd-tr" HtmlTag="None">
        <telerik:LayoutRow WrapperCssClass="t-rwd-white-row" CssClass="t-rwd-rem-pad" WrapperHtmlTag="Div" RowType="Container">
            <Rows>
                <telerik:LayoutRow CssClass="t-rwd-row-pad" RowType="Generic">
                    <Content>
                        <h1>Menu: Elastic Behavior </h1>
                        <div class="t-rwd-back">
                            <a href="<%= ResolveUrl("~/samples/elastic-behavior.aspx")%>"><span>&laquo;</span>More elastic demos</a>
                        </div>
                    </Content>
                </telerik:LayoutRow>

                <telerik:LayoutRow CssClass="t-rwd-row-pad">
                    <Columns>
                        <telerik:LayoutColumn Span="7" SpanMd="12" SpanSm="9" SpanXs="12">
                            <p>
                                This demo showcases the "em"-based elastic rendering of <a href="http://www.telerik.com/products/aspnet-ajax/menu.aspx">Telerik Menu for ASP.NET AJAX</a>. It enables the menu to adapt automatically to the font that the reader uses, thus optimizing it for use on phones and tablets.
                            </p>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="5" SpanSm="9" SpanXs="12" HiddenMd="true" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right">
                            <div class="t-rwd-qr">
                                <img src="<%= ResolveUrl("~/Images/qr-elastic-menu.png") %>" alt="Scan here to browse the demos on your mobile device." />
                                <span>Scan here to browse the demos on your mobile device.
                                            <br />
                                    <a href="http://tlrk.it/1ctu8e9">tlrk.it/1ctu8e9</a>
                                </span>
                            </div>
                        </telerik:LayoutColumn>

                    </Columns>
                </telerik:LayoutRow>

                <telerik:LayoutRow RowType="Generic">
                    <Content>
                        <telerik:RadDropDownList runat="server" ID="RadDropDownFontSizePostBack" CssClass="t-rwd-ddl" AutoPostBack="true" Skin="MetroTouch" DefaultMessage="Select Font Size">
                            <Items>
                                <telerik:DropDownListItem Text="Font size 10px" Value="elastic-control10" />
                                <telerik:DropDownListItem Text="Font size 12px" Value="elastic-control12" />
                                <telerik:DropDownListItem Text="Font size 14px" Value="elastic-control14" />
                                <telerik:DropDownListItem Text="Font size 16px" Value="elastic-control16" />
                                <telerik:DropDownListItem Text="Font size 18px" Value="elastic-control18" />
                                <telerik:DropDownListItem Text="Font size 20px" Value="elastic-control20" />
                            </Items>
                        </telerik:RadDropDownList>
                    </Content>
                </telerik:LayoutRow>
            </Rows>
        </telerik:LayoutRow>
        <telerik:LayoutRow WrapperCssClass="t-rwd-grey-row" WrapperHtmlTag="Div" RowType="Container">
            <Content>
                <div style="height: 150px">
                    <telerik:RadMenu runat="server" ID="RadMenuElastic" Skin="MetroTouch" Width="100%" CssClass="elastic-menu" RenderMode="Auto">
                        <Items>
                            <telerik:RadMenuItem Text="File"></telerik:RadMenuItem>
                            <telerik:RadMenuItem Text="Edit"></telerik:RadMenuItem>
                            <telerik:RadMenuItem Text="Format">
                                <Items>
                                    <telerik:RadMenuItem Text="Font">
                                        <Items>
                                            <telerik:RadMenuItem Text="Arial" />
                                            <telerik:RadMenuItem Text="Sans-serif" />
                                            <telerik:RadMenuItem IsSeparator="true"></telerik:RadMenuItem>
                                            <telerik:RadMenuItem Text="Arial Black" />
                                        </Items>
                                    </telerik:RadMenuItem>
                                    <telerik:RadMenuItem Text="Paragraph" />
                                    <telerik:RadMenuItem Text="Bullets and Numbering" />
                                </Items>
                            </telerik:RadMenuItem>
                        </Items>
                    </telerik:RadMenu>
                </div>
            </Content>
        </telerik:LayoutRow>
    </telerik:RadPageLayout>

</asp:Content>

