using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // string name = Request.Form["username"];

        //  Response.Write(" <script>alert(" + name + " );</script>");
    }
    protected void btnZhuCe_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string name = Request.Form["username"];
        string pass = Request.Form["pass"];
        string sql = "select AdminName,AdminPwd from AdminTable where AdminName='" + name + "' and  AdminPwd='" + pass + "'";
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["wlkfb"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        int count = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        
            if (count>0)
        {
            Session["MANAGER_ID"] = name;
            Response.Redirect("index.aspx");
        }
        else
        {
            string info = "alert(\"你输入的用户名或密码错误！\")";
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "warning", info, true);
        }

    }
}