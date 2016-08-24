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

                <button class="btn btn-default" type="button" id="deleteButton">
                    <em class="glyphicon glyphicon-trash"></em>
                    删除</button>
            </div>
        </div>
    </div>


    </br>
    </br>



    <div class="row clearfix" id="dataList">
        <div class="col-md-12 column">

        </div>
    </div>


    <div class="row " id="addDialog">

        </div>


</div>
<!-- container-->


<script>
var searchData;
    $(document).ready(function() {
        $('#addDialog').load("/jsp/venues_type/add.jsp");
        search();
    })





    $('#addButton').click(search);




   $('#deleteButton').click(function(){

       var array = new Array(); //用于保存 选中的那一条数据的ID
       var flag; //判断是否一个未选
       $("input[name='checkItem']:checkbox").each(function() { //遍历所有的name为checkItem的 checkbox
           if ($(this).attr("checked")) { //判断是否选中
               flag = true; //只要有一个被选择 设置为 true
           }
       })
       if (flag) {
           $("input[name='checkItem']:checkbox").each(function() { //遍历所有的name为selectFlag的 checkbox
               if ($(this).attr("checked")) { //判断是否选中
                   var ttd = $(this).parent('td').next('td');
                   alert(ttd.text());
                   array.push($(this).text()); //将选中的值 添加到 array中

               }
           })
           deleteMav(array);
           //window.self.location = "deleteUser?info=" + array;
       } else {
           alert("请至少选择一个用户");
       }


   });



function search(){

    $.ajax({
        cache: true,
        type: "POST",
        url:"/venuesType/searchMav.do",
        data:$('#addform').serialize(),
        async: false,
        //dataType:"html",
        error: function(request) {
            $('#myModal').modal('hide');
            alert("失败");

        },
        success: function(data) {
            $('#myModal').modal('hide');


            $('#dataList').html(data);

        }
    });

}



function deleteMav(array){

    $.ajax({
        cache: true,
        type: "POST",
        url:"/venuesType/deleteMav.do",
        data:{arr:array},
        async: false,
        dataType:"json",
        error: function(request) {
            alert("失败");

        },
        success: function(data) {

            $('#dataList').html(data);

        }
    });

}




</script>

</body>
</html>
