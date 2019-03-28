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
    protected void Button1_Click(object sender, EventArgs e)
    {

        String s;
        s = "select * from currencyvalue where cname='" + TextBox1.Text + "'";
        dr = a1.disp(s);
        if (dr.HasRows == true)
           Response.Write("<Script>alert('This currency is already existed...');</script>");
        else
        {

            DateTime d1 = new DateTime();
            d1 = DateTime.Now;
            int y, m, d;
            y = d1.Year;
            m = d1.Month;
            d = d1.Day;
            String vdate = m.ToString() + "-" + d.ToString() + "-" + y.ToString();
            s = "insert into currencyvalue values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + vdate + "')";
            a1.insert(s);
            Response.Write("<Script>alert('Currency Value Stored.....');</script>");
            Button1.Visible = false;


        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button1.Visible = true;
        TextBox1.Text = "";
        TextBox2.Text = "";

    }
}