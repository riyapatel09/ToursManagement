using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Common;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
                SqlConnection con1=new SqlConnection();
                con1.ConnectionString="Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
                SqlCommand cmd1=new SqlCommand();
                cmd1.CommandType=CommandType.Text;
                cmd1.CommandText = "SELECT * FROM [reg] WHERE ([username] = '"+TextBox4.Text+"')";
                cmd1.Connection=con1;
                SqlDataAdapter da1=new SqlDataAdapter();
                da1.SelectCommand=cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1,"Test");
                int count = ds1.Tables["Test"].Rows.Count;
                //TO CHECK THE USERNAME IS UNIQUE OR NOT
                if (count==1)
                    {
                        //DUPLICATE
                        Label12.Text = "This username is already accupied";
                    }
                    else
                    {
                        //UNIQUE
                        SqlConnection cn = new SqlConnection();
                        cn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = "insert into reg ([username],[password],[firstname],[lastname],[address],[city],[pincode],[email],[phone])  values('" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox12.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "')";
                        cn.Open();
                        cmd.Connection = cn;
                        int i = cmd.ExecuteNonQuery();
                        cn.Close();
                        Response.Redirect("home.aspx");
                    }
                }
               
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}

        
