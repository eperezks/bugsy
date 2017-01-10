json.array!(@squares) do |s|
  json.extract! s, :id, :home, :away, :locked
end
