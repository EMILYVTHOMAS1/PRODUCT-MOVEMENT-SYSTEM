using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{
    connection a1;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        a1 = new connection();
        if (IsPostBack == false)
        {
            string s, ClientId;
            ClientId = Session["ClientId"].ToString();

            s = "select * from request where reqmode ='D'  and ClientID='" + ClientID + "' ";
            SqlDataSource1.SelectCommand = s;
            SqlDataSource1.DataBind();
            Panel2.Visible = false;

        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel2.Visible = true;

        Panel3.Visible = true;


        Label3.Text = GridView1.SelectedValue.ToString();
        string s;
        s = "select * from request where reqno='" + Label3.Text + "'";
        SqlDataSource2.SelectCommand = s;
        SqlDataSource2.DataBind();
    }
}