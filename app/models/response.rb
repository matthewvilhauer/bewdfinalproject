class Response < ActiveRecord::Base
  belongs_to :survey
  has_and_belongs_to_many :questions

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Response.create! row.to_hash
    end
  end
end
