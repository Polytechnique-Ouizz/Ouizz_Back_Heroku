require 'test_helper'

class OuizzusersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ouizzuser = ouizzusers(:one)
  end

  test "should get index" do
    get ouizzusers_url
    assert_response :success
  end

  test "should get new" do
    get new_ouizzuser_url
    assert_response :success
  end

  test "should create ouizzuser" do
    assert_difference('Ouizzuser.count') do
      post ouizzusers_url, params: { ouizzuser: { email: @ouizzuser.email, password: @ouizzuser.password, phone: @ouizzuser.phone, username: @ouizzuser.username } }
    end

    assert_redirected_to ouizzuser_url(Ouizzuser.last)
  end

  test "should show ouizzuser" do
    get ouizzuser_url(@ouizzuser)
    assert_response :success
  end

  test "should get edit" do
    get edit_ouizzuser_url(@ouizzuser)
    assert_response :success
  end

  test "should update ouizzuser" do
    patch ouizzuser_url(@ouizzuser), params: { ouizzuser: { email: @ouizzuser.email, password: @ouizzuser.password, phone: @ouizzuser.phone, username: @ouizzuser.username } }
    assert_redirected_to ouizzuser_url(@ouizzuser)
  end

  test "should destroy ouizzuser" do
    assert_difference('Ouizzuser.count', -1) do
      delete ouizzuser_url(@ouizzuser)
    end

    assert_redirected_to ouizzusers_url
  end
end
