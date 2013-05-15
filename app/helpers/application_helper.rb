module ApplicationHelper

	def logged_in?
		!!current_user
	end

	def current_user
		@current_user ||= User.find_by_remember_token(cookies[:remember_token])
	end

	def logout
		cookies.delete(:remember_token)
		@current_user = nil
	end

	def require_login
		unless logged_in?
			redirect_to new_session_url
		end
	end

	def set_cookie(user)
		user.remember_token = SecureRandom.hex
		cookies[:remember_token] = user.remember_token
	end

end
