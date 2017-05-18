/**
 * Created by alleyz on 2017/5/17 0017.
 */
jQuery(function($) {
    $('.date-picker').datepicker({
        autoclose: true,
        format: 'yyyy-mm',
        todayBtn: false,
        minViewMode:1,
        startView:1
    });
});