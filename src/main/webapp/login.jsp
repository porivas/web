<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="X-UA-Compatible" content="IE=9">

    <title>登录</title>
    <link href="/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="/bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />


<%--   <link href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap-theme.min.css" rel="stylesheet">--%>
</head>
<body>

<form id="loginForm" action="/user/login.do" method="post">

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
                <div class="form-group">
                    <label for="username">用户</label>
                    <input type="text"  class="form-control" id="username" name="username" placeholder="用户名"/>
                </div>
                <div class="form-group">
                    <label for="password">密码</label>
                    <input type="password" size="25" class="form-control" id="password" name="pwd" placeholder="密码"/>
                </div>



                <button type="submit" class="btn btn-default">登录</button>
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

<!--[if lt IE 9]>
<script src="/bootstrap/js/html5shiv.js" type="text/javascript"></script>
<script src="/bootstrap/js/respond.js" type="text/javascript"></script>
<![endif]-->

<script src="/bootstrap/js/jquery-3.1.0.min.js" type="text/javascript"></script>
<script src="/bootstrap/js/jquery-migrate-1.4.1.min.js" type="text/javascript"></script>
<script src="/bootstrap/js/jquery-migrate-3.0.0.min.js" type="text/javascript"></script>
<script src="/bootstrap/js/jquery.placeholder.js" type="text/javascript"></script>
<script src="/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        $('input, textarea').placeholder();
    });
</script>

</body>
</html>