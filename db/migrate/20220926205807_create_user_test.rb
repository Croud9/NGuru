class CreateUserTest < ActiveRecord::Migration[7.0]
  def change
    create_table :user_tests do |t|
      t.integer :user_id
      t.integer :test_id

      t.timestamps
    end
  end
end
