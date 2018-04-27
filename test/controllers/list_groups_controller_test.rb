require 'test_helper'

class ListGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list_group = list_groups(:one)
  end

  test "should get index" do
    get list_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_list_group_url
    assert_response :success
  end

  test "should create list_group" do
    assert_difference('ListGroup.count') do
      post list_groups_url, params: { list_group: { group_id: @list_group.group_id, student_id: @list_group.student_id } }
    end

    assert_redirected_to list_group_url(ListGroup.last)
  end

  test "should show list_group" do
    get list_group_url(@list_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_list_group_url(@list_group)
    assert_response :success
  end

  test "should update list_group" do
    patch list_group_url(@list_group), params: { list_group: { group_id: @list_group.group_id, student_id: @list_group.student_id } }
    assert_redirected_to list_group_url(@list_group)
  end

  test "should destroy list_group" do
    assert_difference('ListGroup.count', -1) do
      delete list_group_url(@list_group)
    end

    assert_redirected_to list_groups_url
  end
end
