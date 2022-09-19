class User < ApplicationRecord
    def info_test(level)
        Test.where(level: level)
    end
end
