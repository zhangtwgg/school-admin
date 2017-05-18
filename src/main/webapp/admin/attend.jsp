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
    <div class="row">
    <div class="col-xs-12">
        <div class="row">
            <div class="col-xs-12">
                <h3 class="header smaller lighter blue">教师考勤</h3>
                <div class="table-header">
                    <form class="form-inline">
                        <div class="form-group">
                            <span >考勤列表</span>
                        </div>
                        <div class="form-group col-sm-offset-10">
                            <button  class="btn btn-success" type="button" id="btn-add-attend">添加</button>
                        </div>
                    </form>
                </div>

                <!-- <div class="table-responsive"> -->

                <!-- <div class="dataTables_borderWrap"> -->
                <div>
                    <table id="tab-attend" class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>序号</th>
                            <th>编号</th>
                            <th>姓名</th>
                            <th >考勤月份</th>
                            <th>正常出勤</th>
                            <th>迟到次数</th>
                            <th>早退次数</th>
                            <th>病假天数</th>
                            <th>事假天数</th>
                            <th>旷工天数</th>
                            <th>操作</th>
                        </tr>
                        </thead>

                        <tbody>
                        <tr>
                            <td>序号</td>
                            <td>编号</td>
                            <td>姓名</td>
                            <td >考勤月份</td>
                            <td>正常出勤</td>
                            <td>迟到次数</td>
                            <td>早退次数</td>
                            <td>病假天数</td>
                            <td>事假天数</td>
                            <td>旷工天数</td>
                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="green" href="#">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="#">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline position-relative">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                        </button>

                                        <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">

                                            <li>
                                                <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                </a>
                                            </li>

                                            <li>
                                                <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </td>
                        </tr>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

</div>