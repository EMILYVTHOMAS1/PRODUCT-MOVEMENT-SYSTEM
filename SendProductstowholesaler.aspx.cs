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
        Page.MaintainScrollPositionOnPostBack = true;

        if (IsPostBack == false)
        {
            string s, staffId;
            staffId = Session["staffId"].ToString();

            s = "select * from request where reqmode ='D' and reqno not in (select reqno from response)";
            SqlDataSource1.SelectCommand = s;
            SqlDataSource1.DataBind();
            Panel2.Visible = false;
            dr = a1.disp(s);
            if (dr.HasRows == false)
                Response.Write("<script>alert('No request waiting....');</script>");
        }
    }
   protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel2.Visible = true;
            
        Panel3.Visible = true;

        Panel4.Visible = false;
        
        Label2.Text = GridView1.SelectedValue.ToString();
        string s;
        s = "select * from request where reqno='" + Label2.Text + "'";
        SqlDataSource2.SelectCommand = s;
        SqlDataSource2.DataBind();
        dr = a1.disp(s);
        string clientid = "";
        if (dr.Read())
        {
            clientid = dr.GetValue(3).ToString();

        }
      //  while (dr.Read())
       // {
         s="select * from clientreg where clientid ='" + clientid + "' ";
         SqlDataSource3.SelectCommand = s;
        SqlDataSource3.DataBind();
        s = "select * from request where reqno=" + Label2.Text + " ";
        dr = a1.disp(s);
        string pname = "", qty="0";
        if (dr.Read())
        {
            pname = dr.GetValue(1).ToString();
            qty = dr.GetValue(2).ToString();
        }

        Label12.Text = pname;

        s = "Select * from pstock where pname='" + pname + "' ";
        string cstock = "0";
        dr = a1.disp(s);
        if (dr.Read())
        {
            cstock = dr.GetValue(1).ToString();
        }

        Label5.Text = cstock;
        Label7.Text = qty;
        if (int.Parse(qty) > int.Parse(cstock))
        {
            Button1.Enabled = false;

        }
        else
        {
            Button1.Enabled = true;

        }

        //}
    }
   
    
    
    protected void  Button1_Click(object sender, EventArgs e)
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
        string pname = "", qty="";
        if (dr.Read())
        {
            pname = dr.GetValue(1).ToString();
            qty = dr.GetValue(2).ToString();
        }

      //  if (RadioButton1.Checked == true)
            respstatus = "Y";
        //else
          //  respstatus = "N";
        DateTime d1 = new DateTime();
        d1 = DateTime.Now;
        int y, m, d;
        y = d1.Year;
        m = d1.Month;
        d = d1.Day;
        String respdate = m.ToString() + "-" + d.ToString() + "-" + y.ToString();
        String staffid = Session["staffid"].ToString();
        s = "insert into response(reqno,respstatus,respdate,staffid,sendmode,senddate,senddetails)values('" + Label2.Text + "','" + respstatus + "','" + respdate + "','" + staffid + "','" + DropDownList1.Text + "','" + respdate + "','" + TextBox1.Text + "')";
        a1.insert(s);
        Response.Write("<script>alert('Successfully processed');</script>");
        //GridView1.Enabled = false;
        TextBox1.Text = "";
        s = "update pstock set cstock=cstock-" + Label7.Text + " where pname='" + Label12.Text  + "'";
        a1.insert(s);
        Button1.Enabled = false;
        GridView1.Enabled = false;

    }
       
    protected void  Button2_Click(object sender, EventArgs e)
    {
        Button1.Enabled = true;
        Button3.Enabled = true;
        GridView1.Enabled = true;
        TextBox1.Text = "";
        string s;
        s = "select * from request where reqmode ='D' and reqno not in (select reqno from response)" ;
        SqlDataSource1.SelectCommand = s;
        SqlDataSource1.DataBind();
        Panel2.Visible = false;

        dr = a1.disp(s);
        if (dr.HasRows == false)
            Response.Write("<script>alert('No request waiting....');</script>");




      
    }
    protected void Button4_Click(object sender, EventArgs e)
    {

        Button3.Enabled = true;
        Button1.Enabled = true;
        GridView1.Enabled = true;
        Panel2.Visible = false;
        TextBox2.Text = "";
        String s;
        s = "select * from request where reqmode='D' and reqno not in(select reqno from response)";
        SqlDataSource1.SelectCommand = s;
        SqlDataSource1.DataBind();

        dr = a1.disp(s);
        if (dr.HasRows == false)
            Response.Write("<script>alert('No request waiting....');</script>");



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
        String respstatus="N";

          DateTime d1 = new DateTime();
        d1 = DateTime.Now;
        int y, m, d;
        y = d1.Year;
        m = d1.Month;
        d = d1.Day;
        String respdate = m.ToString() + "-" + d.ToString() + "-" + y.ToString();
        String staffid = Session["staffid"].ToString();

        s = "insert into response(reqno,respstatus,respdate,staffid,comment)values('" + Label2.Text + "','" + respstatus + "','" + respdate + "','" + staffid + "','" + TextBox2.Text + "')";
        a1.insert(s);
        Response.Write("<script>alert('Successfully processed');</script>");
        Button3.Enabled = false;
        GridView1.Enabled = false;

        
    }



    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        Panel3.Visible = true;
        Panel4.Visible = false;

    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        Panel3.Visible = false;
        Panel4.Visible = true;
    }
    
   
}