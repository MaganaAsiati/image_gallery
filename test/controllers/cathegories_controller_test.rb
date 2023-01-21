require "test_helper"

class CathegoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cathegory = cathegories(:one)
  end

  test "should get index" do
    get cathegories_url
    assert_response :success
  end

  test "should get new" do
    get new_cathegory_url
    assert_response :success
  end

  test "should create cathegory" do
    assert_difference("Cathegory.count") do
      post cathegories_url, params: { cathegory: { description: @cathegory.description, icon: @cathegory.icon, title: @cathegory.title, user_id: @cathegory.user_id } }
    end

    assert_redirected_to cathegory_url(Cathegory.last)
  end

  test "should show cathegory" do
    get cathegory_url(@cathegory)
    assert_response :success
  end

  test "should get edit" do
    get edit_cathegory_url(@cathegory)
    assert_response :success
  end

  test "should update cathegory" do
    patch cathegory_url(@cathegory), params: { cathegory: { description: @cathegory.description, icon: @cathegory.icon, title: @cathegory.title, user_id: @cathegory.user_id } }
    assert_redirected_to cathegory_url(@cathegory)
  end

  test "should destroy cathegory" do
    assert_difference("Cathegory.count", -1) do
      delete cathegory_url(@cathegory)
    end

    assert_redirected_to cathegories_url
  end
end
