class CategoriesController < ApplicationController
  def details
    @category = Category.find(params[:id])
end
end
