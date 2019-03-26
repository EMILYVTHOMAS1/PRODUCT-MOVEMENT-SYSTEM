using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Default2 : System.Web.UI.Page
{

    connection a1;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        a1 = new connection();
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s;
        s = "select * from Login where UserID='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'";
        dr = a1.disp(s);

        if (dr.HasRows == false)

            Response.Write("<script>alert('Invalid User');</script>");


        else
        {
            Session["userid"] = TextBox1.Text;

            Response.Redirect("adminprocess.aspx");
        }
    }

   
}