/**
 * Created by alleyz on 2017/5/17 0017.
 *
 */
function __init(url){
    $("#userId").html(viewer.teacherOpts());
    if(url){
        $.ajax({
            url: url,
            dataType:"json",
            type:"get",
            success:function(data){
                $("#userId").val(data._embedded.teacher.id);
                $("#checkTime").val(data.checkTime);
                $("#item").val(data.item);
                $("#result").val(data.result);
            }, error:function(e){
                alert("出错了...");
            }
        });
    }
    $('.date-picker').datepicker({
        autoclose: true,
        format: 'yyyy-mm-dd'
    });
    $("#btn-post-check").click(function(){
        var formData = $("#form-add-check").serializeArray();
        var json = viewer.array2json(formData);
        if(url){
            viewer.editRest(url, json,function(){
                viewer.loadView(container, contextPath + "/admin/check.html", contextPath + "/admin/js/check.js");
            });
        }else{
            viewer.addRest(bkPath + "/check", json, function(){
                viewer.loadView(container, contextPath + "/admin/check.html", contextPath + "/admin/js/check.js");
            });
        }
    });
}