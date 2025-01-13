class BookmarksController < ApplicationController
  before_action :set_category, only: [ :new, :create, :destroy ]
  def new
    @bookmark = Bookmark.new
    @recipes = Recipe.all
  end

  def create
    @bookmark = @category.bookmarks.build(bookmark_params)
    if @bookmark.save
      redirect_to @category, notice: "Bookmark was successfully added."
    else
      render :new
    end
  end

  def destroy
    @bookmark = @category.bookmarks.find(params[:id])
    @bookmark.destroy
    redirect_to @category, notice: "Bookmark was successfully removed."
  end
  private
  def set_category
    @category = Category.find(params[:category_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:recipe_id, :comment)
  end
end
