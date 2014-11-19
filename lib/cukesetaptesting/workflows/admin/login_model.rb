module Cukesetaptesting
  module Admin
    class LoginModel < Watirmark::Model::Factory
      keywords LoginView.keywords

      defaults do
        username {"AutomationBot.us"}
        password {"spicypancakes1"}
      end
    end
  end
end
