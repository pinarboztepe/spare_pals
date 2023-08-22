require "test_helper"

class PalsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get new" do
    get pals_new_url
    assert_response :success
  end
end
