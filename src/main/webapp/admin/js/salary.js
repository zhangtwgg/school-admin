/**
 * Created by alleyz on 2017/5/16 0016.
 *
 */
jQuery(function($){
    var id = "tab-salary";
    var oTable1 = $('#' + id).dataTable({ });
    $("#" + id + "_wrapper > div > .col-xs-6:first").remove();
    $("#" + id + "_filter").css("text-align","left");

    $("#btn-add-salay").click(function(){
        viewer.loadView(container, contextPath + "/admin/addSalary.jsp", contextPath + "/admin/js/addSalary.js");
    });
});
