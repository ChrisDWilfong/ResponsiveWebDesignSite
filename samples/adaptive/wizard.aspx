<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSampleSite.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
	<link href="wizard-styles.css" rel="stylesheet" />
	<title>Responsive Design Wizard with Adaptive Behavior | Mobile ASP.NET App Demo</title>
	<meta name="viewport" content="width=device-width, intial-scale=1, user-scalable=no" />
	<meta description="Create great user experience on any device screen size, play with this demo and see Telerik ASP.NET mobile-friendly Wizard in action!" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
	<telerik:RadPageLayout ID="RadPageLayout1" runat="server" GridType="Fluid" CssClass="t-rwd-tr" HtmlTag="None">
		<telerik:LayoutRow WrapperCssClass="t-rwd-white-row" CssClass="t-rwd-rem-pad" RowType="Container" WrapperHtmlTag="Div">
			<Rows>
				<telerik:LayoutRow CssClass="t-rwd-row-pad" RowType="Generic">
					<Content>
						<h1>Wizard: Adaptive Behavior</h1>
						<div class="t-rwd-back">
							<a href="<%= ResolveUrl("~/samples/adaptive-behavior.aspx")%>"><span>&laquo;</span>More adaptive demos</a>
						</div>
					</Content>
				</telerik:LayoutRow>

				<telerik:LayoutRow CssClass="t-rwd-row-pad">
					<Columns>
						<telerik:LayoutColumn Span="7" SpanMd="12" SpanSm="9" SpanXs="12">
							<p>
								When accessed via a mobile device, the <a href="http://www.telerik.com/products/aspnet-ajax/wizard.aspx">Telerik ASP.NET Wizard</a> delivers a user experience tailored to the device screen size:
							</p>
							<ul class="t-rwd-list">
								<li>It renders the inputs and buttons it contains as native HTML elements. 
									This makes it more lightweight and better performing while also offering the experience native for the device.</li>
								<li>It is mobile-friendly and its touch zones are bigger and easier to select.</li>
							</ul>
						</telerik:LayoutColumn>
						<telerik:LayoutColumn Span="5" SpanSm="9" SpanXs="12" HiddenMd="true" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right">
							<div class="t-rwd-qr">
								<img src="<%= ResolveUrl("~/Images/Wizard_QR_code_adaptive_demo.png") %>" alt="Visit Telerik UI for ASP.NET AJAX Adaptive Behavior Page" />
								<span>Scan here to browse the demos on your mobile device.
                                            <br />
									<a href="http://tlrk.it/1GcZxg9">tlrk.it/1GcZxg9</a>
								</span>
							</div>
						</telerik:LayoutColumn>
					</Columns>
				</telerik:LayoutRow>
			</Rows>
		</telerik:LayoutRow>
		<telerik:LayoutRow WrapperCssClass="t-rwd-grey-row" WrapperHtmlTag="Div" RowType="Container">
			<Content>
				<telerik:RadWizard ID="RadWizard1" runat="server" Width="100%" RenderMode="Auto" Skin="MetroTouch">
					<WizardSteps>
						<telerik:RadWizardStep ID="Login" Title="Login" StepType="Start">
							<div class="stepContainer">
								<telerik:RadTextBox runat="server" ID="UserName" EmptyMessage="User Name" Width="100%" Skin="MetroTouch">
								</telerik:RadTextBox>
								<telerik:RadTextBox runat="server" ID="Password" TextMode="Password" EmptyMessage="Password" Width="100%" Skin="MetroTouch"></telerik:RadTextBox>
							</div>
						</telerik:RadWizardStep>
						<telerik:RadWizardStep ID="Name" Title="Name" StepType="Start">
							<div class="stepContainer">
								<telerik:RadTextBox runat="server" ID="FirstName" EmptyMessage="First Name" Width="100%" Skin="MetroTouch">
								</telerik:RadTextBox>
								<telerik:RadTextBox runat="server" ID="MiddleName" EmptyMessage="Middle Name" Width="100%" Skin="MetroTouch"></telerik:RadTextBox>
								<telerik:RadTextBox runat="server" ID="LastName" EmptyMessage="Last Name" Width="100%" Skin="MetroTouch"></telerik:RadTextBox>
							</div>
						</telerik:RadWizardStep>
						<telerik:RadWizardStep ID="AddressStep" Title="Address">
							<div class="stepContainer">
								<telerik:RadTextBox runat="server" ID="Cpuntry" EmptyMessage="Country" Width="100%" Skin="MetroTouch"></telerik:RadTextBox>
								<telerik:RadTextBox runat="server" ID="City" EmptyMessage="City" Width="100%" Skin="MetroTouch"></telerik:RadTextBox>
								<telerik:RadTextBox runat="server" ID="Address" EmptyMessage="Address" Width="100%" Skin="MetroTouch"></telerik:RadTextBox>
							</div>
						</telerik:RadWizardStep>
						<telerik:RadWizardStep ID="BillingAddress" Title="Billing Address">
							<div class="stepContainer">
								<telerik:RadTextBox runat="server" ID="BillCpuntry" EmptyMessage="Country" Width="100%" Skin="MetroTouch"></telerik:RadTextBox>
								<telerik:RadTextBox runat="server" ID="BillCity" EmptyMessage="City" Width="100%" Skin="MetroTouch"></telerik:RadTextBox>
								<telerik:RadTextBox runat="server" ID="BillAddress" EmptyMessage="Address" Width="100%" Skin="MetroTouch"></telerik:RadTextBox>
							</div>
						</telerik:RadWizardStep>
						<telerik:RadWizardStep ID="Education" Title="Education">
							<div class="stepContainer">
								<telerik:RadTextBox runat="server" ID="School" EmptyMessage="School" Width="100%" Skin="MetroTouch"></telerik:RadTextBox>
								<telerik:RadTextBox runat="server" ID="Univercity" EmptyMessage="University" Width="100%" Skin="MetroTouch"></telerik:RadTextBox>
							</div>
						</telerik:RadWizardStep>
						<telerik:RadWizardStep ID="Career" Title="Career">
							<div class="stepContainer">
								<telerik:RadTextBox runat="server" ID="RadTextBox13" EmptyMessage="Current" Width="100%" Skin="MetroTouch"></telerik:RadTextBox>
								<telerik:RadTextBox runat="server" ID="RadTextBox14" EmptyMessage="Previous" Width="100%" Skin="MetroTouch"></telerik:RadTextBox>
							</div>
						</telerik:RadWizardStep>
						<telerik:RadWizardStep ID="Other" Title="Other" StepType="Finish">
							<div class="stepContainer">
								<telerik:RadTextBox runat="server" ID="Hobby" EmptyMessage="Hobby" Width="100%" Skin="MetroTouch"></telerik:RadTextBox>
								<telerik:RadTextBox runat="server" ID="Music" EmptyMessage="Music" Width="100%" Skin="MetroTouch"></telerik:RadTextBox>
								<telerik:RadTextBox runat="server" ID="Sport" EmptyMessage="Sport" Width="100%" Skin="MetroTouch"></telerik:RadTextBox>
							</div>
						</telerik:RadWizardStep>
					</WizardSteps>
				</telerik:RadWizard>
			</Content>
		</telerik:LayoutRow>
	</telerik:RadPageLayout>
</asp:Content>

