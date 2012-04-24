class CreateUserScores < ActiveRecord::Migration
  def change
    create_table :user_scores do |t|
      t.relation :user
      t.relation :survey
      t.relation :question
      t.relation :answer
      t.integer :points

      t.timestamps
    end
  end
end
