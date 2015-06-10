class Question < ActiveRecord::Base
  validates :inquiry, presence: true

  belongs_to :survey
  has_many :answers

  accepts_nested_attributes_for :answers, allow_destroy: true

  def self.search_for(query)
    where('id LIKE :query OR inquiry LIKE :query', query: "%#{query}%")
  end
end
