class AnswersController < ApplicationController
  before_action :get_question, only: [:index, :create]

  def index
    @answers = @question.answers
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = @question.answers.create(answer_params)
    
    if @answer.save
      redirect_to @question
    else
      render :new
    end
  end


  private

  def get_question 
    @question = Question.find(params[:question_id])
  end

  def answer_params
    params.require(:answer).permit(:title, :body)
  end
end
