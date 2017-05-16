/**
 * Created by alleyz on 2017/5/16 0016.
 *
 */
jQuery(function($){
    var id = "sample-table-2";
    var oTable1 = $('#' + id).dataTable( {
        // "bProcessing": true,
        // "bServerSide": true,
        // "sPaginationType": "full_numbers",
        // "sAjaxSource": "./server_processing.PHP",
        // "aoColumns" :[
        //     {'sName' : ""},
        //     {'sName' : ""},
        //     {'sName' : ""},
        //     {'sName' : ""},
        //     {'sName' : ""},
        //     {'sName' : ""},
        //     {'sName' : ""},
        //     {'sName' : ""},
        //     {'sName' : ""},
        //     {'sName' : ""},
        //     {'sName' : ""}
        // ]
    });
    $("#" + id + "_wrapper > div > .col-xs-6:first").remove();
    $("#" + id + "_filter").css("text-align","left");
});
