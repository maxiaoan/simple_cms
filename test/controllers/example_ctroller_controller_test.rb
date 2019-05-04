require 'test_helper'

class ExampleCtrollerControllerTest < ActionDispatch::IntegrationTest
  test "should get example" do
    get example_ctroller_example_url
    assert_response :success
  end

end
