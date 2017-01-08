if User.count == 0
  User.create!(email: 'ed@ed.com', password: 'password' )
end