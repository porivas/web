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
    </div>
  </div>
  <div class="row clearfix">
    <div class="col-md-12 column">
      <ul class="nav nav-pills">
        <li class="active">
          <a href="#">首页</a>
        </li>
        <li>
          <a href="#">场馆</a>
        </li>
        <li class="disabled">
          <a href="#">教练</a>
        </li>
        <li class="dropdown pull-right">
          <a href="#" data-toggle="dropdown" class="dropdown-toggle">下拉<strong class="caret"></strong></a>
          <ul class="dropdown-menu">
            <li>
              <a href="#">操作</a>
            </li>
            <li>
              <a href="#">设置栏目</a>
            </li>
            <li>
              <a href="#">更多设置</a>
            </li>
            <li class="divider">
            </li>
            <li>
              <a href="#">分割线</a>
            </li>
          </ul>
        </li>
      </ul>
      <ul class="breadcrumb">
        <li>
          <a href="#">Home</a>
        </li>
        <li>
          <a href="#">Library</a>
        </li>
        <li class="active">
          Data
        </li>
      </ul>
    </div>
  </div>
  <div class="row clearfix">
    <div class="col-md-12 column">
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
