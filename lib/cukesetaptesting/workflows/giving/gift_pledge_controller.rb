module Cukesetaptesting
  module Giving
    class GiftPledge < BaseController
      @model = GiftPledgeModel
      @view = GiftPledgeView

      def calendar_button_click
        @view.calendar_button.when_present.click
      end

      def set_date
        @view.date_field.when_present.set '10/30/2090'
      end

      def set_received
        @view.received_field.when_present.set '7.00'
      end

      def set_date_field
        @view.date_field.when_present.set '11/30/2090'
      end

      def set_received_field
        @view.received_field.when_present.set '10.00'
      end


      def set_fund
        @view.fund_type.when_present.click
      end

      def set_campaign
        @view.campaign_type.when_present.click
      end

      def set_approach
        @view.approach_type.when_present.click
      end

      def select_payment_method
        @view.select_payment.when_present.click
      end

      def set_gift_type
        @view.check_field.when_present.click
      end
      #
      # def select_payment_method
      #   @view.select_payment.when_present.set
      # end

      def set_check_date
        @view.check_date.when_present.set '11/30/2090'
      end

      def set_check_number
        @view.check_number.when_present.set '879'
      end

      def enter_card_number
        @view.card_number.when_present.set '4111111111111111'
      end

      def set_expiration_month
        @view.expiration_month.when_present.click
      end

      def set_expiration_year
        @view.expiration_year.when_present.click
      end

      def save
        @view.save.when_present.click
      end

      def click_yes
        @view.yes.when_present.click
      end

      def tribute_bar_click
        @view.tribute_bar.when_present.click
      end

      def search_glass_click
        @view.tribute_info.when_present.click
      end

      def set_tribute
        browser.window(:class => "popupWindow").use do
          browser.text_field(:id => "searchString").click
        end
        # @view.tribute_search.when_present.click
      end


      # def set_tribute
      #   @view.tribute_bar.when_present.click
      #   @view.tribute_info.when_present.click
      #   @view.tribute_search.when_present.click
      # end

      # def tribute_field_contains?(text)
      #   return @view.tribute_search.when_present.value.include? text
      # end

    end
  end
end

