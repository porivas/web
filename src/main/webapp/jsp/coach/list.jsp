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
    <title></title>
</head>
<body>

  <div class="container">
    <div class="row clearfix">
      <div class="col-md-12 column">
        <div class="table-responsive">
          <table class="table">
            <caption>上下文表格布局</caption>
            <thead>
            <tr>
              <th>产品</th>
              <th>付款日期</th>
              <th>状态</th>
            </tr>
            </thead>
            <tbody>
            <tr class="active">
              <td>产品1</td>
              <td>23/11/2013</td>
              <td>待发货</td>
            </tr>
            <tr class="success">
              <td>产品2</td>
              <td>10/11/2013</td>
              <td>发货中</td>
            </tr>
            <tr  class="warning">
              <td>产品3</td>
              <td>20/10/2013</td>
              <td>待确认</td>
            </tr>
            <tr  class="danger">
              <td>产品4</td>
              <td>20/10/2013</td>
              <td>已退货</td>
            </tr>
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
  </div>



</body>
</html>
