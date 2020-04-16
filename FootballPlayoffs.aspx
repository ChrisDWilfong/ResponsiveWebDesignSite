<%@ Page Title="OSSAA Football" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="FootballPlayoffs.aspx.cs" Inherits="FootballPlayoffs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>2019 OSSAA Football Playoffs</title>
    <meta description="Oklahoma Secondary School Activities Association" />
    <link href="../styles/pages.css" rel="stylesheet" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@OSSAAOnline" />
    <meta name="twitter:title" content="Home of the 2019 OSSAA High School Football Playoffs" />
    <meta name="twitter:description" content="This is the Official Page of the Oklahoma High School Football Playoffs!  Check back here for playoff updates." />
    <meta name="twitter:image" content="http://www.ossaa.com/images/TwitterCards/ossaaNewLogo300.png" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server" >
        <telerik:RadPageLayout ID="RadPageLayout2" runat="server" CssClass="t-rwd-tr t-rwd-overview" HtmlTag="None">
            <Rows>
                <telerik:LayoutRow WrapperCssClass="t-rwd-white-row-football" WrapperHtmlTag="Div" RowType="Container" Style="margin-top:-100px;">
                <Columns>
                    <telerik:LayoutColumn Span="9" SpanXl="9" SpanLg="9" SpanMd="9" SpanSm="9" SpanXs="12" >
                        <asp:ImageButton runat="server" ID="ImageHeader" Style="box-shadow: 0 5px 20px rgba(0, 0, 0, 1.5); margin-top:20px;" Width="100%"></asp:ImageButton>
                        <asp:ImageButton runat="server" ID="ImageButton5" Style="box-shadow: 0 5px 20px rgba(0, 0, 0, 1.5); margin-top:20px;" Width="100%" ImageUrl="http://www.ossaa.com/images/playoffs/OSSAAFootballPlayoffBrackets.png"></asp:ImageButton>
                        <asp:Table runat="server">
                            <asp:TableRow>
                                <asp:TableCell Width="11%">
                                    <asp:HyperLink runat="server" ID="HyperLink9" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_6AIPlayoffBracket.pdf?id=12132019" Target="_blank" ><asp:Image runat="server" ImageUrl="../images/playoffs/6A-1.png" /></asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell Width="11%">
                                    <asp:HyperLink runat="server" ID="HyperLink1" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_6AIIPlayoffBracket.pdf?id=12132019" Target="_blank" ><asp:Image runat="server" ImageUrl="../images/playoffs/6A-2.png" /></asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell Width="11%">
                                    <asp:HyperLink runat="server" ID="HyperLink2" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_5APlayoffBracket.pdf?id=12132019" Target="_blank" ><asp:Image runat="server" ImageUrl="../images/playoffs/5A.png" /></asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell Width="11%">
                                    <asp:HyperLink runat="server" ID="HyperLink3" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_4APlayoffBracket.pdf?id=12132019" Target="_blank" ><asp:Image runat="server" ImageUrl="../images/playoffs/4A.png" /></asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell Width="11%">
                                    <asp:HyperLink runat="server" ID="HyperLink4" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_3APlayoffBracket.pdf?id=12132019" Target="_blank" ><asp:Image runat="server" ImageUrl="../images/playoffs/3A.png" /></asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell Width="11%">
                                    <asp:HyperLink runat="server" ID="HyperLink5" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_2APlayoffBracket.pdf?id=12132019" Target="_blank" ><asp:Image runat="server" ImageUrl="../images/playoffs/2A.png" /></asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell Width="11%">
                                    <asp:HyperLink runat="server" ID="HyperLink6" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_APlayoffBracket.pdf?id=12132019" Target="_blank" ><asp:Image runat="server" ImageUrl="../images/playoffs/A.png" /></asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell Width="11%">
                                    <asp:HyperLink runat="server" ID="HyperLink7" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_BPlayoffBracket.pdf?id=12132019" Target="_blank" ><asp:Image runat="server" ImageUrl="../images/playoffs/B.png" /></asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell Width="11%">
                                    <asp:HyperLink runat="server" ID="HyperLink8" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_CPlayoffBracket.pdf?id=12132019" Target="_blank" ><asp:Image runat="server" ImageUrl="../images/playoffs/C.png" /></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                        <telerik:RadMenu ID="RadMenu1" runat="server" Skin="Bootstrap" Width="100%" Flow="Vertical" Style="white-space:normal; padding-bottom:50px;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
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
            <telerik:LayoutRow WrapperCssClass="t-rwd-clean-row" WrapperHtmlTag="Div" RowType="Container">
                <Rows>
                    <telerik:LayoutRow>
                        <Columns>
                            <telerik:LayoutColumn Span="12" CssClass="t-rwd-center">
                                <asp:Label runat="server" ID="lblLastSeasonHeader" Text="LAST SEASONS STATE CHAMPIONSHIPS" Font-Size="XX-Large" Font-Bold="true" Style="padding-bottom:20px;padding-top:20px;" ForeColor="Navy"></asp:Label>
                                <telerik:RadMenu ID="RadMenu2" runat="server" Skin="Bootstrap" Width="100%" Flow="Vertical" Style="white-space:normal;" >
                                </telerik:RadMenu>
                            </telerik:LayoutColumn>
                        </Columns>
                    </telerik:LayoutRow>
                </Rows>
            </telerik:LayoutRow>
        </Rows>
        </telerik:RadPageLayout>

</asp:Content>

