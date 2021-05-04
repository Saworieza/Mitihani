require 'test_helper'

class SubjectResultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subject_result = subject_results(:one)
  end

  test "should get index" do
    get subject_results_url
    assert_response :success
  end

  test "should get new" do
    get new_subject_result_url
    assert_response :success
  end

  test "should create subject_result" do
    assert_difference('SubjectResult.count') do
      post subject_results_url, params: { subject_result: { exam_id: @subject_result.exam_id, stream_id: @subject_result.stream_id, subject_id: @subject_result.subject_id } }
    end

    assert_redirected_to subject_result_url(SubjectResult.last)
  end

  test "should show subject_result" do
    get subject_result_url(@subject_result)
    assert_response :success
  end

  test "should get edit" do
    get edit_subject_result_url(@subject_result)
    assert_response :success
  end

  test "should update subject_result" do
    patch subject_result_url(@subject_result), params: { subject_result: { exam_id: @subject_result.exam_id, stream_id: @subject_result.stream_id, subject_id: @subject_result.subject_id } }
    assert_redirected_to subject_result_url(@subject_result)
  end

  test "should destroy subject_result" do
    assert_difference('SubjectResult.count', -1) do
      delete subject_result_url(@subject_result)
    end

    assert_redirected_to subject_results_url
  end
end
