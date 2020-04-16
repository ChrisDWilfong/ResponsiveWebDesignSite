<%@ Page Title="OSSAA Photos" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="Photos.aspx.cs" Inherits="Photos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>OSSAA.com</title>
    <meta description="Oklahoma Secondary School Activities Association" />
    <link href="../styles/pages.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server" >
        <telerik:RadPageLayout ID="RadPageLayout2" runat="server" CssClass="t-rwd-tr t-rwd-overview" HtmlTag="None">
            <Rows>
                <telerik:LayoutRow WrapperCssClass="t-rwd-white-row-baseball" WrapperHtmlTag="Div" RowType="Container">
                    <Columns>
                        <telerik:LayoutColumn Span="12" SpanXl="12" SpanLg="12" SpanMd="12" SpanSm="9" SpanXs="12" >
                            <iframe width="960" height="360" src="http://s58.photobucket.com/user/ossaaphotos/embed/slideshow/BabeRuth"></iframe>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
                <telerik:LayoutRow WrapperCssClass="t-rwd-white-row-baseball" WrapperHtmlTag="Div" RowType="Container">
                    <Columns>
                        <telerik:LayoutColumn Span="12" SpanXl="12" SpanLg="12" SpanMd="12" SpanSm="9" SpanXs="12" >
                            <iframe width="960" height="560" src="http://s58.photobucket.com/user/ossaaphotos/embed/BabeRuth/story"></iframe>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:RadPageLayout>

</asp:Content>

