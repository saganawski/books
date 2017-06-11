module VotesHelper
  def user_can_vote?
  	Vote.all.each do |vote|
  		return false if vote.user_id == session[:user_id]
  	end
  	return true
  end

  def return_user_vote_id(book_id)
  	user = User.find(session[:user_id])
  	vote = user.votes.where(["book_id = ?", book_id])
  	vote[0].id
 
  end
end