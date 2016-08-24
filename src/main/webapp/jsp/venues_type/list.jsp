<%@ page  import="java.util.List" %>
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

<div class="row clearfix" id="resultList">
  <div class="col-md-12 column">
    <div class="table-responsive">
      <table class="table table-bordered table-hover table-condensed">
        <thead>
        <tr>
          <th>序号</th>
          <th>场馆类型</th>
          <th>说明</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${datas}" var="item">

          <tr>
            <td>${item.venuestypeId}</td>
            <td>${item.venuestypeName}</td>
            <td>${item.comments}</td>
          </tr>
        </c:forEach>


        </tbody>
      </table>
    </div>
    <ul class="pagination pagination-sm">
      <li>
        <a href="#">Prev</a>
      </li>
      <li>
        <a href="#">1</a>
      </li>
      <li>
        <a href="#">2</a>
      </li>
      <li>
        <a href="#">3</a>
      </li>
      <li>
        <a href="#">4</a>
      </li>
      <li>
        <a href="#">5</a>
      </li>
      <li>
        <a href="#">Next</a>
      </li>
    </ul>
  </div>
</div>



<script>



  $(function(){
    function initTableCheckbox() {
      var $thr = $('table thead tr');
      var $checkAllTh = $('<th><input type="checkbox" id="checkAll" name="checkAll" /></th>');
      /*将全选/反选复选框添加到表头最前，即增加一列*/
      $thr.prepend($checkAllTh);
      /*“全选/反选”复选框*/
      var $checkAll = $thr.find('input');
      $checkAll.click(function(event){
        /*将所有行的选中状态设成全选框的选中状态*/
        $tbr.find('input').prop('checked',$(this).prop('checked'));
        /*并调整所有选中行的CSS样式*/
        if ($(this).prop('checked')) {
          $tbr.find('input').parent().parent().addClass('warning');
        } else{
          $tbr.find('input').parent().parent().removeClass('warning');
        }
        /*阻止向上冒泡，以防再次触发点击操作*/
        event.stopPropagation();
      });
      /*点击全选框所在单元格时也触发全选框的点击操作*/
      $checkAllTh.click(function(){
        $(this).find('input').click();
      });
      var $tbr = $('table tbody tr');
      var $checkItemTd = $('<td><input type="checkbox" name="checkItem" /></td>');
      /*每一行都在最前面插入一个选中复选框的单元格*/
      $tbr.prepend($checkItemTd);
      /*点击每一行的选中复选框时*/
      $tbr.find('input').click(function(event){
        /*调整选中行的CSS样式*/
        $(this).parent().parent().toggleClass('warning');
        /*如果已经被选中行的行数等于表格的数据行数，将全选框设为选中状态，否则设为未选中状态*/
        $checkAll.prop('checked',$tbr.find('input:checked').length == $tbr.length ? true : false);
        /*阻止向上冒泡，以防再次触发点击操作*/
        event.stopPropagation();
      });
      /*点击每一行时也触发该行的选中操作*/
      $tbr.click(function(){
        $(this).find('input').click();
      });
    }
    initTableCheckbox();
  });

</script>

</body>
</html>
