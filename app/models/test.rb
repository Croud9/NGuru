class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User' 
  has_many :tests_users, :questions
  has_many :users, through: :tests_users

  def self.title_test_by_category(category)
    Test.joins('JOIN categories ON categories.id = tests.category_id')
          .where(categories: { title: category }).order(title: :desc).pluck(:title)
  end
end
 