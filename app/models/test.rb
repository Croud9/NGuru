class Test < ApplicationRecord
    def self.name_test_by_category(category)
        Test.where(category: category).order('title ASC')
    end
end
