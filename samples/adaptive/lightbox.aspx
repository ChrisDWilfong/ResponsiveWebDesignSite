<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="lightbox.aspx.cs" Inherits="Samples_Lightbox" %>

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
                        <h1>LightBox: Adaptive Behavior</h1>
                        <div class="t-rwd-back">
                            <a href="<%= ResolveUrl("~/samples/adaptive-behavior.aspx")%>"><span>&laquo;</span>More adaptive demos</a>
                        </div>
                    </Content>
                </telerik:LayoutRow>

                <telerik:LayoutRow CssClass="t-rwd-row-pad">
                    <Columns>
                        <telerik:LayoutColumn Span="7" SpanMd="12" SpanSm="9" SpanXs="12">
                            <p>
                                When accessed via a mobile device, the <a href="http://www.telerik.com/products/aspnet-ajax/lightbox.aspx">Telerik ASP.NET LightBox</a> delivers a user experience tailored to the device screen size.
                            </p>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="5" SpanSm="9" SpanXs="12" HiddenMd="true" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right">
                            <div class="t-rwd-qr">
                                <img src="<%= ResolveUrl("~/Images/qr-lightBox.png") %>" alt="Visit Telerik UI for ASP.NET AJAX Adaptive Behavior Page" />
                                <span>Scan here to browse the demos on your mobile device.
                                            <br />
                                    <a href="http://tlrk.it/1hDTLHZ">tlrk.it/1hDTLHZ</a>
                                </span>
                            </div>
                        </telerik:LayoutColumn>

                    </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:LayoutRow>
        <telerik:LayoutRow WrapperCssClass="t-rwd-grey-row" RowType="Container" WrapperHtmlTag="Div">
            <Content>
                <div>
                    <div>
                        <asp:Image ID="Image1" AlternateText="Climbing Thumbnail" runat="server" ImageUrl="images/ThumbnailImages/Climbing_thumbnail.jpg" />
                        <asp:Image ID="Image2" AlternateText="Diving Thumbnail" runat="server" ImageUrl="images/ThumbnailImages/Diving_thumbnail.jpg" />
                        <asp:Image ID="Image3" AlternateText="Football Thumbnail" runat="server" ImageUrl="images/ThumbnailImages/Football_thumbnail.jpg" />
                        <asp:Image ID="Image4" AlternateText="Hang Glider Thumbnail" runat="server" ImageUrl="images/ThumbnailImages/Hang_glider_thumbnail.jpg" />
                    </div>
                    <div>
                        <asp:Image ID="Image6" AlternateText="Skiing Thumbnail" runat="server" ImageUrl="images/ThumbnailImages/Skiing_thumbnail.jpg" />
                        <asp:Image ID="Image7" AlternateText="Snowboarding Thumbnail" runat="server" ImageUrl="images/ThumbnailImages/Snowboarding_thumbnail.jpg" />
                        <asp:Image ID="Image8" AlternateText="Surfing Thumbnail" runat="server" ImageUrl="images/ThumbnailImages/Surfing_thumbnail.jpg" />
                        <asp:Image ID="Image9" AlternateText="Swimming Thumbnail" runat="server" ImageUrl="images/ThumbnailImages/Swimming_thumbnail.jpg" />
                    </div>
                </div>
                <telerik:RadLightBox ID="RadLightBox1" CssClass="t-rwd-lightbox" Skin="MetroTouch" runat="server" Modal="true" LoopItems="true" RenderMode="Auto" ShowNextButton="true" ShowPrevButton="true" ZIndex="8000">
                    <ClientSettings AllowKeyboardNavigation="true" NavigationMode="Zone">
                    </ClientSettings>
                    <Items>
                        <telerik:RadLightBoxItem ImageUrl="images/OriginalImages/Climbing.jpg" Title="Climbing" TargetControlID="Image1">
                        </telerik:RadLightBoxItem>
                        <telerik:RadLightBoxItem ImageUrl="images/OriginalImages/Diving.jpg" Title="Diving" TargetControlID="Image2">
                        </telerik:RadLightBoxItem>
                        <telerik:RadLightBoxItem ImageUrl="images/OriginalImages/Football.jpg" Title="Football" TargetControlID="Image3">
                        </telerik:RadLightBoxItem>
                        <telerik:RadLightBoxItem ImageUrl="images/OriginalImages/Hang_glider.jpg" Title="Hang glider" TargetControlID="Image4">
                        </telerik:RadLightBoxItem>
                        <telerik:RadLightBoxItem ImageUrl="images/OriginalImages/Skiing.jpg" Title="Skiing" TargetControlID="Image6">
                        </telerik:RadLightBoxItem>
                        <telerik:RadLightBoxItem ImageUrl="images/OriginalImages/Snowboarding.jpg" Title="Snowboarding" TargetControlID="Image7">
                        </telerik:RadLightBoxItem>
                        <telerik:RadLightBoxItem ImageUrl="images/OriginalImages/Surfing.jpg" Title="Surfing" TargetControlID="Image8">
                        </telerik:RadLightBoxItem>
                        <telerik:RadLightBoxItem ImageUrl="images/OriginalImages/Swimming.jpg" Title="Swimming" TargetControlID="Image9">
                        </telerik:RadLightBoxItem>
                    </Items>
                </telerik:RadLightBox>
            </Content>
        </telerik:LayoutRow>
    </telerik:RadPageLayout>

    <script type="text/javascript">
        //The following code is added for the purpose of the demo when it is shown under mobile device.
        Telerik.Web.UI.RadLightBox.prototype._handleMetaViewport = function () { }
    </script>
</asp:Content>

