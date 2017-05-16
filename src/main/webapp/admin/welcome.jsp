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

    <!-- /section:settings.box -->
    <div class="page-header">
        <h1>
            教师考核列表
        </h1>
    </div><!-- /.page-header -->

    <div class="row">
        <div class="col-xs-12">
            <!-- PAGE CONTENT BEGINS -->

            <div class="row">
                <div class="space-6"></div>

                <div class="vspace-12-sm"></div>

                <div class="col-sm-5">
                    <div class="widget-box">
                        <div class="widget-header widget-header-flat widget-header-small">
                            <h5 class="widget-title">
                                <i class="ace-icon fa fa-signal"></i>
                                教师年龄占比
                            </h5>
                        </div>

                        <div class="widget-body">
                            <div class="widget-main">
                                <!-- #section:plugins/charts.flotchart -->
                                <div id="piechart-placeholder"></div>

                                <!-- /section:plugins/charts.flotchart -->
                                <div class="hr hr8 hr-double"></div>

                                <div class="clearfix">
                                    <!-- #section:custom/extra.grid -->
                                    <div class="grid3">
                                        <span class="label label-xlg label-success arrowed arrowed-right">20~30岁</span>

                                        <h4 class="bigger pull-right">27人</h4>
                                    </div>

                                    <div class="grid3">
                                        <span class="label label-xlg label-info arrowed arrowed-right">30~40岁</span>

                                        <h4 class="bigger pull-right">55人</h4>
                                    </div>

                                    <div class="grid3">
                                        <span class="label label-xlg label-warning arrowed arrowed-right">40~50岁</span>

                                        <h4 class="bigger pull-right">18人</h4>
                                    </div>

                                    <!-- /section:custom/extra.grid -->
                                </div>
                            </div><!-- /.widget-main -->
                        </div><!-- /.widget-body -->
                    </div><!-- /.widget-box -->
                </div><!-- /.col -->

                <div class="col-sm-7">
                    <div class="widget-box">
                        <div class="widget-header widget-header-flat">
                            <h4 class="widget-title lighter">
                                <i class="ace-icon fa fa-signal"></i>
                                考勤趋势
                            </h4>
                        </div>

                        <div class="widget-body">
                            <div class="widget-main padding-4">
                                <div id="sales-charts"></div>
                            </div><!-- /.widget-main -->
                        </div><!-- /.widget-body -->
                    </div><!-- /.widget-box -->
                </div><!-- /.col -->
            </div><!-- /.row -->

            <!-- PAGE CONTENT ENDS -->
        </div><!-- /.col -->
    </div><!-- /.row -->

</div>