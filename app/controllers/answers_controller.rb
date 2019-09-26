class AnswersController < ApplicationController
  include Voted

  before_action :set_answer, only: [:update, :destroy, :select_best]
  before_action :answer_author?, only: [:update, :destroy]

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    @answer.user = current_user
    @answer.save

    # respond_to do |format|
    #   if @answer.save
    #     format.json { render json: @answer }
    #   else
    #     format.json do
    #       render json: @answer.errors.full_messages, status: :unprocessable_entity
    #     end
    #   end
    # end
  end

  def update
    @answer.update(answer_params)
    @question = @answer.question
  end

  def select_best
    if current_user&.creator?(@answer.question)
      @answer.switch_best
    end
  end

  def destroy
    @answer.destroy
  end

  private

  def answer_author?
    unless current_user&.creator?(@answer)
      redirect_to @answer.question, alert: 'Not enough permissions'
    end
  end

  def set_answer
    @answer = Answer.find(params[:id])
  end

  def answer_params
    params.require(:answer).permit(:body, files: [], links_attributes: [:name, :url, :_destroy])
  end

end
