class Answer < ActiveRecord::Base
  belongs_to :question
  has_many :answer_responses

  accepts_nested_attributes_for :answer_responses, allow_destroy: true
end
