class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :body, null: false
      t.integer :test_id

      t.timestamps
    end
  end
end
