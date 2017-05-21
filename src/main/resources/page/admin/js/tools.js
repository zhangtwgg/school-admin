/**
 * Created by alleyz on 2017/5/16 0016.
 *
 */
var isAdmin= false;
var viewer = {};

viewer.loadView = function($container, jsp, js, dataUrl, opt){
    if(!$container  || !jsp) {
        return;
    }
    $.ajax({
        url : jsp,
        type:"get",
        dataType:"html",
        success:function (data) {
            $container.html(data);
            if(js){
                getJs(js,function(){
                    try{
                        __init(dataUrl, opt);
                    }catch(e){}
                });

            }
        },error:function(){

        }
    });
};

viewer.delByRest = function(url, callback){
    $.ajax({
        url:url,
        type:"delete",
        success:function(data){
            callback(data);
        },error:function(e){
            alert("删除出错了");
        }
    });

}

viewer.addRest = function(url, data, callback){
    $.ajax({
        url:url,
        type:"POST",
        data:data,
        contentType: "application/json; charset=utf-8",
        success:function(data){
            callback(data);
        },error:function(e){
            alert("添加出错了");
        }
    });
}
viewer.editRest = function(url, data, callback){
    $.ajax({
        url:url,
        type:"PUT",
        data:data,
        contentType: "application/json; charset=utf-8",
        success:function(data){
            callback(data);
        },error:function(e){
            alert("修改出错了");
        }
    });
};
viewer.array2json=function(arr){
    var obj={};
    $.each(arr, function(idx, d){
        obj[d.name]=d.value;
    });
    return JSON.stringify(obj);
};
viewer.teacherOpts=function(){
    var html = "";
    $.ajax({
        url: bkPath + "/teacher",
        type:"get",
        async:false,
        dataType:"json",
        success:function(data){
            var list = data._embedded.teacher;
            for(var i = 0; i < list.length; i++){
                html += "<option value='" + list[i].id + "'>" +
                    list[i].userCode + ":" + list[i].name +
                    "</option>";
            }
        },error:function(e){
            alert("加载用户下拉框出粗");
        }
    });
    return html;
};
function getJs(js, callback) {
    $.getScript(js,callback);
}
