class AddUniqueIndexToBookmarks < ActiveRecord::Migration[8.0]
  def change
    add_index :bookmarks, [ :recipe_id, :category_id ], unique: true
  end
end
