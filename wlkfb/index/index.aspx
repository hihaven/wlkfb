<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        .body {
            height: 800px;
            width: 1000px;
            margin: 0 auto 0 auto;
            
        }

        .kuang {
            border: solid 1px red;
        }

        .tou {
            height: 170px;
            width: 1000px;
        }

        .daohang {
            height: 40px;
            width: 1000px;
        }

        .zhong {
            height: 600px;
            width: 1000px;
        }

        .foot {
            height: 100px;
            width: 1000px;
            background-color:darkgray;
        }
        .div-a{  background-image: url(image/banner.jpg);width:100%;height:100%;padding:10px;
               background-size:100%;
        } 
        ul#nav {
            width: 1000px;
            height: 40px;
            margin: 0 auto;
        }

            ul#nav li {
                display: inline;
                height: 40px;
            }

                ul#nav li a {
                    display: inline-block;
                    padding: 0 30px;
                    height: 40px;
                    line-height: 40px;
                    color: #FFF;
                    font-family: "\5FAE\8F6F\96C5\9ED1";
                    font-size: 16px;
                    text-decoration:none;/*去掉下滑线*/
                }
                    ul#nav li a:hover {
                        background: #0095BB;
                    }
    </style>
</head>
<body >
    <form id="form1" runat="server">
        <div class="div-a">
        <div class="body kuang">
            <div class="tou">
                <div class="logo">
                    <img alt="" src="image/baoshi1.jpg" />
                </div>
                <hr />
                <div class="daohang">
                    <ul id="nav">
                        <li><a href="shouye.aspx" target="iframe">首页</a></li>
                        <li><a href="#">常见问题和在线解决</a></li>
                        <li><a href="baoxiu.aspx" target="iframe">快速保修</a></li>
                        <li><a href="xiazai.html" target="iframe">资源下载</a></li>
                        <li><a href="#">留言</a></li>
                        <li><a href="joinus.aspx" target="iframe">加入我们</a></li>
                    </ul>
                </div>
                <hr/>
            </div>
            <div class="zhong kuang">
                <iframe name="iframe" src="shouye.aspx" class="zhong" scrolling="no"></iframe>
            </div>
            <hr />
            <div class="foot">
            <div style="width:100px;height:100px;border:solid 1px red;position:relative;left:20px;top:10px;">
                <img src="部徽.jpg" width="100" height="100" />
            </div>
            <div style="width:800px;height:100px;border:solid 1px red;position:relative;left:130px;top:-92px">
                成员介绍:****
            </div>
            <div style="width:550px;height:30px;border:solid 1px red;position:relative;left:90px;top:-80px;">
                <a href="http://www.baidu.com" style="text-decoration:none">外部链接</a>
            </div>
            <div style="width:100px;height:20px;border:solid 1px red;position:relative;left:20px;top:-60px;">
                网络客服部
            </div>
            <div style="width:500px;height:20px;border:solid 1px red;position:relative;left:130px;top:-82px;">
                地址：*******  电话：*******
            </div>
            <div style="width:200px;height:60px;border:solid 1px red;position:relative;left:700px;top:-150px;">
                版权***   杂七杂八
            </div>
                <!--这是脚部-->
           
        </div></div>
            </div>
    </form>
</body>
</html>
