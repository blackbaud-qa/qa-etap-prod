module Cukesetaptesting
  module Login
    class AdminModel < Watirmark::Model::Factory
      keywords AdminView.keywords
      defaults do
        username {Watirmark::Configuration.instance.username}
        password {Watirmark::Configuration.instance.password}
      end
    end
  end
end
