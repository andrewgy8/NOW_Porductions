require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  def setup
    @base_title = "| NOW Productions"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home #{@base_title}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About #{@base_title}"

  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact #{@base_title}"

  end

  test "should get portfolio" do
    get :portfolio
    assert_response :success
    assert_select "title", "Portfolio #{@base_title}"

  end

end
