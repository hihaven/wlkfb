<%@ Page Language="C#" AutoEventWireup="true" CodeFile="baoxiu.aspx.cs" Inherits="快速报修" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 690px;
            height: 325px;
            border: 1px solid ;
       
        }
        .auto-style3 {
            width: 700px;
            height: 317px;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style4 {
            width: 700px;
        }
        .auto-style7 {
            height: 319px;
            width: 698px;
        }
        .auto-style9 {
            text-align: center
           
            
            
        }
        .auto-style11 {
            color: #FF0000;
        }
        .auto-style13 {
            height: 37px;
        }
        .auto-style14 {
            width: 87px;
            text-align: center;
            font-weight: 700;
        }
        .auto-style15 {
            width: 200px;
            height: 35px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:1000px;height:600px;margin :auto;border:double;border-color :#0094ff;">
      <div style="width:995px;height:150px;border:solid #0094ff;margin-left :0;margin-top:0; font-style: normal; text-align: center; ; font-size: 70px;" class="auto-style9">在线快速报修<br />
        </div>
        <table >
            <tr><td style="border-width: 530px">
         <div  id="L"style="width:730px; height:400px; border:medium solid #0094ff;" >
            <table class="auto-style2">
                <tr>
                    <td class="auto-style7" style="border-width: 513px">
                        <table class="auto-style3">
                            <tr>
                                <td style="border-width: 510px; font-size: 36px; text-align: center;" class="auto-style13">故障报修单</td>
                            </tr>
                            <tr>
                                <td style="border-width: 510px">
                                    <table class="auto-style4">
                                        <tr>
                                            <td class="auto-style14"><b>姓名：</b></td>
                                            <td style="border-width: 510px">
                                                <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
                     &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="请留下真实姓名，便于维修和你联系"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="border-width: 510px">
                                    <table class="auto-style4">
                                        <tr>
                                            <td class="auto-style14"><b>联系电话：</b></td>
                                            <td style="border-width: 519px">
                                                <asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox>
                                                
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="请留下联系电话，便于维修人员与你联系"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="border-width: 510px">
                                    <table class="auto-style4">
                                        <tr>
                                            <td class="auto-style14"><b>故障地点：</b></td>
                                            <td style="border-width: 519px">
                                                <asp:TextBox ID="TextBox3" runat="server" Width="180px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="请写下详细地址，便于维修人员及时维修"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="border-width: 510px">
                                    <table class="auto-style4">
                                        <tr>
                                            <td class="auto-style14"><b>故障情况：</b></td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList1" runat="server">
                                                    <asp:ListItem>网络故障</asp:ListItem>
                                                    <asp:ListItem>拨号失败</asp:ListItem>
                                                    <asp:ListItem>端口故障</asp:ListItem>
                                                    <asp:ListItem>其它故障</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="border-width: 510px">
                                    <table class="auto-style4">
                                        <tr>
                                            <td class="auto-style14"><b>附加说明：</b></td>
                                            <td style="border-width: 519px">
                                                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Width="364px" Height ="100"></asp:TextBox>
                                                <span class="auto-style11" >请详细写出你的故障问题</span></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="border-width: 510px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" Height="24px" Text="提交" Width="70px"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" Height="24px" Text="取消" Width="70px"  />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                </table>
             温馨提示：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 如果是电脑本身的问题请带上你的电脑到客服部咨询。</div></td>
         <td> <div  id="R" style ="width:250px;height:400px;border:solid; border-color :#0094ff; font-size: large; font-style: normal; font-variant: normal; color: #FF0000;">
    
             <table class="auto-style15" style="color: #000000">
                 <tr>
                     <td style="background-color: #0099FF"><b>已受理</b></td>
                     <td style="background-color: #0099FF"><b>处理中</b></td>
                     <td style="background-color: #0099FF"><b>已完成</b></td>
                 </tr>
             </table>
             <br />
             <asp:Label ID="Label1" runat="server" Text="显示处理情况"></asp:Label>
             <br />
    
       </div>      </td></tr> </table >
        <div   style ="width :995px;height :25px;border :solid #0094ff; font-size: larger; font-weight: normal; font-style: italic;">

            <asp:Literal ID="Literal1" runat="server" Text="欢迎来到快速报修页面！！！"></asp:Literal>

        </div>
     </div>
    </form>
       
     </body>
</html>
