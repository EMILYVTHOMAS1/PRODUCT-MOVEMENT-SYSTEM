using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default4 : System.Web.UI.Page
{
    connection a1;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        a1 = new connection();
        String s;
        s = "select * from companyregistration where cmpid not in(select cmpid from companyapproval)";
        SqlDataSource1.SelectCommand = s;
        SqlDataSource1.DataBind();
    }
}