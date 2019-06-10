using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class book3 : System.Web.UI.Page
{
    string packageno;
    int z1;
    string vac;
    int remvac;
    protected void Page_Load(object sender, EventArgs e)
    {
      string username = (string)Session["uname"];
       string password=(string)Session["pass"];
        packageno = (string)Session["packageno"];
        TextBox t1=(TextBox)Session["t1"];

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         SqlConnection cns = new SqlConnection();
         cns.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        cns.Open();
        SqlCommand cmds = new SqlCommand();
        cmds.Connection = cns;
         cmds.CommandText = "SELECT [vacancy] FROM [tours] WHERE (([package no] = '"+packageno+"') AND ([start_date] = '"+TextBox9.Text+"'))";
        SqlDataAdapter das = new SqlDataAdapter();
        das.SelectCommand = cmds;
        DataSet dss = new DataSet();
        das.Fill(dss, "Ss1");
        vac = dss.Tables["Ss1"].Rows[0].ItemArray[0].ToString();
        int x1 = Convert.ToInt32(TextBox1.Text);
        int y1 = Convert.ToInt32(TextBox2.Text);
        z1=x1+y1;
        Response.Write(vac);
        Response.Write(z1);
        remvac = (Convert.ToInt32(vac) - Convert.ToInt32(z1));
        Response.Write(remvac);

         if (Convert.ToInt32(z1) > Convert.ToInt32(vac))
            {
                Response.Write("seats not available");
            }
        
        else
        {
        
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        cn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = "SELECT [adult_price], [children_price] FROM [price1] WHERE (([package no] = '" + packageno + "') AND ([hotel] ='" + RadioButtonList3.SelectedItem + "') AND ([hotel_name] = '" + DropDownList2.SelectedItem + "') AND ([room_type] ='" + RadioButtonList2.SelectedItem + "'))";
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds, "S1");
        string a = ds.Tables["S1"].Rows[0].ItemArray[0].ToString();
        string b = ds.Tables["S1"].Rows[0].ItemArray[1].ToString();
        int c = Convert.ToInt32(a);
        int d = Convert.ToInt32(b);
        int x = Convert.ToInt32(TextBox1.Text);
        int y = Convert.ToInt32(TextBox2.Text);

        int f = c * x;
        int s = d * y;
        int z = f + s;

        Label12.Text = f.ToString();
        Label13.Text = s.ToString();
        Label14.Text = z.ToString();
        GridView1.DataSource = ds;
        GridView1.DataBind();
        }
     
    }
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into book ([username],[password],[package_no],[start_date],[total_amount],[hotel_type],[hotel_name],[room_type],[paymentby],[bank_name],[bank_branch],[bank_city],[bank_state])  values('" + (string)Session["uname"] + "','" + (string)Session["pass"] + "','" + packageno + "','" + TextBox9.Text + "','" + Label14.Text + "','" + RadioButtonList3.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + RadioButtonList2.SelectedValue + "','" + RadioButtonList4.SelectedValue + "','" + DropDownList4.SelectedValue + "','" + TextBox7.Text + "','" + TextBox10.Text + "','" + DropDownList5.SelectedValue + "')";
        cn.Open();
        cmd.Connection = cn;
        int i = cmd.ExecuteNonQuery();
        cn.Close();
        SqlConnection cns1 = new SqlConnection();
        cns1.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        cns1.Open();
        SqlCommand cmds1 = new SqlCommand();
        cmds1.Connection = cns1;
       
        

        cmds1.CommandText = "UPDATE [tours] SET [vacancy] =" + remvac + "WHERE (([package no] = '" + packageno + "') AND ([start_date] = '" + TextBox9.Text + "'))";
        cmds1.ExecuteNonQuery();
        Response.Redirect("book2.aspx");

        
    }
    protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
    {
        Label26.Text = "Hello    " + TextBox3.Text;
        Label34.Text = packageno;
        Label35.Text = TextBox1.Text;
        Label36.Text = TextBox2.Text;
        Label31.Text = RadioButtonList3.SelectedItem + "  " + DropDownList2.SelectedItem + "  Hotel";
        Label37.Text = RadioButtonList2.SelectedItem.Text;
        Label38.Text = Label14.Text;
        Label41.Text = TextBox9.Text;
    }

    private void AddControl()
    {
        int a = Convert.ToInt32(TextBox1.Text);
        int b = Convert.ToInt32(TextBox2.Text);
        int c = a + b;
        TextBox[] txt= new TextBox[c];
        Label l1 = new Label();
        l1.Text = "Enter another person's name";
        PlaceHolder1.Controls.Add(l1);
        PlaceHolder1.Controls.Add(new LiteralControl("<br/>"));
        for (int j = 0; j < c; j++)
        {
            txt[j] = new TextBox();

            txt[j].ID = "name" + j;
            PlaceHolder1.Controls.Add(txt[j]);
            PlaceHolder1.Controls.Add(new LiteralControl("<br/>"));
            ViewState["cd"] = true;
            txt[j].Visible = true;
        }
    }



    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList4.SelectedIndex == 0)
        {
           TextBox6.Enabled = true;
            AddControl();
        }
        else
        {
            TextBox6.Enabled = false;
            AddControl();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
    }
    
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}