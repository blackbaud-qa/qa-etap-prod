module Cukesetaptesting
  module Mobile
    class AccountFindView < BaseView
      keyword(:keyword_name)  { browser.text_field(:id, 'element_id') }

      keyword(:search_field)  { browser.text_field(:name => 'searchString') }
      keyword(:mobile_find_button) { browser.button(:value => 'Search') }

      def click_account_name account_name
        browser.section(:id => 'searchResults').link(:text => account_name).when_present.click
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
