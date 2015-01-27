module Cukesetaptesting
  module Management
    class Fundraisers < BaseController
      @model = FundraisersModel
      @view = FundraisersView

    def management_fundraisers_click
      @view.management_fundraisers.when_present.click
    end

    def fundraiser_new_fundraiser_click
      @view.fundraiser_new_fundraiser.when_present.click
    end

    def set_new_fundraiser_status_active
      @view.new_fundraiser_status.when_present.select "Active"
    end

      def new_fundraiser_next_click
        @view.new_fundraiser_next.when_present.click
      end

    end
  end
end

