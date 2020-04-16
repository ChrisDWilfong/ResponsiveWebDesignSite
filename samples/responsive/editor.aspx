<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="editor.aspx.cs" Inherits="Samples_Editor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>Example of ASP.NET AJAX Editor Component with Responsive Behavior</title>
	<meta description="See how the Editor can adapt to the width of its container. Play with demos!" />
	<link href="Styles/editor.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<telerik:RadPageLayout ID="RadPageLayout1" runat="server" GridType="Fluid" CssClass="t-rwd-tr" HtmlTag="None">
		<telerik:LayoutRow WrapperCssClass="t-rwd-white-row" CssClass="t-rwd-rem-pad" WrapperHtmlTag="Div" RowType="Container">
			<Rows>
				<telerik:LayoutRow CssClass="t-rwd-row-pad" RowType="Generic">
					<Content>
						<h1>Editor: Responsive Behavior </h1>
						<div class="t-rwd-back">
							<a href="<%= ResolveUrl("~/samples/responsive-behavior.aspx")%>">
								<span>&laquo;</span>More responsive demos
							</a>
						</div>
					</Content>
				</telerik:LayoutRow>

				<telerik:LayoutRow CssClass="t-rwd-row-pad">
					<Columns>
						<telerik:LayoutColumn Span="7" SpanMd="12" SpanSm="9" SpanXs="12">
							<p>
							The <a href="http://www.telerik.com/products/aspnet-ajax/editor.aspx">Telerik ASP.NET Editor</a> offers two responsive features:
							</p>
							<ul class="t-rwd-list">
								<li>It can take the width of its parent element in order to fill up the available space with a simple JavaScript call.</li>
								<li>Its individual elements can shrink or grow depending on the chosen font size:
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
								</li>
							</ul>
						</telerik:LayoutColumn>
						<telerik:LayoutColumn Span="5" SpanSm="9" SpanXs="12" HiddenMd="true" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right">
							<div class="t-rwd-qr">
								<img src="<%= ResolveUrl("~/Images/qr-editor.png") %>" alt="Scan here to browse the demos on your mobile device." />
								<span>Scan here to browse the demos on your mobile device. <br />
									<a href="http://tlrk.it/1FT8lI0">tlrk.it/1FT8lI0</a> </span>
							</div>
						</telerik:LayoutColumn>
					</Columns>
				</telerik:LayoutRow>
			</Rows>
		</telerik:LayoutRow>
		<telerik:LayoutRow WrapperCssClass="t-rwd-grey-row" WrapperHtmlTag="Div" RowType="Container" CssClass="t-rwd-rem-pad">
			<Content>
				<script type="text/javascript">
					function repaintEditor() {
						$find("<%=RadEditor1.ClientID%>").repaint();
					}
					
					var TO = false;
					$telerik.$(window).resize(function () {
						if (TO !== false)
							clearTimeout(TO);
						TO = setTimeout(repaintEditor, 200);
					});
				</script>
				<telerik:RadEditor ID="RadEditor1" runat="server" Width="100%" RenderMode="Lightweight">
					<Content>
						<p>
							In times when the sales of tablets and smartphones exceed the sales of desktop PCs, when people use all kinds of mobile devices to browse the web and are allowed to bring their own device to work, ASP.NET developers face the challenge of building web applications targeting all screen resolutions.
						</p>
						<p>
							The Telerik UI for ASP.NET AJAX suite can help you create responsive pages and the following help articles can get you started:
						</p>
						<ul>
							<li>
								<a href="http://www.telerik.com/help/aspnet-ajax/mobile-support-and-responsiveness.html" title="What is mobile support and responsiveness">First steps in mobile support and responsiveness with the Telerik controls</a>
							</li>
							<li>
								<a href="http://www.telerik.com/help/aspnet-ajax/responsive-adaptive-elastic-capabilities.html" title="Responsive capabilities list">List with the responsive capabilities our controls offer</a>
							</li>
							<li>
								<a href="http://www.telerik.com/help/aspnet-ajax/render-modes.html" title="Render Modes list">Some controls can render in a more lightweight fashion to benefit modern browsers and mobile devices</a>
							</li>
						</ul>
					</Content>
				</telerik:RadEditor>
			</Content>
		</telerik:LayoutRow>
	</telerik:RadPageLayout>
</asp:Content>