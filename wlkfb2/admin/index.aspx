<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="teacherMain" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>网络客服部台管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="../bootstrap/jquery/jquery-1.12.4.js"></script>
    <script src="../bootstrap/js/bootstrap.js"></script>
    <style type="text/css">
        body {
            padding-top: 60px;
            padding-bottom: 40px;
        }

        .sidebar-nav {
            padding: 9px 0;
        }

        .x1 {
            width: 10px;
        }

        .x2 {
            width: 30px;
        }

        .x3 {
            width: 70px;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }
    </style>
    <link href="../bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="~/assets/js/html5shiv.js"></script>
    <![endif]-->
    <!-- Fav and touch icons -->
    <script type="text/javascript">
        function showtime() {
            var now = new Date();
            var year = now.getFullYear();
            var month = now.getMonth() + 1;
            var day = now.getDate();
            var hours = now.getHours();
            var minutes = now.getMinutes();
            var seconds = now.getSeconds();
            time = year + '年' + month + '月' + day + '日' + hours + ':' + minutes + ':' + seconds;
            var div1 = document.getElementById('div1');
            div1.innerHTML = time;
        }
        function letstart() {
            taskId = setInterval(showtime, 500);
        }

        window.onload = function () {
            /*var div1=document.getElementById('div1');
            div1.onclick=letstart;*/
            letstart();
        }
    </script>
