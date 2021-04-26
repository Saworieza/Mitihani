# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# jQuery ->
#   students = $('#result_student_id').html()
#   console.log(students)
#   $('#result_stream_id').change ->
#     stream = $('#result_stream_id :selected').text()
#     options = $(students).filter("optgroup[label=#{stream}]").html()
#     console.log(options)
#     if options
#       $('#result_student_id').html(options)
#     else
#       $('#result_student_id').empty()


jQuery ->
  $('#result_student_id').parent().hide()
  students = $('#result_student_id').html()
  console.log(students)
  $('#result_stream_id').change ->
    stream = $('#result_stream_id :selected').text()
    options = $(students).filter("optgroup[label=#{stream}]").html()
    console.log(options)
    if options
      $('#result_student_id').html(options)
      $('#result_student_id').parent().show()      
    else
      $('#result_student_id').empty()
      $('#result_student_id').parent().hide()