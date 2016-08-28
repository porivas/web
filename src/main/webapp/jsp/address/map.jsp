<%--
  Created by IntelliJ IDEA.
  User: chenchen
  Date: 16/8/28
  Time: 下午2:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>区域地图</title>
    <!--css-->
    <%--
        <link href="/css/mapDemo.css" rel="stylesheet" type="text/css"/>
    --%>
    <!--javascript-->


</head>
<body>

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
</div>
<script type="text/javascript">
    $(document).ready(function () {
        loadPlace(116.404, 39.915, 12);

    })

     map = new BMap.Map("map"); // 创建Map实例
     map.addEventListener("click", function (e) {
        //alert(e.point.lng + "," + e.point.lat);
        $('#lng').val(e.point.lng);
        $('#lat').val(e.point.lat);
        inputBox = document.getElementById("pointInput");
        inputBox.value = e.point.lng + "," + e.point.lat;

    });
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

    function setPlace() {
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
        marker = new BMap.Marker(new BMap.Point(inputBox.value)); // 创建点
        map.addOverlay(marker);            //增加点

    }
    //清除覆盖物
    function remove_overlay() {
        map.clearOverlays();
    }


</script>

</body>
</html>

