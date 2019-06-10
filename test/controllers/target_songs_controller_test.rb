require 'test_helper'

class TargetSongsControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get target_songs_list_url
    assert_response :success
  end

end
