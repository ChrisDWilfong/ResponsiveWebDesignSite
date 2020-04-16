<%@ Page Title="OSSAA Basketball" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="ParentsIFRAME.aspx.cs" Inherits="ParentsIFRAME" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>OSSAA.com</title>
    <meta description="Oklahoma Secondary School Activities Association" />
    <link href="../styles/pages.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server" >
        <telerik:RadPageLayout ID="RadPageLayout2" runat="server" CssClass="t-rwd-tr t-rwd-overview" HtmlTag="None">
            <Rows>
                <telerik:LayoutRow WrapperCssClass="t-rwd-gray-row" WrapperHtmlTag="Div" RowType="Container">
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXl="12" SpanLg="12" SpanMd="12" SpanSm="12" SpanXs="12" >
                        <div style="margin-left:-35px; margin-top:-100px;">
                        <iframe width="960" height="2000" src="http://cwilfong.wixsite.com/ossaablog/parents" frameborder="0" scrolling="no"></iframe>
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:RadPageLayout>

</asp:Content>

