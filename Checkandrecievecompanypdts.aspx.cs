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

            string s;
            s = "select * from request a,response b where a.reqno=b.reqno and b.respstatus='Y' and b.sendmode is not null and a.reqno not in(select reqno from chreceive) and a.reqmode='B' ";
            SqlDataSource1.SelectCommand = s;
            SqlDataSource1.DataBind();
            Panel2.Visible = false;

           
    }
}protected void  GridView1_SelectedIndexChanged(object sender, EventArgs e)
{
     Panel2.Visible = true;

        Panel3.Visible = true;
        Panel4.Visible = false;

        Label3.Text = GridView1.SelectedValue.ToString();
        string s;
        s = "select * from request where reqno='" + Label3.Text + "'";
        SqlDataSource2.SelectCommand = s;
        SqlDataSource2.DataBind();
        dr = a1.disp(s);
        string cmpID = "";
        if (dr.Read())
        {
            cmpID = dr.GetValue(4).ToString();

        }
        while (dr.Read())
        {
            s = "select * from companyreg reg where cmpID='" + ClientID + "' ";
            SqlDataSource3.SelectCommand = s;
            SqlDataSource3.DataBind();
            GridView1.Enabled = false;
           
        }
}
protected void  RadioButton1_CheckedChanged(object sender, EventArgs e)
{
     Panel3.Visible = true;
        Panel4.Visible = false;
}
protected void  RadioButton2_CheckedChanged(object sender, EventArgs e)
{
     Panel3.Visible = false;
        Panel4.Visible = true;
}
protected void Button1_Click(object sender, EventArgs e)
{
    string s, cstatus;

    DateTime d1 = new DateTime();
    d1 = DateTime.Now;
    int y, m, d;
    y = d1.Year;
    m = d1.Month;
    d = d1.Day;
    String cdate = m.ToString() + "-" + d.ToString() + "-" + y.ToString();
    cstatus = "Y";

    String staffid = Session["staffid"].ToString();
    s = "insert into chreceive(reqno,cstatus,comment,amt,staffid,cdate)values('" + Label3.Text + "','" + cstatus + "','" + TextBox1.Text + "','" + Label6.Text + "','" + staffid + "','" + cdate + "')";
    a1.insert(s);

    s = "select * from request where reqno=" + Label3.Text + " ";
    dr = a1.disp(s);
    string pname = "", qty = "";
    if (dr.Read())
    {
        pname = dr.GetValue(1).ToString();
        qty = dr.GetValue(2).ToString();
    }
    s = "select * from pstock where pname='" + pname + "' ";
    dr = a1.disp(s);

    if (dr.HasRows == false)

        s = "insert into pstock values('" + pname + "'," + qty + ") ";
    else
        s = "update pstock set cstock=cstock +" + qty + " where pname='" + pname + "' ";
    a1.insert(s);

    Response.Write("<Script>(alert('Successfully Processed...')</script>");
    Button1.Enabled = false;
}
protected void Button2_Click(object sender, EventArgs e)
{

    TextBox1.Text = "";
    Button1.Enabled = true;
    GridView1.Enabled = true;

    String s;
    s = "select * from request a,response b where a.reqno=b.reqno and b.respstatus='Y' and b.sendmode is not null and a.reqno not in(select reqno from chreceive) and a.reqmode='B' ";
    SqlDataSource1.SelectCommand = s;
    SqlDataSource1.DataBind();
}
protected void Button3_Click(object sender, EventArgs e)
{

    string s, cstatus;
    DateTime d1 = new DateTime();
    d1 = DateTime.Now;
    int y, m, d;
    y = d1.Year;
    m = d1.Month;
    d = d1.Day;
    String cdate = m.ToString() + "-" + d.ToString() + "-" + y.ToString();
    cstatus = "Y";


    cstatus = "N";
    String staffid = Session["staffid"].ToString();
    s = "insert into chreceive(reqno,cstatus,comment,staffid,cdate)values('" + Label3.Text + "','" + cstatus + "','" + TextBox2.Text + "','" + staffid + "','" + cdate + "' )";
    a1.insert(s);
    Response.Write("<Script>(alert('Successfully Processed...')</script>");
    Button3.Enabled = false;
    GridView1.Enabled = false;
    Panel2.Visible = false;
}
protected void Button4_Click(object sender, EventArgs e)
{

    TextBox2.Text = "";
    Button3.Enabled = true;
    GridView1.Enabled = true;
    Panel2.Visible = true;

    String s;
    s = "select * from request a,response b where a.reqno=b.reqno and b.respstatus='Y' and b.sendmode is not null and a.reqno not in(select reqno from chreceive) and a.reqmode='B' ";
    SqlDataSource1.SelectCommand = s;
    SqlDataSource1.DataBind();
}
}
