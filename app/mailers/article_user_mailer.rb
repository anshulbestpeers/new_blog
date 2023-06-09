class ArticleUserMailer < ApplicationMailer
	default from: "anshulmittal@gmail.com"

	def welcome_email(user)
		@user = user
		@url = 'http://127.0.0.1:3000'
		mail(to: @user.email, subject: 'Welcome to My New Application')
	end
end
