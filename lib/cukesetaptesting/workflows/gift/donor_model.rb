module ETapestry
  module Gift
    DonorModel = Watirmark::Model.factory
      keywords DonorView.keywords
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