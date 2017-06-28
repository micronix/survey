class CreateClassSurveys < ActiveRecord::Migration[5.1]
  def change
    create_table :class_surveys do |t|
      t.integer :user_id
      t.date    :date
      t.integer :difficulty
      t.string  :comments
      t.timestamps
    end
  end
end
