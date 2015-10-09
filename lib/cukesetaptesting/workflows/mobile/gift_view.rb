module Cukesetaptesting
  module Mobile
    class GiftView < BaseView
      keyword(:keyword_name)  { browser.text_field(:id, 'element_id') }

      keyword(:gift_date) { browser.text_field(:id => 'date') }
      keyword(:gift_received_amount) { browser.text_field(:name => 'currencyPopulate(transaction.received)') }
      keyword(:gift_non_deductible_amount) { browser.text_field(:name => 'currencyPopulate(transaction.nonDeductibleAmount)') }
      keyword(:gift_notes) { browser.textarea(:id => 'notes') }

      keyword(:gift_fund) { browser.select(:id => 'fund') }
      keyword(:gift_campaign) { browser.select(:id => 'campaign') }
      keyword(:gift_approach) { browser.select(:id => 'approach') }
      keyword(:gift_letter) { browser.select(:id => 'letter') }

      # Credit Card specific
      keyword(:gift_credit_card_number) { browser.text_field(:id => 'cardNumber', :index => 0)}
      keyword(:gift_expiration_month) { browser.select(:id => 'expMonth')}
      keyword(:gift_expiration_year) { browser.select(:id => 'expYear')}
      keyword(:gift_name_on_card) { browser.text_field(:id => 'cardName')}
      keyword(:gift_card_type) { browser.select(:name => 'cardType') }

      # Processing Fields
      keyword(:gift_credit_card_number) { browser.text_field(:id => 'cardNumber', :index => 0)}

      # Buttons
      keyword(:gift_save) { browser.button(:value => 'Save')}
      keyword(:gift_delete) { browser.button(:value => 'Delete')}

      def is_gift_received_amount_disabled?
        gift_received_amount.disabled?
      end

      def is_credit_card_number_disabled?
        gift_credit_card_number.disabled?
      end

      def is_gift_expiration_month_disabled?
        gift_expiration_month.disabled?
      end

      def is_gift_expiration_year_disabled?
        gift_expiration_year.disabled?
      end



      def is_gift_received_amount_empty?
        gift_received_amount.when_present.text == ''
      end

      def is_credit_card_number_empty?
        gift_credit_card_number.when_present.text == ''
      end

      def is_gift_expiration_month_empty?
        gift_expiration_month.when_present.text == ''
      end

      def is_gift_expiration_year_empty?
        gift_expiration_year.when_present.text == ''
      end


      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
