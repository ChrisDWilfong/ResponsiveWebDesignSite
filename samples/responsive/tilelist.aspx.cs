using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

public partial class Samples_TileList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RadTileList1_OnTileDataBound(object sender, TileListEventArgs e)
    {
        //test the tile type first so its specific properties can be used
        RadImageAndTextTile tile = e.Tile as RadImageAndTextTile;
        if (!object.Equals(tile, null))
        {
            //this is the path to a folder that hosts the needed images
            tile.ImageUrl = string.Format("SampleImages/Northwind/Customers/{0}.jpg", DataBinder.GetPropertyValue(e.Tile.DataItem, "CustomerID", null));
            //the URL can be generated in the SQL query itself instead of using events, of course. For example
            //('../../../Img/Northwind/Customers/' + CAST([CustomerID] as VARCHAR(5)) + '.jpg') As ImgUrl
            //and ImgUrl can be passed to the DataImageUrlField property of the ImageAndTextTileBinding
        }
    }

    protected void RadTileList1_OnTileCreated(object sender, TileListEventArgs e)
    {
        //work with common settings for all tiles
        e.Tile.PeekTemplateSettings.ShowInterval = 0;
        e.Tile.PeekTemplateSettings.CloseDelay = 0;
        e.Tile.PeekTemplateSettings.ShowPeekTemplateOnMouseOver = true;
        e.Tile.PeekTemplateSettings.HidePeekTemplateOnMouseOut = true;
        e.Tile.PeekTemplateSettings.AnimationDuration = 500;
        e.Tile.BackColor = System.Drawing.ColorTranslator.FromHtml("#EEF1F3");
        //using properties specific for a given tile type - check the tile type first
        RadImageAndTextTile tile = e.Tile as RadImageAndTextTile;
        if (!object.Equals(tile, null))
        {
            tile.ImageWidth = new Unit("100%");
        }
    }
}