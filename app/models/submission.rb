class Submission < ActiveRecord::Base
  has_many :quotes
  has_many :random_quotes , through: :quotes
end
  