class Survey < ActiveRecord::Base
  has_many :questions
  has_many :responses
  has_many :answers
  
  accepts_nested_attributes_for :questions, allow_destroy: true

end
