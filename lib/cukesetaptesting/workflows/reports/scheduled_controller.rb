module Cukesetaptesting
  module Reports
    class Scheduled < BaseController
      @model = ScheduledModel
      @view = ScheduledView

      def on_scheduled_items_page?
        @view.page_title.when_present.text.include? "My Scheduled Items"
      end


    end
  end
end

