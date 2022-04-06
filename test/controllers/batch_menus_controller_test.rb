require 'test_helper'

class BatchMenusControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  setup do
    sign_in users(:regular)
  end

  test 'redirected if not logged in' do
    sign_out :user
    get new_batch_menu_path
    assert_response :redirect
  end
end
