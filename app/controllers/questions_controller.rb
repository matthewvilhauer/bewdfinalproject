class QuestionsController < ApplicationController
  def index
    @questions = Question.all
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
