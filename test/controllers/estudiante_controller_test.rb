require "test_helper"

class EstudianteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get estudiante_index_url
    assert_response :success
  end
end
