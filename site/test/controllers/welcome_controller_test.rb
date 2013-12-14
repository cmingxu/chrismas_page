# -*- encoding : utf-8 -*-
require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get question" do
    get :question
    assert_response :success
  end

  test "should get summary" do
    get :summary
    assert_response :success
  end

end
