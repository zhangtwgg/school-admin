/**
 * Created by alleyz on 2017/5/16 0016.
 *
 */

var viewer = {};

viewer.loadView = function($container, jsp, js){
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
                getJs(js);
            }
        },error:function(){

        }
    });
};

function getJs(js) {
    $.getScript(js);
}
