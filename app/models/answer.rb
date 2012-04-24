class Answer < ActiveRecord::Base
  attr_accessible :content, :points, :answer_type, :image, :question_id
  belongs_to :question
end