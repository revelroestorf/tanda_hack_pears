class HomeController < ApplicationController

  def index
    session[:conversations] ||= []

    @pair = Pairing.where(user1:current_user.id).or(Pairing.where(user2:current_user.id)).first
    # chat_pair_id = pair.user1 if pair.user1 != current_user.id
    # chat_pair_id = pair.user2 if pair.user2 != current_user.id
    
    @pair.user1 != current_user.id ? chat_partner_id = @pair.user1 : chat_partner_id = @pair.user2
    
    @user = User.find(chat_partner_id)

     
    @conversations = Conversation.includes(:recipient, :messages)
                                 .find(session[:conversations])
                                
    
  end


end
