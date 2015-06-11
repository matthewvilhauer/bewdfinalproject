class QuestionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @questions = Question.search_for_survey(params[:q])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(params[:question])
    if @question.save
      redirect_to @question, notice: "Successfully created question."
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update_attributes(question_params)
      redirect_to @question, notice: "Successfully updated question."
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_url, notice: "Successfully destroyed question."
  end

  private

  def question_params
    params.require(:question).permit(:question_code, :inquiry, answer_attributes: [:content, :_destroy])
  end

end
