class Answer < ApplicationRecord
  belongs_to :question

  scope :correct_answers, -> { where(correct: true) }

  validates :body, presence: true

  validates :validate_max_answer, on: :create

  def validate_max_answer
    errors.add(:base, 'You can have up to 4 answers') if question.answers.count > 4
  end
end
