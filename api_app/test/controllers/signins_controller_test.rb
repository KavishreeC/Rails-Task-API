require "test_helper"

class SigninsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @signin = signins(:one)
  end

  test "should get index" do
    get signins_url, as: :json
    assert_response :success
  end

  test "should create signin" do
    assert_difference('Signin.count') do
      post signins_url, params: { signin: { email: @signin.email, name: @signin.name } }, as: :json
    end

    assert_response 201
  end

  test "should show signin" do
    get signin_url(@signin), as: :json
    assert_response :success
  end

  test "should update signin" do
    patch signin_url(@signin), params: { signin: { email: @signin.email, name: @signin.name } }, as: :json
    assert_response 200
  end

  test "should destroy signin" do
    assert_difference('Signin.count', -1) do
      delete signin_url(@signin), as: :json
    end

    assert_response 204
  end
end
