module Cukesetaptesting
  module Admin
    class LandingView < BaseView
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
