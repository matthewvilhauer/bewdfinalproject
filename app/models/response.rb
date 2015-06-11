class Response < ActiveRecord::Base
  belongs_to :survey
  has_many :answer_responses


  accepts_nested_attributes_for :answer_responses, allow_destroy: true

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      response = Response.find_or_create_by survey_id: row.to_hash[:survey_id]
      row.to_hash.keys.select { |key| key =~ /question_id/ }.each do |question_column|
        answer_id = row[question_column]
        response.answer_responses.find_or_create_by answer_id: answer_id
      end
    end
  end

end
