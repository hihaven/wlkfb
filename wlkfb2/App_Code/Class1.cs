using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

/// <summary>
/// Class1 的摘要说明
/// </summary>
public class Class1
{
    public static int s;//全局，设置学期
    public static int y;//全局,视学期而定的年
	public Class1()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public static SqlConnection con()
    {//（静态）初始化链接，因为数据库路径在web.config文件里面，所以这里返回的是那个连接字符串
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["wlkfb"].ConnectionString);
        return con;
    }
   
    public static int dataRow(string query)
    {//获取查询的数据的总行数
        int CountRow = 0;
        SqlConnection con = Class1.con();
        con.Open();
        SqlCommand mycom = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = mycom;
        DataSet ds = new DataSet();
        da.Fill(ds);
        ds.CaseSensitive = false;
        CountRow = ds.Tables[0].Rows.Count;//取行集合中的元素的总数
        con.Close();
        return CountRow;
    }

    public static SqlDataReader dr(string query)
    {//根据传来的SQL语句查询出数据返回到一个SqlDataReader
        SqlConnection con = Class1.con();
        con.Open();
        SqlCommand mycom = new SqlCommand(query, con);
        SqlDataReader Dr=mycom.ExecuteReader();
     
        con.Close();
        return Dr;
    }

    public static DataTable dt(string query)
    {//根据传来的SQL语句查询出数据填充到一个DataTable
        SqlConnection con = Class1.con();
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = new SqlCommand(query, con);
        DataSet ds = new DataSet();
        sda.Fill(ds, "table");
        con.Close();
        return ds.Tables["table"];
    }
    public static void insert(string str)
    {//插入操作
        SqlConnection con = Class1.con();
        con.Open();
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public static void update(string str)
    {//(静态)执行指定的更新行为
        SqlConnection con = Class1.con();
        con.Open();
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public static void delete(string str)
    {//(静态)执行指定的删除行为
        SqlConnection con = Class1.con();
        con.Open();
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        con.Close();
    }


    public static bool chklog(string name, string pwd, int flag)
    {//判断数据库里是否存在这个用户，返回真或则假
        SqlConnection con = Class1.con();
        con.Open();
        string cmdText = "";
        if (flag == 0) //管理员
        {
            cmdText = "select count(*) from ManagerInfo where mname='" + name + "' and mpwd='" + pwd + "'";
        }
        else if (flag == 1) //教师
        {
            cmdText = "select count(*) from TeacherInfo where tnum='" + name + "' and tpwd='" + pwd + "'";
        }
        else //学生
        {
            cmdText = "select count(*) from StudentInfo where snum='" + name + "' and spwd='" + pwd + "'";
        }
        SqlCommand cmd = new SqlCommand(cmdText, con);
        int count = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        if (count > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    
   
}