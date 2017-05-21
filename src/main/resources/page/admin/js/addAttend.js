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
                $("#attendMonth").val(data.attendMonth);
                $("#attendNormal").val(data.attendNormal);
                $("#earlyCount").val(data.earlyCount);
                $("#sickCount").val(data.sickCount);
                $("#leaveCount").val(data.leaveCount);
                $("#absentCount").val(data.absentCount);lateCount
                $("#lateCount").val(data.lateCount);
            }, error:function(e){
                alert("出错了...");
            }
        });
    }
    $('.date-picker').datepicker({
        autoclose: true,
        format: 'yyyy-mm',
        todayBtn: false,
        minViewMode:1,
        startView:1
    });
    $("#btn-post-attend").click(function(){
        var formData = $("#form-add-attend").serializeArray();
        var json = viewer.array2json(formData);
        if(url){
            viewer.editRest(url, json,function(){
                viewer.loadView(container, contextPath + "/admin/attend.html", contextPath + "/admin/js/attend.js");
            });
        }else{
            viewer.addRest(bkPath + "/attend", json, function(){
                viewer.loadView(container, contextPath + "/admin/attend.html", contextPath + "/admin/js/attend.js");
            });
        }
    });
}