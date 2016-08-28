<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="X-UA-Compatible" content="IE=9">

    <title>管理</title>
    <link href="/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="/bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript"
            src="http://api.map.baidu.com/api?v=2.0&ak=E4vYNbh4LBcHlmzE9dmE5KVv2NMxvFBY"></script>
</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <ul class="nav nav-pills" id="main_pills">
                <li class="active">
                    <a href="#content"  data-toggle="pill" id="main">首页</a>
                </li>
                <li>
                    <a href="#content"  data-toggle="pill" id="course">课程</a>
                </li>
                <li>
                    <a href="/jsp/venues/index.jsp" target="_self"  id="venues">场馆</a>
                </li>
                <li>
                    <a href="#content"  data-toggle="pill" id="coach">教练</a>
                </li>
                <li>
                    <a href="#content"  data-toggle="pill" id="order">订单</a>
                </li>
                <li>
                    <a href="#content"  data-toggle="pill" id="sport">运动</a>
                </li>
                <li>
                    <a href="#content"  data-toggle="pill" id="certificate">资质</a>
                </li>
                <li>
                    <a href="#content"  data-toggle="pill" id="award">奖项</a>
                </li>
                <li>
                    <a href="#content"  data-toggle="pill" id="venues_type">场馆类型</a>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        用户及权限 <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">用户</a></li>
                        <li><a href="#">角色</a></li>
                        <li><a href="#">功能</a></li>
                    </ul>
                </li>



            </ul>

        </div>
    </div>
    </div>
</body>
</html>
