class LessonsController < ApplicationController
    def index
        @lessons = Lesson.all
    end
    
    def new
        @lesson = Lesson.new
    end
    
    def create
        lesson_params = params.require('lesson').permit(:date, :video_url, :notes)
        @lesson = Lesson.new(lesson_params)
        if @lesson.save
            redirect_to '/lessons'
        else
          render action: :new
        end
    end
end