</head>
<body>

    <form id="form1" runat="server">
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                    <a class="brand" href="#">网络客服部后台管理</a>
                    <div class="nav-collapse collapse">
                        <p class="navbar-text pull-right" id="div1" style="width: 243px; height: 35px;">
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span3">
                    <div class="well sidebar-nav">
                        <ul class="nav nav-list">
                            <li class="nav-header">成员管理</li>
                            <li class="active"><a href="index.aspx">正式成员</a></li>
                            <li><a href="#">待审核成员</a></li>
                            <li><a href="#">离职成员</a></li>
                            <li><a></a></li>
                            <li class="nav-header">管理</li>
                            <li><a href="#">题库管理</a></li>

                            <li><a href="#">管理员管理</a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li class="nav-header">日志</li>
                            <li><a href="#">以往考试日志</a></li>
                            <li><a href="#">考生登陆日志</a></li>
                            <li><a href="#"></a></li>
                        </ul>
                    </div>
                    <!--/.well -->
                </div>
                <!--/span-->
                <div class="span9">
                    <div class="hero-unit">
                        <h2 style="text-align: center;">正式成员</h2>
                        请选择部门：<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem Value="0">全体成员</asp:ListItem>
                            <asp:ListItem Value="技术部">技术部</asp:ListItem>
                            <asp:ListItem Value="办公室">办公室</asp:ListItem>
                            <asp:ListItem Value="宣传部">宣传部</asp:ListItem>
                        </asp:DropDownList>
                        请选择年级：<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                            <asp:ListItem Value="0">请选择</asp:ListItem>
                            <asp:ListItem>2012</asp:ListItem>
                            <asp:ListItem>2013</asp:ListItem>
                            <asp:ListItem>2014</asp:ListItem>
                            <asp:ListItem>2015</asp:ListItem>
                            <asp:ListItem>2016</asp:ListItem>
                            <asp:ListItem>2017</asp:ListItem>
                        </asp:DropDownList>
                        <button type="button" class="btn btn-primary " data-toggle="modal" data-target="#mymodal">新增成员</button>

                        <asp:Panel ID="Panel1" runat="server">
                            <div style="height: 100%; width: 100%; border: solid 1px red;">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" PageSize="8" OnRowEditing="GridView1_RowEditing" DataKeyNames="Name" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="姓名">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>' CssClass="x2"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="性别">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Sex") %>' CssClass="x1"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Sex") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="电话号码">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Telphone") %>' CssClass="x2"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Telphone") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="加入时间">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("StartTime") %>' CssClass="x3"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("StartTime") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="成员状态">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("MemberState") %>' CssClass="x1"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("MemberState") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="成员编号">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("MemberNum") %>' CssClass="x1"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("MemberNum") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="学院">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("MemDepartment") %>' CssClass="x3"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("MemDepartment") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="专业">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Memdept") %>' CssClass="x3"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("Memdept") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="年级">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Memtime") %>' CssClass="x2"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("Memtime") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="职位">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("Position") %>' CssClass="x2"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("Position") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="部门">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Section") %>' CssClass="x2"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label11" runat="server" Text='<%# Bind("Section") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ShowHeader="False">
                                            <EditItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="删除"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:wlkfb %>" ProviderName="<%$ ConnectionStrings:wlkfb.ProviderName %>"
                                    SelectCommand="SELECT [Name], [Sex], [Telphone], [StartTime], [MemberState], [MemberNum], [MemDepartment], [Memdept], [Memtime], [Position], [Section] FROM [MemberTable] WHERE (([Section] = @Section) AND ([MemberState] = @MemberState) AND ([Memtime] = @Memtime))">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="Section" PropertyName="SelectedValue" Type="String" />
                                        <asp:Parameter DefaultValue="1" Name="MemberState" Type="Int32" />
                                        <asp:ControlParameter ControlID="DropDownList2" Name="Memtime" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </asp:Panel>
                    </div>

                    <div class="row-fluid">
                        <div class="span4">
                            <h2>后台简述：</h2>
                            <p>
                                &nbsp; 管理员1、可以开启和结束考试。2、可以对考试的相关信息进行查看、新建编辑、删除等操作。3、可以将学生信息表、题库表、管理员表导入数据库，并可以进行查看，编辑等操作。4、可以对考试完成后学生考试成绩进行导出等操作。
                            </p>
                        </div>
                        <!--/span-->
                        <div class="span4">
                            <h2>管理员须知：</h2>
                            <p>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 点击“开始考试”按钮后，学生方可登入系统考试。当所有考生考试完成后，点击”结束考试“按钮后，考生无法登陆考试系统。考试正式结束。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </p>
                        </div>
                        <!--/span-->
                        <div class="span4">
                            <h2>维护人员：</h2>
                            <p>
                                贺 文 、 胡锦华 （后台开发与维护）
                            </p>
                            <p>
                                黄欢 、 王宇民（前台开发与维护）
                            </p>
                            <p>
                                指导老师：胡念青教授
                            </p>
                            <p>
                                联系邮箱：heavenfree@live.com
                            </p>
                        </div>
                        <!--/span-->
                    </div>
                    <!--/row-->
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </p>
                    <p>
                        <a type="button" class="btn btn-success">友 情 链 接：</a> ;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                    <a type="button" class="btn btn-info" type="button" class="btn btn-info" href="http://www.cdcas.edu.cn/">成都文理学院 &raquo;</a> <a type="button" class="btn btn-info" href="http://zzb.sicnu.edu.cn/dxzx/">四川师范大学党校 &raquo;</a> <a type="button" class="btn btn-info" href="http://www.scge.gov.cn/">中共四川党校 &raquo;</a> <a type="button" class="btn btn-info" href="http://www.ccps.gov.cn/">中共中央党校 &raquo;</a> <a type="button" class="btn btn-info" href="http://www.scedu.net/">四川省教育厅 &raquo;</a> <a type="button" class="btn btn-info" href="http://www.moe.gov.cn/">国家教育部 &raquo;</a>
                        <p>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <font color="#ff0000">成都文理学院党校办公室</font>
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <font color="#ff0000">地址：成都市金堂学府大道278号 &nbsp;&nbsp;&nbsp;联系电话： 028-61566000 61565000
                        61565148 传真：028-61565128</font>
                    </p>
                    <div class="row-fluid">
                        <!--/span-->
                        <!--/span-->
                        <div class="span4">
                        </div>
                        <!--/span-->
                    </div>
                    <!--/row-->
                </div>
                <!--/span-->
            </div>
            <!--/row-->
            <hr>
            <footer>
                <p>&copy;  成都文理学院版权所有  </p>
            </footer>
        </div>
        <!--/.fluid-container-->
        <asp:Label ID="lblExamState" runat="server" Visible="false"></asp:Label>
        <asp:Label ID="lblExamId" runat="server" Visible="false"></asp:Label>

         <!-- 模态框 -->
        <div class="modal fade" id="mymodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">添加成员</h4>
                    </div>
                    <div class="modal-body">
                        <table>
                            <tr>
                                <td>
                                   <asp:Label ID="Label12" runat="server" Text="姓名："></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr><td>照片：</td><td>
                                <asp:FileUpload ID="FileUpload1" runat="server" /> <asp:Image ID="Image1" runat="server" /></td></tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label13" runat="server" Text="性别："></asp:Label></td>
                                <td>
                                    <div>
                                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="xinbie" Text="男" /><asp:RadioButton ID="RadioButton2" runat="server" GroupName="xinbie" Text="女"/>
                                    </div>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>电话号码：</td>
                                <td>
                                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>入职时间：</td>
                                <td>
                                    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr><td>学院：</td><td>
                                <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox></td></tr>
                            <tr><td>专业：</td><td>
                                <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox></td></tr>
                            <tr><td>年级：</td><td>
                                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                                    <asp:ListItem>2016</asp:ListItem>
                                    <asp:ListItem>2015</asp:ListItem>
                                    <asp:ListItem>2014</asp:ListItem>
                                    <asp:ListItem>2013</asp:ListItem>
                                </asp:DropDownList></td></tr>
                            <tr><td>职位：</td><td>
                                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True">
                                    <asp:ListItem Value="4">试用</asp:ListItem>
                                    <asp:ListItem Value="0">干事</asp:ListItem>
                                    <asp:ListItem Value="1">副部长</asp:ListItem>
                                    <asp:ListItem Value="2">部长</asp:ListItem>
                                    <asp:ListItem Value="3">老师</asp:ListItem>
                                </asp:DropDownList></td></tr>
                            <tr><td>部门：</td><td>
                                <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True">
                                    <asp:ListItem>技术部</asp:ListItem>
                                    <asp:ListItem>办公室</asp:ListItem>
                                    <asp:ListItem>宣传部</asp:ListItem>
                                </asp:DropDownList></td></tr>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                       <asp:Button ID="Button1" runat="server" Text="提交" CssClass="btn btn-primary" OnClick="Button1_Click"/>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /模态框 -->
    </form>
</body>
</html>
