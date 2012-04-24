class Survey < ActiveRecord::Base
  attr_accessible :name, :description, :questions_attributes
  has_many :questions, dependent: :destroy
  accepts_nested_attributes_for :questions, allow_destroy: true
  
end
