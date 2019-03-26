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
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string s;
        s = "select * from login where userID='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
        dr = a1.disp(s);
        if (dr.HasRows == false)
            Response.Write("<script>alert('Invalid');</script>");
        else
        {
            Session["staffid"] = TextBox1.Text;

            Response.Redirect("Staffprocess.aspx");

        }
    }
}