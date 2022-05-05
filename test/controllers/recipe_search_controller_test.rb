# frozen_string_literal: true

require 'test_helper'

class RecipeSearchControllerTest < ActionDispatch::IntegrationTest
  test 'should get create' do
    get recipe_search_create_url
    assert_response :success
  end

  test 'should get new' do
    get recipe_search_new_url
    assert_response :success
  end
end
