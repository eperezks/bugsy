class SquareBox < ActiveRecord::Base
  validates :x, allow_nil: false, numericality: { less_than_or_equal_to: 10 }
  validates :y, allow_nil: false, numericality: { less_than_or_equal_to: 10 }
  belongs_to :user
  belongs_to :square
end
