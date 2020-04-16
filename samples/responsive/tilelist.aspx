<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSampleSite.master" AutoEventWireup="true" CodeFile="tilelist.aspx.cs" Inherits="Samples_TileList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Example of ASP.NET AJAX TileList Component with Responsive Behavior</title>
    <meta description="Rearrange Telerik ASP.NET TileList elements on a mobile device, choose a different type of layout to arrange tile groups. Play with demos!" />
    <link href="Styles/tile-list.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadPageLayout ID="RadPageLayout1" runat="server" GridType="Fluid" CssClass="t-rwd-tr" HtmlTag="None">
        <telerik:LayoutRow WrapperCssClass="t-rwd-white-row" CssClass="t-rwd-rem-pad" WrapperHtmlTag="Div" RowType="Container">
            <Rows>
                <telerik:LayoutRow CssClass="t-rwd-row-pad" RowType="Generic">
                    <Content>
                        <h1>TileList: Responsive Behavior </h1>
                        <div class="t-rwd-back">
                            <a href="<%= ResolveUrl("~/samples/responsive-behavior.aspx")%>"><span>&laquo;</span>More responsive demos</a>
                        </div>
                    </Content>
                </telerik:LayoutRow>

                <telerik:LayoutRow CssClass="t-rwd-row-pad">
                    <Columns>
                        <telerik:LayoutColumn Span="7" SpanMd="12" SpanSm="9" SpanXs="12">
                            <p>
                                The Telerik ASP.NET TileList rearranges its elements on mobile, so that they fit best on the device screen. Depending on the viewport width, the layout can be: 
                            </p>
                            <ul class="t-rwd-list">
                                <li><strong>Standard</strong> with columns and groups of tiles with rows that flow to the right</li>
                                <li><strong>Tablet-oriented</strong> with tile groups appearing under one another and no separate tile columns</li>
                                <li><strong>Phone-oriented</strong> tile groups appear stacked under each other</li>
                            </ul>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="5" SpanSm="9" SpanXs="12" HiddenMd="true" HiddenSm="true" HiddenXs="true" CssClass="t-rwd-right">
                            <div class="t-rwd-qr">
                                <img src="<%= ResolveUrl("~/Images/qr-tilelist.png") %>" alt="Scan here to browse the demos on your mobile device." />
                                <span>Scan here to browse the demos on your mobile device.
                                            <br />
                                    <a href="http://tlrk.it/1gZOH33">tlrk.it/1gZOH33</a>
                                </span>
                            </div>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>

            </Rows>
        </telerik:LayoutRow>
        <telerik:LayoutRow WrapperCssClass="t-rwd-grey-row" WrapperHtmlTag="Div" RowType="Container" CssClass="t-rwd-rem-pad">
            <Content>
                <telerik:RadTileList runat="server" DataSourceID="SqlDataSource1" ID="RadTileList2" AppendDataBoundItems="true" RenderMode="Mobile" Skin="MetroTouch"
                    TileRows="3" OnTileDataBound="RadTileList1_OnTileDataBound" OnTileCreated="RadTileList1_OnTileCreated">
                    <DataBindings>
                        <CommonTileBinding TileType="RadImageAndTextTile" Shape="Square" DataGroupNameField="ContactTitle" />
                        <ImageAndTextTileBinding DataTextField="ContactName" />
                        <TilePeekTemplate>
                            <div class="peekTemplateClass">
                                <strong>Phone:</strong>
                                <%#DataBinder.Eval(Container.DataItem, "Phone")%>
                                <br />
                                <strong>Fax:</strong>
                                <%#DataBinder.Eval(Container.DataItem, "Fax")%>
                                <br />
                                <strong>City:</strong>
                                <%#DataBinder.Eval(Container.DataItem, "City")%>
                                <br />
                                <strong>Country:</strong>
                                <%#DataBinder.Eval(Container.DataItem, "Country")%>
                            </div>
                        </TilePeekTemplate>
                    </DataBindings>
                    <Groups>
                        <telerik:TileGroup Name="Sales Manager">
                            <telerik:RadContentTemplateTile runat="server" CssClass="noHover">
                                <ContentTemplate>
                                    <div class="groupHeadingTitle">
                                        <div class="innerTitle">Sales<br />Managers</div>
                                    </div>
                                </ContentTemplate>
                            </telerik:RadContentTemplateTile>
                        </telerik:TileGroup>
                        <telerik:TileGroup Name="Sales Associate">
                            <telerik:RadContentTemplateTile ID="RadContentTemplateTile2" runat="server" CssClass="noHover">
                                <ContentTemplate>
                                    <div class="groupHeadingTitle">
                                        <div class="innerTitle">
                                            Sales<br />Associates
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </telerik:RadContentTemplateTile>
                        </telerik:TileGroup>
                        <telerik:TileGroup Name="Sales Representative">
                            <telerik:RadContentTemplateTile ID="RadContentTemplateTile4" runat="server" CssClass="noHover">
                                <ContentTemplate>
                                    <div class="groupHeadingTitle">
                                        <div class="innerTitle">
                                            Sales<br />Representatives
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </telerik:RadContentTemplateTile>
                        </telerik:TileGroup>
                        <telerik:TileGroup Name="Sales Agent">
                            <telerik:RadContentTemplateTile ID="RadContentTemplateTile3" runat="server" CssClass="noHover">
                                <ContentTemplate>
                                    <div class="groupHeadingTitle">
                                        <div class="innerTitle">
                                            Sales<br />Agents
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </telerik:RadContentTemplateTile>
                        </telerik:TileGroup>
                    </Groups>
                </telerik:RadTileList>
            </Content>
        </telerik:LayoutRow>
    </telerik:RadPageLayout>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
        ProviderName="System.Data.SqlClient"
        SelectCommand="SELECT TOP(25) [CustomerID], [ContactTitle], [ContactName], [Phone], [Fax], [City], [Country] FROM [Customers]
            WHERE ContactTitle like 'Sales%'"></asp:SqlDataSource>

</asp:Content>

