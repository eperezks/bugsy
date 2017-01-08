if User.count == 0 && !Rails.env.test?
  User.create!(email: 'ed@ed.com', password: 'password')
end
