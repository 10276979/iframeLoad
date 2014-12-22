<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="iframeLoad.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="res/js/jquery-1.11.1.min.js"></script>
    <style type="text/css">
        body, form, div, ul, li { margin: 0; padding: 0; }
            ul li { list-style: none; }

        .menu { width: 150px; float: left; }
            .menu ul li { height: 50px; background: #ff6a00; border-bottom: 1px solid #ffffff; }
    </style>
    <script type="text/javascript">

        $(function () {
            new iframeLoad({ "id": "main_i", "tarName": "Iframe1", "loadId": "abc", "clickElement": ["a"] }, "<div id=\"abc\" style=\"position: absolute; top: 0; left: 0; background: #0094ff; width: 100%; height: 100%;\">正在加载</div>", function () {

            });

        });


    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="iframeTest">
            <div class="menu">
                <ul>
                    <li><a href="res/page/test1.aspx" target="Iframe1">菜单1</a></li>
                    <li><a href="http://www.163.com" target="Iframe1">菜单1</a></li>
                    <li><a href="res/page/test1.aspx" target="Iframe1">菜单1</a></li>
                    <li><a href="res/page/test2.aspx" target="Iframe1">菜单1</a></li>
                    <li><a href="res/page/test1.aspx" target="Iframe1">菜单1</a></li>
                </ul>
            </div>
            <div class="ifr" style="float: left;">
                <div style="position: absolute; width: 500px; height: 500px; background: #ccc;">
                    <iframe id="main_i" name="Iframe1" width="100%" height="100%" style="border: 0;" src="res/page/test1.aspx"></iframe>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
