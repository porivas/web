<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<!-- 模态框（Modal） -->
<div class="modal fade" id="modifyModal" tabindex="-1" role="dialog"
     aria-labelledby="modifyModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close"
                        data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    修改场馆类型
                </h4>
            </div>
            <div class="modal-body">

                <form class="form-horizontal" role="form" id="modifyForm">
                    <br>
                    <br>

                        <div class="form-group">
                            <label for="venuestypeId" class="col-md-2 control-label">编号</label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" name="venuestypeId" id="venuestypeId" readonly
                                        value="${data.venuestypeId}">
                            </div>
                        </div>



                    <div class="form-group">
                        <label for="venuestypeName" class="col-md-2 control-label">类型</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="venuestypeName" id="venuestypeName"
                                   placeholder="请输入类型" value="${data.venuestypeName}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="comments" class="col-md-2 control-label">说明</label>
                        <div class="col-md-6">
                  <textarea class="form-control" name="comments" id="comments" rows="3"
                            placeholder="请输入说明">${data.comments}</textarea>
                        </div>

                    </div>
                </form>



            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary" id="modifyButton" name="modifyButton">
                    提交
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<script type="text/javascript">
    $('#modifyButton').click(function(){

                modifyMav("Mav","venuesType");
            }
    );

</script>
</body>
</html>
