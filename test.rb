def pairing

  # @users = User.all
  user_ids = [1,2,3,4,5]
  # @users.each do |user|
    # user_ids.push(user.id)
  # end

  # number_of_pairs = @users.count/2
  number_of_pairs = 2


  userA_ids = []
  count = 0
  number_of_pairs.times do
    userA_ids.push(user_ids[count])
    count += 1
  end
  puts userA_ids

  user_ids.reverse!
  userB_ids = []
  count = 0
  number_of_pairs.times do
    userB_ids.push(user_ids[count])
    count += 1
  end
  puts userB_ids


  count = 0
  number_of_pairs.times do
    # @pairing = Pairing.create(userA_id: userA_ids[count], userB_id: userB_ids[count])
    @pairing = {userA_id: userA_ids[count], userB_id: userB_ids[count]}
    count += 1
    puts @pairing
  end
end
pairing
