<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>访问错误--页面跳转中...</title>
    <head>
        <meta http-equiv=content-type content="text/html; charset=utf-8">

        <link href="css/style.css" type="text/css" rel="stylesheet">

        <meta http-equiv="refresh" content="500;url=#">
        <style type="text/css">
            body {
                background-image: url(/resources/image/bg.jpg);
                background-position: 40% 0px;;
                font-family: "微软雅黑";
                font-weight:;
                font: normal 100% Helvetica, Arial, sans-serif 900;
            }

            a {
                text-decoration: none;
            }

            * {
                margin: 0px;
                padding: 0px;
            }

            a:link {
                color: #fff;
                text-decoration: none;
                text-decoration: none;
            }

            a:visited {
                color: #fff;
                text-decoration: none;
            }

            a:hover {
                color: #fff;
                text-decoration: none
            }

            .container {
                margin-left: auto;
                width: 100%;
                margin-right: auto;
                text-align: center;
                margin-top: 100px;
            }

            .container_1 img {
                margin-top: 1%;
                width: 250px;
                height: 120px;
            }

            .container_2 img {
                margin-top: -2%;
            }

            .container_3 img {
                width: 25%;
                height: 7.5%;
            }

            .container_3 {
                width: 28vw;
                margin: auto
            }

            .container_3_1 {
                color: #6bbaa3;
                font-size: 2vw;
                text-align: left;
            }

            .container_3_2 {
                color: #6bbaa3;
                font-size: 1vw;
                text-align: left;
            }

            .maincolumn {
                margin-left: auto;
                width: 100%;
                margin-right: auto;
                text-align: center;
                display: block;
                margin-top: 10px;
            }

            .maincolumn .maincolumn_bg {
                width: 28%;
                height: 50px;
                line-height: 50px;
                background-color: #6bbaa3;
                margin: auto;
            }

            .maincolumn .maincolumn_bg ul {
                list-style-type: none;
            }

            .maincolumn .maincolumn_bg ul li {
                float: left;
                width: 25%;
            }

            .maincolumn .maincolumn_bg ul li a {
                font-size: 18px;
            }

            .maincolumn .maincolumn_bg ul li a:hover {
                width: 100%;
                height: 50px;
                background-color: #47997d;
                display: block;
            }

            @media only screen and (max-width: 1000px) {
                .maincolumn {
                    display: none;
                    width: 0px;
                }
            }
        </style>
        <script type="text/javascript">
            var totalTime = 3;
            setInterval(function(){
                totalTime = parseInt(totalTime) - 1;
                if(totalTime == 0){
                    // history.back(-1);
                }else{
                    document.getElementById("timecount").innerHTML = '<font color="red">'+totalTime + '</font>秒后返回上一页面......';
                }
            },1000);
        </script>
    </head>
    <!--gif图-->
<body>

<div class="container">
    <div class="container_1" style="font-size: 22px;color:red">500</div>
    <div class="container_2"><img src="/resources/image/3.22.gif"></div>
    <div class="container_3"><!--<img src="images/404_1.png" >-->
        <div class="container_3_1"><span>SORRY你要访问的页面弄丢了</span></div>
        <div class="container_3_2"><span id="timecount"><font color="red">3</font>秒后返回上一页面......</span></div>
    </div>
</div>
<!--<img src="images/001_1.gif" width="1000px" height="600px">--></div>
<!--导航-->
<!--<div class="maincolumn">-->
<!--<div class="maincolumn_bg">-->
<!--<ul>-->
<!--<li><a href="#">关于我们</a></li>-->
<!--<li><a href="#">联系我们</a></li>-->
<!--<li><a href="#">在线咨询</a></li>-->
<!--<li><a href="/">返回首页</a></li>-->
<!--</ul>-->
<!--</div>-->
<!--<div></div>-->
<!--</div>-->
</div>
</body>

</html>
