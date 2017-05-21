/**
 * Created by alleyz on 2017/5/17 0017.
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
                $("#accountPeriod").val(data.accountPeriod);
                $("#basePay").val(data.basePay);
                $("#bonus").val(data.bonus);
                $("#allowance").val(data.allowance);
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
    $("#btn-post-salary").click(function(){
        var formData = $("#form-add-salary").serializeArray();
        var salary=eval($("#basePay").val()) + eval($("#bonus").val()) + eval($("#allowance").val());
        formData[formData.length] = {"name":"salary", "value":salary}
        var json = viewer.array2json(formData);
        if(url){
            viewer.editRest(url, json,function(){
                viewer.loadView(container, contextPath + "/admin/salary.html", contextPath + "/admin/js/salary.js");
            });
        }else{
            viewer.addRest(bkPath + "/salary", json, function(){
                viewer.loadView(container, contextPath + "/admin/salary.html", contextPath + "/admin/js/salary.js");
            });
        }
    });
}