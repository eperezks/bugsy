after :users do
  if Rails.env.development? && Square.count == 0
    s = Square.create!(home: 'Patriots', away: 'Seahawks', game_time: Time.now + 1.day, locked: false)
    11.times do |x|
      11.times do |y|
        SquareBox.create!(square: s,
                          name: 'Ed',
                          user: User.first,
                          x: x,
                          y: y)
      end
    end
  end
end
