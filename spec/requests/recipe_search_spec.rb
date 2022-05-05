# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Recipe Search', type: :request do
  it 'should render recipe_search#new for root' do
    get root_path
    expect(response).to have_http_status(:ok)
    expect(response).to render_template(:new)
  end

  it 'should render recipe_search#show' do
    post recipe_search_path({ recipe_search: { search: 'sugar' } })
    expect(response).to have_http_status('302')

    follow_redirect!

    expect(response).to render_template(:show)
  end

  it 'should render recipe_search#new if no search is empty' do
    post recipe_search_path({ recipe_search: { search: '' } })
    expect(response).to have_http_status('302')

    follow_redirect!
    follow_redirect!

    expect(response).to render_template(:new)
  end
end
