function __init(data,opt){
    if(data){
        $.ajax({
            url: data,
            dataType:"json",
            type:"get",
            success:function(data){
                $("#userCode").val(data.userCode);
                $("#loginCode").val(data.loginCode);
                $("#userName").val(data.userName);
                $("#dep").val(data.dep);
                $("#sex").val(data.sex);
                $("#birthday").val(data.birthday);
                $("#edu").val(data.edu);
                $("#entryTime").val(data.entryTime);
                $("#phone").val(data.phone);
                $("#address").val(data.address);
                $("#password").val(data.password);
                $("#isAdmin").val(data.isAdmin);
            }, error:function(e){
                alert("出错了...");
            }
        });
    }
    $('.date-picker').datepicker({
        autoclose: true,
        todayHighlight: true
    });

    $("#btn-post-user").click(function(){
        var json = viewer.array2json($("#form-add-user").serializeArray());
        if(data){
            viewer.editRest(data, json,function(){
                if(opt){
                    viewer.loadView(container, contextPath + "/admin/manager.html", contextPath + "/admin/js/manager.js");
                }else{
                    viewer.loadView(container, contextPath + "/admin/teachers.html", contextPath + "/admin/js/teachers.js");
                }

            });
        }else{
            viewer.addRest(bkPath + "/teacher", json, function(){
                if(opt){
                    viewer.loadView(container, contextPath + "/admin/manager.html", contextPath + "/admin/js/manager.js");
                }else{
                    viewer.loadView(container, contextPath + "/admin/teachers.html", contextPath + "/admin/js/teachers.js");
                }
            });
        }
    });
}
