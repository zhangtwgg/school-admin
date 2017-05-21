/**
 * Created by alleyz on 2017/5/16 0016.
 *
 */
function __init(data){
    var teacherTmp = doT.template($("#medical-tmp").text());
    var isAdmin = eval(window.localStorage.isAdmin);
    var url = bkPath  + "/medical";
    if(!isAdmin){
        url+="/search/findAllByUserId?userId=" + localStorage.teacherId;
    }
    $.ajax({
        url:url,
        type:"get",
        dataType:"json",
        success:function(data){
            var id = "tab-medical";
            var tab = $("#"+id);
            $("#"+ id+ " > tbody").html(teacherTmp(data));
            if(isAdmin){
                tab.dataTable({"columnDefs": [{"targets": [ 0,1,3,4,5 ],"searchable": false}]});
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
                $("#btn-add-medical").remove();
            }
        },error:function(e){
            alert("出错了...");
        }
    });
    $("#btn-add-medical").click(function(){
        viewer.loadView(container, contextPath + "/admin/addMedical.html", contextPath + "/admin/js/addMedical.js");
    });

    $("#tab-medical").on('click',".del-medical", function(){
        var url = $(this).attr("data-url");
        viewer.delByRest(url, function(){
            viewer.loadView(container, contextPath + "/admin/medical.html", contextPath + "/admin/js/medical.js");
        });
    }).on('click',".edit-medical",function(){
        viewer.loadView(container, contextPath + "/admin/addMedical.html", contextPath + "/admin/js/addMedical.js",
            $(this).attr("data-url"));
    });
}