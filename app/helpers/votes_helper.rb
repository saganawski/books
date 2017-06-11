module VotesHelper
  def user_can_vote?
  	Vote.all.each do |vote|
  		return false if vote.user_id == session[:user_id]
  	end
  	return true
  end
end