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
            String s;
            s = "select * from request where reqno not in(select reqno from response)and reqmode='C'";
            SqlDataSource1.SelectCommand = s;
            SqlDataSource1.DataBind();

        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String s;
        Panel2.Visible = true;
        Label3.Text = GridView1.SelectedValue.ToString();
        s = "select *from request where reqno='" + GridView1.SelectedValue.ToString() + "'";
        SqlDataSource2.SelectCommand = s;
        SqlDataSource2.DataBind();
        dr = a1.disp(s);
        string cmpid = "";
        if (dr.Read())
        {
           cmpid = dr.GetValue(4).ToString();

        }
        while (dr.Read())
        {
            s = "select * from companyreg where cmpid ='" + cmpid + "' ";
            SqlDataSource3.SelectCommand = s;
            SqlDataSource3.DataBind();
            Panel3.Visible = false;
            Panel4.Visible = false;

            String pname = "", qty = "";
            s = "select * from request where reqno=" + Label3.Text + "";
            dr = a1.disp(s);
            if (dr.Read())
            {
                pname = dr.GetValue(1).ToString();
                qty = dr.GetValue(2).ToString();
            }
            s = "select * from pstock where pname='" + pname + "'";
            string cstock = "";
            dr = a1.disp(s);
            if (dr.Read())
            {
                cstock = dr.GetValue(1).ToString();
            }

        }    

    }
        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

        Panel3.Visible = true;
        Panel4.Visible = false;
    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {

        Panel3.Visible = false;
        Panel4.Visible = true; ;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Panel2.Visible = true;

        String s;
        s = "select * from response order by reqno desc";
        dr = a1.disp(s);
        int reqno=0 ;
        if (dr.Read())
        {
            reqno = int.Parse(dr.GetValue(0).ToString());
        }
        reqno++;

        string respstatus;
        respstatus = "Y";
         string pname = "", qty="";
        if (dr.Read())
        {
            pname = dr.GetValue(1).ToString();
            qty = dr.GetValue(2).ToString();
        }
        
        DateTime d1 = new DateTime();
        d1 = DateTime.Now;
        int y, m, d;
        y = d1.Year;
        m = d1.Month;
        d = d1.Day;
        string respdate = m.ToString() + "-" + d.ToString() + "-" + y.ToString();
        string staffid = Session["staffid"].ToString();

        s = "insert into response(reqno,respstatus,respdate,staffid,sendmode,senddetails)values('" + Label3.Text + "','" + respstatus + "','" + respdate + ",'" + staffid + "','" + DropDownList1.Text + "'','" + TextBox1.Text + "')";
        a1.insert(s);
        Response.Write("<script>alert('Successfully processed');</script>");
        TextBox1.Text = "";
        s = "update pstock set cstock=cstock-" + Label11.Text + " where pname='" + Label13.Text + "'";
        a1.insert(s);
        Button1.Enabled = false;
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        

        String s;
        s = "select * from response order by reqno desc";
        dr = a1.disp(s);
        int reqno = 0;
        if (dr.Read())
        {
            reqno = int.Parse(dr.GetValue(0).ToString());
        }
        reqno++;
        String respstatus;
        respstatus = "N";
        DateTime d1 = new DateTime();
        d1 = DateTime.Now;
        int y, m, d;
        y = d1.Year;
        m = d1.Month;
        d = d1.Day;
        String responsedate = m.ToString() + "-" + d.ToString() + "-" + y.ToString();
        String staffid = Session["staffid"].ToString();
        s = "insert into response(reqno,respstatus,respdate,staffid,comment)values('" + Label3.Text + "','" + respstatus + "','" + responsedate + "','" + staffid + "','" + TextBox2.Text + "')";
        a1.insert(s);
        Response.Write("<script>alert('Successfully processed');</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        Button1.Enabled = true;
        Button3.Enabled = true;
        GridView1.Enabled = true;
        TextBox1.Text = "";
        string s;
        s = "select * from request where reqmode =''C and reqno not in (select reqno from response)";
        SqlDataSource1.SelectCommand = s;
        SqlDataSource1.DataBind();
        Panel2.Visible = false;

        dr = a1.disp(s);
        if (dr.HasRows == false)
            Response.Write("<script>alert('No request pending....');</script>");


    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Button3.Enabled = true;
        Button1.Enabled = true;
        GridView1.Enabled = true;
        Panel2.Visible = false;
        TextBox2.Text = "";
        String s;
        s = "select * from request where reqmode='C' and reqno not in(select reqno from response)";
        SqlDataSource1.SelectCommand = s;
        SqlDataSource1.DataBind();

        dr = a1.disp(s);
        if (dr.HasRows == false)
            Response.Write("<script>alert('No request pending....');</script>");



    }
}