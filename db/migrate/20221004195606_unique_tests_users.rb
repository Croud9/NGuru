class UniqueTestsUsers < ActiveRecord::Migration[7.0]
  def change
    remove_index :tests_users, name: "index_tests_users_on_user_id_and_test_id"
    add_index :tests_users, [:user_id, :test_id], unique: true 
  end
end
