<%@ Page Title="OSSAA Rules Manual" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="Manual_Rules.aspx.cs" Inherits="Manual_Rules" %>

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
                            <h2><asp:Label id="lblTitle" runat="server" Text="2018-19 OSSAA Rules Manual"></asp:Label></h2>
                            <asp:Label runat="server" ID="lblDownload" Text="To download a PDF, click the DOWN ARROW just upper/left of the document." ForeColor="Red"></asp:Label><br />
                            <div data-configid="26504309/66234706" style="width:100%; height:640px;" class="issuuembed"></div>
                                <script type="text/javascript" src="//e.issuu.com/embed.js" async="true"></script>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:LayoutRow>

    </telerik:RadPageLayout>

</asp:Content>

