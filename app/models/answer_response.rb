class AnswerResponse < ActiveRecord::Base
  belongs_to :answer
  belongs_to :response
end
