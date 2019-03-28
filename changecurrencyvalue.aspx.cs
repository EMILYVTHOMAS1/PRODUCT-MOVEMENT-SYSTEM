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
            
            String s;
            s = "select * from currencyvalue" ;
            dr = a1.disp(s);
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr.GetValue(0).ToString());
            }
           
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string s;
        s = "select *  from  currencyvalue where  cname= '" + DropDownList1.Text + "' ";
       
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        Button1.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s;
        s = "update currencyvalue set cvalue='" + TextBox1.Text + "' where cname ='" + DropDownList1.Text + "' ";
        a1.insert(s);
        Response.Write("<Script>alert('value updated.....');</script>");
        Button1.Visible = false;
    }
}