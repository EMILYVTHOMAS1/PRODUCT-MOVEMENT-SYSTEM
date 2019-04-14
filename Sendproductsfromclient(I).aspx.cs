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
        a1=new connection();
         if (IsPostBack == false)
        {
        string s, ClientID ;
       ClientID = Session["ClientID"].ToString();
       // ClientID = "c101";
        s = "select * from request a ,response b where a.ClientID= '" + ClientID + "' and a.reqno=b.reqno and b.respstatus='Y' and b.sendmode is null  and a.reqmode ='A' " ;
        SqlDataSource1.SelectCommand = s;
        SqlDataSource1.DataBind();
        Panel2.Visible = false;
         }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel2.Visible = true;

        Label3.Text = GridView1.SelectedValue.ToString();
        string s;
        s = "select * from request where reqno='" + Label3.Text + "'";
        SqlDataSource2.SelectCommand = s;
        SqlDataSource2.DataBind();
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string SendDate, ClientID, s;
        ClientID = Session["ClientID"].ToString();
        DateTime d1 = new DateTime();
        d1 = DateTime.Now;
        int y, m, d;
        y = d1.Year;
        m = d1.Month;
        d = d1.Day;

        SendDate = m.ToString() + "-" + d.ToString() + "-" + y.ToString();
        s="update response set sendmode='" + DropDownList1.Text + "',senddate='" + SendDate + "',senddetails='" + TextBox1.Text + "' where reqno='" + Label3.Text + "' ";
        a1.insert(s);
        Response.Write("<script>alert('SUCCESFULLY PROCESSED');</script>");
        Button1.Enabled = false;
        GridView1.Enabled = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button1.Visible = true;
        GridView1.Enabled = true;
        string s;
        s = "select * from request a ,response b where a.ClientID= '" + ClientID + "' and a.reqno=b.reqno and b.respstatus='Y' and b.sendmode is null and a.reqmode ='A' ";
        SqlDataSource1.SelectCommand = s;
        SqlDataSource1.DataBind();
        Panel2.Visible = false;

    }
}