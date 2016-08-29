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
    <title>venues</title>
    <script src="/js/area.js" type="text/javascript"></script>

</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<br>
<br>
<div class="container">


    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="btn-group btn-group-md">
                <button class="btn btn-default" type="button" id="showAddButton">
                    <em class="glyphicon glyphicon-plus">

                    </em> 新增
                </button>
                <button class="btn btn-default" type="button" id="showModifyButton">
                    <em class="glyphicon glyphicon-pencil"></em>
                    修改
                </button>

                <button class="btn btn-default" type="button" id="deleteButton">
                    <em class="glyphicon glyphicon-trash"></em>
                    删除
                </button>
            </div>
        </div>
    </div>


    </br>
    </br>


    <!-- search bar -->
    <div class="row " id="searchBar">

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
    <div class="modal fade" id="addModal" tabindex="-1" role="dialog"
         aria-labelledby="addModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width:800px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close"
                            data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="addModalLabel">
                        新增场馆
                    </h4>
                </div>
                <div class="modal-body">

                    <form class="form-horizontal" role="form" id="addForm">
                        <br>
                        <br>
                        <div class="row clearfix">
                            <div class="col-md-12 column">

    <div class="row " id="addDialog">



    </div>
                                <div class="panel panel-default"><!--map-->
                                    <div class="panel-body" id="addressInfo">
                                        <div style="min-height: 450px; margin-top: 5px; width:500px;" id="map">

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>


                    </form>


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default"
                            id="closeAdd">关闭
                    </button>
                    <button type="button" class="btn btn-primary" id="addButton" name="addButton">
                        提交
                    </button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>
<!--add dialog end  -->
    <!-- modify dialog-->
    <div class="modal fade" id="modifyModal" tabindex="-1" role="dialog"
         aria-labelledby="modifyModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width:800px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close"
                            data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="modifyModalLabel">
                        修改场馆
                    </h4>
                </div>
                <div class="modal-body">

                    <form class="form-horizontal" role="form" id="modifyForm">
                        <br>
                        <br>
                        <div class="row clearfix">
                            <div class="col-md-12 column">

    <div class="row " id="modifyDialog">

    </div>
                                <div class="panel panel-default"><!--map-->
                                    <div class="panel-body" id="addressInfo2">
                                        <div style="min-height: 450px; margin-top: 5px; width:500px;" id="map2">

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>


                    </form>


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default"
                            id="closeModify">关闭
                    </button>
                    <button type="button" class="btn btn-primary" id="modifyButton" name="modifyButton">
                        提交
                    </button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>
<!-- modifyDialog end-->
    <div class="row " id="viewDialog">

    </div>

</div>
<!-- container-->


<script type="text/javascript">
    var map; // 创建Map实例
    var point;
    var inputBox;
    var map2; // 创建Map实例
    var point2;
    var inputBox2;

    $(document).ready(function () {
        showAddMav("venues");

        initSearch("Mav", "venues");
        search("Mav", "venues");
        map = new BMap.Map("map");
        map2 = new BMap.Map("map2");
        loadPlace(116.404, 39.915, 12);
        loadPlace2(116.404, 39.915, 12);
        map.addEventListener("click", function (e) {
            //alert(e.point.lng + "," + e.point.lat);
            $('#lng').val(e.point.lng);
            $('#lat').val(e.point.lat);
            inputBox = document.getElementById("pointInput");
            inputBox.value = e.point.lng + "," + e.point.lat;

        });
        map2.addEventListener("click", function (e) {
            //alert(e.point.lng + "," + e.point.lat);
            $('#lng').val(e.point.lng);
            $('#lat').val(e.point.lat);
            inputBox2 = document.getElementById("pointInput");
            inputBox2.value = e.point.lng + "," + e.point.lat;

        });


    })


    $(function () {
        $('#collapseOne').collapse('hide')
    });


    $('#showAddButton').click(function () {
        //showAddMav("venues");
        $('#addModal').modal('show');

    });


    $('#deleteButton').click(function(){
            deleteChosen("venues");
      });//删除选中

    $('#showModifyButton').click(function(){
        showModify("venues");
    });//显示修改页面


    function loadPlace(longitude, latitude, level) {
        if (parseFloat(longitude) > 0 || parseFloat(latitude) > 0) {

            level = level || 12;
            //绘制地图
            point = new BMap.Point(longitude, latitude); //地图中心点
            map.centerAndZoom(point, level); // 初始化地图,设置中心点坐标和地图级别。
            map.setCurrentCity("北京");
            map.enableScrollWheelZoom(true); //启用滚轮放大缩小
            //向地图中添加缩放控件
            var ctrlNav = new window.BMap.NavigationControl({
                anchor: BMAP_ANCHOR_TOP_LEFT,
                type: BMAP_NAVIGATION_CONTROL_LARGE
            });
            map.addControl(ctrlNav);

            //向地图中添加缩略图控件
            var ctrlOve = new window.BMap.OverviewMapControl({
                anchor: BMAP_ANCHOR_BOTTOM_RIGHT,
                isOpen: 1
            });
            map.addControl(ctrlOve);

            //向地图中添加比例尺控件
            var ctrlSca = new window.BMap.ScaleControl({
                anchor: BMAP_ANCHOR_BOTTOM_LEFT
            });
            map.addControl(ctrlSca);


        }
    }
    function loadPlace2(longitude, latitude, level) {
        if (parseFloat(longitude) > 0 || parseFloat(latitude) > 0) {

            level = level || 12;
            //绘制地图
            point2 = new BMap.Point(longitude, latitude); //地图中心点
            map2.centerAndZoom(point2, level); // 初始化地图,设置中心点坐标和地图级别。
            map2.setCurrentCity("北京");
            map2.enableScrollWheelZoom(true); //启用滚轮放大缩小
            //向地图中添加缩放控件
            var ctrlNav = new window.BMap.NavigationControl({
                anchor: BMAP_ANCHOR_TOP_LEFT,
                type: BMAP_NAVIGATION_CONTROL_LARGE
            });
            map2.addControl(ctrlNav);

            //向地图中添加缩略图控件
            var ctrlOve = new window.BMap.OverviewMapControl({
                anchor: BMAP_ANCHOR_BOTTOM_RIGHT,
                isOpen: 1
            });
            map2.addControl(ctrlOve);

            //向地图中添加比例尺控件
            var ctrlSca = new window.BMap.ScaleControl({
                anchor: BMAP_ANCHOR_BOTTOM_LEFT
            });
            map2.addControl(ctrlSca);


        }
    }


    function setPlace() {
        alert("setPlace");
        map.clearOverlays();    //清除地图上所有覆盖物
        var myGeo = new BMap.Geocoder();// 将地址解析结果显示在地图上,并调整地图视野
        myGeo.getPoint(document.getElementById('suggestId').value, function (p) {
            if (p) {
                lat = p.lat;
                lng = p.lng;
                map.centerAndZoom(p, 12);
//                    map.addOverlay(new BMap.Marker(p));
                alert("地址：" + lat + lng);
            }
            else {

                alert("您选择地址没有解析到结果!");
            }
        }, document.getElementById('county').value);

    }




    //添加覆盖物
    function add_overlay() {
        alert("add_overlay");

        marker = new BMap.Marker(new BMap.Point(inputBox.value)); // 创建点
        map.addOverlay(marker);            //增加点

    }
    //清除覆盖物
    function remove_overlay() {
        alert("remove_overlay");

        map.clearOverlays();
    }



</script>
<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>
