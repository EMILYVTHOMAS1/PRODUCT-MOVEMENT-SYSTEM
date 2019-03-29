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
            string ClientID, s;
           ClientID = Session["ClientID"].ToString();
           // ClientID = "c101";
            s = "select * from clientproducts where ClientID = '" + ClientID + "' and Impexpstatus ='export' ";
            dr = a1.disp(s);
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr.GetValue(1).ToString());
            }
            if (DropDownList1.Items.Count > 0)
                DropDownList1_SelectedIndexChanged(sender, e);


        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String s,pname="";
        Panel2.Visible = true;
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        int Reqno = 0;
        string s, ClientID;

        s = "select * from Request order by Reqno desc ";
        dr = a1.disp(s);
        if (dr.Read()) 
        {
            Reqno = int.Parse(dr.GetValue(0).ToString() );
        }
        Reqno++;
        
        DateTime d1 = new DateTime();
        d1 = DateTime.Now;
        int y, m, d;
        y = d1.Year;
        m = d1.Month;
        d = d1.Day;
        String ReqDate = m.ToString() + "-" + d.ToString() + "-" + y.ToString();
        ClientID = Session["ClientID"].ToString();

        s="insert into Request(Reqno,Pname,Qty,ClientID,ReqDate,Reqmode) values (" + Reqno.ToString() +",'" + DropDownList1.Text + "','" + TextBox1.Text + "','" + ClientID + "','" + ReqDate + "','A') ";
            a1.insert(s);
        Response.Write("<script>alert('Request Submitted');</script>");
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
    }
}