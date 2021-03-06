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


    // Stop | Start video on close | open
    $('#vid-modal').on('hidden.bs.modal', function(){
        $('#vid-modal-frame')[0].contentWindow.postMessage('{"event":"command","func":"' + 'stopVideo' + '","args":""}', '*');    
    })

    $('#vid-modal').on('shown.bs.modal', function(){
        $('#vid-modal-frame')[0].contentWindow.postMessage('{"event":"command","func":"' + 'playVideo' + '","args":""}', '*');    
    })


    $('#vid-banner-btn').on('click', function(){
        $(this).parents('#main-banner').addClass('vid-play');

        $('#vid-modal-frame')[0].contentWindow.postMessage('{"event":"command","func":"' + 'playVideo' + '","args":""}', '*');    

    })





});