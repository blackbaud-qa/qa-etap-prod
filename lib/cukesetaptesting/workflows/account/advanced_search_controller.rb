module Cukesetaptesting
  module Account
    class AdvancedSearch < BaseController
      @model = AdvancedSearchModel
      @view = AdvancedSearchView

      def find_click
        @view.find_button.when_present.click
      end

      def advanced_click
        @view.advanced_link.when_present.click
      end

      def clear_email_field
        @view.email_field.when_present.clear
      end

      def clear_name_field
        @view.search_field.when_present.clear
      end

      def clear_phone_field
        @view.phone_field.when_present.clear
      end


      def exact_match_click
        @view.exact_button.when_present.click
      end

      def account_name_exists?(name)
        return @view.account_name.when_present.text.include? name
      end

      def search_field_contains?(text)
        return @view.search_field.when_present.value.include? text
      end

      def email_field_contains?(text)
        return @view.email_field.when_present.value.include? text
      end

      #dynamic search
      def click_magnifying_glass
        @view.dynamic_search_glass.when_present.click
      end

      def new_account_name_exists?(input_name)
        # This function reads the X Accounts Found to determine
        #  how many Table Rows (TRs) we have on the page. If we
        #  have greater than 25, we don't currently bother with
        #  load more. If we have fewer than 25, then we'll only
        #  look for those rows.
        input_name.downcase!

        sleep 2.5
        accounts_found_text = @view.search_result_count_message.when_present.text

        account_quantity_match = /(\d+)/.match(accounts_found_text)

        if Integer(account_quantity_match[0]) > 25
          account_quantity = 26  # Must treat the table as 1-based
        else
          account_quantity = Integer(account_quantity_match[0]) + 1 # Must treat the table as 1-based
        end

        tr_index = 1
        account_found = false
        while tr_index < account_quantity
          temp_account = (@view.account_name tr_index).text
          temp_account.downcase!

          if temp_account.include? input_name
            account_found = true
            return account_found
          end

          tr_index = tr_index + 1
        end

        return account_found

      end

      def search_result_count_message
        @view.search_result_count_message.when_present.text
      end

      def pause
        sleep 3
      end

      def dynamic_drop_down?
        @view.dynamic_drop_down_info.when_present.present?
      end

      def dynamic_drop_down_results(name)
        @view.dynamic_drop_down_info_name.when_present.value.include? name
      end

      def on_find_account_page?(text)
        return @view.find_account_page.when_present.value.include? text
      end

      def udf_show_hide(value)
        @view.udf_show_hide_links(value).when_present.click
      end



    end
  end
end

