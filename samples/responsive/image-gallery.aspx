<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="image-gallery.aspx.cs" Inherits="responsive_web_design_aspnet_samples_image_gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>ASP.NET AJAX Image Gallery Demo with Responsive Page Layout </title>
    <meta description="Access ASP.NET AJAX Image Gallery on a mobile device and see how the Telerik responsive component changes its appearance." />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadPageLayout ID="RadPageLayout1" runat="server" GridType="Fluid" CssClass="t-rwd-tr" HtmlTag="None">
        <telerik:LayoutRow WrapperCssClass="t-rwd-white-row" RowType="Container" WrapperHtmlTag="Div" CssClass="t-rwd-rem-pad">
            <Rows>
                <telerik:LayoutRow CssClass="t-rwd-row-pad" RowType="Generic">
                    <Content>
                        <h1>Image Gallery: Responsive Behavior </h1>
                        <div class="t-rwd-back">
                            <a href="<%= ResolveUrl("~/samples/responsive-behavior.aspx")%>"><span>&laquo;</span>More responsive demos</a>
                        </div>
                    </Content>
                </telerik:LayoutRow>

                <telerik:LayoutRow CssClass="t-rwd-row-pad">
                    <Columns>
                        <telerik:LayoutColumn Span="7" SpanMd="12" SpanSm="9" SpanXs="12">
                            <p>
                                When accessed via a mobile device, the <a href="http://www.telerik.com/products/aspnet-ajax/image-gallery.aspx">Telerik ASP.NET Image Gallery</a> automatically changes its appearance to better fit the device screen size.
                            </p>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="5" SpanSm="9" SpanXs="12" HiddenMd="true" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right">
                            <div class="t-rwd-qr">
                                <img src="<%= ResolveUrl("~/Images/qr-image-gallery.png") %>" alt="Scan here to browse the demos on your mobile device." />
                                <span>Scan here to browse the demos on your mobile device.
                                            <br />
                                    <a href="http://tlrk.it/1ctue5D">tlrk.it/1ctue5D</a>
                                </span>
                            </div>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:LayoutRow>
        <telerik:LayoutRow WrapperCssClass="t-rwd-grey-row" RowType="Container" WrapperHtmlTag="Div">
            <Content>
                <telerik:RadImageGallery ID="RadImageGalleryFruits" runat="server" ImagesFolderPath="ImageGalleryImages" DisplayAreaMode="Thumbnails" Skin="MetroTouch">
                    <ThumbnailsAreaSettings ScrollOrientation="Vertical" ShowScrollButtons="false" Height="100%" Mode="Thumbnails" />
                    <ImageAreaSettings />
                    <ToolbarSettings ShowFullScreenButton="false" />
                </telerik:RadImageGallery>
            </Content>
        </telerik:LayoutRow>
    </telerik:RadPageLayout>
</asp:Content>

