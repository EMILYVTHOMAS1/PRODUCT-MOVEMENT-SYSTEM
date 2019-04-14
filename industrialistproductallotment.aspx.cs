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

            string s;
            s = "select * from clientreg a,clientapproval b where a.clientid=b.clientid and b.admappstatus ='y' and a.ctype='I'";
            SqlDataSource1.SelectCommand = s;
            SqlDataSource1.DataBind();
            Panel2.Visible = false;
            dr = a1.disp(s);
            if (dr.HasRows == false)
                Response.Write("<script>alert('No Approved clients');</script>");
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        
        Panel3.Visible = false;

        Label3.Text = GridView1.SelectedValue.ToString();
        string s;
        s = "select * from clientreg where clientid='" + Label3.Text + "'";
        SqlDataSource2.SelectCommand = s;
        SqlDataSource2.DataBind();


        s = "select * from productreg where impostatus='export'";
        DropDownList1.Items.Clear();
        dr = a1.disp(s);
        while (dr.Read())
        {

            DropDownList1.Items.Add(dr.GetValue(0).ToString());

        }

        if (DropDownList1.Items.Count > 0)
            DropDownList1_SelectedIndexChanged(sender, e);


        s = "select * from clientproducts where clientid='" + Label3.Text + "'";
        dr = a1.disp(s);
        if (dr.HasRows == true)
            Panel3.Visible = true;
        while (dr.Read())
        {

            ListBox1.Items.Add(dr.GetValue(1).ToString());


        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s;
        s = "select  * from clientproducts where clientid ='" + Label3.Text + "' and pname='" + DropDownList1.Text + "' ";
        dr = a1.disp(s);
        if (dr.HasRows == true)
            Response.Write("<script>alert('this product already alloted');</script>");
        else
        {
            s = "insert into clientproducts values('" + Label3.Text + "','" + DropDownList1.Text + "','export') ";
            a1.insert(s);
            Response.Write("<script>alert('the product alloted');</script>");
            ListBox1.Items.Add(DropDownList1.Text);
            }
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button1.Visible = true;
        Panel3.Visible = false;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string s;
        s = "select * from productreg  where pname='" + DropDownList1.Text + "'";
        SqlDataSource3.SelectCommand = s;
        SqlDataSource3.DataBind();
        

    }
}