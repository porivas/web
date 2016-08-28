<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title></title>
    <script src="/js/demo.js" type="text/javascript"></script>
</head>
<body>
<!-- 模态框（Modal） -->
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
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">
                                        场馆信息
                                    </h3>
                                </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label for="venuesName" class="col-md-2 control-label">名称</label>
                                        <div class="col-sm-6">
                                            <input type="text" class="form-control" name="venuesName" id="venuesName"
                                                   placeholder="请输入名称">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="venuestypeId" class="col-md-2 control-label">场馆类型</label>
                                        <div class="col-sm-6">
                                            <select class="form-control" name="venuestypeId" id="venuestypeId">
                                                <option value="">全部</option>
                                                <c:forEach items="${venuesTypes}" var="item">
                                                    <option value="${item.venuestypeId}">${item.venuestypeName}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="comments" class="col-md-2 control-label">说明</label>
                                        <div class="col-md-6">
                  <textarea class="form-control" name="comments" id="comments" rows="3"
                            placeholder="请输入说明"/>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label for="file" class="col-md-2 control-label">上传图标</label>
                                        <div class="col-md-6">
                  <input type="file" class="form-control" name="file" id="file"
                            />
                                        </div>
                                    </div>


                                </div>

                            </div>
                            <!-- ----------------------------------------------------------->

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">
                                        位置
                                    </h3>


                                </div>

                                <div class="panel-body" id="addressInfo">
<%--
<%@ include file="/jsp/address/map.jsp"%>
--%>
<%--
                                <c:import url="/jsp/address/map.jsp"></c:import>
--%>


    <!--------------------------------------------------------------------map--------------------------------------->
    <div class="row">
        <div class="form-group">
            <label class="col-md-1 control-label" for="prov">省份</label>
            <div class="col-md-3">
                <select name="prov" id="prov" class="form-control">
                </select>
            </div>


            <label class="col-md-1 control-label" for="city">城市</label>
            <div class="col-md-3">
                <select name="city" id="city" class="form-control">
                </select>
            </div>

            <label class="col-md-1 control-label" for="area">区县</label>
            <div class="col-md-3">
                <select name="area" id="area" class="form-control">
                </select>
            </div>

        </div>
    </div>

    <div class="row">


        <div class="form-group">


            <label class="col-md-1 control-label" for="room">地址</label>
            <div class="col-md-3">
                <input class="form-control" type="text" name="room" id="room" placeHolder="请输入详细地址" value="${data.room}">
                </input>
            </div>
            <label class="col-md-1 control-label" for="lng">经度</label>
            <div class="col-md-3">
                <input class="form-control" type="text" name="lng" id="lng" placeHolder="点击地图选取经度" value="${data.lng}">
                </input>
            </div>
            <label class="col-md-1 control-label" for="room">纬度</label>
            <div class="col-md-3">
                <input class="form-control" type="text" name="lat" id="lat" placeHolder="点击地图选取经度" value="${data.lat}">
                </input>
            </div>

            <input type="hidden" value="${data.prov}" id="selectedProv">
            <input type="hidden" value="${data.city}" id="selectedCity">
            <input type="hidden" value="${data.area}" id="selectedArea">
            <input type="hidden" value="${data.provStr.name}" id="selectedProvName">
            <input type="hidden" value="${data.cityStr.name}" id="selectedCityName">
            <input type="hidden" value="${data.areaStr.name}" id="selectedAreaName">


        </div>
    </div>


    <div style="min-height: 450px; margin-top: 5px; width:500px;" id="map">
        aaa
    </div>

    <!--------------------------------------------------------------------map-end-------------------------------------->
























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

<script type="text/javascript">
    $('#addButton').click(function () {
        addMav("Mav","venues");
        //$('#addDialog').empty();

            }
    );
    $('#closeAdd').click(function(){
        $('#addModal').modal('hide');
    })


    <!--map----->



    /*var map = new BMap.Map("map"); // 创建Map实例
     var point;
     var inputBox;
     map.addEventListener("click", function (e) {
     //alert(e.point.lng + "," + e.point.lat);
     $('#lng').val(e.point.lng);
     $('#lat').val(e.point.lat);
     inputBox = document.getElementById("pointInput");
     inputBox.value = e.point.lng + "," + e.point.lat;

     });*/
    //根据经纬度显示地区


    /*function setPlace() {
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
    }*/





</script>
</body>
</html>
