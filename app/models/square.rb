class Square < ActiveRecord::Base
  has_many :square_boxes, autosave: true
end
