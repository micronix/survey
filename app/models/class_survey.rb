class ClassSurvey < ApplicationRecord
    validates :difficulty, presence: true
    
    belongs_to :lesson
end
