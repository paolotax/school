class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.text    :content
      t.integer :points
      t.string  :answer_type
      t.string  :image
      t.timestamps
    end
  end
end
