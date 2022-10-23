class QuestionsController < ApplicationController
  before_action :find_test, only: %i[index new create]
  before_action :find_question, only: %i[show destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_question_not_found

  def index
  end

  def new
  end

  def show
  end

  def create
    question = @test.questions.new(question_params)

    if question.save
      redirect_to question
    else
      render plain: 'Error: Question not save'
    end
  end

  def destroy
    @question.destroy
    render plain: "Question successfully deleted"
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def find_question
    @question = Question.find(params[:id])
  end

  def rescue_question_not_found
    render plain: "Question not found!"
  end

  def question_params
    params.require(:question).permit(:body)
  end
end
