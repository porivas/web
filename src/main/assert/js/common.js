/**
 * Created by chenchen on 16/8/28.
 */
function deleteChosen(path) {
    var array = new Array(); //用于保存 选中的那一条数据的ID
    var flag; //判断是否一个未选
    $("input[name='checkItem']:checkbox").each(function () { //遍历所有的name为checkItem的 checkbox
        if ($(this).attr("checked")) { //判断是否选中
            flag = true; //只要有一个被选择 设置为 true
        }
    })
    if (flag) {
        $("input[name='checkItem']:checkbox").each(function () { //遍历所有的name为selectFlag的 checkbox
            if ($(this).attr("checked")) { //判断是否选中
                var ttd = $(this).parent('td').next('td');
                //alert(ttd.text());
                array.push(ttd.text()); //将选中的值 添加到 array中

            }
        })
        deleteMav(array, path);
    } else {
        alert("请至少选择一个用户1");
    }
}

function showModify(path) {

    var array = new Array(); //用于保存 选中的那一条数据的ID
    var flag; //判断是否一个未选
    $("input[name='checkItem']:checkbox").each(function () { //遍历所有的name为checkItem的 checkbox
        if ($(this).attr("checked")) { //判断是否选中
            flag = true; //只要有一个被选择 设置为 true
        }
    })
    if (flag) {
        $("input[name='checkItem']:checkbox").each(function () { //遍历所有的name为selectFlag的 checkbox
            if ($(this).attr("checked")) { //判断是否选中
                var ttd = $(this).parent('td').next('td');
                //alert(ttd.text());
                array.push(ttd.text()); //将选中的值 添加到 array中

            }
        })
        if (array.length > 1) {
            alert("只能选择一条记录");
        } else {
            showModifyMav(array, path);
        }

        //window.self.location = "deleteUser?info=" + array;
    } else {
        alert("请至少选择一个用户2");
    }


}

function deleteMav(array, path) {

    $.ajax({
        cache: true,
        type: "POST",
        url: "/" + path + "/deleteMav.do",
        data: {arr: array},
        async: false,
        dataType: "json",
        error: function (request) {
            alert("失败");

        },
        success: function (data) {
            alert("成功");
            search("Mav",path);

        }
    });

}

function showModifyMav(array, path) {
    var modifyDialogVar = $('#modifyDialog').html().trim();
    if(modifyDialogVar ==null || modifyDialogVar.length==0) {

        $.ajax({
            cache: true,
            type: "POST",
            url: "/" + path + "/searchByKeyMav.do",
            data: {arr: array},
            async: false,
            //dataType:"json",
            error: function (request) {
                alert("失败");

            },
            success: function (data) {
                $('#modifyDialog').html(data);
                $('#modifyModal').modal('show');
            }
        });
    }else{
        $('#modifyModal').modal('show');
    }

}

function initSearch(f, path) {
    $.ajax({
        cache: true,
        type: "POST",
        url: "/" + path + "/showSearchBarMav.do",
        data: "",
        async: false,
        //dataType:"json",
        error: function (request) {
            alert("失败。。。");

        },
        success: function (data) {
            if (f == "Mav") {
                $('#searchBar').html(data);
            } else {

            }

        }
    });

}

function search(f, path) {
    $.ajax({
        cache: true,
        type: "POST",
        url: "/" + path + "/search" + f + ".do",
        data: $('#searchForm').serialize(),
        async: false,
        //dataType:"json",
        error: function (request) {
            $('#addModal').modal('hide');
            alert("失败");

        },
        success: function (data) {
            $('#addModal').modal('hide');

            if (f == "Mav") {
                $('#dataList').html(data);
            } else {

            }

        }
    });

}


function showAddMav(path) {
        $.ajax({
            cache: true,
            type: "POST",
            url: "/" + path + "/showAddMav.do",
            data: {},
            async: false,
            //dataType:"json",
            error: function (request) {
                alert("失败..");

            },
            success: function (data) {
                $('#addDialog').html(data);
                $('#addModal').modal('hide');

            }
        });


}

function addMav(f,path){
    $.ajax({
        cache: true,
        type: "POST",
        url: "/"+path+"/addJson.do",
        data: $('#addForm').serialize(),
        async: false,
        //dataType:"json",
        error: function (request) {
            $('#addModal').modal('hide');
            alert("失败");

        },
        success: function (data) {

            $('#addModal').modal('hide');
            if (data == '1') alert("成功")
            else alert("失败")
            search("Mav",path);

        }
    });
}

function modifyMav(f,path){
    $.ajax({
        cache: true,
        type: "POST",
        url:"/"+path+"/modifyJson.do",
        data:$('#modifyForm').serialize(),
        async: false,
        //dataType:"json",
        error: function(request) {
            $('#modifyModal').modal('hide');
            alert("失败");

        },
        success: function(data) {
            $('#modifyModal').modal('hide');
            if(data=='1') alert("成功")
            else alert("失败")
            search(f,path);

        }
    });
}