/**
 * Created by alleyz on 2017/5/16 0016.
 *
 */
function __init(data){
    var teacherTmp = doT.template($("#salary-tmp").text());
    var isAdmin = eval(window.localStorage.isAdmin);
    var url = bkPath  + "/salary";
    if(!isAdmin){
        url+="/search/findAllByUserId?userId=" + localStorage.teacherId;
    }

    $.ajax({
        url:url,
        type:"get",
        dataType:"json",
        success:function(data){
            var id = "tab-salary";
            var tab = $("#"+id);
            $("#"+ id+ " > tbody").html(teacherTmp(data));
            if(isAdmin){
                tab.dataTable({"columnDefs": [{"targets": [ 0,1,3,4,5,6,7],"searchable": false}]});
                $("#" + id + "_wrapper > div > .col-xs-6:first").remove();
                $("#" + id + "_filter").css("text-align","left");
            }else{
                tab.dataTable( {
                    "columnDefs": [{
                        "targets": [ 8 ],
                        "visible": false,
                        "searchable": false
                    },{"targets": [ 0,1,3,4,5,6,7],"searchable": false}
                    ]
                });
                $("#" + id + "_wrapper > div:first  ").remove();
                $("#btn-add-salay").remove();
            }
        },error:function(e){
            alert("出错了...");
        }
    });
    $("#btn-add-salay").click(function(){
        viewer.loadView(container, contextPath + "/admin/addSalary.html", contextPath + "/admin/js/addSalary.js");
    });

    $("#tab-salary").on('click',".del-salary", function(){
        var url = $(this).attr("data-url");
        viewer.delByRest(url, function(){
            viewer.loadView(container, contextPath + "/admin/salary.html", contextPath + "/admin/js/salary.js");
        });
    }).on('click',".edit-salary",function(){
        viewer.loadView(container, contextPath + "/admin/addSalary.html", contextPath + "/admin/js/addSalary.js",
            $(this).attr("data-url"));
    });
}
