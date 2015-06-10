class AnswersController < ApplicationController

  def index
    @qanswers = Answer.search_for(params[:q])
  end

  def new
    @answer = Answer.new
  end  

  def create
    @answer = Answer.new(params[:answer])
    if @answer.save
      redirect_to @answer, notice: "Successfully created answer."
    else
      render :new
    end
  end

  def show
    @answer = Answer.find(params[:id])
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def update
    @answer = Answer.find(params[:id])
    if @answer.update_attributes(answer_params)
      redirect_to @answer, notice: "Successfully updated answer."
    else
      render :edit
    end
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to answers_url, notice: "Successfully destroyed answer."
  end

  private

  def answer_params
    params.require(:answer).permit(:content, :question_id, :_destroy)
  end

end
