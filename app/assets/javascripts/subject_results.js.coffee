# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  streams = $('#subject_result_stream_id').html()
#   console.log(streams)
  $('#subject_result_classroom_id').change ->
    classroom = $('#subject_result_classroom_id :selected').text()
    options = $(streams).filter("optgroup[label=#{classroom}]").html()
    # console.log(options)
    if options
      $('#subject_result_stream_id').html(options)
      $('#subject_result_stream_id').parent().show()      
    else
      $('#subject_result_stream_id').empty()
      $('#subject_result_stream_id').parent().hide()