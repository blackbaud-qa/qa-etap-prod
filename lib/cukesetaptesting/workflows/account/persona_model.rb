module Cukesetaptesting
  module Account
    class PersonaModel < Watirmark::Model::Factory
      keywords PersonaView.keywords
      defaults do
        email { "#{Watirmark::Configuration.instance.email}+#{uuid}@qasendmail.corp.convio.com" }
      end
    end
  end
end