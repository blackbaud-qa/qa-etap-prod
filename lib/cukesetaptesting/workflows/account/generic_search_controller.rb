module Cukesetaptesting
  module Account
    class GenericSearch < BaseController
      def account_name_exists?(input_name)
        # This function reads the X Accounts Found to determine
        #  how many Table Rows (TRs) we have on the page. If we
        #  have greater than 25, we don't currently bother with
        #  load more. If we have fewer than 25, then we'll only
        #  look for those rows.
        lower_input_name = input_name.downcase

        sleep 4
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

          if temp_account.include? lower_input_name
            account_found = true
            return account_found
          end

          tr_index = tr_index + 1
        end

        return account_found
      end
    end


  end
end
