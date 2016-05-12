<%@ Page Language="C#" AutoEventWireup="true" CodeFile="joinus.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
  <style>
      .banner {
          height: 255px;
          width: 310px;
          background: #FFFFFF;
          overflow: hidden;
          display: block;
          margin-top: 0px;
          margin-right: auto;
          margin-bottom: 0px;
          margin-left: auto;
          padding-top: 0px;
          padding-right: 20px;
          padding-bottom: 0px;
          padding-left: 20px;
      }

          .banner .all {
              width: 310px;
              height: 350px;
              float: left;
              padding: 0px;
              margin: 0px;
              margin-bottom: 0px;
              margin-top: 100px;
          }
  </style>
    
   
</head>
<body>
    <form id="form1" runat="server">
    <div style="border:solid #669966;width:1000px;height :600px; margin :auto ;background-image:url('')">
      <table> 
   <tr> <td ><div style="border:solid #669966;width:350px;height :400px; margin-top:100px;margin-left :125px;background-image:url('')">


    
        <table style="width: 350px;height :400px; font-weight: bold 200;
               font-family: 宋体;color: #669966;font-size: 12pt;
                border:1px inset green ;border-collapse:collapse;
                ">
                 
            <tr>
                <td colspan="3" style="height: 80px; font-size: 50px; font-family: 楷体; color: #009999;" >&nbsp;....join us</td>
            </tr>
            <tr>
                <td style="width: 100px; height: 30px">姓名：</td>
                <td  >
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="必填" ControlToValidate="TextBox1" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 30px">性别：</td>
                <td  >
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="必填" ControlToValidate="RadioButtonList1" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 30px">学院：</td>
                <td  >
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
                <td  >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="必填" ControlToValidate="DropDownList1" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 30px">电话：</td>
                <td >
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td  >
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="请填写正确的电话" ForeColor="Red">*</asp:RegularExpressionValidator>
                </td>
            </tr>
             <tr>
                <td style="width: 110px; height: 30px">喜欢的部门：</td>
                <td >
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                 </td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="必填" ControlToValidate="DropDownList2" ForeColor="Red">*</asp:RequiredFieldValidator>
                 </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 30px">特长：</td>
                <td class="auto-style1" >
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td ></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 30px">自我介绍：</td>
                <td  >
                    <asp:TextBox ID="TextBox4" runat="server" MaxLength="100" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td  ></td>
            </tr>
          
            <tr>
                <td style="width: 100px; height: 30px"></td>
                <td  >
                   
                    <asp:Button ID="Button1" runat="server" Text="提交" />
                   
                    &nbsp; <asp:Button ID="Button2" runat="server" Text="取消" />
                   
                </td>
                <td ></td>
            </tr>
        </table>

    
    </div></td>
        <td style="width :50px "><hr style ="width:2px;height :400px;border:2px inset #669966; margin-top:100px"/></td>
       <td> <div style="border:solid #669966;width:350px;height :400px; margin-top:100px;margin-left :0px;background-image:url('')">
           
<div class="banner">
<div class="all">
<div style="visibility:hidden;" id="KinSlideshow"><a href="啊">
    <img width="310" height="255"
     src="http://www.w3school.com.cn/i/w3school_logo_white.gif" " alt="" /></a>
     <a href="/">
     <img width="310" height="255" src="C:\Users\Administrator\Desktop\200831413434752_2.jp" alt="无法显示" /></a> </div>
</div>
   
    </div>

            <p>  上面是图片切换区域，用来显示部门部分福利或者某些部门成员照片或者部门合照，，但是我还不会做，查了些代码，但还是不太懂，，  </p>
           </div></td>
   </tr>
          </table> 
    <hr style ="width:1000px;height :2px;"/>
        <p style="margin-left :125px;"> 学姐学长的寄语：<br/></p>
    </div>
    </form>
</body>
</html>
