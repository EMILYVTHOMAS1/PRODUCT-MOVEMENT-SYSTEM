using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default3 : System.Web.UI.Page
{
    connection a1;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        a1 = new connection();

    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Staffid, s;
        Staffid = Session["Staffid"].ToString();
        s = "select * from Login where userid ='" + Staffid + "' and password ='" + TextBox1.Text + "'";
        dr = a1.disp(s);
        if (dr.HasRows == false)
            Response.Write("<script>alert('Invalid old password');</script>");
        else
        {
            s = "update login set password ='" + TextBox2.Text + "' where userid='" + Staffid + "'";
            a1.insert(s);
            Response.Write("<script>alert('Password changed')</script>");

        }
    }
}