class Devise::OmniauthCallbacksController < ApplicationController
	def twitter
		#raise env['omniauth.auth'].to_yaml

		auth = env['omniauth.auth']
		uid = auth['uid']
		provider = auth['provider']

		user = User.where(uid: uid, provider: provider).first_or_create do |u|
			u.email = "#{uid}@twitter.com"
		end	

		sign_in_and_redirect user
	end	
end	