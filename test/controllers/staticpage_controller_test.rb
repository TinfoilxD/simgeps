require 'test_helper'

class StaticpageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get staticpage_home_url
    assert_response :success
  end

  test "should get cio_raffle" do
    get staticpage_cio_raffle_url
    assert_response :success
  end

  test "should get sim_raffle" do
    get staticpage_sim_raffle_url
    assert_response :success
  end

end
