# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# 5.times do |i|
#     Product.create(name: "Product ##{i}", description: "A product.")    
# end

User.delete_all
Test.delete_all
Category.delete_all
Question.delete_all
Answer.delete_all
UserTest.delete_all

users = User.create!([
    { name: 'Greg', email: 'Gregor@ya.ru' },
    { name: 'Repa', email: 'Reparsy@ya.ru' },
    { name: 'Fuggy', email: 'Fuggynu@ya.ru' }
    ])
    
categories = Category.create!([
    { title: "Frontend" },
    { title: "Backend" },
    { title: "Machine Learning" },
    { title: "Software" },
    { title: "Base" }
    ])

tests = Test.create!([
    { title: 'Python', level: 2, category_id: categories[2].id },
    { title: 'Rails', level: 2, category_id: categories[1].id },
    { title: 'Ruby', level: 2, category_id: categories[1].id },
    { title: 'HTML', level: 1, category_id: categories[0].id },
    { title: 'CSS', level: 1, category_id: categories[0].id },
    { title: 'C++', level: 3, category_id: categories[3].id },
    { title: 'ООП', category_id: categories[4].id }
    ])
  
questions = Question.create!([
    { body: 'Python Quest', test_id: tests[0].id },
    { body: 'Rails Quest', test_id: tests[1].id },
    { body: 'Ruby Quest', test_id: tests[2].id },
    { body: 'HTML Quest', test_id: tests[3].id },
    { body: 'CSS Quest', test_id: tests[4].id },
    { body: 'C++ Quest', test_id: tests[5].id },
    { body: 'ООП Quest', test_id: tests[6].id }
    ])

Answer.create!([
    { body: 'Python Answer correct', question_id: questions[0].id, correct: true },
    { body: 'Python Answer incorrect', question_id: questions[0].id },
    { body: 'Rails Answer correct', question_id: questions[1].id, correct: true },
    { body: 'Rails Answer incorrect', question_id: questions[1].id },
    { body: 'Ruby Answer correct', question_id: questions[2].id, correct: true },
    { body: 'Ruby Answer incorrect', question_id: questions[2].id },
    { body: 'HTML Answer correct', question_id: questions[3].id, correct: true },
    { body: 'HTML Answer incorrect', question_id: questions[3].id },
    { body: 'CSS Answer correct', question_id: questions[4].id, correct: true },
    { body: 'CSS Answer incorrect', question_id: questions[4].id },
    { body: 'C++ Answer correct', question_id: questions[5].id, correct: true },
    { body: 'C++ Answer incorrect', question_id: questions[5].id },
    { body: 'ООП Answer correct', question_id: questions[6].id, correct: true },
    { body: 'ООП Answer incorrect', question_id: questions[6].id }
    ])

UserTest.create!([
    { user_id: users[0].id, test_id: tests[0].id },
    { user_id: users[0].id, test_id: tests[1].id },
    { user_id: users[0].id, test_id: tests[2].id },
    { user_id: users[1].id, test_id: tests[3].id },
    { user_id: users[1].id, test_id: tests[4].id },
    { user_id: users[2].id, test_id: tests[5].id }
    ])
