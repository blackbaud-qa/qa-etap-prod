module Cukesetaptesting
  module Admin
    class LoginModel < Watirmark::Model::Factory
      keywords LoginView.keywords

      defaults do
       # username {"AutomationBot.us"}
       #  username {Watirmark::Configuration.instance.username}
       #  password {Watirmark::Configuration.instance.password}
      end
    end
  end
end
