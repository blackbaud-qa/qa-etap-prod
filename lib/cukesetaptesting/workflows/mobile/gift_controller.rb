module Cukesetaptesting
  module Mobile
    class Gift < BaseController
      @model = GiftModel
      @view = GiftView

      def click_save
        @view.gift_save.when_present.click
      end

      def click_delete
        @view.gift_delete.when_present.click
      end

      def is_emtpy? field_name
        if(field_name == 'Received')
          @view.is_gift_received_amount_empty?
        elsif(field_name == 'Credit/Debit Card Number')
          @view.is_credit_card_number_empty?
        elsif(field_name == 'Expiration Date Month')
          @view.is_gift_expiration_month_empty?
        elsif(field_name == 'Expiration Date Year')
          @view.is_gift_expiration_year_empty?
        end
      end

      def is_disabled? field_name
        if(field_name == 'Received')
          @view.is_gift_received_amount_disabled?
        elsif(field_name == 'Credit/Debit Card Number')
          @view.is_credit_card_number_disabled?
        elsif(field_name == 'Expiration Date Month')
          @view.is_gift_expiration_month_disabled?
        elsif(field_name == 'Expiration Date Year')
          @view.is_gift_expiration_year_disabled?
        end
      end
    end
  end
end

