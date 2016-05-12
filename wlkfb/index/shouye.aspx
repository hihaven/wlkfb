<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shouye.aspx.cs" Inherits="index_shouye" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
         .zhong {
            height: 600px;
            width: 1000px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="zhong" style="border:solid 1px red;">
    <div style="height:30px;width:100%;border:solid 1px red;">通知公告，滚动消息</div>
     <div style="height:400px;width:600px;border:solid 1px red;">宣传视频<video></video></div>
        <div style="height:200px;width:400px;border:solid 1px red;margin-left:600px;margin-top:-400px;">今日动态</div>
       <div style="height:200px;width:400px;border:solid 1px red;margin-left:600px;">新闻</div>
        <div style="height:160px;width:400px;border:solid 1px red;"">每日一问</div>
        <div style="height:160px;width:600px;border:solid 1px red;margin-left:400px;margin-top:-160px;"">成员风采</div>
    </div>
    </form>
</body>
</html>
