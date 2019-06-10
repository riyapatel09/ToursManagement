using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class himachal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
            MultiView2.ActiveViewIndex = 0;
        }
        SqlConnection con1 = new SqlConnection();
        con1.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "SELECT * FROM [tours]";
        cmd1.Connection = con1;
        SqlDataAdapter da1 = new SqlDataAdapter();
        da1.SelectCommand = cmd1;
        DataSet ds1 = new DataSet();
        da1.Fill(ds1, "Test");
        
        int count = ds1.Tables["Test"].Rows.Count;
        Label5.Text = ds1.Tables["Test"].Rows[8].ItemArray[0].ToString();
        Label2.Text = ds1.Tables["Test"].Rows[8].ItemArray[2].ToString();
        Label3.Text = ds1.Tables["Test"].Rows[8].ItemArray[3].ToString();
        Label8.Text = ds1.Tables["Test"].Rows[10].ItemArray[0].ToString();
        Label9.Text = ds1.Tables["Test"].Rows[10].ItemArray[2].ToString();
        Label10.Text = ds1.Tables["Test"].Rows[10].ItemArray[3].ToString();
    }
   

    protected void Button1_Click1(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        MultiView2.ActiveViewIndex = 1;
    }
    protected void Button6_Click1(object sender, EventArgs e)
    {
          MultiView2.ActiveViewIndex = 0;
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Session.Add("packageno", Label5.Text);
        Response.Redirect("login2.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Session.Add("packageno", Label8.Text);
        Response.Redirect("login2.aspx");
    
    }
}