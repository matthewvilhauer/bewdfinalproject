class Response < ActiveRecord::Base
  belongs_to :survey
  has_many :answer_responses


  accepts_nested_attributes_for :answer_responses, allow_destroy: true

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      response = Response.find_or_create_by survey_id: row.to_hash.survey_id
      response.answer_responses.find_or_create_by row.to_hash.slice("question_id", "answer_id")
    end
  end

end
