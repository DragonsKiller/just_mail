require 'test_helper'

class PostOfficesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_office = post_offices(:one)
  end

  test "should get index" do
    get post_offices_url
    assert_response :success
  end

  test "should get new" do
    get new_post_office_url
    assert_response :success
  end

  test "should create post_office" do
    assert_difference('PostOffice.count') do
      post post_offices_url, params: { post_office: { post_office_info: @post_office.post_office_info, postcode: @post_office.postcode } }
    end

    assert_redirected_to post_office_url(PostOffice.last)
  end

  test "should show post_office" do
    get post_office_url(@post_office)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_office_url(@post_office)
    assert_response :success
  end

  test "should update post_office" do
    patch post_office_url(@post_office), params: { post_office: { post_office_info: @post_office.post_office_info, postcode: @post_office.postcode } }
    assert_redirected_to post_office_url(@post_office)
  end

  test "should destroy post_office" do
    assert_difference('PostOffice.count', -1) do
      delete post_office_url(@post_office)
    end

    assert_redirected_to post_offices_url
  end
end
