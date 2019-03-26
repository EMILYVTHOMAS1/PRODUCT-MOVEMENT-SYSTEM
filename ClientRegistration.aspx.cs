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
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ClientID = "C100";

        string s;
        s = "SELECT * FROM clientreg ORDER BY ClientID DESC";
        dr = a1.disp(s);
        if (dr.Read())
        {
            ClientID = dr.GetValue(0).ToString();

        }

        string x;
        x = ClientID.Substring(1).ToString();
        int yy;
        yy = int.Parse(x);
        yy++;
       ClientID = "C" + yy.ToString();

        DateTime d1 = new DateTime();
        d1 = DateTime.Now;
        int y, m, d;
        y = d1.Year;
        m = d1.Month;
        d = d1.Day;

        string regdate = m.ToString() + "-" + d.ToString() + "-" + y.ToString();

        string strfilename, strfilepath, strdirectory = "clientpics/", ext;
        int ind = 0;


        strfilename = FileUpload1.FileName.ToString();



        ind = strfilename.IndexOf(".");
        ext = strfilename.Substring(ind);

        strfilename = TextBox1.Text + ext;

        strfilepath = AppDomain.CurrentDomain.BaseDirectory + strdirectory + strfilename;

        FileUpload1.PostedFile.SaveAs(strfilepath);

        string ctype;
        if (RadioButton1.Checked == true)
            ctype = "I";
        else
            ctype = "W";



        s = "insert into clientreg values('" + ClientID + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList1.Text + "','" + strfilename + "','" + TextBox7.Text + "','" + DropDownList2.Text + "','" + TextBox8.Text + "','" + regdate + "','" + ctype + "')";
        a1.insert(s);
        Response.Write("<script>alert('inserted');</script>");

        s = "insert into login values('" + ClientID + "','"+ TextBox9.Text + "')";
        a1.insert(s);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
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
        DropDownList1.Text = "";
        DropDownList2.Text = "";

    }
}