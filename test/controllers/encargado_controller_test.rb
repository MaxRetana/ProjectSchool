require "test_helper"

class EncargadoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get encargado_index_url
    assert_response :success
  end
end
