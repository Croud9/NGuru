class User < ApplicationRecord
    def test_by_level(level)
        Test.joins('JOIN user_tests ON user_tests.test_id = tests.id')
                .where(level: level, user_tests: { user_id: id })
    end
end

# Создайте инстанс-метод в модели User, 
# который принимает в качестве аргумента значение 
# уровня сложности и возвращает список всех Тестов, 
# которые проходит или когда-либо проходил Пользователь 
# на этом уровне сложности