/**
 * Created by alleyz on 2017/5/16 0016.
 *
 */
jQuery(function($){
    var id = "tab-attend";
    $('#' + id).dataTable( );
    $("#" + id + "_wrapper > div > .col-xs-6:first").remove();
    $("#" + id + "_filter").css("text-align","left");

    $("#btn-add-attend").click(function(){
        viewer.loadView(container, contextPath + "/admin/addAttend.jsp", contextPath + "/admin/js/addAttend.js");
    });
});
