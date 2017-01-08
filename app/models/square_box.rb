class SquareBox < ActiveRecord::Base
  belongs_to :user
  belongs_to :squares
end
