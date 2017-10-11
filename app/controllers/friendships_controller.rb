class FriendshipsController < ApplicationController
	def create
		@new_friend=Friendship.new
		@new_friend.friend_id=User.find(params[:id]).id
		@new_friend.user=current_user
		@new_friend.confirmed="true"
		
		@new_friend.save	
		redirect_to url_for(:controller => :users, :action => :show)
	end

	def destroy
		friend=Friendship.find_by(params[:user_id])
		friend.destroy
	end

end
