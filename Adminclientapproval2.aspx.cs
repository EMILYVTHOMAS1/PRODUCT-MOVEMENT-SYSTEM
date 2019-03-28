using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default3 : System.Web.UI.Page
{

    SqlDataReader dr;
    connection a1;
    protected void Page_Load(object sender, EventArgs e)
    {
        a1 = new connection();
        if (IsPostBack == false)
        {

            string s;
            s = "select * from clientreg a,clientapproval b where a.clientid=b.clientid and b.sappstatus='y' and b.admappstatus is null";
            SqlDataSource1.SelectCommand = s;
            SqlDataSource1.DataBind();
            Panel2.Visible = false;
            dr = a1.disp(s);
            if(dr.HasRows==false)
                Response.Write("<script>alert('No clients waiting for approval');</script>");

        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel2.Visible = true;

        Label3.Text = GridView1.SelectedValue.ToString();
        string s;
        s = "select * from clientreg where clientid='" + Label3.Text + "'";
        SqlDataSource2.SelectCommand = s;
        SqlDataSource2.DataBind();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String SAppstatus, staffid, s;
      
        if (RadioButton1.Checked == true)
            SAppstatus = "Y";
        else
            SAppstatus = "N";
        DateTime d1 = new DateTime();
        d1 = DateTime.Now;
        int y, m, d;
        y = d1.Year;
        m = d1.Month;
        d = d1.Day;
        String SAppdate = m.ToString() + "-" + d.ToString() + "-" + y.ToString();



        s = "update clientapproval set admappstatus ='" + SAppstatus + "', admappdate= '" + SAppdate +"',Admcomment = '" + TextBox1.Text + "'  where clientid = '" + Label3.Text + "'";
        a1.insert(s);
        Response.Write("<script>alert('Approved processed');</script>");
        Button2.Visible = false;
        GridView1.Enabled = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Label3.Text = "";
        TextBox1.Text = "";
        Button2.Visible = true;
        GridView1.Enabled = true;

        string s;
        s = "select * from clientreg a,clientapproval b where a.clientid=b.clientid and b.sappstatus='y' and b.admappstatus is null";
        SqlDataSource1.SelectCommand = s;
        SqlDataSource1.DataBind();
        
    }
}