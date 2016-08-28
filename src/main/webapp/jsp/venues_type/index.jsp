<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2016/8/18
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>场所类型</title>
</head>
<body>

<div class="container">


    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="btn-group btn-group-md">
                <button class="btn btn-default" type="button"  data-toggle="modal"  data-target="#myModal">
                    <em class="glyphicon glyphicon-plus">

                    </em> 新增
                </button>
                <button class="btn btn-default" type="button" id="showModifyButton">
                    <em class="glyphicon glyphicon-pencil"></em>
                    修改</button>

                <button class="btn btn-default" type="button" id="deleteButton">
                    <em class="glyphicon glyphicon-trash"></em>
                    删除</button>
            </div>
        </div>
    </div>


    </br>
    </br>


<!-- search bar -->
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
                        <label for="venuestypeName" class="col-md-2 control-label">类型:</label>
                        <div class="col-md-3">
                            <input type="text" class="form-control" id="venuestypeName" name="venuestypeName"
                                   placeholder="请输入">
                        </div>

                        <label for="comments" class="col-md-2 control-label">说明:</label>
                        <div class="col-md-3">
                            <input type="text" class="form-control" id="comments" name="comments"
                                   placeholder="请输入">
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
    <!-- search bar -->

<br>
    <br>

<!--datalist -->

    <div class="row clearfix" id="dataList">
        <div class="col-md-12 column">

        </div>
    </div>

<!-- datalist-->


    <!-- add dialog-->
    <div class="row " id="addDialog">

        </div>


    <!-- modify dialog-->
    <div class="row " id="modifyDialog">

    </div>


</div>
<!-- container-->


<script>
var searchData;
    $(document).ready(function() {
        $('#addDialog').load("/jsp/venues_type/add.jsp");
        search("Mav","venuesType");
    })


$(function () { $('#collapseOne').collapse('hide')});

$('#searchButton').click(function(){
    search("Mav","venuesType");
});






   $('#deleteButton').click(function(){
       deleteChosen("venuesType");
   });

$('#showModifyButton').click(function(){
    showModify("venuesType");


});










</script>

</body>
</html>
