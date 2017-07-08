class AddLessonToClassSurvey < ActiveRecord::Migration[5.1]
  def change
    add_column :class_surveys, :lesson_id, :integer
    remove_column :class_surveys, :date
  end
end
