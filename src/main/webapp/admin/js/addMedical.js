/**
 * Created by alleyz on 2017/5/17 0017.
 */
jQuery(function($) {
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
});