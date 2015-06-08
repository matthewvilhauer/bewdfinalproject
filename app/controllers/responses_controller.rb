class ResponsesController < ApplicationController
  def index
    @responses = Response.all
  end

  def new
    @response = Response.new
  end

  def create
    @response = Response.new(params[:response])
    if @response.save
      redirect_to @response, notice: "Successfully created response."
    else
      render :new
    end
  end

  def show
    @response = Response.find(params[:id])
  end

  def edit
    @response = Response.find(params[:id])
  end

  def import
    Response.import(params[:file])
    redirect_to responses_path, notice: "Responses Added Successfully"
  end

  private
    def response_params
      params.require(:response).permit(:respondent_id, :state, :date_of_birth, :race, :gender, :voter_status, :survey_id)
    end
end
