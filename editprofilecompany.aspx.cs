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
        if (IsPostBack == false)
        {

            String s, pfname = "";
            String cmpid = Session["cmpid"].ToString();
            s = "select * from companyregistration where cmpid='" + cmpid + "'";
            dr = a1.disp(s);
            if (dr.Read())
            {
                Label12.Text = dr.GetValue(0).ToString();
                Label13.Text = dr.GetValue(1).ToString();
                TextBox1.Text = dr.GetValue(2).ToString();
                TextBox2.Text = dr.GetValue(3).ToString();
                TextBox3.Text = dr.GetValue(4).ToString();
                TextBox4.Text = dr.GetValue(5).ToString();
                Label20.Text = dr.GetValue(7).ToString();
                Label21.Text = dr.GetValue(8).ToString();
                TextBox5.Text = dr.GetValue(12).ToString();
                pfname = dr.GetValue(11).ToString();
                Image1.ImageUrl = "./Companyproof/" + pfname;
                Image1.Width = 300;
                Image1.Height = 300;
            }

        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String s;
        s = "update companyregistration set addr='" + TextBox1.Text + "',place='" + TextBox2.Text + "',pin='" + TextBox3.Text + "',ph='" + TextBox4.Text + "',accno='" + TextBox5.Text + "' where cmpid='" + Label12.Text + "'";
        a1.insert(s);
        Label16.Text = "Successfully Stored...........";
        Button1.Enabled = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button1.Enabled = true;
        Label16.Text = "";
    }
}