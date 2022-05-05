# frozen_string_literal: true

class RecipeSearchController < ApplicationController
  before_action :shape_search, only: :show
  before_action :ensure_search, only: :show

  def new; end

  def create
    redirect_to recipe_search_results_path({ recipe_search: { search: recipe_search_params[:search] } })
  end

  def show
    search = RecipeSearch.new(@search_params)
    @recipes = search.call.paginate(page: params[:page], per_page: 5)
  end

  private

  def recipe_search_params
    params.require(:recipe_search).permit(:search)
  end

  def ensure_search
    return unless @search_params.empty?

    flash[:danger] = 'Please enter ingredients to search with'
    redirect_to root_path
  end

  def shape_search
    @search_params = recipe_search_params[:search].to_s.split("\n")
  end
end
