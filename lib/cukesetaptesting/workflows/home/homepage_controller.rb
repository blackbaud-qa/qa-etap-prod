module Cukesetaptesting
  module Home
    class Homepage < BaseController
      @model = HomepageModel
      @view = HomepageView

      def is_present?
        @view.take_me_to_etap_iframe.present?
      end

      def click_take_me_to_etap
        begin
          @view.take_me_to_etap_iframe.when_present.click
        rescue Exception => e
            pp e
        end
      end
    end
  end
end

