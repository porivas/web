<%--
  Created by IntelliJ IDEA.
  User: chenchen
  Date: 16/8/28
  Time: 上午1:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="panel-group" id="accordion">

    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion"
                   href="#collapseOne">
                    高级查询
                </a>
            </h4>
        </div>
        <div id="collapseOne" class="panel-collapse collapse in">
            <div class="panel-body">
                <form id="searchForm" role="form" class="form-horizontal">
                    <div class="form-group">
                        <label for="venuesName" class="col-md-2 control-label">名称:</label>
                        <div class="col-md-3">
                            <input type="text" class="form-control" id="venuesName" name="venuesName"
                                   placeholder="请输入">
                        </div>

                        <label for="comments" class="col-md-2 control-label">说明:</label>
                        <div class="col-md-3">
                            <input type="text" class="form-control" id="comments" name="comments"
                                   placeholder="请输入">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="venuestypeId" class="col-md-2 control-label">类型:</label>
                        <div class="col-md-3">
                        <select class="form-control" name="venuestypeId" id="venuestypeId">
                            <option value="">全部</option>
                            <c:forEach items="${venuesTypes}" var="item">
                                <option value="${item.venuestypeId}" >${item.venuestypeName}</option>
                            </c:forEach>
                        </select>
                        </div>

                    </div>






                    <div class="row">
                        <div class="col-md-1 pull-right">
                            <button class="btn btn-primary btn-large" id="searchButton" type="button">查询</button>
                        </div>
                    </div>


                </form>

            </div>
        </div>
    </div>
</div>





<script type="text/javascript">

    $('#searchButton').click(function(){
        search("Mav","venues");
    });
</script>
</body>
</html>
