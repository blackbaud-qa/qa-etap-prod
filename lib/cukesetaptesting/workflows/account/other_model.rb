module Cukesetaptesting
  module Account
    class OtherModel < Watirmark::Model::Factory
      keywords OtherView.keywords
      defaults do
        name          {"name_#{uuid}"}
        sort_name     {name}
      end
    end
  end
end