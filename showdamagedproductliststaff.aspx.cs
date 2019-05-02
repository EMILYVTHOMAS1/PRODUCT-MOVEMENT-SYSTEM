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
        GridView1.Visible = false;
        if (IsPostBack == false)
        {


            String s;
            s = "select distinct(pname) from pdamage";

            dr = a1.disp(s);
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr.GetValue(0).ToString());
            }

        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String s;
        GridView1.Visible = true;
        s = "select * from pdamage where pname='" + DropDownList1.Text + "'";
        SqlDataSource1.SelectCommand = s;
        SqlDataSource1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}