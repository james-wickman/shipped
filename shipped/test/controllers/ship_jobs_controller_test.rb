require 'test_helper'

class ShipJobsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ship_jobs_index_url
    assert_response :success
  end

  test "should get create" do
    get ship_jobs_create_url
    assert_response :success
  end

  test "should get destroy" do
    get ship_jobs_destroy_url
    assert_response :success
  end

end
