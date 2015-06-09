class Response < ActiveRecord::Base
  belongs_to :survey
  has_many :answer_responses

  accepts_nested_attributes_for :answer_responses, allow_destroy: true

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Response.create! row.to_hash
    end
  end
end
