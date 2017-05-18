<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="page-content">
    <!-- #section:settings.box -->
    <div class="ace-settings-container" id="ace-settings-container">
        <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
            <i class="ace-icon fa fa-cog bigger-130"></i>
        </div>

        <div class="ace-settings-box clearfix" id="ace-settings-box">
            <div class="pull-left width-50">
                <!-- #section:settings.skins -->
                <div class="ace-settings-item">
                    <div class="pull-left">
                        <select id="skin-colorpicker" class="hide">
                            <option data-skin="no-skin" value="#438EB9">#438EB9</option>
                            <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                            <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                            <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                        </select>
                    </div>
                    <span>&nbsp; 选择皮肤</span>
                </div>

                <!-- /section:settings.skins -->

                <div class="ace-settings-item">
                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" />
                    <label class="lbl" for="ace-settings-highlight"> 突出显示选中菜单</label>
                </div>
            </div><!-- /.pull-left -->

        </div><!-- /.ace-settings-box -->
    </div><!-- /.ace-settings-container -->
    <div class="page-header">
        <h1>
            添加人员
        </h1>
    </div><!-- /.page-header -->
    <div class="row">
        <div class="col-xs-12">
            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="userName">姓名</label>
                    <div class="col-sm-3">
                        <input class="form-control" id="userName" type="text" placeholder="请输入姓名"/>
                    </div>
                    <label class="col-sm-1 control-label" for="attendMonth">考核年月</label>
                    <div class="col-sm-4">
                        <input class="form-control date-picker" style="cursor: pointer" data-date-format="yyyy-mm" readonly="" id="attendMonth" type="text" placeholder="请选择考核年月"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="attendNormal"  class="col-sm-2 control-label">正常出勤</label>
                    <div class="col-sm-3">
                        <input class="form-control" id="attendNormal" type="text" placeholder="请输入正常出勤次数"/>
                    </div>
                    <label for="lateCount"  class="col-sm-1 control-label">迟到次数</label>
                    <div class="col-sm-4">
                        <input class="form-control" id="lateCount" type="text" placeholder="请输入迟到次数"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="earlyCount"  class="col-sm-2 control-label">早退次数</label>
                    <div class="col-sm-3">
                        <input class="form-control" id="earlyCount" type="text" placeholder="请输入早退次数"/>
                    </div>
                    <label for="sickCount"  class="col-sm-1 control-label">病假天数</label>
                    <div class="col-sm-4">
                        <input class="form-control" id="sickCount" type="text" placeholder="请输入病假天数"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="leaveCount"  class="col-sm-2 control-label">事假天数</label>
                    <div class="col-sm-3">
                        <input class="form-control" id="leaveCount" type="text" placeholder="请输入事假天数"/>
                    </div>
                    <label for="absentCount"  class="col-sm-1 control-label">旷工天数</label>
                    <div class="col-sm-4">
                        <input class="form-control" id="absentCount" type="text" placeholder="请输入旷工天数"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-5 col-sm-7">
                        <button type="submit" class="btn btn-success">提交</button>
                        <button type="reset" class="btn btn-default" >重置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
