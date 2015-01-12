module Cukesetaptesting
  module Admin
    class Cart < BaseController
      @model = CartModel
      @view = CartView

    def on_cart_page?
      return @view.cart_page_title.present?
    end

      def new_category_click
        @view.new_category.when_present.click
      end

      def set_category_def(desc)
        @view.new_category_desc.when_present.send_keys desc
        # @view.browser.frame(:id, 'content_ifr').send_keys desc
        # @view.browser.execute_script("tinyMCE.get('content').execCommand('mceSetContent',false, '#{desc}' );")
      end

      def category_desc_align_center_click
        @view.new_category_desc_align_center.when_present.click
      end

      # def set_start_date(date)
      #   @view.new_category_start.
      # end
      def set_category_image(path)
        @view.new_category_image.when_present.set(path)
      end

      def new_category_save_click
        @view.new_category_save.when_present.click
      end

      def category_exists?(name)
        @view.cart_category_list.text.include? name
      end

      def category_click(category)
        @view.cart_category_list.a(:text,category).when_present.click
      end

      def new_item_click
        @view.new_item.when_present.click
      end

      def set_short_description(desc)
        @view.new_item_short_desc.when_present.send_keys desc
      end

      def select_short_description_text
        @view.new_item_short_desc.when_present.send_keys [:control, 'a']
      end

      def short_description_increase_indent_click
        @view.short_description_increase_indent.when_present.click
      end

      def long_description_font_family_click
        @view.long_description_font_family.when_present.click
      end

      def long_description_font_ariel_click
        @view.long_description_font_ariel.when_present.click
      end

      def set_long_description(desc)
        @view.new_item_long_desc.when_present.send_keys desc
      end

      def fully_non_deduct_click
        @view.fully_non_deduct.when_present.set
      end

      def cart_page_navigation_next_click
        @view.cart_page_navigation_next.when_present.click
      end

      # def set_regular_price(price)
      #   @view.new_item_reg_price
      # end

      def set_cart_item_thumb_image(path)
        @view.new_item_thumb_image.when_present.set(path)
      end

      def set_cart_item_regular_image(path)
        @view.new_item_reg_image.when_present.set(path)
      end

      def fund_combo_click
        @view.new_item_fund_combo.when_present.click
      end

      def fund_general_click
        @view.new_item_fund_general.when_present.click
      end

      def field_name_combo_click
        @view.new_item_field_name_combo.when_present.click
      end

      def field_name_combo_test_click
        @view.new_item_field_name_test.when_present.click
      end

      def add_question_click
        @view.new_item_add_question.when_present.click
      end

      def category_item_exists?(name)
        @view.cart_category_item_list.text.include? name
      end

      def edit_preferences_click
        @view.edit_preferences.when_present.click
      end

      def edit_cart_next_click
        @view.edit_cart_next.when_present.click
      end

      def edit_cart_welcome_font_color_click
        @view.edit_cart_welcome_font_color.when_present.click
      end

      def edit_cart_welcome_font_color_black_click
        @view.edit_cart_welcome_font_color_black.when_present.click
      end

      def edit_cart_set_welcome(message)
        @view.edit_cart_welcome.when_present.send_keys [:control, 'a']
        @view.edit_cart_welcome.when_present.send_keys message
      end

      def edit_cart_order_success_bold_click
        @view.edit_cart_order_success_bold.when_present.click
      end

      def edit_cart_set_order_success(message)
        @view.edit_cart_order_success.when_present.send_keys [:control, 'a']
        @view.edit_cart_order_success.when_present.send_keys message
      end

      def edit_cart_question_field_name_click
        @view.edit_cart_question_field_name.when_present.click
      end

      def edit_cart_question_account_type_click
        @view.edit_cart_question_account_type.when_present.click
      end

      def edit_cart_question_add_click
        @view.edit_cart_question_add.when_present.click
      end

      def edit_cart_set_email_template(template)
        @view.edit_cart_email_template.when_present.select template
      end

      def edit_cart_default_order_attributes_click
        @view.edit_cart_default_order_attributes.when_present.click
      end

      def edit_cart_default_order_attributes_general_click
        @view.edit_cart_default_order_attributes_general.when_present.click
      end

      def edit_cart_shipping_attributes_click
        @view.edit_cart_shipping_attributes.when_present.click
      end

      def edit_cart_shipping_attributes_general_click
        @view.edit_cart_shipping_attributes_general.when_present.click
      end

      def edit_cart_select_default_processor
        @view.edit_cart_transaction_processor.when_present.select 'iATS Test Processor'
      end
    end
  end
end
