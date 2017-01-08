after :users do
  if Rails.env.development? && Square.count == 0
    Square.create!(team1: 'Patriots', team2: 'Seahawks', game_time: Time.now+1.day, locked: false)
  end
end