/**
 * Created by alleyz on 2017/5/16 0016.
 *
 */
function __init(data){
    var teacherTmp = doT.template($("#check-tmp").text());
    var isAdmin = eval(window.localStorage.isAdmin);
    var url = bkPath  + "/check";
    if(!isAdmin){
        url+="/search/findAllByUserId?userId=" + localStorage.teacherId;
    }
    $.ajax({
        url:url,
        type:"get",
        dataType:"json",
        success:function(data){
            var id = "tab-check";
            var tab = $("#"+id);
            $("#"+ id+ " > tbody").html(teacherTmp(data));
            if(isAdmin){
                tab.dataTable({"columnDefs": [{"targets": [ 0,1,3,4,5],"searchable": false}]});
                $("#" + id + "_wrapper > div > .col-xs-6:first").remove();
                $("#" + id + "_filter").css("text-align","left");
            }else{
                tab.dataTable( {
                    "columnDefs": [{
                        "targets": [ 6 ],
                        "visible": false,
                        "searchable": false
                    },{"targets": [ 0,1,3,4,5],"searchable": false}
                    ]
                });
                $("#" + id + "_wrapper > div:first ").remove();
                $("#btn-add-check").remove();
            }
        },error:function(e){
            alert("出错了...");
        }
    });
    $("#btn-add-check").click(function(){
        viewer.loadView(container, contextPath + "/admin/addCheck.html", contextPath + "/admin/js/addCheck.js");
    });

    $("#tab-check").on('click',".del-check", function(){
        var url = $(this).attr("data-url");
        viewer.delByRest(url, function(){
            viewer.loadView(container, contextPath + "/admin/check.html", contextPath + "/admin/js/check.js");
        });
    }).on('click',".edit-check",function(){
        viewer.loadView(container, contextPath + "/admin/addCheck.html", contextPath + "/admin/js/addCheck.js",
            $(this).attr("data-url"));
    });
}
