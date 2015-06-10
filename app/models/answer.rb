class Answer < ActiveRecord::Base
  validates :content, presence: true

  belongs_to :question
  has_many :answer_responses

  accepts_nested_attributes_for :answer_responses, allow_destroy: true
end
