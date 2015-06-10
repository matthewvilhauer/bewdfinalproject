class AnswerResponse < ActiveRecord::Base
  belongs_to :answers
  belongs_to :questions
  belongs_to :survey
end
