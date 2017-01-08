json.extract! square, :id, :home, :away, :locked
json.boxes do
  json.array! square.square_boxes do |box|
    json.partial! 'square_boxes/box', box: box
  end
end
