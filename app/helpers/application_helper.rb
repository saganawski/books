module ApplicationHelper

	def logged_in?
		!!session[:user_id]
	end
	
	def current_user
		return nil if !logged_in?
		@current_user ||= User.find_by(id: session[:user_id])
	end

	def authorized?(interger_id)
		session[:user_id] == interger_id.to_i
	end
end
