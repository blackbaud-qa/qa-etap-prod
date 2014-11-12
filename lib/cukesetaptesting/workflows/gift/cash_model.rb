module ETapestry
  module Gift
    CashModel = Watirmark::Model.factory
      keywords CashView.keywords
      #search_term {name}
      #
      # defaults do
      #  name          {"name_#{uuid}"}
      # end
      #
      #model SomeModelName.new
    end
  end
end