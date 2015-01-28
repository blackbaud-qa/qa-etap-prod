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

      def new_fundraiser_set_template_float
        @view.new_fund_templatefloat.when_present.set
      end

      def select_main_page_text
        @view.select_main_page_text.when_present.send_keys [:control, 'a']
      end

    end
  end
end

