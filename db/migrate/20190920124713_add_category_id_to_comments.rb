class AddCategoryIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :category_id, :integer
  end
end
