class ClassSurveysController < ApplicationController
  def new
  end
  
  def create
    survey = ClassSurvey.new
    survey.user_id = current_user.id
    survey.date = params['date']
    survey.difficulty = params['difficulty']
    survey.comments = params['comments']
    survey.save
  end
end
