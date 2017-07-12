class ClassSurveysController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @survey = ClassSurvey.new
    @survey.lesson_id = params[:lesson_id]
  end
  
  def create
    survey_params = params.require('class_survey').permit(:difficulty, :lesson_id, :comments)
    @survey = ClassSurvey.new(survey_params)
    @survey.user_id = current_user.id
    if @survey.save
      redirect_to '/lessons'
    else
      render action: :new
    end
  end
end
