<%@ Page Title="OSSAA Non-Public School Maps" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="Maps.aspx.cs" Inherits="Maps" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta description="Oklahoma Secondary School Activities Association" />
    <link href="../styles/pages.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server" >
        <telerik:RadPageLayout ID="RadPageLayout2" runat="server" CssClass="t-rwd-tr t-rwd-overview" HtmlTag="None">
            <Rows>
                <telerik:LayoutRow WrapperCssClass="t-rwd-white-row-ossaa" WrapperHtmlTag="Div" RowType="Container" Style="margin-top:-100px;">
                <Columns>
                    <telerik:LayoutColumn Span="11" SpanXl="11" SpanLg="11" SpanMd="12" SpanSm="12" SpanXs="12" >
                        <asp:ImageButton runat="server" ID="ImageHeader" Style="box-shadow: 0 5px 20px rgba(0, 0, 0, 1.5); margin-top:20px;" Width="100%" ImageUrl="~/Images/OSSAASPHeaders_Maps.png"></asp:ImageButton><br /><br />
                        <telerik:RadMenu ID="RadMenu1" runat="server" Skin="Bootstrap" Width="100%" Flow="Vertical" Style="white-space:normal;padding-bottom:50px;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
                        </telerik:RadMenu>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
        </telerik:RadPageLayout>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:OSSAAConnectionString %>" 
            SelectCommand="SELECT [strTitle], [strLink] FROM [wilfong143].[tblMaps] WHERE ([ysnActive] = @ysnActive) ORDER BY [strTitle]">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="ysnActive" Type="Int16" />
            </SelectParameters>
        </asp:SqlDataSource>

</asp:Content>

