json.extract! square, :id, :team1, :team2, :game_time
json.boxes do
  json.array! square.square_boxes do |box|
    json.partial! 'square_boxes/box', box: box
  end
end