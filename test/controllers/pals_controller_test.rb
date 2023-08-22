require "test_helper"

class PalsControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  # test "the truth" do
  #   assert true
  # end
=======
  test "should get new" do
    get pals_new_url
    assert_response :success
  end
>>>>>>> f4300e195638baddd73603ec23f97f7744118c1a
end
