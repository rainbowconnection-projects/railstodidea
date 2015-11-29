class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /categories
  # GET /categories.json
  def index
  end

  private
  def set_category
    @category = Category.find_by(id: params[:id])
  end

end
