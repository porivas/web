<%--
  Created by IntelliJ IDEA.
  User: chenchen
  Date: 16/8/29
  Time: 上午12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<!--[if lt IE 9]>
<script src="/bootstrap/js/html5shiv.js" type="text/javascript"></script>
<script src="/bootstrap/js/respond.js" type="text/javascript"></script>
<![endif]-->

<script src="/bootstrap/js/jquery-3.1.0.min.js" type="text/javascript"></script>
<script src="/bootstrap/js/jquery-migrate-1.4.1.min.js" type="text/javascript"></script>
<script src="/bootstrap/js/jquery-migrate-3.0.0.min.js" type="text/javascript"></script>
<script src="/bootstrap/js/jquery.placeholder.js" type="text/javascript"></script>
<script src="/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/js/common.js" type="text/javascript"></script>
<script type="text/javascript">


    $(document).ready(function(){
        $('li').removeClass();
        if($('title').html() =="main"){
            $('#main').parent('li').attr("class","active");
        }else if($('title').html() =="venues"){
            $('#venues').parent('li').attr("class","active");
        }

    })

</script>
</body>
</html>
