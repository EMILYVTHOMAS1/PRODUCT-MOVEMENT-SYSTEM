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
        if (IsPostBack == false)
        {


            String s;
            s = "select * from companyregistration";

            dr = a1.disp(s);
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr.GetValue(0).ToString());
            }
            if (DropDownList1.Items.Count > 0)
                DropDownList1_SelectedIndexChanged(sender, e);
            Panel3.Visible = false;

        }


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String s;
        s = "select * from companyregistration where cmpid='" + DropDownList1.Text + "'";
        SqlDataSource1.SelectCommand = s;
        SqlDataSource1.DataBind();
        Panel3.Visible = false;

        s = "select * from requestimportexport where cmpid='" + DropDownList1.Text + "'";
        SqlDataSource2.SelectCommand = s;
        SqlDataSource2.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String s;
        s = "select * from response where reqno=" + GridView1.SelectedValue.ToString();
        SqlDataSource3.SelectCommand = s;
        SqlDataSource3.DataBind();
        Panel3.Visible = true;
    }
}