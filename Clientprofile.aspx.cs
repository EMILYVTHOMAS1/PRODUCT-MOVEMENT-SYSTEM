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
        string ClientID, s;
        ClientID = Session["ClientID"].ToString();
        s = "select * from clientreg where ClientID ='" + ClientID + "' ";
        SqlDataSource1.SelectCommand = s;
        SqlDataSource1.DataBind();
    }
}