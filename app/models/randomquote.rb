class Randomquote < ActiveRecord::Base
  has_many :quotes
  has_many :submissions , through: :quotes
end