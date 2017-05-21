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
                $("#medMonth").val(data.medMonth);
                $("#payCount").val(data.payCount);
                $("#payTime").val(data.payTime);
            }, error:function(e){
                alert("出错了...");
            }
        });
    }
    $('#medMonth').datepicker({
        autoclose: true,
        format: 'yyyy-mm',
        todayBtn: false,
        minViewMode:1,
        startView:1
    });
    $("#payTime").datepicker({
        autoclose: true,
        format: 'yyyy-mm-dd'
    });
    $("#btn-post-medical").click(function(){
        var formData = $("#form-add-medical").serializeArray();
        var json = viewer.array2json(formData);
        if(url){
            viewer.editRest(url, json,function(){
                viewer.loadView(container, contextPath + "/admin/medical.html", contextPath + "/admin/js/medical.js");
            });
        }else{
            viewer.addRest(bkPath + "/medical", json, function(){
                viewer.loadView(container, contextPath + "/admin/medical.html", contextPath + "/admin/js/medical.js");
            });
        }
    });
}