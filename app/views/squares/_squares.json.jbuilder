json.array! squares do |square|
  json.partial! 'squares/square', square: square
end
