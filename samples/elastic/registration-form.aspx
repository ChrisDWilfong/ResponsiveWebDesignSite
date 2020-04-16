<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="registration-form.aspx.cs" Inherits="Samples_RegistrationForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Registration Form Example with Responsive Design | Mobile ASP.NET AJAX Demos</title>
    <meta description="See the elastic rendering of Telerik ASP.NET AJAX Button, Notification & ToolTip in action! Test elastic behavior with responsive ASP.NET Registration Form!" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <telerik:RadNotification ID="RadNotificationRegForm" runat="server" CssClass="elastic-control" Position="Center" CloseButtonToolTip=""
        Animation="Fade" EnableRoundedCorners="true" EnableShadow="true"
        Title="Notification Title" Text="Registration form styled with Form Decorator"
        Style="z-index: 35000">
		<NotificationMenu Visible="false"></NotificationMenu>
    </telerik:RadNotification>
    <telerik:RadToolTip runat="server" ID="RadToolTipFirst" Skin="MetroTouch" OnClientShow="onClientShow" ShowDelay="600" RenderMode="Lightweight" VisibleOnPageLoad="true" TargetControlID="firstName" ShowEvent="OnClick" RelativeTo="Element" CssClass="elastic-control" OffsetY="-5" Position="TopCenter" ></telerik:RadToolTip>
    <telerik:RadToolTip runat="server" ID="RadToolTipLast" Skin="MetroTouch" OnClientShow="onClientShow" ShowDelay="600" RenderMode="Lightweight" VisibleOnPageLoad="true" TargetControlID="lastName" ShowEvent="OnClick" RelativeTo="Element" CssClass="elastic-control" OffsetY="-5" Position="TopCenter"></telerik:RadToolTip>
    <telerik:RadToolTip runat="server" ID="RadToolEmail" Skin="MetroTouch" OnClientShow="onClientShow" ShowDelay="600" RenderMode="Lightweight" VisibleOnPageLoad="true" TargetControlID="email" ShowEvent="OnClick" RelativeTo="Element" CssClass="elastic-control" OffsetY="-5" Position="TopCenter"></telerik:RadToolTip>

    <telerik:RadToolTip runat="server" ID="RadToolStreet" Skin="MetroTouch" OnClientShow="onClientShow" ShowDelay="600" RenderMode="Lightweight" VisibleOnPageLoad="true" TargetControlID="street" ShowEvent="OnClick" RelativeTo="Element" CssClass="elastic-control" OffsetY="-5" Position="TopCenter"></telerik:RadToolTip>
    <telerik:RadToolTip runat="server" ID="RadToolCity" Skin="MetroTouch" OnClientShow="onClientShow" ShowDelay="600" RenderMode="Lightweight" VisibleOnPageLoad="true" TargetControlID="city" ShowEvent="OnClick" RelativeTo="Element" CssClass="elastic-control" OffsetY="-5" Position="TopCenter"></telerik:RadToolTip>
    <telerik:RadToolTip runat="server" ID="RadToolZipCode" Skin="MetroTouch" OnClientShow="onClientShow" ShowDelay="600" RenderMode="Lightweight" VisibleOnPageLoad="true" TargetControlID="zipCode" ShowEvent="OnClick" RelativeTo="Element" CssClass="elastic-control" OffsetY="-5" Position="TopCenter"></telerik:RadToolTip>
    <telerik:RadFormDecorator runat="server" ID="RadFormDecoratorRegForm" Skin="MetroTouch" DecoratedControls="All" RenderMode="Lightweight" DecorationZoneID="RegForm" />
    <div id="RegForm">
        <telerik:RadPageLayout ID="RadPageLayout1" runat="server" GridType="Fluid" CssClass="t-rwd-tr t-rwd-form" HtmlTag="None">

            <telerik:LayoutRow WrapperCssClass="t-rwd-white-row" RowType="Container" CssClass="t-rwd-rem-pad" WrapperHtmlTag="Div">
                <Rows>
                    <telerik:LayoutRow CssClass="t-rwd-row-pad" RowType="Generic">
                        <Content>
                            <h1>Registration Form: Elastic Behavior </h1>
                            <div class="t-rwd-back">
                                <a href="<%= ResolveUrl("~/samples/elastic-behavior.aspx")%>"><span>&laquo;</span>More elastic demos</a>
                            </div>
                        </Content>
                    </telerik:LayoutRow>

                    <telerik:LayoutRow CssClass="t-rwd-row-pad">
                        <Columns>
                            <telerik:LayoutColumn Span="7" SpanMd="12" SpanSm="9" SpanXs="12">
                                <p>
                                    This registration form example showcases the elastic rendering of the <a href="http://www.telerik.com/products/aspnet-ajax/button.aspx">Telerik ASP.NET AJAX Button</a>, <a href="http://www.telerik.com/products/aspnet-ajax/notification.aspx">Notification</a> and <a href="http://www.telerik.com/products/aspnet-ajax/tooltip.aspx">ToolTip</a> controls. The demo features standard ASP textboxes styled as Telerik controls with the help of <a href="http://www.telerik.com/products/aspnet-ajax/formdecorator.aspx">RadFormDecorator</a>. 
                                </p>
                                <p>
                                    Use the dropdown below to test their elastic behavior. It enables the controls  to adapt to the font that the reader uses, thus optimizing them for use on phones and tablets.
                                </p>
                            </telerik:LayoutColumn>
                            <telerik:LayoutColumn Span="5" SpanSm="9" SpanXs="12" HiddenMd="true" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right">
                                <div class="t-rwd-qr">
                                    <img src="<%= ResolveUrl("~/Images/qr-reg-form.png") %>" alt="Scan here to browse the demos on your mobile device." />
                                    <span>Scan here to browse the demos on your mobile device.
                                                <br />
                                        <a href="http://tlrk.it/1l1aYkQ">tlrk.it/1l1aYkQ</a>
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
                            <telerik:CompositeLayoutColumn Span="6" SpanMd="12" SpanSm="9" SpanXs="12" CssClass="t-rwd-info-wrapper">
                                <Content>
                                    <strong class="t-rwd-cont">Contact Information</strong>
                                </Content>
                                <Rows>
                                    <telerik:LayoutRow>
                                        <Columns>
                                            <telerik:LayoutColumn Span="3" SpanSm="9" SpanXs="12">
                                                <label class="elastic-control">
                                                    First Name:
                                                </label>
                                            </telerik:LayoutColumn>
                                            <telerik:LayoutColumn Span="9" SpanSm="9" SpanXs="12">
                                                <asp:TextBox runat="server" CssClass="elastic-control" ID="firstName" title="Enter your first name" />
                                            </telerik:LayoutColumn>
                                        </Columns>
                                    </telerik:LayoutRow>
                                    <telerik:LayoutRow>
                                        <Columns>
                                            <telerik:LayoutColumn Span="3" SpanSm="9" SpanXs="12">
                                                <label class="elastic-control">
                                                    Last Name:
                                                </label>
                                            </telerik:LayoutColumn>
                                            <telerik:LayoutColumn Span="9" SpanSm="9" SpanXs="12">
                                                <asp:TextBox runat="server" CssClass="elastic-control" ID="lastName" title="Enter your last name" />
                                            </telerik:LayoutColumn>
                                        </Columns>
                                    </telerik:LayoutRow>

                                    <telerik:LayoutRow>
                                        <Columns>
                                            <telerik:LayoutColumn Span="3" SpanSm="9" SpanXs="12">
                                                <label class="elastic-control">
                                                    Email: 
                                                </label>
                                            </telerik:LayoutColumn>
                                            <telerik:LayoutColumn Span="9" SpanSm="9" SpanXs="12">
                                                <asp:TextBox runat="server" CssClass="elastic-control" ID="email" title="Enter your e-mail" />
                                            </telerik:LayoutColumn>
                                        </Columns>
                                    </telerik:LayoutRow>
                                </Rows>
                            </telerik:CompositeLayoutColumn>

                            <telerik:CompositeLayoutColumn Span="6" SpanMd="12" SpanSm="9" SpanXs="12" CssClass="t-rwd-info-wrapper">
                                <Content>
                                    <strong class="t-rwd-addr">Address Information</strong>
                                </Content>
                                <Rows>
                                    <telerik:LayoutRow>
                                        <Columns>
                                            <telerik:LayoutColumn Span="3" SpanSm="9" SpanXs="12">
                                                <label class="elastic-control">
                                                    Street:
                                                </label>
                                            </telerik:LayoutColumn>
                                            <telerik:LayoutColumn Span="9" SpanSm="9" SpanXs="12">
                                                <asp:TextBox runat="server" CssClass="elastic-control" ID="street" title="Enter street name" />
                                            </telerik:LayoutColumn>
                                        </Columns>
                                    </telerik:LayoutRow>
                                    <telerik:LayoutRow>
                                        <Columns>
                                            <telerik:LayoutColumn Span="3" SpanSm="9" SpanXs="12">
                                                <label class="elastic-control">
                                                    City:
                                                </label>
                                            </telerik:LayoutColumn>
                                            <telerik:LayoutColumn Span="9" SpanSm="9" SpanXs="12">
                                                <asp:TextBox runat="server" CssClass="elastic-control" ID="city" title="Enter city name" />
                                            </telerik:LayoutColumn>
                                        </Columns>
                                    </telerik:LayoutRow>

                                    <telerik:LayoutRow>
                                        <Columns>
                                            <telerik:LayoutColumn Span="3" SpanSm="9" SpanXs="12">
                                                <label class="elastic-control">
                                                    Phone: 
                                                </label>
                                            </telerik:LayoutColumn>
                                            <telerik:LayoutColumn Span="9" SpanSm="9" SpanXs="12">
                                                <asp:TextBox runat="server" CssClass="elastic-control" ID="zipCode" title="Enter your phone number" />
                                            </telerik:LayoutColumn>
                                        </Columns>
                                    </telerik:LayoutRow>
                                </Rows>
                            </telerik:CompositeLayoutColumn>
                        </Columns>
                    </telerik:LayoutRow>
                    <telerik:LayoutRow RowType="Generic" CssClass="t-rwd-registration-footer" >
                        <Content>
                            <telerik:RadButton ID="RadButton2" runat="server" Text="Register" Skin="MetroTouch" ButtonType="SkinnedButton"
                                AutoPostBack="false" OnClientClicked="onClientClicked" CssClass="elastic-control t-rwd-form-button">
                            </telerik:RadButton>
                        </Content>
                    </telerik:LayoutRow>
                </Rows>
            </telerik:LayoutRow>
        </telerik:RadPageLayout>
    </div>
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

        function onClientClicked(sender, args) {
            var notification = $find("<%=RadNotificationRegForm.ClientID%>");

            notification.show();
        }

        function onClientShow(sender, args) {
            sender.hide();
            sender.remove_show(onClientShow);
        }
    </script>
</asp:Content>

