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

            s = "select * from  request where reqno not in(select reqno from response ) and reqmode='B' ";
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
        dr = a1.disp(s);
        string cmpid = "";
        if (dr.Read())
        {
            cmpid = dr.GetValue(3).ToString();

        }
        while (dr.Read())
        {
            s = "select * from companyreg where cmpID ='" + cmpid + "' ";
            SqlDataSource3.SelectCommand = s;
            SqlDataSource3.DataBind();


        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string RespStatus, s, RespDate, StaffID;
        StaffID = Session["StaffID"].ToString();


        if (RadioButton1.Checked == true)
            RespStatus = "Y";
        else
            RespStatus = "N";
        DateTime d1 = new DateTime();
        d1 = DateTime.Now;
        int y, m, d;
        y = d1.Year;
        m = d1.Month;
        d = d1.Day;

        RespDate = m.ToString() + "-" + d.ToString() + "-" + y.ToString();
        s = "insert into Response(Reqno,RespStatus,StaffID,RespDate) values('" + Label3.Text + "','" + RespStatus + "','" + StaffID + "', '" + RespDate + "')";
        a1.insert(s);
        Response.Write("<script>alert('Response Submitted');</script>");
        Button1.Enabled = false;
        GridView1.Enabled = false;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button1.Visible = true;
        GridView1.Enabled = true;
        string s;

        s = "select * from  request where reqno not in(select reqno from response ) and reqmode='B' ";
        SqlDataSource1.SelectCommand = s;
        SqlDataSource1.DataBind();
        Panel2.Visible = false;
    }
}