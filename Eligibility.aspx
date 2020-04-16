<%@ Page Title="OSSAA Eligibility" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="Eligibility.aspx.cs" Inherits="Eligibility" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>OSSAA.com</title>
    <meta description="Oklahoma Secondary School Activities Association" />
    <link href="../styles/pages.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server" >
        <telerik:RadPageLayout ID="RadPageLayout2" runat="server" CssClass="t-rwd-tr t-rwd-overview" HtmlTag="None">
            <Rows>
                <telerik:LayoutRow WrapperCssClass="t-rwd-white-row-none" WrapperHtmlTag="Div" RowType="Container" Style="margin-top:-100px;">
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXl="12" SpanLg="12" SpanMd="12" SpanSm="9" SpanXs="12" >
                        <asp:ImageButton runat="server" ID="ImageHeader" Style="box-shadow: 0 5px 20px rgba(0, 0, 0, 1.5); margin-top:10px;" Width="100%" ImageUrl="~/Images/OSSAASportHeaders_Eligibility.png"></asp:ImageButton><br /><br />
                        <telerik:RadMenu runat="server" ID="RadMenu1" Skin="Bootstrap" Width="100%" Flow="Vertical" Style="white-space:normal;padding-bottom:50px;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
                        </telerik:RadMenu>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
        </telerik:RadPageLayout>

</asp:Content>

