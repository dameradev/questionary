class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :update, :destoy, :edit]

  def index
    @questions = Question.all
  end

  def show
    @answer = Answer.new
    @answers = Answer.where(question_id: @question.id).order(cached_votes_up: :desc)

  end

  def edit
  end

  def new
  end
  def address
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end
end
