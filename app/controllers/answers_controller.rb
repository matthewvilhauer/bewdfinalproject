class AnswersController < ApplicationController

  

  def create
    @answer = Answer.new(params[:answer])
    if @answer.save
      redirect_to @answer, notice: "Successfully created Answer."
    else
      render :new
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:content, :question_id, :_destroy)
  end

end
