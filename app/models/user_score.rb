class UserScore < ActiveRecord::Base
  attr_accessible :answer, :points, :question, :survey, :user
  
  belongs_to :user
  
end
