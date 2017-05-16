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
                <div class="form-group ">
                    <label class="col-md-2 control-label" for="userCode">编号</label>
                    <div class="col-sm-3">
                        <input class="form-control" id="userCode" type="text" placeholder="请输入编号" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="loginUserCode">用户名</label>
                    <div class="col-sm-3">
                        <input class="form-control" id="loginUserCode" type="text" placeholder="请输入用户名"/>
                    </div>
                    <label class="col-sm-1 control-label" for="password">密码</label>
                    <div class="col-sm-4">
                        <input class="form-control" id="password" type="password" placeholder="请输入6~10字符"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="userName">姓名</label>
                    <div class="col-sm-3">
                        <input class="form-control" id="userName" type="text" placeholder="请输入姓名"/>
                    </div>
                    <label class="col-sm-1 control-label" for="sex">性别</label>
                    <div class="col-sm-4">
                        <select id="sex" class="form-control">
                            <option>请选择</option>
                            <option>男</option>
                            <option>女</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="department"  class="col-sm-2 control-label">部门</label>
                    <div class="col-sm-3">
                        <select id="department" class="form-control">
                            <option>请选择</option>
                            <option>一年级</option>
                            <option>后勤</option>
                            <option>教务</option>
                        </select>
                    </div>
                    <label for="sar"  class="col-sm-1 control-label">学历</label>
                    <div class="col-sm-4">
                        <select id="sar" class="form-control">
                            <option>请选择</option>
                            <option>本科</option>
                            <option>硕士</option>
                            <option>博士</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="birthday">出生日期</label>
                    <div class="col-sm-3">
                        <input class="form-control" style="cursor: pointer" readonly="" id="birthday" type="text" placeholder="请选择出生日期"/>

                    </div>
                    <label class="col-sm-1 control-label" for="workDay">入职日期</label>
                    <div class="col-sm-4">
                        <input class="form-control " style="cursor: pointer"  readonly="" id="workDay" type="text" placeholder="请选择入职日期"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="address">住址</label>
                    <div class="col-sm-3">
                        <input class="form-control" id="address" type="text" placeholder="请输入住址"/>
                    </div>
                    <label class="col-sm-1 control-label" for="phone">电话</label>
                    <div class="col-sm-4">
                        <input class="form-control" id="phone" type="text" placeholder="请输入电话"/>
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
