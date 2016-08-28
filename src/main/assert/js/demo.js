

$(function () {
    //设置默认值
    var provvar = $('#selectedProv').val().trim();
    if (provvar == null || provvar.length == 0) {
        var option = $("<option>").val("0").text("==请选择省份==");
    } else {
        var option = $("<option>").val(provvar).text($('#selectedProvName').val());
    }
    $("[name='prov']").append(option);

    var cityvar = $('#selectedCity').val().trim();
    if (cityvar == null || cityvar.length == 0) {
        option = $("<option>").val("0").text("==请选择城市==");
    } else {
        var option = $("<option>").val(cityvar).text($('#selectedCityName').val());
    }
    $("[name='city']").append(option);


    var areavar = $('#selectedArea').val().trim();
    if (areavar == null || areavar.length == 0) {
        option = $("<option>").val("0").text("==请选择县区==");
    } else {
        var option = $("<option>").val(areavar).text($('#selectedAreaName').val());
    }
    $("[name='area']").append(option);



//绑定省份
for (var i = 0; i < areas.length; i++) {
    if (parseInt(areas[i].level) == 1) {
        option = $("<option>").val(areas[i].code).text(areas[i].name);
        $("[name='prov']").append(option);
    }
}

//城市联动
$("[name='prov']").bind("change", function () {
    var code = parseInt($(this).val());

    //加载城市
    if (code > 0) {
        $("[name='city'] option:gt(0)").remove();
        $("[name='area'] option:gt(0)").remove();
        for (var i = 0; i < areas.length; i++) {
            if (parseInt(areas[i].parentCode) == code) {
                option = $("<option>").val(areas[i].code).text(areas[i].name);
                $("[name='city']").append(option);
            }
        }
    } else {


        $("[name='city'] option:gt(0)").remove();
        $("[name='area'] option:gt(0)").remove();
    }
    //绘制地图
    if (code > 0) {
        for (var i = 0; i < areas.length; i++) {
            if (parseInt(areas[i].code) == code) {

                var longitude = areas[i].longitude;
                var latitude = areas[i].latitude;

                loadPlace(longitude, latitude, 10);

                break;
            }
        }
    }
});

//城市联动
$("[name='city']").bind("change", function () {
    var code = parseInt($(this).val());

    //加载县区
    if (code > 0) {
        $("[name='area'] option:gt(0)").remove();

        for (var i = 0; i < areas.length; i++) {
            if (parseInt(areas[i].parentCode) == code) {
                option = $("<option>").val(areas[i].code).text(areas[i].name);
                $("[name='area']").append(option);
            }
        }
    } else {

        $("[name='area'] option:gt(0)").remove();
    }

    //绘制地图
    if (code > 0) {
        for (var i = 0; i < areas.length; i++) {
            if (parseInt(areas[i].code) == code) {

                var longitude = areas[i].longitude;
                var latitude = areas[i].latitude;

                loadPlace(longitude, latitude, 12);

                break;
            }
        }
    }

});


//县区联动
$("[name='area']").bind("change", function () {
    var code = parseInt($(this).val());

    //绘制地图
    if (code > 0) {

        for (var i = 0; i < areas.length; i++) {
            if (parseInt(areas[i].code) == code) {

                var longitude = areas[i].longitude;
                var latitude = areas[i].latitude;

                loadPlace(longitude, latitude);

                break;
            }
        }
    }
});

})
;

function cancel() {


}