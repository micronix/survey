class Lesson < ApplicationRecord
    validates :date, presence: true
    
    has_many :class_surveys
end
