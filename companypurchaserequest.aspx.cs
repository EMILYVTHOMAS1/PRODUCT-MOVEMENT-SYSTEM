using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
  

public partial class _Default : System.Web.UI.Page
{
    connection a1;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        a1 = new connection();
        if (IsPostBack == false)
        {
            Panel2.Visible = false;
            string cmpID = Session["cmpID"].ToString();
            string s;
            s = "select Pname from companyproducts where cmpID='" + cmpID + "' and ImpexpStatus='export'";

            dr = a1.disp(s);
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr.GetValue(0).ToString());
            }
            if (DropDownList1.Items.Count > 0)
                DropDownList1_SelectedIndexChanged(sender, e);

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String s;
        String cmpID = Session["cmpID"].ToString();
        s = "select * from Request order by Reqno desc";
        dr = a1.disp(s);
        int reqno = 0;
        if (dr.Read())
        {
            reqno = int.Parse(dr.GetValue(0).ToString());
        }
        reqno++;

        DateTime d1 = new DateTime();
        d1 = DateTime.Now;
        int y, m, d;
        y = d1.Year;
        m = d1.Month;
        d = d1.Day;
        String reqdate = m.ToString() + "-" + d.ToString() + "-" + y.ToString();


        s = "insert into Request(Reqno,Pname,Qty,cmpID,ReqDate,Reqmode)values('" + reqno + "','" + DropDownList1.Text + "','" + TextBox1.Text + "','" + cmpID + "','" + reqdate + "','C')";
        a1.insert(s);
        Response.Write("<script>alert('Request Submitted');</script>");
   
 
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        Panel2.Visible = true;
        String s,pname="";
      
        s = "select * from productreg where Pname='" + DropDownList1.Text + "'";
        SqlDataSource1.SelectCommand = s;
        SqlDataSource1.DataBind();
        dr = a1.disp(s);
        if (dr.Read())
        {
            pname = dr.GetValue(5).ToString();
        }
        Image1.ImageUrl = "./productpics/" + pname;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
    }
}