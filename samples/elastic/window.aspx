<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="window.aspx.cs" Inherits="Samples_Window" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Mobile ASP.NET AJAX Demo Using ASP.NET Window with Elastic Behavior</title>
    <meta description="Curious to know how Telerik ASP.NET AJAX Window with elastic behavior will behave on a mobile device? Browse this demo on your phone or tablet." />
    <link href="../SampleStyle/elastic-control.css" rel="stylesheet" />
    <style type="text/css">
        .t-rwd-floatedImage {
            float: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadPageLayout ID="RadPageLayout1" runat="server" GridType="Fluid" CssClass="t-rwd-t" HtmlTag="None">
        <telerik:LayoutRow WrapperCssClass="t-rwd-white-row" WrapperHtmlTag="Div" RowType="Container" CssClass="t-rwd-rem-pad">
            <Rows>
                <telerik:LayoutRow CssClass="t-rwd-row-pad" RowType="Generic">
                    <Content>
                        <h1>Window: Elastic Behavior </h1>
                        <div class="t-rwd-back">
                            <a href="<%= ResolveUrl("~/samples/elastic-behavior.aspx")%>"><span>&laquo;</span>More elastic demos</a>
                        </div>
                    </Content>
                </telerik:LayoutRow>

                <telerik:LayoutRow CssClass="t-rwd-row-pad">
                    <Columns>
                        <telerik:LayoutColumn Span="7" SpanMd="12" SpanSm="9" SpanXs="12">
                            <p>
                                This demo showcases the "em"-based elastic rendering of <a href="http://www.telerik.com/products/aspnet-ajax/window.aspx">Telerik Window for ASP.NET AJAX</a>. It enables the controlt to adapt automatically to the font that the reader uses, thus optimizing it for use on phones and tablets.
                            </p>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="5" SpanSm="9" SpanXs="12" HiddenMd="true" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right">
                            <div class="t-rwd-qr">
                                <img src="<%= ResolveUrl("~/Images/qr-window.png") %>" alt="Scan here to browse the demos on your mobile device." />
                                <span>Scan here to browse the demos on your mobile device.
                                            <br />
                                    <a href="http://tlrk.it/OdQ1py">tlrk.it/OdQ1py</a>
                                </span>
                            </div>
                        </telerik:LayoutColumn>

                    </Columns>
                </telerik:LayoutRow>

                <telerik:LayoutRow>

                    <Columns>
                        <telerik:LayoutColumn Span="12">
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
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>

            </Rows>
        </telerik:LayoutRow>
        <telerik:LayoutRow WrapperCssClass="t-rwd-grey-row" WrapperHtmlTag="Div" RowType="Container">
            <Rows>
                <telerik:LayoutRow>
                    <Columns>
                        <telerik:LayoutColumn Span="12">
                            <div id="restrictionZone" style="height: 300px; width: 100%">
                                <telerik:RadWindow runat="server" ID="RadWindowDevices" AutoSize="true" CssClass="elastic-control" AutoSizeBehaviors="Height, Width" RenderMode="Lightweight" InitialBehaviors="Maximize" Behaviors="Close" Title="Devices" RestrictionZoneID="restrictionZone" VisibleOnPageLoad="true" Skin="MetroTouch">
                                    <ContentTemplate>
                                        <div>
                                            <asp:Image runat="server" ID="WindowImage" ImageUrl="windows_big.png" CssClass="t-rwd-floatedImage" />
                                            <h3>Touch and Mobile Support 
                                            </h3>
                                            <p>
                                                No need to build a mobile version of your project, since the web sites and apps built with Telerik UI for ASP.NET AJAX
                                            work equally well on desktop and mobile devices. The components handle touch events in the same manner as those triggered
                                            by a keyboard and come with two mobile skins especially designed for better user experience on touch devices. 
                                            The best part is the controls come with built-in adaptive, fluid, elastic and responsive capabilities which help them create a user experience tailored to the end-user device screen size.
                                            </p>


                                        </div>
                                    </ContentTemplate>
                                </telerik:RadWindow>
                            </div>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:LayoutRow>
    </telerik:RadPageLayout>
</asp:Content>



