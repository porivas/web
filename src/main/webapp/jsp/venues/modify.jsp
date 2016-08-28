<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title></title>
</head>
<body>
<!-- 模态框（Modal） -->
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
                                                   placeholder="请输入名称" value="${data.venuesName}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="venuestypeId" class="col-md-2 control-label">场馆类型</label>
                                        <div class="col-sm-6">
                                            <select class="form-control" name="venuestypeId" id="venuestypeId">
                                                <option value="">全部</option>
                                                <c:forEach items="${venuesTypes}" var="item">
                                                    <option value="${item.venuestypeId}" <c:if test="${item.venuestypeId==data.venuestypeId}">selected</c:if>>
                                                    ${item.venuestypeName}
                                                    </option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="comments" class="col-md-2 control-label">说明</label>
                                        <div class="col-md-6">
                  <textarea class="form-control" name="comments" id="comments" rows="3"
                            placeholder="请输入说明" >${data.comments}</textarea>
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
                                    <%@ include file="/jsp/address/map.jsp"%>
                                    <%--
                                                                    <c:import url="/jsp/address/map.jsp"></c:import>
                                    --%>





                                </div>


                            </div>


                        </div>
                    </div>


                </form>


            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary" id="addButton" name="addButton">
                    提交
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<script type="text/javascript">
    $('#modifyButton').click(function(){

                modifyMav("Mav","venues");
            }
    );

</script>
</body>
</html>
