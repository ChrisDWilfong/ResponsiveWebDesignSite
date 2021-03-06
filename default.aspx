﻿<%@ Page Title="OSSAA.com" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="ResponsiveWebDesignOverview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>OSSAA.com</title>
    <meta description="Oklahoma Secondary School Actvities Association" />
    <script>
    var today = new Date(),
        events = [
            +new Date(today.getFullYear(), today.getMonth(), 8),
            +new Date(today.getFullYear(), today.getMonth(), 12),
            +new Date(today.getFullYear(), today.getMonth(), 24),
            +new Date(today.getFullYear(), today.getMonth() + 1, 6),
            +new Date(today.getFullYear(), today.getMonth() + 1, 7),
            +new Date(today.getFullYear(), today.getMonth() + 1, 25),
            +new Date(today.getFullYear(), today.getMonth() + 1, 27),
            +new Date(today.getFullYear(), today.getMonth() - 1, 3),
            +new Date(today.getFullYear(), today.getMonth() - 1, 5),
            +new Date(today.getFullYear(), today.getMonth() - 2, 22),
            +new Date(today.getFullYear(), today.getMonth() - 2, 27)
        ];
    </script>

    <style>
        #calendar {
            width: 100%;
        }

        /* Template Days */

        .exhibition,
        .party,
        .cocktail {
            font-weight: bold;
        }

        .exhibition {
            color: #ff9e00;
        }

        .party {
            color: #ff4081;
        }

        .cocktail {
            color: #00a1e8;
        }
    </style>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <style>.ie-panel{display: none;background: #212121;padding: 10px 0;box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);clear: both;text-align:center;position: relative;z-index: 1;} html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {display: block;}</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadPageLayout ID="RadPageLayout1" runat="server" CssClass="t-rwd-tr t-rwd-overview" HtmlTag="None">
            <Rows>
                <telerik:LayoutRow style="text-align:center;" WrapperCssClass="t-rwd-gray-row" WrapperHtmlTag="Div" RowType="Container">
                    <Columns>
                        <telerik:LayoutColumn Span="12" SpanLg="12" SpanMd="12" SpanSm="12" SpanXl="12" SpanXs="12">
                            <asp:Panel ID="PanelFormsEdit" runat="server">
                            <asp:Label runat="server" ID="lblPostponements" ForeColor="#003399" Visible="true" Width="700px" style="text-align: left;"></asp:Label>
                            <asp:UpdatePanel runat="server" UpdateMode="Always" Visible="false">
                                <ContentTemplate>
                                    <asp:DropDownList runat="server" ID="DropDownClass" AutoPostBack="true" Font-Names="Segoe UI, Verdana, Helvetica, sans-serif" ForeColor="Navy" Font-Bold="True" Width="150px" Height="30px" Font-Size="Large">
                                        <asp:ListItem Text="6A Football" Value="Football6A"></asp:ListItem>
                                        <asp:ListItem Text="5A Football" Value="Football5A"></asp:ListItem>
                                        <asp:ListItem Text="4A Football" Value="Football4A"></asp:ListItem>
                                        <asp:ListItem Text="3A Football" Value="Football3A"></asp:ListItem>
                                        <asp:ListItem Text="2A Football" Value="Football2A"></asp:ListItem>
                                        <asp:ListItem Text=" A Football" Value="FootballA"></asp:ListItem>
                                        <asp:ListItem Text=" B Football" Value="FootballB"></asp:ListItem>
                                        <asp:ListItem Text=" C Football" Value="FootballC"></asp:ListItem>
                                    </asp:DropDownList>&nbsp;&nbsp;
                                    <asp:Label runat="server" Text="2018 OSSAA FOOTBALL PLAYOFFS" Font-Bold="true" Font-Size="X-Large" Font-Names="Oswald" Height="50px"></asp:Label>
                                    &nbsp;&nbsp;
                                    <asp:HyperLink runat="server" ID="hlBracket" Font-Size="Large" Font-Names="Segoe UI, Verdana, Helvetica, sans-serif" Text="VIEW BRACKET" Target="_blank" Font-Bold="true"></asp:HyperLink>
                                    <telerik:RadRotator RenderMode="Lightweight" ID="RadRotator3" runat="server" Width="925px" Height="55"
                                         ScrollDuration="300" FrameDuration="2000" ItemHeight="150" ItemWidth="185">
                                        <ItemTemplate>
                                            <div class="itemBorder">
                                            <asp:Table runat="server">
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="left" Width="160px">
                                                        <asp:Label CssClass="item" runat="server" ID="lblSchool" Text='<%# DataBinder.Eval(Container, "DataItem.School")%>'></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell HorizontalAlign="right">
                                                        <asp:Label CssClass="itemScore" runat="server" ID="lblScore" Text='<%# DataBinder.Eval(Container, "DataItem.TotalScore")%>'></asp:Label>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="left" Width="160px">
                                                        <asp:Label CssClass="item" runat="server" ID="lbloSchool" Text='<%# DataBinder.Eval(Container, "DataItem.oSchool")%>'></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell HorizontalAlign="right">
                                                        <asp:Label CssClass="itemScore" runat="server" ID="lbloScore" Text='<%# DataBinder.Eval(Container, "DataItem.oTotalScore")%>'></asp:Label>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>
                                            </div>
                                        </ItemTemplate>
                                    </telerik:RadRotator>
                                    </ContentTemplate>
                            </asp:UpdatePanel>
                            </asp:Panel>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
                <telerik:LayoutRow WrapperCssClass="t-rwd-gray-row" WrapperHtmlTag="Div" RowType="Container" Visible="false">
                    <Columns>
                        <telerik:LayoutColumn Span="12">
                            <asp:ImageButton runat="server" ID="ImageButton2" ImageUrl="../images/Playoffs/WantlandStadiumThankYouW2.png" Style="box-shadow: 0 5px 20px rgba(0, 0, 0, 1.5);" PostBackUrl="FootballPlayoffs.aspx" ></asp:ImageButton>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
                <telerik:LayoutRow WrapperCssClass="t-rwd-gray-row" WrapperHtmlTag="Div" RowType="Container" Visible="false">
                    <Columns>
                        <telerik:LayoutColumn Span="8">
                            <asp:ImageButton runat="server" ID="ImageButton3" ImageUrl="../images/Basketball/2020BasketballStateButtons016A-2A.png" Style="box-shadow: 0 5px 20px rgba(0, 0, 0, 1.5);" PostBackUrl="http://m.ossaarankings.com/scoreboard.aspx" ></asp:ImageButton>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="4">
							<a href="https://www.nfhsnetwork.com/playoffs/state/oklahoma?activity=Basketball"><asp:Image runat="server" ImageUrl="../images/Basketball/2020BasketballStateButtons036A-2A.png" /></a>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
                <telerik:LayoutRow WrapperCssClass="t-rwd-gray-row" ID="rowRotator" WrapperHtmlTag="Div" RowType="Container" Visible="false">
                    <Columns>
                        <telerik:LayoutColumn Span="12">
                            <telerik:RadRotator ID="RadRotator1" runat="server" Width="102%" Height="300px" ScrollDuration="1500" ScrollDirection="Left" FrameDuration="2000" ItemHeight="150" ItemWidth="310px" RenderMode="Auto" Visible="true">
                                <Items>
                                </Items>
                            </telerik:RadRotator>
                        </telerik:LayoutColumn>
                    </Columns>
                </Telerik:LayoutRow>

                <telerik:LayoutRow WrapperCssClass="t-rwd-gray-row" WrapperHtmlTag="Div" RowType="Container">
                    <Columns>
                        <telerik:LayoutColumn Span="8">
                            <asp:ImageButton runat="server" ID="hlSponsor" ImageUrl="~/Images/Integris/19-IN-087-Podcast-Assets-600x126.jpg" Style="box-shadow: 0 5px 20px rgba(0, 0, 0, 1.5);" PostBackUrl="https://integrisok.com/resources/articles/doctor-oklahoma-ep-5-high-school-sports" ></asp:ImageButton>
                        </telerik:LayoutColumn>
                       <telerik:LayoutColumn Span="4" CssClass="t-rwd-right">
                            <telerik:RadRotator ID="RadRotator2" runat="server" Width="300" Height="125px" ScrollDuration="2500" ScrollDirection="Left" FrameDuration="2000" ItemHeight="125" ItemWidth="300" Style="box-shadow: 0 5px 20px rgba(0, 0, 0, 1.5);" EnableRandomOrder="true" >
                                <Items>
                                    <telerik:RadRotatorItem>
                                        <ItemTemplate>
                                            <asp:HyperLink runat="server" ImageUrl="~/Images/ads/OSSAAHomeAds02.png"></asp:HyperLink>
                                        </ItemTemplate>
                                    </telerik:RadRotatorItem>
                                    <telerik:RadRotatorItem>
                                        <ItemTemplate>
                                            <asp:HyperLink runat="server" ImageUrl="~/Images/ads/OSSAAHomeAds01.png"></asp:HyperLink>
                                        </ItemTemplate>
                                    </telerik:RadRotatorItem>
                                    <telerik:RadRotatorItem>
                                        <ItemTemplate>
                                            <asp:HyperLink runat="server" ImageUrl="~/Images/ads/OSSAAHomeAds03.png"></asp:HyperLink>
                                        </ItemTemplate>
                                    </telerik:RadRotatorItem>
                                    </Items>
                            </telerik:RadRotator>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
                <telerik:LayoutRow WrapperCssClass="t-rwd-gray-row" WrapperHtmlTag="Div" RowType="Container">
                    <Columns>
                        <telerik:LayoutColumn Span="8" SpanLg="8" SpanXl="8" SpanMd="12" SpanSm="12" SpanXs="12">
                            <div id="left01">
                            <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" SelectedIndex="0" Skin="MetroTouch" RenderMode="Auto" Font-Bold="true" Font-Names="'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;" >
                                <Tabs>
                                    <telerik:RadTab Text="THIS WEEK" Selected="true"></telerik:RadTab>
                                    <telerik:RadTab Text="NEWS"></telerik:RadTab>
                                    <telerik:RadTab Text="QUICK LINKS"></telerik:RadTab>
                                    <telerik:RadTab Text="UPCOMING EVENTS"></telerik:RadTab>
                                    <telerik:RadTab Text="NFHS"></telerik:RadTab>
                                </Tabs>
                            </telerik:RadTabStrip>
                            <telerik:RadMultiPage runat="server" ID="RadMultiPage1"  SelectedIndex="0" CssClass="innerMultiPage" Style="white-space:normal;">
                                <telerik:RadPageView runat="server" ID="RadPageView0">
                                    <telerik:RadMenu ID="RadMenu0" runat="server" Skin="Bootstrap" Width="100%" Flow="Vertical" Style="white-space:normal;" >
                                    </telerik:RadMenu>
                                </telerik:RadPageView> 
                                <telerik:RadPageView runat="server" ID="PageView1">
                                    <telerik:RadMenu ID="RadMenu1" runat="server" Skin="Bootstrap" Width="100%" Flow="Vertical" Style="white-space:normal;" >
                                    </telerik:RadMenu>
                                </telerik:RadPageView>  
                                <telerik:RadPageView runat="server" ID="RadPageView2">
                                    <telerik:RadMenu ID="RadMenu2" runat="server" Skin="Bootstrap" Width="100%" Flow="Vertical" Style="white-space:normal;" >
                                    </telerik:RadMenu>
                                </telerik:RadPageView>
                                <telerik:RadPageView runat="server" ID="RadPageView3">
                                    <telerik:RadMenu ID="RadMenu3" runat="server" Skin="Bootstrap" Width="100%" Flow="Vertical" Style="white-space:normal;" >
                                    </telerik:RadMenu>
                                </telerik:RadPageView>
                                <telerik:RadPageView runat="server" ID="RadPageView4">
                                    <telerik:RadMenu ID="RadMenu4" runat="server" Skin="Bootstrap" Width="100%" Flow="Vertical" Style="white-space:normal;" >
                                    </telerik:RadMenu>
                                </telerik:RadPageView>
                            </telerik:RadMultiPage>
                            <br />
                                <div id="right01a">
                                    <telerik:RadMediaPlayer RenderMode="Lightweight" ID="RadMediaPlayer1" runat="server"
                                        Height="450px" EnableViewState="false" Width="100%" AutoPlay="false">
                                        <PlaylistSettings YouTubePlaylist="PLKUIvXI63dVihx1bwyGhBWYyYGUG-cCGC" Mode="Buttons" ButtonsTrigger="Hover" Position="Horizontal" />
                                    </telerik:RadMediaPlayer>
                                    <asp:Label runat="server" ID="lblSpace00"><br /></asp:Label>
                                    <telerik:RadLinkButton runat="server" ID="cmdCalendarM" Visible="false" NavigateUrl="Manual_Calendar.aspx" Text="2019-2021 CALENDAR" Width="100%" Font-Bold="true" Font-Size="XX-Large" Font-Names="'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" Height="70px" style="padding-bottom:10px;" ></telerik:RadLinkButton>
                                    <asp:Label runat="server" ID="lblSpace01"><hr /></asp:Label>
                                    <telerik:RadLinkButton runat="server" ID="cmdOSSAARankingsM" Visible="false" NavigateUrl="http://www.ossaarankings.com" Text="OSSAARANKINGS.COM" Width="100%" Font-Size="XX-Large" Font-Bold="true" Font-Names="'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" Height="70px"></telerik:RadLinkButton>
                                    <asp:Label runat="server" ID="lblSpace02"><hr /></asp:Label>
                                    <telerik:RadLinkButton runat="server" ID="cmdMembershipM" Visible="false" NavigateUrl="http://www.ossaarankings.com/membership/MemberLogin.aspx" Text="OSSAA MEMBERSHIP" Width="100%" Font-Bold="true" Font-Size="XX-Large" Font-Names="'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" Height="70px" ></telerik:RadLinkButton>
                                    <asp:Label runat="server" ID="lblSpace04"><hr /></asp:Label>
                                    <telerik:RadLinkButton runat="server" ID="cmdForTheParentsM" Visible="false" NavigateUrl="Parents.aspx" Text="FOR THE PARENT" Width="100%" Font-Bold="true" Font-Size="XX-Large" Font-Names="'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" Height="70px" ></telerik:RadLinkButton>
                                </div>
                            </div>
                        </telerik:LayoutColumn>     

                        <telerik:LayoutColumn Span="4" SpanLg="4" SpanXl="4" HiddenMd="true" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right" Visible="false" >
                            <asp:HyperLink runat="server" ID="hlNFHS" ImageUrl="~/Images/NFHS-Network.jpg" NavigateUrl="https://www.nfhsnetwork.com/associations/ossaa" Target="_blank"  ></asp:HyperLink>
                            <asp:Label runat="server" ID="Label4"><hr /></asp:Label>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="4" SpanLg="4" SpanXl="4" HiddenMd="true" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right" Visible="true" >
                            <asp:HyperLink runat="server" ID="HyperLink1" ImageUrl="~/Images/2020BasketballProgram300.jpg" NavigateUrl="https://okvype.com/2020/03/26/__trashed/?fbclid=IwAR0O6_U70ISN_7B2Wj-pICE5WcE3_fEs4jtRS7PV-F1T9lcXgFEuRGMkom8" Target="_blank"  ></asp:HyperLink>
                            <asp:Label runat="server" ID="Label5"><hr /></asp:Label>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="4" SpanLg="4" SpanXl="4" HiddenMd="true" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right"  >
                            <div style="text-align:center;">
                            <telerik:RadRotator ID="RadRotator4" runat="server" RenderMode="Lightweight" Width="250" Height="250" ScrollDuration="2000" 
                                ScrollDirection="Left" FrameDuration="2000" ItemHeight="250" ItemWidth="250" BorderStyle="None" BorderWidth="0" Style="box-shadow: 0 5px 20px rgba(0, 0, 0, 1.5);" EnableRandomOrder="true" >
                                <Items>
                                    <telerik:RadRotatorItem>
                                        <ItemTemplate>
                                            <asp:HyperLink ID="hlAd01" runat="server" ImageUrl="~/images/sponsors/Ad_Army_250x250.jpg" Target="_blank" NavigateUrl="https://cicad.us/2XwwOmE" BorderStyle="None"></asp:HyperLink>
                                        </ItemTemplate>
                                    </telerik:RadRotatorItem>
                                    <telerik:RadRotatorItem>
                                        <ItemTemplate>
                                            <asp:HyperLink ID="hlAd02" runat="server" ImageUrl="~/images/sponsors/Ad_Ford_250x250.jpg" Target="_blank" NavigateUrl="http://buyfordnow.com" BorderStyle="None"></asp:HyperLink>
                                        </ItemTemplate>
                                    </telerik:RadRotatorItem>
                                    <telerik:RadRotatorItem>
                                        <ItemTemplate>
                                            <asp:HyperLink ID="hlAd02" runat="server" ImageUrl="~/images/sponsors/OKOilAndNaturalGasSquare1.jpg" Target="_blank" NavigateUrl="https://oerb.com/?utm_source=displayspon&utm_medium=display&utm_campaign=InspiringFutureLeaders-2billion-p" BorderStyle="None"></asp:HyperLink>
                                        </ItemTemplate>
                                    </telerik:RadRotatorItem>
                                </Items>
                            </telerik:RadRotator>
                            </div>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="12" HiddenLg="true" HiddenXl="true" SpanMd="12" SpanSm="12" SpanXs="12" CssClass="t-rwd-right"  >
                            <div style="text-align:center;">
                                <asp:HyperLink runat="server" ID="adSponsor1" ImageUrl="~/images/sponsors/Ad_Army_250x250.jpg" NavigateUrl="https://cicad.us/2XwwOmE" Target="_blank" Width="350px"></asp:HyperLink>
                                <asp:HyperLink runat="server" ID="adSponsor2" ImageUrl="~/images/sponsors/Ad_Ford_250x250.jpg" NavigateUrl="http://buyfordnow.com" Target="_blank" Width="350px"></asp:HyperLink>
                            </div>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="4" SpanLg="4" SpanXl="4" HiddenMd="true" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right"  >
                            <br />
                        </telerik:LayoutColumn>
                         <telerik:LayoutColumn Span="4" SpanLg="4" SpanXl="4" HiddenMd="true" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right" >
                            <div id="right01"> 
                                <telerik:RadLinkButton runat="server" ID="cmdCalendar" NavigateUrl="Manual_Calendar.aspx" Text="2019-2021 CALENDAR" Width="100%" Font-Bold="true" Font-Names="'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" Visible="true"></telerik:RadLinkButton>
                                <asp:Label runat="server" ID="Label1"><hr /></asp:Label>
                                <telerik:RadLinkButton runat="server" ID="cmdOSSAARankings" NavigateUrl="http://www.ossaarankings.com" Text="OSSAARANKINGS.COM" Width="100%" Font-Bold="true" Font-Names="'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></telerik:RadLinkButton>
                                <asp:Label runat="server" ID="Label2"><hr /></asp:Label>
                                <telerik:RadLinkButton runat="server" ID="cmdMembership" NavigateUrl="http://www.ossaarankings.com/membership/MemberLogin.aspx" Text="OSSAA MEMBERSHIP" Width="100%" Font-Bold="true" Font-Names="'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></telerik:RadLinkButton>
                                <asp:Label runat="server" ID="Label3"><hr /></asp:Label>
                                <telerik:RadLinkButton runat="server" ID="cmdForTheParents" NavigateUrl="Parents.aspx" Text="FOR THE PARENT" Width="100%" Font-Bold="true" Font-Names="'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"></telerik:RadLinkButton>
                            </div>
                        </telerik:LayoutColumn>
                         <telerik:LayoutColumn Span="4" SpanLg="4" SpanXl="4" HiddenMd="true" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right" Visible="false">
                            <br /><asp:ImageButton runat="server" ID="ImageButton1" ImageUrl="~/Images/FootballTrophyLogoIntegris275x450.jpg" Style="box-shadow: 0 5px 20px rgba(0, 0, 0, 1.5);" Width="275px" ></asp:ImageButton>
                         </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="4" SpanLg="4" SpanXl="4" SpanMd="12" SpanSm="12" SpanXs="12" CssClass="t-rwd-right">
                            <br />
                            <div id="right02">
                                <a class='twitter-timeline' href='https://twitter.com/OSSAAOnline' data-height='1200'>Tweets by OSSAAOnline</a> <script async src='//platform.twitter.com/widgets.js' charset='utf-8'></script>
                            </div>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
            </Rows>
    </telerik:RadPageLayout>
</asp:Content>

