/**
 * Created by alleyz on 2017/5/16 0016.
 *
 */
function __init(data){
    var teacherTmp = doT.template($("#attend-tmp").text());
    var isAdmin = eval(window.localStorage.isAdmin);
    var url = bkPath  + "/attend";
    if(!isAdmin){
        url+="/search/findAllByUserId?userId=" + localStorage.teacherId;
    }
    $.ajax({
        url:url,
        type:"get",
        dataType:"json",
        success:function(data){
            var id = "tab-attend";
            var tab = $("#"+id);
            $("#"+ id+ " > tbody").html(teacherTmp(data));
            if(isAdmin){
                tab.dataTable({"columnDefs": [{"targets": [ 0,1,3,4,5,6,7,8,9],"searchable": false}]});
                $("#" + id + "_wrapper > div > .col-xs-6:first").remove();
                $("#" + id + "_filter").css("text-align","left");
            }else{
                tab.dataTable( {
                    "columnDefs": [{
                        "targets": [ 10 ],
                        "visible": false,
                        "searchable": false
                    },{"targets": [ 0,1,3,4,5,6,7,8,9],"searchable": false}
                    ]
                });
                $("#" + id + "_wrapper > div:first  ").remove();
                $("#btn-add-attend").remove();
            }
        },error:function(e){
            alert("出错了...");
        }
    });
    $("#btn-add-attend").click(function(){
        viewer.loadView(container, contextPath + "/admin/addAttend.html", contextPath + "/admin/js/addAttend.js");
    });

    $("#tab-attend").on('click',".del-attend", function(){
        var url = $(this).attr("data-url");
        viewer.delByRest(url, function(){
            viewer.loadView(container, contextPath + "/admin/attend.html", contextPath + "/admin/js/attend.js");
        });
    }).on('click',".edit-attend",function(){
        viewer.loadView(container, contextPath + "/admin/addAttend.html", contextPath + "/admin/js/addAttend.js",
            $(this).attr("data-url"));
    });
}