// require('./vendors/moment');
var moment = require('moment');
require('./vendors/jquery.validate.min.js');
require('./vendors/bootstrap.min.js');
require('./maps');
require('./sliders');
require('./drawers');
require('./vendors/daterangepicker');

$(document).ready(function(){


    // $( "#sf-contact-form" ).validate();

    // $( "#sf-contact-form" ).validate({
    //         rules: {
    //         "hiddenRecaptcha": {

    //             required: function () {
    //                 console.log( "response="+grecaptcha.getResponse() );
    //                 if (grecaptcha.getResponse() == '') {
    //                     return true;
    //                 } else {
    //                     return false;
    //                 }
    //             }
    //         }
    //     }  
    // });


    $('.date-field').attr('autocomplete', 'new').daterangepicker({
        locale: {
            format: 'DD/MM/YYYY'
        },
        separator: " : ",
        singleDatePicker: true,
        showDropdowns: true,
        autoUpdateInput: false,
    }).on('cancel.daterangepicker', function (ev, picker) {
        $(this).val('');
    }).on('apply.daterangepicker', function (ev, picker) {
        $(this).val(picker.startDate.format('DD/MM/YYYY'));
        $(this).blur();
    });




    $('.grupo-form-modal-btn').on('click', function(e){
        e.preventDefault();
        $('#grupo-form-modal').modal('show');

    })


    // $('.dfp-subscribe-modal-btn').on('click', function(e){
    //     e.preventDefault();
    //     $('#dfp-subscribe-modal').modal('show');
    // })

});