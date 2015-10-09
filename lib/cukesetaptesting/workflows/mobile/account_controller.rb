module Cukesetaptesting
  module Mobile
    class Account < BaseController
      @model = AccountModel
      @view = AccountView

      def click_link link
        @view.click_link link
      end
    end
  end
end

