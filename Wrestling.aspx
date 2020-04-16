<%@ Page Title="OSSAA Wrestling" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="Wrestling.aspx.cs" Inherits="Wrestling" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>OSSAA.com</title>
    <meta description="Oklahoma Secondary School Activities Association" />
    <link href="../styles/pages.css" rel="stylesheet" />
    <link href="../styles/counter.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css' />
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function () {
            function count($this) {
                var current = parseInt($this.html(), 10);
                current = current + 3; /* Where 1 is increment */

                $this.html(++current);
                if (current > $this.data('count')) {
                    $this.html($this.data('count'));
                } else {
                    setTimeout(function () { count($this) }, 50);
                }
            }
            jQuery(".stat-count").each(function () {
                jQuery(this).data('count', parseInt(jQuery(this).html(), 10));
                jQuery(this).html('0');
                count(jQuery(this));
            });
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server" >
        <telerik:RadPageLayout ID="RadPageLayout2" runat="server" CssClass="t-rwd-tr t-rwd-overview" HtmlTag="None">
            <Rows>
                <telerik:LayoutRow WrapperCssClass="t-rwd-white-row-wrestling" WrapperHtmlTag="Div" RowType="Container">
                <Columns>
                    <telerik:LayoutColumn Span="9" SpanXl="9" SpanLg="9" SpanMd="9" SpanSm="9" SpanXs="12" >
                        <div class="stat">
                            <asp:Label runat="server" ID="wrCounter" CssClass="stat-count"></asp:Label>
                            <p class="stat-detail">As of today...<br />Number of OSSAA Women's Wrestlers that have registered for the 2019-20 Season</p>
                        </div>
                        <asp:ImageButton Visible="false" runat="server" ID="ImageHeader" Style="box-shadow: 0 5px 20px rgba(0, 0, 0, 1.5); margin-top:20px;" Width="100%"></asp:ImageButton><br /><br />

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

