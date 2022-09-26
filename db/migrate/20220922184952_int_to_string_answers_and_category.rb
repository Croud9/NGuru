class IntToStringAnswersAndCategory < ActiveRecord::Migration[7.0]
  def change
    change_column :categories, :title, :string 
    change_column :answers, :body, :string 
  end
end
