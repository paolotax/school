class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :survey_id
      t.text    :content
      t.integer :points
      t.string  :question_type
      t.string  :image
      t.timestamps
    end
  end
end
