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


      def set_fund(name)
        @view.fund_type.when_present.click
        @view.fund_combo_list.when_present.div(:text,name).click
      end

      def set_campaign(name)
        @view.campaign_type.when_present.click
        @view.campaign_combo_list.when_present.div(:text,name).click
      end

      def set_approach(name)
        @view.approach_type.when_present.click
        @view.approach_combo_list.when_present.div(:text,name).click
      end

      def select_payment_method
        @view.select_payment.when_present.click
      end

      def set_gift_type(type)
        @view.payment_method.option(:value, get_gift_type_value(type)).when_present.click
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

      def search_for_an_account_click
        @view.search_for_an_account.when_present.click
      end

      def set_popup_search_text(name)
        @view.popup_search_text.when_present.set name
      end

      def click_find
        @view.popup_search_find.when_present.click
      end

      def click_link_by_text(text)
        @view.popupSearch.a(:text, text).when_present.click
      end

      def set_popup_search_value(name)
        set_popup_search_text(name)
        click_find
        click_link_by_text(name)
      end

      def tribute_icon_click
        search_glass_click
      end

      def soft_credit_icon_click
        @view.soft_credit_info.when_present.click
      end

      def set_soft_credit_amount(value)
        @view.soft_credit_amount.when_present.set value
      end

      def set_save_and(value)
        options = {'Edit' => 'edit',
                 'Go to Journal' => 'journal',
                 'New' => 'new',
                 'Search' => 'search',
                 'Create Document' => 'sendGiftPdf',
                 'Process Transaction' => 'processTransaction',
                 'Go to Persona' => 'persona'
        }
        @view.save_and.option(:value, options[value]).when_present.click
      end

      def get_gift_type_value(text)
        types = {'Check'=>'checkFields',
                 'Cash'=>'cashFields',
                 'Credit/Debit Card' =>'creditCardFields',
                 'Electronic Funds Transfer (EFT)' => 'eftFields',
                 'Gift In Kind' => 'giftInKindFields',
                 'Real Estate' => 'realEstateFields',
                 'Stock' => 'stockFields',
                 'Insurance' => 'insuranceFields',
                 'Buckaroo' => 'buckarooFields'
        }
        return types[text]
      end

      def click_save_and
        @view.save_and_button.when_present.click
      end

      def set_account_number(value)
        @view.account_number.when_present.set value
      end

      def journal_gift_persona
        @view.entity_name_value.value
      end

      def journal_gift_date
        @view.date_field.when_present.value
      end

      def journal_gift_received_amount
        @view.received_field.when_present.value
      end

      def journal_gift_fund
        @view.fund.when_present.value
      end

      def journal_gift_campaign
        @view.campaign.when_present.value
      end

      def journal_gift_approach
        @view.approach.when_present.value
      end

      def journal_gift_gift_type
        @view.payment_method.when_present.value
      end

      def journal_gift_check_date
        @view.check_date.when_present.value
      end

      def journal_gift_check_number
        @view.check_number.when_present.value
      end

      def journal_gift_tribute
        @view.tribute_name.when_present.text
      end

      def journal_gift_soft_credit
        @view.soft_credit_name.when_present.text
      end

      def journal_gift_soft_credit_amount
        @view.soft_credit_amount.when_present.value
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

