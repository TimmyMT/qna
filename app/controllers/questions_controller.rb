class QuestionsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_question, only: [:show, :edit, :update, :destroy, :select_best_answer]

  def index
    @questions = Question.all
  end

  def show
    @answer = Answer.new(user: current_user)
  end

  def new
    @question = current_user.questions.new
  end

  def select_best_answer
    @answer = Answer.find(params[:answer_id])
    if question_author?
      @question.update(best_answer_id: @answer.id)
      @question.save!
      # redirect_to @question
    end
  end

  def create
    @question = current_user.questions.new(question_params)
    if @question.save
      redirect_to @question, notice: 'Your question successfully created.'
    else
      render :new
    end
  end

  def edit

  end

  def update
    @question.update(question_params) if question_author?
  end

  def destroy
    if question_author?
      @question.destroy
      redirect_to questions_path, notice: 'Question successfully deleted'
    end
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

  def question_author?
    current_user&.creator?(@question)
  end

  def question_params
    params.require(:question).permit(:title, :body)
  end

end
