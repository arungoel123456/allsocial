class Friendship < ActiveRecord::Base
  belongs_to :user
  belongs_to :friend, class_name: 'User'

 #  def user_can_like(user)
	# 	return self.likes.find_by(user: user).blank?
	# end

	# def current_like_status(user)
	# 	if user_can_like(user)
	# 		return 'Like'
	# 	else
	# 		return 'Unlike'
	# 	end
	# end


	# def eligible_friends_lists(user)
	# 	return user.find(user: user).friends

	# end

	# def can_accept(friend)
	# 	friend_list=eligible_friends_lists(friend)
	# 	if friend_list.include? current_user
	# 		return 'unfriend'

	# 	else
	# 		return 'add friend'
	# 	end
	# end

end
