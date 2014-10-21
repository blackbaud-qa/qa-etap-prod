class LoginPage

	class LoginView < Watirmark::Page
		keyword(:username) {Page.browser.text_field(name => 'j_username')}
		keyword(:password) {Page.browser.text_field(:name => 'j_password')}
		keyword(:submit) {Page.browser.button(:id => 'loginSubmit')}
		keyword(:logout_frame) {Page.browser.iframe(:name, "content"}

		def create
			Page.browser.goto "https://etap-cdev-fh.blackbaudhosting.com/prod/"
		end


		
	end


	class LoginModel < Watirmark::Model::Factory


		keywords LoginView.keywords

		defaults do
			username {"AutomationBot"}
			password {"spicypancakes1"}
		end

	end

	class Login < Watirmark::WebPage::Controller
		@view = LoginView
		@model = LoginModel

		def logged_in?
			return Page.browser.include?'Logout'
		end

		def logged_out?
			return @view.submit.exists?
		end

		def log_out
			if logout_frame.exists? do
				@view.logout_frame.link(:text, 'Logout').click
			end
		end
	
	end

end

