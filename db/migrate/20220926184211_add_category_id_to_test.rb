class AddCategoryIdToTest < ActiveRecord::Migration[7.0]
  def change
    add_column :tests, :category_id, :integer
  end
end
