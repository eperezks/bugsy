json.array! boxes do |box|
  json.partial! 'square_boxes/box', box: box
end
