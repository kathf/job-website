class Job < ActiveRecord::Base
  validates :title, :company, presence: true
  validates :views, :salary, numericality: { greater_than_or_equal_to: 0 }
end
