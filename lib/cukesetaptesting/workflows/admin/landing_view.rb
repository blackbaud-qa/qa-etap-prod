module Cukesetaptesting
  module Admin
    class LandingView < BaseView
      keyword(:logout_frame) {browser.iframe(:name, "content")}
      #keyword(:accounts) {logout_frame.element(:css=> '#accountTab a')}

      keyword(:logout_link) {content.link(:text, 'Logout')}

      keyword(:home_tab) {navbar_tab('homeTab').link(:class, "menuTabText")}
      keyword(:home_dd) {navbar_tab('homeTab').img(:class, "menuTabButton")}

      keyword(:accounts_tab) {navbar_tab('accountTab').link(:class, "menuTabText")}
      keyword(:accounts_dd) {navbar_tab('accountTab').img(:class, "menuTabButton")}

      keyword(:giving_tab) {navbar_tab('givingTab').link(:class, "menuTabText")}
      keyword(:giving_dd) {navbar_tab('givingTab').img(:class, "menuTabButton")}

      keyword(:communication_tab) {navbar_tab('communicationTab').link(:class, "menuTabText")}
      keyword(:communication_dd) {navbar_tab('communicationTab').img(:class, "menuTabButton")}

      keyword(:queries_tab) {navbar_tab('queriesTab').link(:class, "menuTabText")}
      keyword(:queries_dd) {navbar_tab('queriesTab').img(:class, "menuTabButton")}

      keyword(:reports_tab) {navbar_tab('reportsTab').link(:class, "menuTabText")}
      keyword(:reports_dd) {navbar_tab('reportsTab').img(:class, "menuTabButton")}

      keyword(:management_tab) {navbar_tab('manageTab').link(:class, "menuTabText")}
      keyword(:management_dd) {navbar_tab('manageTab').img(:class, "menuTabButton")}

      keyword(:logout_frame) {browser.iframe(:name, "content")}
      keyword(:accounts) {logout_frame.element(:css=> '#accountTab a')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
