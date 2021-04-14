# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
    $('#payment_student_adm').autocomplete
        source: $('#payment_student_adm').data('autocomplete-source')
        # source: ['foo', 'food', 'four']