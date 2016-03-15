require 'test_helper'

class BlogControllerTest < ActionController::TestCase
  test "should get mypage" do
    get :mypage
    assert_response :success
  end

end
