using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Configuration;

public partial class teacherMain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack) { 
        GVBind_Mem();
        }
    }
    public void GridBind()
    {

    }
    //绑定系别
    protected void DDLBind_Bumen()
    {
    }
    //根据下拉菜单所选择的教师院系绑定教师信息
    private void GVBind_Mem()
    {
        string dr1 = DropDownList1.SelectedValue;
        string dr2 = DropDownList2.SelectedValue;
       
        string sqlStr = "";
        if (DropDownList1.SelectedIndex == 0&&DropDownList2.SelectedIndex==0)
        {
            sqlStr = "select Name ,case Sex when 0 then '男' when 1 then '女' end Sex, Telphone ,StartTime,case MemberState when 1 then '在职' end MemberState,MemberNum,MemDepartment,Memdept,Memtime,case Position when 0 then '干事' when 1 then '副部长' when 2 then '部长' when 3 then '老师' end Position,Section  from MemberTable where MemberState=1";
        }
        else if(DropDownList1.SelectedIndex == 0 && DropDownList2.SelectedIndex != 0)
        {
            sqlStr = "select Name ,case Sex when 0 then '男' when 1 then '女' end Sex, Telphone ,StartTime,case MemberState when 1 then '在职' end MemberState,MemberNum,MemDepartment,Memdept,Memtime,case Position when 0 then '干事' when 1 then '副部长' when 2 then '部长' when 3 then '老师' end Position,Section from MemberTable where MemberState=1 and Memtime='" + dr2+"'";
        }
        else if(DropDownList1.SelectedIndex != 0 && DropDownList2.SelectedIndex == 0)
        {
            sqlStr = "select Name ,case Sex when 0 then '男' when 1 then '女' end Sex, Telphone ,StartTime,case MemberState when 1 then '在职' end MemberState,MemberNum,MemDepartment,Memdept,Memtime,case Position when 0 then '干事' when 1 then '副部长' when 2 then '部长' when 3 then '老师' end Position,Section  from MemberTable where MemberState=1 and Section='" + dr1 + "'";

        }
        else if (DropDownList1.SelectedIndex != 0 && DropDownList2.SelectedIndex != 0)
        {
            sqlStr = "select Name ,case Sex when 0 then '男' when 1 then '女' end Sex, Telphone ,StartTime,case MemberState when 1 then '在职' end MemberState,MemberNum,MemDepartment,Memdept,Memtime,case Position when 0 then '干事' when 1 then '副部长' when 2 then '部长' when 3 then '老师' end Position,Section  from MemberTable where MemberState=1 and Section='" + dr1 + "' and Memtime='"+dr2+"'";

        }

        DataTable dt = new DataTable();
        dt = Class1.dt(sqlStr);
        //for (int i = 0; i < dt.Rows.Count; i++)
        //{
        //    if (dt.Rows[i]["Sex"].ToString() == "0")
        //    {
        //        dt.Rows.Add("Sex", typeof(System.String));
        //        dt.Rows[i]["Sex"] = "男";
        //    }
        //    else
        //    {
        //        dt.Rows[i]["Sex"] = "女";
        //    }
        //}
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        //生成编辑状态
   
        //Label lbl = (Label)GridView1.Rows[e.NewEditIndex].FindControl("xibie");
        GridView1.EditIndex = e.NewEditIndex;
        GVBind_Mem();
        //   DropDownList ddl=(DropDownList)GridView1.Rows[e.NewEditIndex].FindControl("ddlxibie");
        //   ddl.Items.FindByText(lbl.Text).Selected = true;    
    
}

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GVBind_Mem();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int index = GridView1.PageIndex;
        int abc = GridView1.Rows[e.RowIndex].RowIndex+1+index*8;
        string Name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
        string Sex = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text;
        if (Sex == "男")
        {
            Sex = "0";
        }
        else { Sex = "1"; }
        string Telphone = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text;
        string StartTime = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text;
        string MemberState = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5")).Text;
        if (MemberState == "在职")
        {
            MemberState = "1";
        }
        else
        {
            MemberState = "0";
        }
        string MemberNum = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6")).Text;
        string MemDepartment = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7")).Text;
        string Memdept = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox8")).Text;
        string Memtime = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox9")).Text;
        string Position = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox10")).Text;
        if(Position=="干事")
        {
            Position = "0";
        }else if (Position == "副部长")
        {
            Position = "1";
        }else if (Position == "部长")
        {
            Position = "2";
        }else if (Position == "老师")
        {
            Position = "3";
        }else if (Position == "试用")
        {
            Position = "4";
        }
        string Section = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox11")).Text;
        //if (Section == "技术部")
        //{
        //    Section = "0";
        //}
        //else if (Section == "办公室")
        //{
        //    Section = "1";
        //}
        //else if (Section == "宣传部")
        //{
        //    Section = "2";
        //}
        string sql = "update MemberTable set Name='" + Name + "',Sex='" + Sex + "',Telphone='"+Telphone+"',StartTime='"+StartTime+ "',MemberState='"+ MemberState + "',MemberNum='"+ MemberNum + "',MemDepartment='"+ MemDepartment + "',Memdept='"+ Memdept + "',Memtime='"+ Memtime + "',Position='"+ Position + "',Section='"+Section+"' where MemberTable.id='"+abc+"'";
        
        Class1.update(sql);
        GridView1.EditIndex = -1;
        GVBind_Mem();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GVBind_Mem();
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        GVBind_Mem();

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GVBind_Mem();
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        int i;
        //执行循环，保证每条数据都可以更新
        for (i = 0; i < GridView1.Rows.Count; i++)
        {
            //首先判断是否是数据行
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //当鼠标停留时更改背景色
                e.Row.Attributes.Add("onmouseover", "c=this.style.backgroundColor;this.style.backgroundColor='#00A9FF'");
                //当鼠标移开时还原背景色
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=c");
            }
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int index = GridView1.PageIndex;
       int abc = GridView1.Rows[e.RowIndex].RowIndex + 1+index*8;
        string sql = "delete from MemberTable where MemberTable.id='" + abc + "'";
        Class1.delete(sql);
        GridView1.EditIndex = -1;
        GVBind_Mem();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
}