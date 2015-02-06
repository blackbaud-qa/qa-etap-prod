module Cukesetaptesting
  module Giving
    class GiftPledge < BaseController
      @model = GiftPledgeModel
      @view = GiftPledgeView

      def calendar_button_click
        @view.calendar_button.when_present.click
      end

      def select_payment_method
        @view.select_payment.when_present.click
      end

      def set_gift_type
        @view.check_field.when_present.click
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

      def saveAnd
        @view.saveAnd.when_present.click
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

      def click_find
        @view.find.when_present.click
      end

      def choose_persona
        @view.tribute_persona.when_present.click
      end

      def search_glass
        @view.search_icon2.when_present.click
      end

      def choose_anne
        @view.persona.when_present.click
      end

      def fund_input_arrow
        @view.fund_input_arrow.when_present.click
      end

      def select_fund_unrestricted
        @view.fund_unrestricted.when_present.click
      end

      def campaign_input_arrow
        @view.campaign_input_arrow.when_present.click
      end

      def select_campaign
        @view.campaign_annual.when_present.click
      end

      def approach_input_arrow
        @view.approach_input_arrow.when_present.click
      end

      def select_approach_unsolicited
        @view.approach.when_present.click
      end

      def select_process
        @view.process_transaction.when_present.click
      end

      def select_edit
        @view.edit.when_present.click
      end

    end
  end
end

