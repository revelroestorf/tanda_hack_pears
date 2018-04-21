class HomeController < ApplicationController

  def index
    session[:conversations] ||= []

    @pair = Pairing.where(user1: current_user.id).or(Pairing.where(user2: current_user.id)).first
    # chat_pair_id = pair.user1 if pair.user1 != current_user.id
    # chat_pair_id = pair.user2 if pair.user2 != current_user.id

    @pair.user1 != current_user.id ? chat_partner_id = @pair.user1 : chat_partner_id = @pair.user2

    @pair ? @user = User.find(chat_partner_id) : @user = User.first

    @conversations = Conversation.includes(:recipient, :messages)
                                 .find(session[:conversations])

    @icebreaker = ice_breaker

  end

  def ice_breaker
    array = ["If you awoke one day as a flower, what flower would you choose to be?",
      "If you could choose one hobby that now seems out of your reach either financially or time-wise, what hobby would you take up and why?",
      "If you were a city, which city would you choose to be and why?",
      "If you could meet any historical figure, who would you choose and why?",
      "If you could be in the movie of your choice, what movie would you choose and what character would you play?"]
      array.shuffle!
      return array[0]
  end


end
