# frozen_string_literal: true

class RecipeSearch
  def initialize(search_params)
    @search_params = search_params.map { |param| "%#{param}%" } # Array
    @where_statement = ''
    @values = {}
  end

  def call
    build_where_statement
    Recipe.select(:title, :ingredients, :image).where(@where_statement, @values)
  end

  def build_where_statement
    @search_params.each_with_index do |param, i|
      ingredient = "ingredient#{i}"
      @where_statement = "#{@where_statement} ingredients LIKE :#{ingredient}"
      @where_statement = "#{@where_statement} AND" if i < @search_params.count - 1
      @values[ingredient.to_sym] = param
    end
  end
end
