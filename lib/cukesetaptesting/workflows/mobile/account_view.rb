module Cukesetaptesting
  module Mobile
    class AccountView < BaseView
      keyword(:keyword_name)  { browser.text_field(:id, 'element_id') }

      def click_link link
        browser.link(:text => link).when_present.click
      end

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
