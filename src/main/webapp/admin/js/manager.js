/**
 * Created by alleyz on 2017/5/17 0017.
 *
 */
jQuery(function($){
    var id = "tab-manager";
    $("#" + id).dataTable();
    $("#" + id + "_wrapper > div > .col-xs-6:first").remove();
    $("#" + id + "_filter").css("text-align","left");
    $("#add-admin").click(function(){
        viewer.loadView(container, contextPath + "/admin/addUser.jsp", contextPath + "/admin/js/addUser.js");
    });
});

