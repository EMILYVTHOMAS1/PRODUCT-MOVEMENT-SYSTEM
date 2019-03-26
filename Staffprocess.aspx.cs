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
        string staffid, s;
        staffid = Session["staffid"].ToString();
        s = "select * from Staff where StaffID='" + staffid + "'";
        dr = a1.disp(s);
        dr.Read();
        string name;
        name = dr.GetValue(1).ToString();

        Label2.Text = "hello " + name + " welcome";

    }
}