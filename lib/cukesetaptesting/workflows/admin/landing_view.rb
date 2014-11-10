module Cukesetaptesting
  module Admin
    class LandingView < BaseView
      keyword(:logout_frame) {browser.iframe(:name, "content")}
      keyword(:accounts) {browser.select_list(:id=> 'menuTabList')}
      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
