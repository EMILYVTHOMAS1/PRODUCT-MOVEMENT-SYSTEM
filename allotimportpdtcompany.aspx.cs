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
            Panel2.Visible = false;
            String s;
            s = "select * from companyapproval where Admappstatus='Y'";
            dr = a1.disp(s);
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr.GetValue(0).ToString());
            }
            if (DropDownList1.Items.Count > 0)
                DropDownList1_SelectedIndexChanged(sender, e);
            s = "select * from productreg where ImpoStatus='import'";
            dr = a1.disp(s);
            while (dr.Read())
            {
                DropDownList2.Items.Add(dr.GetValue(0).ToString());
            }
        }
    }
   

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        String s;
        s = "select * from companyreg where cmpID ='" + DropDownList1.Text + "' ";
        SqlDataSource1.SelectCommand = s;
        SqlDataSource1.DataBind();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        String s;
        s = "select * from productreg where Pname='" + DropDownList2.Text + "'";
        SqlDataSource2.SelectCommand = s;
        SqlDataSource2.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String s;
        s = "select * from companyproducts where cmpID='" + DropDownList1.Text + "' and Pname='" + DropDownList2.Text + "'";
        dr = a1.disp(s);
        if (dr.HasRows == true)
            Response.Write("<script>alert('This Product Already alloted');</script>");
        
        else
        {
            s = "insert into companyproducts values('" + DropDownList1.Text + "','" + DropDownList2.Text + "','import')";
            a1.insert(s);
            Response.Write("<script>alert('Product alloted');</script>");
        }
    }
    
}