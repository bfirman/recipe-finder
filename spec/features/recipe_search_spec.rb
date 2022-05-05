# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Recipe Search', type: :feature do
  scenario 'User enters valid ingredients and searches for recipes' do
    image_size = Recipe::DEFAULT_IMAGE_SIZE.split('x')

    visit root_path

    fill_in 'recipe_search[search]', with: 'all-spice'
    click_button 'Search Recipes'

    expect(page).to have_css('div.recipe-card', count: 5)
    expect(page).to have_css('div.pagination')
    expect(page).to_not have_css('h2#no-results')
    expect(page).to have_css("img[width=\"#{image_size[0]}\"]", count: 5)
    expect(page).to have_css("img[height=\"#{image_size[0]}\"]", count: 5)
  end

  scenario 'User enters ingredients that have no mateches and searches for recipes' do
    visit root_path

    fill_in 'recipe_search[search]', with: 'no-spice'
    click_button 'Search Recipes'

    expect(page).to_not have_css('div.recipe-card')
    expect(page).to_not have_css('div.pagination')
    expect(page).to have_css('h2#no-results')
  end
end
