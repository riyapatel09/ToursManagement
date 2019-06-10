using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection();
        con1.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "SELECT * FROM [reg] WHERE (([username] = '"+TextBox2.Text+"') AND ([password] ='"+TextBox3.Text+"'))";
        cmd1.Connection = con1;
        SqlDataAdapter da1 = new SqlDataAdapter();
        da1.SelectCommand = cmd1;
        DataSet ds1 = new DataSet();
        da1.Fill(ds1, "Test");
        string UN = TextBox2.Text;
        int count = ds1.Tables["Test"].Rows.Count;
        string fname = ds1.Tables["Test"].Rows[0][2].ToString();
        string lname = ds1.Tables["Test"].Rows[0][3].ToString();
        //TO CHECK THE USERNAME IS UNIQUE OR NOT
        if (count == 1)
        {
            //LOGIN SCCESSFUL
            Session.Add("uname", TextBox2.Text);
            Session.Add("pass", TextBox3.Text);
            Session.Add("fname", fname);
            Session.Add("lname", lname);

            Response.Redirect("myaccount.aspx");
        
        }
        else
        {
            //LOGIN FAILED
            Label3.Text = "Username or Password is wrong";
            TextBox2.Text = "  ";
            TextBox3.Text = "  ";
        }
    }
}