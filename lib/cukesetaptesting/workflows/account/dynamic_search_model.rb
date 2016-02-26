module Cukesetaptesting
  module Account
    class DynamicSearchModel < Watirmark::Model::Factory
      keywords DynamicSearchView.keywords
    end
  end
end
