<%@ Page Title="OSSAA Manual" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="Manual.aspx.cs" Inherits="Manual" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>OSSAA.com</title>
    <meta description="Oklahoma Secondary School Activities Association" />
    <link href="../styles/pages.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server" >
    <telerik:RadPageLayout ID="RadPageLayout1" runat="server" HtmlTag="None" GridType="Fluid" CssClass="t-rwd-tr t-rwd-overview">
        <telerik:LayoutRow WrapperCssClass="t-rwd-white-row-none" WrapperHtmlTag="Div" RowType="Container">
            <Rows>
                <telerik:LayoutRow CssClass="t-rwd-row-pad">
                    <Columns>
                        <telerik:LayoutColumn Span="12" SpanLg="12" SpanXl="12" SpanMd="12" SpanSm="9" SpanXs="12">
                            <h2><asp:Label runat="server" Id="lblManual" ></asp:Label></h2>
                            <asp:Literal runat="server" ID="manualLink"></asp:Literal>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:LayoutRow>

    </telerik:RadPageLayout>

</asp:Content>

