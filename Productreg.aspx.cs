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
        string s;


        s = "select  * from productreg where pname='" + TextBox1.Text + "' ";

        dr = a1.disp(s);
        

        if (dr.HasRows == true)

            Response.Write("<script>alert('This product exist ');</script>");
        else
        {
            string strfilename, strfilepath, strdirectory = "productpics/", ext;
            int ind = 0;


            strfilename = FileUpload1.FileName.ToString();



            ind = strfilename.IndexOf(".");
            ext = strfilename.Substring(ind);

            strfilename = TextBox1.Text + ext;

            strfilepath = AppDomain.CurrentDomain.BaseDirectory + strdirectory + strfilename;

            FileUpload1.PostedFile.SaveAs(strfilepath);

            string ImpoStatus;

            if (RadioButton1.Checked == true)
                ImpoStatus = "import";
            else
                ImpoStatus = "export";


            s = "insert into productreg values('" + TextBox1.Text + "','" + DropDownList1.Text + "','" + ImpoStatus + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + strfilename + "' )";
            a1.insert(s);
            Response.Write("<script>alert('product registered');</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        
        
    }
}