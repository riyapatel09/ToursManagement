using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("himachal.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("kerela.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            Response.Redirect("rajasthan.aspx");
        }
        else if (DropDownList1.SelectedIndex == 1)
        {
            Response.Redirect("himachal.aspx");
        }
        else if (DropDownList1.SelectedIndex == 2)
        {
            Response.Redirect("kerala.aspx");
        }
    }
    
}
