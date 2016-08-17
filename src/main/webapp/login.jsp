<%--
  Created by IntelliJ IDEA.
  User: chenchen
  Date: 16/8/16
  Time: 下午10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Title</title>
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="/bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
 <%--   <link href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap-theme.min.css" rel="stylesheet">--%>
</head>
<body>

<form id="loginForm" action="/login" method="post">

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <h3 class="text-center text-warning">
                管理人员登录
            </h3>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-4 column">
        </div>
        <div class="col-md-4 column">
            <form role="form">
                <div class="form-group">
                    <label for="exampleInputEmail1">用户名</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" />
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">密码</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" />
                </div>



                <button type="submit" class="btn btn-default">Submit</button>
            </form>
        </div>
        <div class="col-md-4 column">
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
        </div>
    </div>
</div>

</form>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<%--<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>--%>
<script src="/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/bootstrap/js/jquery-3.1.0.min.js" type="text/javascript"></script>
<script src="/bootstrap/js/jquery-migrate-1.4.1.min.js" type="text/javascript"></script>
<script src="/bootstrap/js/jquery-migrate-3.0.0.min.js" type="text/javascript"></script>
</body>
</html>
