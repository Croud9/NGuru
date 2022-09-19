# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!([
    { name: 'Greg', email: 'Gregor@ya.ru' },
    { name: 'Repa', email: 'Reparsy@ya.ru' },
    { name: 'Fuggy', email: 'Fuggynu@ya.ru' }
    ])

tests = Test.create!([
    { title: 'Python', level: 2 },
    { title: 'Rails', level: 2 },
    { title: 'Ruby', level: 2 },
    { title: 'HTML', level: 1 },
    { title: 'CSS', level: 1 },
    { title: 'C++', level: 3 },
    { title: 'ООП' }
    ])

Category.create!([
    { title: "Frontend" }
    { title: "Backend" }
    { title: "Machine Learning" }
    { title: "Software" }
    { title: "Base" }
    ])
    
questions = Question.create!([
    { title: 'Python Quest', test_id: tests[0].id },
    { title: 'Rails Quest', test_id: tests[1].id },
    { title: 'Ruby Quest', test_id: tests[2].id },
    { title: 'HTML Quest', test_id: tests[3].id },
    { title: 'CSS Quest', test_id: tests[4].id },
    { title: 'C++ Quest', test_id: tests[5].id },
    { title: 'ООП Quest', test_id: tests[6].id }
    ])

Answer.create!([
    { title: 'Python Answer correct', question_id: questions[0].id, correct: True },
    { title: 'Python Answer incorrect', question_id: questions[0].id },
    { title: 'Rails Answer correct', question_id: questions[1].id, correct: True },
    { title: 'Rails Answer incorrect', question_id: questions[1].id },
    { title: 'Ruby Answer correct', question_id: questions[2].id, correct: True },
    { title: 'Ruby Answer incorrect', question_id: questions[2].id },
    { title: 'HTML Answer correct', question_id: questions[3].id, correct: True },
    { title: 'HTML Answer incorrect', question_id: questions[3].id },
    { title: 'CSS Answer correct', question_id: questions[4].id, correct: True },
    { title: 'CSS Answer incorrect', question_id: questions[4].id },
    { title: 'C++ Answer correct', question_id: questions[5].id, correct: True },
    { title: 'C++ Answer incorrect', question_id: questions[5].id },
    { title: 'ООП Answer correct', question_id: questions[6].id, correct: True },
    { title: 'ООП Answer incorrect', question_id: questions[6].id }
    ])



