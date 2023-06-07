# quote.rb
class Quote < ActiveRecord::Base
    belongs_to :submission
    belongs_to :random_quote
  end
  