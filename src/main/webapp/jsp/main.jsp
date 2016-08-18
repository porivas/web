<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta http-equiv="X-UA-Compatible" content="IE=9">

  <title>管理</title>
  <link href="/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
  <link href="/bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div class="container">
  <div class="row clearfix">
    <div class="col-md-12 column">
      <div class="jumbotron"class="jumbotron" style="text-align:center;background-color:#C6E2FF">
        <h1>商户管理</h1>
      </div>
    </div>
  </div>
  <div class="row clearfix">
    <div class="col-md-12 column">
      <ul class="nav nav-pills">
        <li class="active">
          <a href="main_content.jsp" target="iframe_a">首页</a>
        </li>
        <li>
          <a href="#course" target="iframe_a">课程</a>
        </li>
        <li>
          <a href="#">场馆</a>
        </li>
        <li>
          <a href="coach/list.jsp"  target="iframe_a">教练</a>
        </li>
        <li>
          <a href="#">订单</a>
        </li>
        <li>
          <a href="#">运动</a>
        </li>
        <li>
          <a href="#">资质</a>
        </li>
        <li>
          <a href="#">奖项</a>
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
        <li>
          <a href="#">场馆类型</a>
        </li>


      </ul>
      <ul class="breadcrumb">
        <li>
          <a href="#">主页</a>
        </li>
        <li>
          <a href="#">板块</a>
        </li>
        <li class="active">
          操作
        </li>
      </ul>
    </div>
  </div>
  <div class="row clearfix" id="content">
    <div class="col-md-12 column">
      <iframe src="main_content.jsp" name="iframe_a" frameborder="0" height="100%" width="100%"></iframe>
    </div>
  </div>


</div>

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
