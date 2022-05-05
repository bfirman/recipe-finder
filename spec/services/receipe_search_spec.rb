# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RecipeSearch, type: :model do
  describe '#call' do
    let(:all_recipe_search) { ['all-spice'] }
    let(:half_recipe_search) { ['half-spice'] }
    let(:no_recipe_search) { ['no-spice'] }
    let(:invalid_recipe_search) { ['$%^$%£^456'] }
    let(:all_recipe_search_null_values) { ['half-spice', ''] }

    it 'should return 10 recipes' do
      search = RecipeSearch.new(all_recipe_search)
      expect(search.call.count(:title)).to eq 10
    end

    it 'should return 5 recipes' do
      search = RecipeSearch.new(half_recipe_search)
      expect(search.call.count(:title)).to eq 5
    end

    it 'should return 0 recipes' do
      search = RecipeSearch.new(no_recipe_search)
      expect(search.call.count(:title)).to eq 0

      search = RecipeSearch.new(invalid_recipe_search)
      expect(search.call.count(:title)).to eq 0
    end

    it 'should not change the result with null elements' do
      search = RecipeSearch.new(half_recipe_search)
      search_with_null = RecipeSearch.new(all_recipe_search_null_values)
      expect(search_with_null.call.count(:title)).to eq search.call.count(:title)
    end
  end
end
