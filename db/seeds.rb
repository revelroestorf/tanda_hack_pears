password = 'pass123'
1.upto(10) do |i|
  User.create(
    email: "user-#{i}@example.com",
    password: password,
    password_confirmation: password
  )
  
end

  User.find(1).update(name: "Sammy D")
  User.find(2).update(name: "Pubert Gesepi")
  User.find(3).update(name: "Don Jamin")
  User.find(4).update(name: "Harry Poser")
  User.find(5).update(name: "Jimmy Johnson")
  User.find(6).update(name: "Sally Simple")
  User.find(7).update(name: "Roses Ared")
  User.find(8).update(name: "Justin Time")
  User.find(9).update(name: "Holly Sherbert")
  User.find(10).update(name: "David Copperfield")

  Pairing.create(user1: 1, user2: 2)
  Pairing.create(user1: 3, user2: 4)
  Pairing.create(user1: 5, user2: 6)
  Pairing.create(user1: 7, user2: 8)
  Pairing.create(user1: 9, user2: 10)
