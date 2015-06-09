class AnswerResponse < ActiveRecord::Base
  belongs_to :answers
  belongs_to :responses
end
