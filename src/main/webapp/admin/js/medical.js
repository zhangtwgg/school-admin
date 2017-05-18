/**
 * Created by alleyz on 2017/5/16 0016.
 *
 */
jQuery(function($){
    var id = "tab-medical";
    var oTable1 = $('#' + id).dataTable({ });
    $("#" + id + "_wrapper > div > .col-xs-6:first").remove();
    $("#" + id + "_filter").css("text-align","left");

    $("#btn-add-medical").click(function(){
        viewer.loadView(container, contextPath + "/admin/addMedical.jsp", contextPath + "/admin/js/addMedical.js");
    });
});
