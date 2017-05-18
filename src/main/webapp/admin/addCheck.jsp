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
            添加考核信息
        </h1>
    </div><!-- /.page-header -->
    <div class="row">
        <div class="col-xs-12">
            <form class="form-horizontal" role="form">
                <div class="form-group ">
                    <label class="col-md-2 control-label" for="userId">教师</label>
                    <div class="col-sm-3">
                        <select id="userId" class="form-control">
                            <option>--请选择--</option>
                            <option>张三</option>
                            <option>李四</option>
                            <option>王麻子</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="checkTime">考核日期</label>
                    <div class="col-sm-3">
                        <input class="form-control date-picker" data-date-format="yyyy-mm" id="checkTime" type="text" readonly="" placeholder="请选择考核日期"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="loginUserCode">考核项目</label>
                    <div class="col-sm-3">
                        <input class="form-control" id="loginUserCode" type="text" placeholder="请输入考核项目"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="password">考核结果</label>
                    <div class="col-sm-3">
                        <input class="form-control" id="password" type="password" placeholder="请输入考核结果"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-4">
                        <button type="submit" class="btn btn-success">提交</button>
                        <button type="reset" class="btn btn-default" >重置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
