module Cukesetaptesting
  module Account
    class SearchModel < Watirmark::Model::Factory
      keywords SearchView.keywords
    end
  end
end