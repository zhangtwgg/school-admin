/**
 * Created by alleyz on 2017/5/16 0016.
 *
 */
function __init(data){
    var teacherTmp = doT.template($("#teacher-tmp").text());
    $.ajax({
        url:bkPath  + "/teacher/search/findByIsAdmin?isAdmin=1",
        type:"get",
        dataType:"json",
        success:function(data){
            var id = "tab-teacher";
            var tab = $("#"+id);
            $("#"+ id+ " > tbody").html(teacherTmp(data));

            if(eval(window.localStorage.isAdmin)){
                tab.dataTable({"columnDefs": [{"targets": [ 0,1,3,4,5,6,7,8,9,10 ],"searchable": false}]});
                $("#" + id + "_wrapper > div > .col-xs-6:first").remove();
                $("#" + id + "_filter").css("text-align","left");
            }else{
                tab.dataTable( {
                    "columnDefs": [{
                        "targets": [ 11 ],
                        "visible": false,
                        "searchable": false
                    },{"targets": [ 0,1,3,4,5,6,7,8,9,10 ],"searchable": false}
                    ]
                });
                $("#" + id + "_wrapper > div:first  ").remove();
            }

        },error:function(e){
            alert("出错了...");
        }
    });

    $("#tab-teacher").on('click',".del-teacher", function(){
        var url = $(this).attr("data-url");
        viewer.delByRest(url, function(){
            viewer.loadView(container, contextPath + "/admin/manager.html", contextPath + "/admin/js/manager.js");
        });
    }).on('click',".edit-teacher",function(){
        viewer.loadView(container, contextPath + "/admin/addUser.html", contextPath + "/admin/js/addUser.js",
            $(this).attr("data-url"), 1);
    });
}
