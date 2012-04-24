class CreateUserScores < ActiveRecord::Migration
  def change
    create_table :user_scores do |t|
      t.integer :user_id
      t.integer :survey_id
      t.integer :question_id
      t.integer :answer_id
      t.integer :points_id

      t.timestamps
    end
  end
end
