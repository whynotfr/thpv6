class SurveysController < ApplicationController
  def new
  	@surveys = Survey.new
  end

  def create
  	survey_params = params.require(:survey).permit(:first_name, :last_name, :age, :email, :body)
  	@survey = Survey.new survey_params
  	p survey_params
  	session = GoogleDrive::Session.from_config("./config/client_details.json")
  	ws = session.spreadsheet_by_key("1jQzb6wLJ09Ve5hzmDwe1u7OClHM4DFBjlwpFbQ9GSUU").worksheets[0]

  	ws.insert_rows(ws.num_rows + 1, [[survey_params[:first_name], survey_params[:last_name], survey_params[:age], survey_params[:email], survey_params[:body]]])
  	ws.save
  	redirect_to root_path
  end
end






