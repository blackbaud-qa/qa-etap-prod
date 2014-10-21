class LoginPage

  class LoginView < Watirmark::Page
    keyword(:username) {browser.text_field(name => 'j_username')}
    keyword(:password) {browser.text_field(:name => 'j_password')}
    keyword(:submit) {browser.button(:id => 'loginSubmit')}
    keyword(:logout_frame) {browser.iframe(:name, "content")}

    def navigate
      browser.goto "https://etap-cdev-fh.blackbaudhosting.com/prod/"
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

    def log_in
      @view.submit.click
    end

    def logged_in?
      return browser.include?'Logout'
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

end
