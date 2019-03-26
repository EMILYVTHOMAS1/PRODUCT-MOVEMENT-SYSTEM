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
            s = "select cname from currencyvalue";
            dr = a1.disp(s);
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr.GetValue(0).ToString());
            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s;
        s = "select * from companyreg order by cmpID desc";
        dr = a1.disp(s);
        string cmpID = "cmp100";
        if (dr.Read())
        {
            cmpID = dr.GetValue(0).ToString();
        }
        string x;
        x = cmpID.Substring(3).ToString();
        int yy;
        yy = int.Parse(x);
        yy++;
        cmpID = "cmp" + yy.ToString();
        

        DateTime d1 = new DateTime();
        d1 = DateTime.Now;
        int y, m, d;
        y = d1.Year;
        m = d1.Month;
        d = d1.Day;
        String regdate = m.ToString() + "-" + d.ToString() + "-" + y.ToString(); 
        
        string strfilename, strfilepath, strdirectory = "companyproof/", ext;
        int ind = 0;


        strfilename = FileUpload1.FileName.ToString();



        ind = strfilename.IndexOf(".");
        ext = strfilename.Substring(ind);

        strfilename = TextBox1.Text + ext;

        strfilepath = AppDomain.CurrentDomain.BaseDirectory + strdirectory + strfilename;

        FileUpload1.PostedFile.SaveAs(strfilepath);

        s = "insert into companyreg values('" + cmpID + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + strfilename + "','" + TextBox9.Text + "','" + DropDownList1.Text + "','"+ TextBox10.Text + "','" + regdate + "')";
        a1.insert(s);
        
        s = "insert into login values('" + cmpID + "','" + TextBox12.Text + "' )";
        a1.insert(s);

        Response.Write("<script>alert('registration success...The ID is " + cmpID + "');</script>");
        Button1.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button1.Visible = true;
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
    }
}