<%@ Page Title="OSSAA.com" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="Template.aspx.cs" Inherits="ResponsiveWebDesignOverview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>OSSAA.com</title>
    <meta description="Oklahoma Secondary School Activities Association" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadPageLayout ID="RadPageLayout1" runat="server" HtmlTag="None" GridType="Fluid" CssClass="t-rwd-tr t-rwd-overview">
        <telerik:LayoutRow WrapperCssClass="t-rwd-white-row" WrapperHtmlTag="Div" RowType="Container">
            <Rows>
                <telerik:LayoutRow CssClass="t-rwd-row-pad">
                    <Columns>

                        <telerik:LayoutColumn Span="12" SpanSm="9" SpanXs="12">
                        </telerik:LayoutColumn>

                        <telerik:LayoutColumn Span="12">&nbsp;</telerik:LayoutColumn>

                        <telerik:LayoutColumn Span="8" SpanSm="9" SpanXs="12">
                         </telerik:LayoutColumn>

                        <telerik:LayoutColumn Span="4" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right">
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:LayoutRow>

        <telerik:LayoutRow WrapperCssClass="t-rwd-grey-row" WrapperHtmlTag="Div" RowType="Container">
            <Rows>
                <telerik:LayoutRow>
                    <Columns>
                        <telerik:LayoutColumn Span="6" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-center">
                            <h5>Other Information</h5>
                            <p>Blah, blah, blah...</p>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="6" SpanSm="9" SpanXs="12" CssClass="t-rwd-right-fix">
                            <h2>And More Information</h2>
                            <p>Blah, blah, blah...</p>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:LayoutRow>
    </telerik:RadPageLayout>

</asp:Content>

