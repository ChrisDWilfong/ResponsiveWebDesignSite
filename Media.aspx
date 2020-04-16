<%@ Page Title="OSSAA Media" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="Media.aspx.cs" Inherits="Media" %>

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
                    <telerik:LayoutColumn Span="9" SpanXl="9" SpanLg="9" SpanMd="9" SpanSm="9" SpanXs="12" >
                        <asp:ImageButton runat="server" ID="ImageHeader" Style="box-shadow: 0 5px 20px rgba(0, 0, 0, 1.5); margin-top:20px;" Width="100%" ImageUrl="~/Images/media/OSSAASportHeaders_Media.png"></asp:ImageButton><br /><br />
                        <telerik:RadMenu ID="RadMenu1" runat="server" Skin="Bootstrap" Width="100%" Flow="Vertical" Style="white-space:normal;padding-bottom:50px;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
                        </telerik:RadMenu>
                    </telerik:LayoutColumn>
                   <telerik:LayoutColumn Span="3" SpanXl="3" SpanLg="3" SpanMd="3" SpanSm="9" SpanXs="12" >
                            <div class="containerA">
                                <div class="centered">
                                    <br><asp:Label runat="server" ID="lblImage00" Font-Bold="true"></asp:Label>
                                </div>
                                <asp:ImageButton Visible="false" ID="ImageButton0" runat="server" CssClass="imageRight" Width="100%"/>
                            </div>
                            <div class="container">
                                <div class="centered">
                                    <br><asp:Label runat="server" ID="lblImage10" Font-Bold="true"></asp:Label>
                                </div>
                                <asp:ImageButton Visible="false" ID="ImageButton1" runat="server" CssClass="imageRight" Width="100%" />
                            </div>
                            <div class="container">
                                <div class="centered">
                                    <br><asp:Label runat="server" ID="lblImage20" Font-Bold="true"></asp:Label>
                                </div>
                                <asp:ImageButton Visible="false" ID="ImageButton2" runat="server" CssClass="imageRight" Width="100%" />
                            </div>
                            <div class="container">
                             <div class="centered">
                                    <br><asp:Label runat="server" ID="lblImage30" Font-Bold="true"></asp:Label>
                                </div>
                                <asp:ImageButton Visible="false" ID="ImageButton3" runat="server" CssClass="imageRight" Width="100%" />
                            </div>
                            <div class="container">
                             <div class="centered">
                                    <br><asp:Label runat="server" ID="lblImage40" Font-Bold="true"></asp:Label>
                                </div>
                                <asp:ImageButton Visible="false" ID="ImageButton4" runat="server" CssClass="imageRight" Width="100%" />
                            </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
        </telerik:RadPageLayout>

</asp:Content>

